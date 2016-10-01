module mscorlib.System.Runtime.Remoting;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    __DotNet__Object;
import mscorlib.System.Runtime.InteropServices :
    ClassInterfaceAttribute,
    ComVisibleAttribute,
    InterfaceTypeAttribute,
    GuidAttribute;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Remoting\ObjectHandle.cs'
//
// #if FEATURE_REMOTING
// using System.Runtime.Remoting.Activation;
// using System.Runtime.Remoting.Lifetime;
// #endif
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.AutoDual*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class ObjectHandle : __DotNet__Object, IObjectHandle
{
    private __DotNet__Object WrappedObject;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Unwrap
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\IObjectHandle.cs'
//
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "C460E2B4-E199-412a-8456-84DC3E4838C3"*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IObjectHandle
{
    //TODO: generate method Unwrap
}
