// Generated by gencpp from file walker_srvs/leg_motion_MetaFuncCtrlRequest.msg
// DO NOT EDIT!


#ifndef WALKER_SRVS_MESSAGE_LEG_MOTION_METAFUNCCTRLREQUEST_H
#define WALKER_SRVS_MESSAGE_LEG_MOTION_METAFUNCCTRLREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace walker_srvs
{
template <class ContainerAllocator>
struct leg_motion_MetaFuncCtrlRequest_
{
  typedef leg_motion_MetaFuncCtrlRequest_<ContainerAllocator> Type;

  leg_motion_MetaFuncCtrlRequest_()
    : func_name()
    , param_json()
    , cmd()  {
    }
  leg_motion_MetaFuncCtrlRequest_(const ContainerAllocator& _alloc)
    : func_name(_alloc)
    , param_json(_alloc)
    , cmd(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _func_name_type;
  _func_name_type func_name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _param_json_type;
  _param_json_type param_json;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _cmd_type;
  _cmd_type cmd;




  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  FUNC_DYNAMIC;
  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  FUNC_BALANCE;
  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  FUNC_COMPLIANCE;
  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  FUNC_TAICHI;
  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  FUNC_YOGA;
  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  FUNC_JUMP;
  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  CMD_START;
  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  CMD_STOP;

  typedef boost::shared_ptr< ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<ContainerAllocator> const> ConstPtr;

}; // struct leg_motion_MetaFuncCtrlRequest_

typedef ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<std::allocator<void> > leg_motion_MetaFuncCtrlRequest;

typedef boost::shared_ptr< ::walker_srvs::leg_motion_MetaFuncCtrlRequest > leg_motion_MetaFuncCtrlRequestPtr;
typedef boost::shared_ptr< ::walker_srvs::leg_motion_MetaFuncCtrlRequest const> leg_motion_MetaFuncCtrlRequestConstPtr;

// constants requiring out of line definition

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      leg_motion_MetaFuncCtrlRequest_<ContainerAllocator>::FUNC_DYNAMIC =
        
          "dynamic"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      leg_motion_MetaFuncCtrlRequest_<ContainerAllocator>::FUNC_BALANCE =
        
          "balance"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      leg_motion_MetaFuncCtrlRequest_<ContainerAllocator>::FUNC_COMPLIANCE =
        
          "compliance"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      leg_motion_MetaFuncCtrlRequest_<ContainerAllocator>::FUNC_TAICHI =
        
          "taichi"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      leg_motion_MetaFuncCtrlRequest_<ContainerAllocator>::FUNC_YOGA =
        
          "yoga"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      leg_motion_MetaFuncCtrlRequest_<ContainerAllocator>::FUNC_JUMP =
        
          "jump"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      leg_motion_MetaFuncCtrlRequest_<ContainerAllocator>::CMD_START =
        
          "start"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      leg_motion_MetaFuncCtrlRequest_<ContainerAllocator>::CMD_STOP =
        
          "stop"
        
        ;
   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace walker_srvs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2afd2d796a1d13d7076c914aac06fc59";
  }

  static const char* value(const ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2afd2d796a1d13d7ULL;
  static const uint64_t static_value2 = 0x076c914aac06fc59ULL;
};

template<class ContainerAllocator>
struct DataType< ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "walker_srvs/leg_motion_MetaFuncCtrlRequest";
  }

  static const char* value(const ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
string FUNC_DYNAMIC=dynamic\n\
string FUNC_BALANCE=balance\n\
string FUNC_COMPLIANCE=compliance\n\
string FUNC_TAICHI=taichi\n\
string FUNC_YOGA=yoga\n\
string FUNC_JUMP=jump\n\
\n\
\n\
string CMD_START=start\n\
string CMD_STOP=stop\n\
\n\
\n\
string func_name\n\
string param_json\n\
string cmd\n\
";
  }

  static const char* value(const ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.func_name);
      stream.next(m.param_json);
      stream.next(m.cmd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct leg_motion_MetaFuncCtrlRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::walker_srvs::leg_motion_MetaFuncCtrlRequest_<ContainerAllocator>& v)
  {
    s << indent << "func_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.func_name);
    s << indent << "param_json: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.param_json);
    s << indent << "cmd: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.cmd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WALKER_SRVS_MESSAGE_LEG_MOTION_METAFUNCCTRLREQUEST_H