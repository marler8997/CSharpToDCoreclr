module mscorlib.System.StubHelpers;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    __DotNet__Object,
    IntPtr,
    Type;
import mscorlib.System.Runtime.ConstrainedExecution :
    ReliabilityContractAttribute;
import mscorlib.System.Runtime.InteropServices :
    StructLayoutAttribute,
    SafeHandle;
import mscorlib.System.Runtime.CompilerServices :
    FriendAccessAllowedAttribute;
import mscorlib.System.Security :
    SecurityCriticalAttribute,
    SuppressUnmanagedCodeSecurityAttribute;
import mscorlib.System.Collections.Generic :
    List1;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\StubHelpers.cs'
//
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class AnsiCharMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method DoAnsiConversion
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
}
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class CSTRMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class UTF8Marshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    private enum int MAX_UTF8_CHAR_SIZE/*todo: implement initializer*/ = int();
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class UTF8BufferMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
}
// #if FEATURE_COMINTEROP
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class BSTRMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
// #endif // FEATURE_COMINTEROP
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class VBByValStrMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
// #if FEATURE_COMINTEROP
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class AnsiBSTRMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
// #endif // FEATURE_COMINTEROP
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class WSTRBufferMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
// #if FEATURE_COMINTEROP
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
package(mscorlib) struct DateTimeNative
{
    public long UniversalTime;
}
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class DateTimeOffsetMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    private enum long ManagedUtcTicksAtNativeZero/*todo: implement initializer*/ = long();
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
}
// #endif  // FEATURE_COMINTEROP
// #if FEATURE_COMINTEROP
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class HStringMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToNativeReference
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class ObjectMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
// #endif // FEATURE_COMINTEROP
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class ValueClassMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class DateMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
}
// #if FEATURE_COMINTEROP
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
package(mscorlib) class InterfaceMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
    //TODO: generate method ConvertToManagedWithoutUnboxing
}
// #endif // FEATURE_COMINTEROP
// #if FEATURE_COMINTEROP
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class UriMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method GetRawUriFromNative
    //TODO: generate method CreateNativeUriInstanceHelper
    //TODO: generate method CreateNativeUriInstance
}
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
package(mscorlib) class EventArgsMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method CreateNativeNCCEventArgsInstance
    //TODO: generate method CreateNativePCEventArgsInstance
    //TODO: generate method CreateNativeNCCEventArgsInstanceHelper
}
// #endif // FEATURE_COMINTEROP
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class MngdNativeArrayMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method CreateMarshaler
    //TODO: generate method ConvertSpaceToNative
    //TODO: generate method ConvertContentsToNative
    //TODO: generate method ConvertSpaceToManaged
    //TODO: generate method ConvertContentsToManaged
    //TODO: generate method ClearNative
    //TODO: generate method ClearNativeContents
}
// #if FEATURE_COMINTEROP
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class MngdSafeArrayMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method CreateMarshaler
    //TODO: generate method ConvertSpaceToNative
    //TODO: generate method ConvertContentsToNative
    //TODO: generate method ConvertSpaceToManaged
    //TODO: generate method ConvertContentsToManaged
    //TODO: generate method ClearNative
}
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class MngdHiddenLengthArrayMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method CreateMarshaler
    //TODO: generate method ConvertSpaceToNative
    //TODO: generate method ConvertContentsToNative
    //TODO: generate method ConvertContentsToNative_DateTime
    //TODO: generate method ConvertContentsToNative_Type
    //TODO: generate method ConvertContentsToNative_Exception
    //TODO: generate method ConvertContentsToNative_Nullable
    //TODO: generate method ConvertContentsToNative_KeyValuePair
    //TODO: generate method ConvertSpaceToManaged
    //TODO: generate method ConvertContentsToManaged
    //TODO: generate method ConvertContentsToManaged_DateTime
    //TODO: generate method ConvertContentsToManaged_Type
    //TODO: generate method ConvertContentsToManaged_Exception
    //TODO: generate method ConvertContentsToManaged_Nullable
    //TODO: generate method ConvertContentsToManaged_KeyValuePair
    //TODO: generate method ClearNativeContents
    //TODO: generate method ClearNativeContents_Type
}
// #endif // FEATURE_COMINTEROP
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class MngdRefCustomMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method CreateMarshaler
    //TODO: generate method ConvertContentsToNative
    //TODO: generate method ConvertContentsToManaged
    //TODO: generate method ClearNative
    //TODO: generate method ClearManaged
}
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
package(mscorlib) struct AsAnyMarshaler
{
    private enum ushort VTHACK_ANSICHAR/*todo: implement initializer*/ = ushort();
    private enum ushort VTHACK_WINBOOL/*todo: implement initializer*/ = ushort();
    private enum BackPropAction
    {
        None,
        Array,
        Layout,
        StringBuilderAnsi,
        StringBuilderUnicode,
    }
    private IntPtr pvArrayMarshaler;
    private BackPropAction backPropAction;
    private Type layoutType;
    private CleanupWorkList cleanupWorkList;
    //TODO: generate method IsIn
    //TODO: generate method IsOut
    //TODO: generate method IsAnsi
    //TODO: generate method IsThrowOn
    //TODO: generate method IsBestFit
    //TODO: generate constructor
    //TODO: generate method ConvertArrayToNative
    //TODO: generate method ConvertStringToNative
    //TODO: generate method ConvertStringBuilderToNative
    //TODO: generate method ConvertLayoutToNative
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
// #if FEATURE_COMINTEROP
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class NullableMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManagedRetVoid
    //TODO: generate method ConvertToManaged
}
// Corresponds to Windows.UI.Xaml.Interop.TypeName
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
package(mscorlib) struct TypeNameNative
{
    package(mscorlib) IntPtr typeName;
    package(mscorlib) TypeKind typeKind;
}
package(mscorlib) enum TypeKind
{
    Primitive,
    Metadata,
    Projection,
}
package(mscorlib) class WinRTTypeNameConverter : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToWinRTTypeName
    //TODO: generate method GetTypeFromWinRTTypeName
}
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class SystemTypeMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
// For converting WinRT's Windows.Foundation.HResult into System.Exception and vice versa.
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class HResultExceptionMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
}
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
package(mscorlib) class KeyValuePairMarshaler : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ConvertToManagedBox
}
// #endif // FEATURE_COMINTEROP
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
package(mscorlib) struct NativeVariant
{
    private ushort vt;
    private ushort wReserved1;
    private ushort wReserved2;
    private ushort wReserved3;
    private IntPtr data1;
    private IntPtr data2;
}
// #if !BIT64 && !FEATURE_CORECLR
// Structure filled by IL stubs if copy constructor(s) and destructor(s) need to be called
// on value types pushed on the stack. The structure is stored in s_copyCtorStubDesc by
// SetCopyCtorCookieChain and fetched by CopyCtorCallStubWorker. Must be stack-allocated.
// [StructLayout(LayoutKind.Sequential)]
// unsafe internal struct CopyCtorStubCookie
// {
// public void SetData(IntPtr srcInstancePtr, uint dstStackOffset, IntPtr ctorPtr, IntPtr dtorPtr)
// {
// m_srcInstancePtr = srcInstancePtr;
// m_dstStackOffset = dstStackOffset;
// m_ctorPtr = ctorPtr;
// m_dtorPtr = dtorPtr;
// }
// public void SetNext(IntPtr pNext)
// {
// m_pNext = pNext;
// }
// public IntPtr m_srcInstancePtr; // pointer to the source instance
// public uint   m_dstStackOffset; // offset from the start of stack arguments of the pushed 'this' instance
// public IntPtr m_ctorPtr;        // fnptr to the managed copy constructor, result of ldftn
// public IntPtr m_dtorPtr;        // fnptr to the managed destructor, result of ldftn
// public IntPtr m_pNext;          // pointer to next cookie in the chain or IntPtr.Zero
// }  // struct CopyCtorStubCookie
// Aggregates pointer to CopyCtorStubCookie and the target of the interop call.
// [StructLayout(LayoutKind.Sequential)]
// unsafe internal struct CopyCtorStubDesc
// {
// public IntPtr m_pCookie;
// public IntPtr m_pTarget;
// }  // struct CopyCtorStubDes
// #endif // !BIT64 && !FEATURE_CORECLR
// Aggregates SafeHandle and the "owned" bit which indicates whether the SafeHandle
// has been successfully AddRef'ed. This allows us to do realiable cleanup (Release)
// if and only if it is needed.
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
package(mscorlib) final class CleanupWorkListElement : __DotNet__Object
{
    //TODO: generate constructor
    public SafeHandle m_handle;
    public bool m_owned;
}
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
package(mscorlib) final class CleanupWorkList : __DotNet__Object
{
    private List1!(CleanupWorkListElement) m_list/*todo: implement initializer*/ = null;
    //TODO: generate method Add
    //TODO: generate method Destroy
}
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
@__DotNet__Attribute!(ReliabilityContractAttribute.stringof/*, Consistency.WillNotCorruptState, Cer.MayFail*/)
@__DotNet__Attribute!(SuppressUnmanagedCodeSecurityAttribute.stringof/**/)
package(mscorlib) class StubHelpers : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method IsQCall
    //TODO: generate method InitDeclaringType
    //TODO: generate method GetNDirectTarget
    //TODO: generate method GetDelegateTarget
    //TODO: generate method ClearLastError
    //TODO: generate method SetLastError
    //TODO: generate method ThrowInteropParamException
    //TODO: generate method AddToCleanupList
    //TODO: generate method DestroyCleanupList
    //TODO: generate method GetHRExceptionObject
    //TODO: generate method InternalGetHRExceptionObject
    //TODO: generate method GetCOMHRExceptionObject
    //TODO: generate method GetCOMHRExceptionObject_WinRT
    //TODO: generate method InternalGetCOMHRExceptionObject
    //TODO: generate method CreateCustomMarshalerHelper
    //TODO: generate method SafeHandleAddRef
    //TODO: generate method SafeHandleRelease
    //TODO: generate method GetCOMIPFromRCW
    //TODO: generate method GetCOMIPFromRCW_WinRT
    //TODO: generate method GetCOMIPFromRCW_WinRTSharedGeneric
    //TODO: generate method GetCOMIPFromRCW_WinRTDelegate
    //TODO: generate method ShouldCallWinRTInterface
    //TODO: generate method GetTargetForAmbiguousVariantCall
    //TODO: generate method StubRegisterRCW
    //TODO: generate method StubUnregisterRCW
    //TODO: generate method GetDelegateInvokeMethod
    //TODO: generate method GetWinRTFactoryObject
    //TODO: generate method GetWinRTFactoryReturnValue
    //TODO: generate method GetOuterInspectable
    //TODO: generate method ProfilerBeginTransitionCallback
    //TODO: generate method ProfilerEndTransitionCallback
    //TODO: generate method CheckStringLength
    //TODO: generate method CheckStringLength
    //TODO: generate method strlen
    //TODO: generate method DecimalCanonicalizeInternal
    //TODO: generate method FmtClassUpdateNativeInternal
    //TODO: generate method FmtClassUpdateCLRInternal
    //TODO: generate method LayoutDestroyNativeInternal
    //TODO: generate method AllocateInternal
    //TODO: generate method MarshalToUnmanagedVaListInternal
    //TODO: generate method MarshalToManagedVaListInternal
    //TODO: generate method CalcVaListSize
    //TODO: generate method ValidateObject
    //TODO: generate method LogPinnedArgument
    //TODO: generate method ValidateByref
    //TODO: generate method GetStubContext
    //TODO: generate method GetStubContextAddr
    //TODO: generate method ArrayTypeCheck
}
