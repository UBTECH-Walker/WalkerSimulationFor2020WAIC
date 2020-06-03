// Generated by gencpp from file servo_ctrl/SetFtOffsetResponse.msg
// DO NOT EDIT!


#ifndef SERVO_CTRL_MESSAGE_SETFTOFFSETRESPONSE_H
#define SERVO_CTRL_MESSAGE_SETFTOFFSETRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace servo_ctrl
{
template <class ContainerAllocator>
struct SetFtOffsetResponse_
{
  typedef SetFtOffsetResponse_<ContainerAllocator> Type;

  SetFtOffsetResponse_()
    : result()  {
    }
  SetFtOffsetResponse_(const ContainerAllocator& _alloc)
    : result(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetFtOffsetResponse_

typedef ::servo_ctrl::SetFtOffsetResponse_<std::allocator<void> > SetFtOffsetResponse;

typedef boost::shared_ptr< ::servo_ctrl::SetFtOffsetResponse > SetFtOffsetResponsePtr;
typedef boost::shared_ptr< ::servo_ctrl::SetFtOffsetResponse const> SetFtOffsetResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator1> & lhs, const ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator1> & lhs, const ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace servo_ctrl

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c22f2a1ed8654a0b365f1bb3f7ff2c0f";
  }

  static const char* value(const ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc22f2a1ed8654a0bULL;
  static const uint64_t static_value2 = 0x365f1bb3f7ff2c0fULL;
};

template<class ContainerAllocator>
struct DataType< ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "servo_ctrl/SetFtOffsetResponse";
  }

  static const char* value(const ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string result\n"
"\n"
;
  }

  static const char* value(const ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetFtOffsetResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::servo_ctrl::SetFtOffsetResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SERVO_CTRL_MESSAGE_SETFTOFFSETRESPONSE_H