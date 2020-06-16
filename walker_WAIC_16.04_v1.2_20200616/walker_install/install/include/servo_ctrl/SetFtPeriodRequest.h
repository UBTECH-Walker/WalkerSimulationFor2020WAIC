// Generated by gencpp from file servo_ctrl/SetFtPeriodRequest.msg
// DO NOT EDIT!


#ifndef SERVO_CTRL_MESSAGE_SETFTPERIODREQUEST_H
#define SERVO_CTRL_MESSAGE_SETFTPERIODREQUEST_H


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
struct SetFtPeriodRequest_
{
  typedef SetFtPeriodRequest_<ContainerAllocator> Type;

  SetFtPeriodRequest_()
    : ftId()
    , period_ms(0)  {
    }
  SetFtPeriodRequest_(const ContainerAllocator& _alloc)
    : ftId(_alloc)
    , period_ms(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _ftId_type;
  _ftId_type ftId;

   typedef int32_t _period_ms_type;
  _period_ms_type period_ms;





  typedef boost::shared_ptr< ::servo_ctrl::SetFtPeriodRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::servo_ctrl::SetFtPeriodRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetFtPeriodRequest_

typedef ::servo_ctrl::SetFtPeriodRequest_<std::allocator<void> > SetFtPeriodRequest;

typedef boost::shared_ptr< ::servo_ctrl::SetFtPeriodRequest > SetFtPeriodRequestPtr;
typedef boost::shared_ptr< ::servo_ctrl::SetFtPeriodRequest const> SetFtPeriodRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::servo_ctrl::SetFtPeriodRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::servo_ctrl::SetFtPeriodRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace servo_ctrl

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::servo_ctrl::SetFtPeriodRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::servo_ctrl::SetFtPeriodRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::servo_ctrl::SetFtPeriodRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::servo_ctrl::SetFtPeriodRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::servo_ctrl::SetFtPeriodRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::servo_ctrl::SetFtPeriodRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::servo_ctrl::SetFtPeriodRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6ae68f403a66aa025d9f0a184f843df5";
  }

  static const char* value(const ::servo_ctrl::SetFtPeriodRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6ae68f403a66aa02ULL;
  static const uint64_t static_value2 = 0x5d9f0a184f843df5ULL;
};

template<class ContainerAllocator>
struct DataType< ::servo_ctrl::SetFtPeriodRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "servo_ctrl/SetFtPeriodRequest";
  }

  static const char* value(const ::servo_ctrl::SetFtPeriodRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::servo_ctrl::SetFtPeriodRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
string ftId\n\
int32  period_ms\n\
";
  }

  static const char* value(const ::servo_ctrl::SetFtPeriodRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::servo_ctrl::SetFtPeriodRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ftId);
      stream.next(m.period_ms);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetFtPeriodRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::servo_ctrl::SetFtPeriodRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::servo_ctrl::SetFtPeriodRequest_<ContainerAllocator>& v)
  {
    s << indent << "ftId: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.ftId);
    s << indent << "period_ms: ";
    Printer<int32_t>::stream(s, indent + "  ", v.period_ms);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SERVO_CTRL_MESSAGE_SETFTPERIODREQUEST_H