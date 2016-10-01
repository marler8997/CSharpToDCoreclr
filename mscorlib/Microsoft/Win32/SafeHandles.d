module mscorlib.Microsoft.Win32.SafeHandles;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct;
import mscorlib.System.Security :
    SecurityCriticalAttribute;
import mscorlib.System.Runtime.InteropServices :
    SafeBuffer,
    SafeHandle,
    CriticalHandle;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\Microsoft\Win32\SafeHandles\SafeFileHandle.cs'
//
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public final class SafeFileHandle : SafeHandleZeroOrMinusOneIsInvalid
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method ReleaseHandle
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\Microsoft\Win32\SafeHandles\SafeFileMappingHandle.cs'
//
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public final class SafeFileMappingHandle : SafeHandleZeroOrMinusOneIsInvalid
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method ReleaseHandle
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\Microsoft\Win32\SafeHandles\SafeFindHandle.cs'
//
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public final class SafeFindHandle : SafeHandleZeroOrMinusOneIsInvalid
{
    //TODO: generate constructor
    //TODO: generate method ReleaseHandle
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\Microsoft\Win32\SafeHandles\SafeLocalAllocHandle.cs'
//
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public final class SafeLocalAllocHandle : SafeBuffer
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'InvalidHandle'
    //TODO: generate method ReleaseHandle
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\Microsoft\Win32\SafeHandles\SafeRegistryHandle.cs'
//
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public final class SafeRegistryHandle : SafeHandleZeroOrMinusOneIsInvalid
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method ReleaseHandle
    //TODO: generate method RegCloseKey
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\Microsoft\Win32\SafeHandles\SafeViewOfFileHandle.cs'
//
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public final class SafeViewOfFileHandle : SafeHandleZeroOrMinusOneIsInvalid
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method ReleaseHandle
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\Microsoft\Win32\SafeHandles\SafeWaitHandle.cs'
//
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public final class SafeWaitHandle : SafeHandleZeroOrMinusOneIsInvalid
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method ReleaseHandle
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\Microsoft\Win32\SafeHandles\Win32SafeHandles.cs'
//
// Class of safe handle which uses 0 or -1 as an invalid handle.
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public abstract class SafeHandleZeroOrMinusOneIsInvalid : SafeHandle
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'IsInvalid'
}
// Class of safe handle which uses only -1 as an invalid handle.
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public abstract class SafeHandleMinusOneIsInvalid : SafeHandle
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'IsInvalid'
}
// Class of critical handle which uses 0 or -1 as an invalid handle.
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public abstract class CriticalHandleZeroOrMinusOneIsInvalid : CriticalHandle
{
    //TODO: generate constructor
    //TODO: generate property 'IsInvalid'
}
// Class of critical handle which uses only -1 as an invalid handle.
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public abstract class CriticalHandleMinusOneIsInvalid : CriticalHandle
{
    //TODO: generate constructor
    //TODO: generate property 'IsInvalid'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\SafeSecurityHandles.cs'
//
// Introduce this handle to replace internal SafeTokenHandle,
// which is mainly used to hold Windows thread or process access token
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public final class SafeAccessTokenHandle : SafeHandle
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'InvalidHandle'
    //TODO: generate property 'IsInvalid'
    //TODO: generate method ReleaseHandle
}
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public final class SafeLsaLogonProcessHandle : SafeHandleZeroOrMinusOneIsInvalid
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'InvalidHandle'
    //TODO: generate method ReleaseHandle
}
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public final class SafeLsaMemoryHandle : SafeBuffer
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'InvalidHandle'
    //TODO: generate method ReleaseHandle
}
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public final class SafeLsaPolicyHandle : SafeHandleZeroOrMinusOneIsInvalid
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'InvalidHandle'
    //TODO: generate method ReleaseHandle
}
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public final class SafeLsaReturnBufferHandle : SafeBuffer
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'InvalidHandle'
    //TODO: generate method ReleaseHandle
}
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public final class SafeProcessHandle : SafeHandleZeroOrMinusOneIsInvalid
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'InvalidHandle'
    //TODO: generate method ReleaseHandle
}
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public final class SafeThreadHandle : SafeHandleZeroOrMinusOneIsInvalid
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method ReleaseHandle
}
