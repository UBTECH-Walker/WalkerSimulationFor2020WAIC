#ifndef __BROADCAST_TELEOP_SENDER_HPP__
#define __BROADCAST_TELEOP_SENDER_HPP__

#include "broadcast_teleop/common.h"
#include <set>
#include <vector>

namespace broadcast_teleop {

class Sender
{
public:
    typedef std::vector<std::string> address_list_t;

    Sender(ros::NodeHandle &node_handle,
        const address_list_t& broadcast_addresses,
        const int16_t broadcast_port,
        const int16_t feedback_port,
        const sync_method sync);

    Sender(ros::NodeHandle &node_handle,
        const std::string& broadcast_address,
        const int16_t broadcast_port,
        const int16_t feedback_port,
        const sync_method sync);

    bool broadcast(const int pending_ms, const int reply_timeout=REPLY_TIMEOUT,
                   message_type type=B_MESSAGE_SYNC, const char *pdata=NULL);
    bool broadcast_once(const int reply_timeout=REPLY_TIMEOUT,
                        message_type type=B_MESSAGE_SYNC,
                        const char *pdata=NULL);
    void set_target_time(const boost::posix_time::ptime &target_time);
    bool is_running();
    bool start();
    bool wait_for_finish(const int ms = -1);
    void stop();

private:
    typedef std::vector<boost::asio::ip::udp::endpoint> endpoint_list_t;

    endpoint_list_t tx_endpoints_;
    boost::asio::io_service io_svc_;
    boost::asio::ip::udp::endpoint rx_endpoint_;
    boost::asio::ip::udp::socket socket_;
    boost::asio::deadline_timer timer_;
    boost::asio::deadline_timer repeat_timer_;
    boost::posix_time::ptime target_time_;
    boost::thread thread_;
    message_type message_type_;
    sync_method sync_method_;
    std::string message_;
    std::set<std::string> clients;
    volatile bool sending;
    int reply_cnt;
    char rx_buf[MAX_BUF_LEN];
    char tx_buf[MAX_BUF_LEN];

    void init(const address_list_t &address, int16_t baddr);
    void run();
    void handle_send_to(const boost::system::error_code& error);
    void handle_receive_from(const boost::system::error_code& error,
          size_t bytes_recvd);
    void handle_timeout(const boost::system::error_code& error);
    void handle_repeat_timeout(const boost::system::error_code& error);
};

} // namespace broadcast_teleop

#endif //__BROADCAST_TELEOP_SENDER_HPP__
