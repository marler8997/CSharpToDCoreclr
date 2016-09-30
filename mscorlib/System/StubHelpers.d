module mscorlib.System.StubHelpers;

import mscorlib.System :
    DotNetObject,
    IntPtr,
    Type;
import mscorlib.System.Runtime.InteropServices :
    SafeHandle;
import mscorlib.System.Collections.Generic :
    List1;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\StubHelpers.cs'
//
//[ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class AnsiCharMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method DoAnsiConversion
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
}
//[ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class CSTRMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
//[ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class UTF8Marshaler : DotNetObject
{
    private this() {} // prevent instantiation
    private enum int MAX_UTF8_CHAR_SIZE/*todo: implement initializer*/ = int();
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
//[ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class UTF8BufferMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
}
//#if FEATURE_COMINTEROP
//
//    [ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class BSTRMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
//#endif // FEATURE_COMINTEROP
//
//
//    [ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class VBByValStrMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
//#if FEATURE_COMINTEROP
//
//    [ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class AnsiBSTRMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
//#endif // FEATURE_COMINTEROP
//
//
//    [ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class WSTRBufferMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
//#if FEATURE_COMINTEROP
//
//
//    [StructLayout(LayoutKind.Sequential)]
public struct DateTimeNative
{
    public long UniversalTime;
}
//[ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class DateTimeOffsetMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    private enum long ManagedUtcTicksAtNativeZero/*todo: implement initializer*/ = long();
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
}
//#endif  // FEATURE_COMINTEROP
//
//
//#if FEATURE_COMINTEROP
//    [ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class HStringMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToNativeReference
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
//[ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class ObjectMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
//#endif // FEATURE_COMINTEROP
//
//    [ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class ValueClassMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
//[ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class DateMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
}
//#if FEATURE_COMINTEROP
//    [ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
//[FriendAccessAllowed]
public class InterfaceMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
    //TODO: generate method ConvertToManagedWithoutUnboxing
}
//#endif // FEATURE_COMINTEROP
//
//#if FEATURE_COMINTEROP
//    [ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class UriMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method GetRawUriFromNative
    //TODO: generate method CreateNativeUriInstanceHelper
    //TODO: generate method CreateNativeUriInstance
}
//[FriendAccessAllowed]
public class EventArgsMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method CreateNativeNCCEventArgsInstance
    //TODO: generate method CreateNativePCEventArgsInstance
    //TODO: generate method CreateNativeNCCEventArgsInstanceHelper
}
//#endif // FEATURE_COMINTEROP
//
//    [ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class MngdNativeArrayMarshaler : DotNetObject
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
//#if FEATURE_COMINTEROP
//    [ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class MngdSafeArrayMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method CreateMarshaler
    //TODO: generate method ConvertSpaceToNative
    //TODO: generate method ConvertContentsToNative
    //TODO: generate method ConvertSpaceToManaged
    //TODO: generate method ConvertContentsToManaged
    //TODO: generate method ClearNative
}
//[ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class MngdHiddenLengthArrayMarshaler : DotNetObject
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
//#endif // FEATURE_COMINTEROP
//
//    [ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class MngdRefCustomMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method CreateMarshaler
    //TODO: generate method ConvertContentsToNative
    //TODO: generate method ConvertContentsToManaged
    //TODO: generate method ClearNative
    //TODO: generate method ClearManaged
}
//[ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
//[System.Security.SecurityCritical]
public struct AsAnyMarshaler
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
//#if FEATURE_COMINTEROP
//    [ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class NullableMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManagedRetVoid
    //TODO: generate method ConvertToManaged
}
//// Corresponds to Windows.UI.Xaml.Interop.TypeName
//    [StructLayout(LayoutKind.Sequential)]
public struct TypeNameNative
{
    public IntPtr typeName;
    public TypeKind typeKind;
}
public enum TypeKind
{
    Primitive,
    Metadata,
    Projection,
}
public class WinRTTypeNameConverter : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToWinRTTypeName
    //TODO: generate method GetTypeFromWinRTTypeName
}
//[ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class SystemTypeMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ClearNative
}
//// For converting WinRT's Windows.Foundation.HResult into System.Exception and vice versa.
//    [ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class HResultExceptionMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
}
//[ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
public class KeyValuePairMarshaler : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method ConvertToNative
    //TODO: generate method ConvertToManaged
    //TODO: generate method ConvertToManagedBox
}
//#endif // FEATURE_COMINTEROP
//
//    [StructLayout(LayoutKind.Sequential)]
public struct NativeVariant
{
    private ushort vt;
    private ushort wReserved1;
    private ushort wReserved2;
    private ushort wReserved3;
    private IntPtr data1;
    private IntPtr data2;
}
//#if !BIT64 && !FEATURE_CORECLR
//    // Structure filled by IL stubs if copy constructor(s) and destructor(s) need to be called
//    // on value types pushed on the stack. The structure is stored in s_copyCtorStubDesc by
//    // SetCopyCtorCookieChain and fetched by CopyCtorCallStubWorker. Must be stack-allocated.
//    [StructLayout(LayoutKind.Sequential)]
//    unsafe internal struct CopyCtorStubCookie
//    {
//        public void SetData(IntPtr srcInstancePtr, uint dstStackOffset, IntPtr ctorPtr, IntPtr dtorPtr)
//        {
//            m_srcInstancePtr = srcInstancePtr;
//            m_dstStackOffset = dstStackOffset;
//            m_ctorPtr = ctorPtr;
//            m_dtorPtr = dtorPtr;
//        }
//
//        public void SetNext(IntPtr pNext)
//        {
//            m_pNext = pNext;
//        }
//
//        public IntPtr m_srcInstancePtr; // pointer to the source instance
//        public uint   m_dstStackOffset; // offset from the start of stack arguments of the pushed 'this' instance
//
//        public IntPtr m_ctorPtr;        // fnptr to the managed copy constructor, result of ldftn
//        public IntPtr m_dtorPtr;        // fnptr to the managed destructor, result of ldftn
//
//        public IntPtr m_pNext;          // pointer to next cookie in the chain or IntPtr.Zero
//    }  // struct CopyCtorStubCookie
//
//    // Aggregates pointer to CopyCtorStubCookie and the target of the interop call.
//    [StructLayout(LayoutKind.Sequential)]
//    unsafe internal struct CopyCtorStubDesc
//    {
//        public IntPtr m_pCookie;
//        public IntPtr m_pTarget;
//    }  // struct CopyCtorStubDes
//#endif // !BIT64 && !FEATURE_CORECLR
//
//    // Aggregates SafeHandle and the "owned" bit which indicates whether the SafeHandle
//    // has been successfully AddRef'ed. This allows us to do realiable cleanup (Release)
//    // if and only if it is needed.
//    [System.Security.SecurityCritical]
public final class CleanupWorkListElement : DotNetObject
{
    //TODO: generate constructor
    public SafeHandle m_handle;
    public bool m_owned;
}
//[ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
//[System.Security.SecurityCritical]
public final class CleanupWorkList : DotNetObject
{
    private List1!(CleanupWorkListElement) m_list/*todo: implement initializer*/ = null;
    //TODO: generate method Add
    //TODO: generate method Destroy
}
//[System.Security.SecurityCritical]  // auto-generated
//[ReliabilityContract(Consistency.WillNotCorruptState, Cer.MayFail)]
//[SuppressUnmanagedCodeSecurityAttribute()]
public class StubHelpers : DotNetObject
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
