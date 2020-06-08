#ifndef __BROADCAST_TELEOP_RECEIVER_HPP__
#define __BROADCAST_TELEOP_RECEIVER_HPP__

#include "broadcast_teleop/common.h"
#include <vector>

namespace broadcast_teleop {

typedef void (*callback_type)();

class Receiver
{
public:
    Receiver(ros::NodeHandle &node_handle,
        const std::string &listen_address,
        const int16_t broadcast_port,
        const int16_t feedback_port,
        const callback_type cb);
    bool is_running();
    bool start();
    void stop();

private:
    boost::asio::io_service io_svc_;
    boost::asio::ip::address listen_address_;
    boost::asio::ip::udp::socket socket_;
    boost::asio::ip::udp::endpoint sender_endpoint_;
    boost::asio::ip::udp::endpoint remote_endpoint_;
    const int16_t broadcast_port_;
    const int16_t feedback_port_;
    boost::asio::deadline_timer timer_;
    boost::asio::deadline_timer idle_timer_;
    boost::posix_time::ptime target_time_;
    boost::thread thread_;
    callback_type callback_;
    volatile bool timer_running;
    char rx_data_[MAX_BUF_LEN];
    char tx_data_[MAX_BUF_LEN];
    int frame_cnt_;

    void run();
    void handle_receive_from(const boost::system::error_code& error, size_t bytes_recvd);
    void handle_timeout(const boost::system::error_code& error);
    void handle_idle_timeout(const boost::system::error_code& error);

    // debug only
    std::vector<long> time_jitters_;
};

} // namespace broadcast_teleop



#endif //__BROADCAST_TELEOP_RECEIVER_HPP__
