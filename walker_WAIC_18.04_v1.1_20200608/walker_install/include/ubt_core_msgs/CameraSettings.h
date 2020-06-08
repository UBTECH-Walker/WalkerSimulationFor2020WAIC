// Generated by gencpp from file ubt_core_msgs/CameraSettings.msg
// DO NOT EDIT!


#ifndef UBT_CORE_MSGS_MESSAGE_CAMERASETTINGS_H
#define UBT_CORE_MSGS_MESSAGE_CAMERASETTINGS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ubt_core_msgs/CameraControl.h>

namespace ubt_core_msgs
{
template <class ContainerAllocator>
struct CameraSettings_
{
  typedef CameraSettings_<ContainerAllocator> Type;

  CameraSettings_()
    : width(0)
    , height(0)
    , fps(0.0)
    , controls()  {
    }
  CameraSettings_(const ContainerAllocator& _alloc)
    : width(0)
    , height(0)
    , fps(0.0)
    , controls(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _width_type;
  _width_type width;

   typedef int32_t _height_type;
  _height_type height;

   typedef float _fps_type;
  _fps_type fps;

   typedef std::vector< ::ubt_core_msgs::CameraControl_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ubt_core_msgs::CameraControl_<ContainerAllocator> >::other >  _controls_type;
  _controls_type controls;





  typedef boost::shared_ptr< ::ubt_core_msgs::CameraSettings_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ubt_core_msgs::CameraSettings_<ContainerAllocator> const> ConstPtr;

}; // struct CameraSettings_

typedef ::ubt_core_msgs::CameraSettings_<std::allocator<void> > CameraSettings;

typedef boost::shared_ptr< ::ubt_core_msgs::CameraSettings > CameraSettingsPtr;
typedef boost::shared_ptr< ::ubt_core_msgs::CameraSettings const> CameraSettingsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ubt_core_msgs::CameraSettings_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ubt_core_msgs::CameraSettings_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ubt_core_msgs::CameraSettings_<ContainerAllocator1> & lhs, const ::ubt_core_msgs::CameraSettings_<ContainerAllocator2> & rhs)
{
  return lhs.width == rhs.width &&
    lhs.height == rhs.height &&
    lhs.fps == rhs.fps &&
    lhs.controls == rhs.controls;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ubt_core_msgs::CameraSettings_<ContainerAllocator1> & lhs, const ::ubt_core_msgs::CameraSettings_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ubt_core_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ubt_core_msgs::CameraSettings_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ubt_core_msgs::CameraSettings_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ubt_core_msgs::CameraSettings_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ubt_core_msgs::CameraSettings_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ubt_core_msgs::CameraSettings_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ubt_core_msgs::CameraSettings_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ubt_core_msgs::CameraSettings_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d133bef4a3bd9a6e490a5dc91d20f429";
  }

  static const char* value(const ::ubt_core_msgs::CameraSettings_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd133bef4a3bd9a6eULL;
  static const uint64_t static_value2 = 0x490a5dc91d20f429ULL;
};

template<class ContainerAllocator>
struct DataType< ::ubt_core_msgs::CameraSettings_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ubt_core_msgs/CameraSettings";
  }

  static const char* value(const ::ubt_core_msgs::CameraSettings_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ubt_core_msgs::CameraSettings_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32           width\n"
"int32           height\n"
"float32         fps\n"
"CameraControl[] controls\n"
"\n"
"================================================================================\n"
"MSG: ubt_core_msgs/CameraControl\n"
"int32   id\n"
"int32   value\n"
"\n"
"int32 CAMERA_CONTROL_EXPOSURE=100\n"
"int32 CAMERA_CONTROL_GAIN=101\n"
"int32 CAMERA_CONTROL_WHITE_BALANCE_R=102\n"
"int32 CAMERA_CONTROL_WHITE_BALANCE_G=103\n"
"int32 CAMERA_CONTROL_WHITE_BALANCE_B=104\n"
"int32 CAMERA_CONTROL_WINDOW_X=105\n"
"int32 CAMERA_CONTROL_WINDOW_Y=106\n"
"int32 CAMERA_CONTROL_FLIP=107\n"
"int32 CAMERA_CONTROL_MIRROR=108\n"
"int32 CAMERA_CONTROL_RESOLUTION_HALF=109\n"
;
  }

  static const char* value(const ::ubt_core_msgs::CameraSettings_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ubt_core_msgs::CameraSettings_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.width);
      stream.next(m.height);
      stream.next(m.fps);
      stream.next(m.controls);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CameraSettings_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ubt_core_msgs::CameraSettings_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ubt_core_msgs::CameraSettings_<ContainerAllocator>& v)
  {
    s << indent << "width: ";
    Printer<int32_t>::stream(s, indent + "  ", v.width);
    s << indent << "height: ";
    Printer<int32_t>::stream(s, indent + "  ", v.height);
    s << indent << "fps: ";
    Printer<float>::stream(s, indent + "  ", v.fps);
    s << indent << "controls[]" << std::endl;
    for (size_t i = 0; i < v.controls.size(); ++i)
    {
      s << indent << "  controls[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ubt_core_msgs::CameraControl_<ContainerAllocator> >::stream(s, indent + "    ", v.controls[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // UBT_CORE_MSGS_MESSAGE_CAMERASETTINGS_H