module mscorlib.Microsoft.Win32;

import mscorlib.System :
    __DotNet__Object,
    Type,
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    SerializableAttribute,
    IDisposable,
    IntPtr,
    String,
    FlagsAttribute,
    Void,
    Guid,
    UIntPtr,
    Version;
import mscorlib.System.Runtime.InteropServices :
    ComVisibleAttribute,
    StructLayoutAttribute,
    MarshalAsAttribute,
    BestFitMappingAttribute,
    FieldOffsetAttribute;
import mscorlib.System.Security :
    SecurityCriticalAttribute,
    SuppressUnmanagedCodeSecurityAttribute;
import mscorlib.Microsoft.Win32.SafeHandles :
    SafeRegistryHandle,
    SafeHandleZeroOrMinusOneIsInvalid;
import mscorlib.System.Security.Permissions :
    HostProtectionAttribute;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\Microsoft\Win32\OAVariantLib.cs'
//
public class OAVariantLib : __DotNet__Object
{
    private this() {} // prevent instantiation
    public enum int NoValueProp/*todo: implement initializer*/ = int();
    public enum int AlphaBool/*todo: implement initializer*/ = int();
    public enum int NoUserOverride/*todo: implement initializer*/ = int();
    public enum int CalendarHijri/*todo: implement initializer*/ = int();
    public enum int LocalBool/*todo: implement initializer*/ = int();
    public static immutable Type[] ClassTypes/*todo: implement initializer*/ = null;
    private enum int CV_OBJECT/*todo: implement initializer*/ = int();
    //TODO: generate method ChangeType
    //TODO: generate method GetCVTypeFromClass
    //TODO: generate method ChangeTypeEx
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\Microsoft\Win32\Registry.cs'
//
// *
// * Registry encapsulation. Contains members representing all top level system
// * keys.
// *
// * @security(checkClassLinking=on)
// 
//This class contains only static members and does not need to be serializable.
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class Registry : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate constructor
    public static immutable RegistryKey CurrentUser/*todo: implement initializer*/ = null;
    public static immutable RegistryKey LocalMachine/*todo: implement initializer*/ = null;
    public static immutable RegistryKey ClassesRoot/*todo: implement initializer*/ = null;
    public static immutable RegistryKey Users/*todo: implement initializer*/ = null;
    public static immutable RegistryKey PerformanceData/*todo: implement initializer*/ = null;
    public static immutable RegistryKey CurrentConfig/*todo: implement initializer*/ = null;
    //TODO: generate method GetBaseKeyFromKeyName
    //TODO: generate method GetValue
    //TODO: generate method SetValue
    //TODO: generate method SetValue
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\Microsoft\Win32\RegistryKey.cs'
//
// *
// * Registry hive values.  Useful only for GetRemoteBaseKey
// 
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum RegistryHive
{
    ClassesRoot = cast(int)0x80000000,
    CurrentUser = cast(int)0x80000001,
    LocalMachine = cast(int)0x80000002,
    Users = cast(int)0x80000003,
    PerformanceData = cast(int)0x80000004,
    CurrentConfig = cast(int)0x80000005,
}
// *
// * Registry encapsulation. To get an instance of a RegistryKey use the
// * Registry class's static members then call OpenSubKey.
// *
// * @see Registry
// * @security(checkDllCalls=off)
// * @security(checkClassLinking=on)
// 
// #if FEATURE_REMOTING
// [ComVisible(true)]
// public sealed class RegistryKey : MarshalByRefObject, IDisposable 
// #else
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class RegistryKey : __DotNet__Object, IDisposable
{
    public static immutable IntPtr HKEY_CLASSES_ROOT/*todo: implement initializer*/ = IntPtr();
    public static immutable IntPtr HKEY_CURRENT_USER/*todo: implement initializer*/ = IntPtr();
    public static immutable IntPtr HKEY_LOCAL_MACHINE/*todo: implement initializer*/ = IntPtr();
    public static immutable IntPtr HKEY_USERS/*todo: implement initializer*/ = IntPtr();
    public static immutable IntPtr HKEY_PERFORMANCE_DATA/*todo: implement initializer*/ = IntPtr();
    public static immutable IntPtr HKEY_CURRENT_CONFIG/*todo: implement initializer*/ = IntPtr();
    private enum int STATE_DIRTY/*todo: implement initializer*/ = int();
    private enum int STATE_SYSTEMKEY/*todo: implement initializer*/ = int();
    private enum int STATE_WRITEACCESS/*todo: implement initializer*/ = int();
    private enum int STATE_PERF_DATA/*todo: implement initializer*/ = int();
    private static immutable String[] hkeyNames/*todo: implement initializer*/ = null;
    private enum int MaxKeyLength/*todo: implement initializer*/ = int();
    private enum int MaxValueLength/*todo: implement initializer*/ = int();
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private /*todo: volatile*/ SafeRegistryHandle hkey/*todo: implement initializer*/ = null;
    private /*todo: volatile*/ int state/*todo: implement initializer*/ = int();
    private /*todo: volatile*/ String keyName;
    private /*todo: volatile*/ bool remoteKey/*todo: implement initializer*/ = bool();
    private /*todo: volatile*/ RegistryKeyPermissionCheck checkMode;
    private /*todo: volatile*/ RegistryView regView/*todo: implement initializer*/ = (cast(RegistryView)0);
    private enum RegistryInternalCheck
    {
        CheckSubKeyWritePermission = 0,
        CheckSubKeyReadPermission = 1,
        CheckSubKeyCreatePermission = 2,
        CheckSubTreeReadPermission = 3,
        CheckSubTreeWritePermission = 4,
        CheckSubTreeReadWritePermission = 5,
        CheckValueWritePermission = 6,
        CheckValueCreatePermission = 7,
        CheckValueReadPermission = 8,
        CheckKeyReadPermission = 9,
        CheckSubTreePermission = 10,
        CheckOpenSubKeyWithWritablePermission = 11,
        CheckOpenSubKeyPermission = 12,
    }
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Close
    //TODO: generate method Dispose
    //TODO: generate method Flush
    //TODO: generate method Dispose
    //TODO: generate method CreateSubKey
    //TODO: generate method CreateSubKey
    //TODO: generate method CreateSubKey
    //TODO: generate method CreateSubKey
    //TODO: generate method CreateSubKey
    //TODO: generate method CreateSubKeyInternal
    //TODO: generate method DeleteSubKey
    //TODO: generate method DeleteSubKey
    //TODO: generate method DeleteSubKeyTree
    //TODO: generate method DeleteSubKeyTree
    //TODO: generate method DeleteSubKeyTreeInternal
    //TODO: generate method DeleteValue
    //TODO: generate method DeleteValue
    //TODO: generate method GetBaseKey
    //TODO: generate method GetBaseKey
    //TODO: generate method OpenBaseKey
    //TODO: generate method OpenRemoteBaseKey
    //TODO: generate method OpenRemoteBaseKey
    //TODO: generate method OpenSubKey
    //TODO: generate method InternalOpenSubKey
    //TODO: generate method OpenSubKey
    //TODO: generate property 'SubKeyCount'
    //TODO: generate property 'View'
    //TODO: generate method InternalSubKeyCount
    //TODO: generate method GetSubKeyNames
    //TODO: generate method InternalGetSubKeyNames
    //TODO: generate property 'ValueCount'
    //TODO: generate method InternalValueCount
    //TODO: generate method GetValueNames
    //TODO: generate method GetValue
    //TODO: generate method GetValue
    //TODO: generate method GetValue
    //TODO: generate method InternalGetValue
    //TODO: generate method GetValueKind
    //TODO: generate method IsDirty
    //TODO: generate method IsSystemKey
    //TODO: generate method IsWritable
    //TODO: generate method IsPerfDataKey
    //TODO: generate property 'Name'
    //TODO: generate method SetDirty
    //TODO: generate method SetValue
    //TODO: generate method SetValue
    //TODO: generate method CalculateValueKind
    //TODO: generate method ToString
    //TODO: generate method Win32Error
    //TODO: generate method Win32ErrorStatic
    //TODO: generate method FixupName
    //TODO: generate method FixupPath
    //TODO: generate method GetSubKeyReadPermission
    //TODO: generate method GetSubKeyWritePermission
    //TODO: generate method GetSubKeyCreatePermission
    //TODO: generate method GetSubTreeReadPermission
    //TODO: generate method GetSubTreeWritePermission
    //TODO: generate method GetSubTreeReadWritePermission
    //TODO: generate method GetValueReadPermission
    //TODO: generate method GetValueWritePermission
    //TODO: generate method GetValueCreatePermission
    //TODO: generate method GetKeyReadPermission
    //TODO: generate method CheckPermission
    //TODO: generate method CheckUnmanagedCodePermission
    //TODO: generate method ContainsRegistryValue
    //TODO: generate method EnsureNotDisposed
    //TODO: generate method EnsureWriteable
    //TODO: generate method GetRegistryKeyAccess
    //TODO: generate method GetRegistryKeyAccess
    //TODO: generate method GetSubKeyPermissonCheck
    //TODO: generate method ValidateKeyName
    //TODO: generate method ValidateKeyMode
    //TODO: generate method ValidateKeyOptions
    //TODO: generate method ValidateKeyView
    private enum int FORMAT_MESSAGE_IGNORE_INSERTS/*todo: implement initializer*/ = int();
    private enum int FORMAT_MESSAGE_FROM_SYSTEM/*todo: implement initializer*/ = int();
    private enum int FORMAT_MESSAGE_ARGUMENT_ARRAY/*todo: implement initializer*/ = int();
}
@__DotNet__Attribute!(FlagsAttribute.stringof)
public enum RegistryValueOptions
{
    None = 0,
    DoNotExpandEnvironmentNames = 1,
}
public enum RegistryKeyPermissionCheck
{
    Default = 0,
    ReadSubTree = 1,
    ReadWriteSubTree = 2,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\Microsoft\Win32\RegistryOptions.cs'
//
@__DotNet__Attribute!(FlagsAttribute.stringof)
public enum RegistryOptions
{
    None = /*MemberExpression:Type*/Win32Native.REG_OPTION_NON_VOLATILE,
    Volatile = /*MemberExpression:Type*/Win32Native.REG_OPTION_VOLATILE,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\Microsoft\Win32\RegistryValueKind.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum RegistryValueKind
{
    String = /*MemberExpression:Type*/Win32Native.REG_SZ,
    ExpandString = /*MemberExpression:Type*/Win32Native.REG_EXPAND_SZ,
    Binary = /*MemberExpression:Type*/Win32Native.REG_BINARY,
    DWord = /*MemberExpression:Type*/Win32Native.REG_DWORD,
    MultiString = /*MemberExpression:Type*/Win32Native.REG_MULTI_SZ,
    QWord = /*MemberExpression:Type*/Win32Native.REG_QWORD,
    Unknown = 0,
    None = cast(int)0xFFFFFFFF,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\Microsoft\Win32\RegistryView.cs'
//
public enum RegistryView
{
    Default = 0,
    Registry64 = /*MemberExpression:Type*/Win32Native.KEY_WOW64_64KEY,
    Registry32 = /*MemberExpression:Type*/Win32Native.KEY_WOW64_32KEY,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\Microsoft\Win32\SafeHandles\SafeLibraryHandle.cs'
//
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
public final class SafeLibraryHandle : SafeHandleZeroOrMinusOneIsInvalid
{
    //TODO: generate constructor
    //TODO: generate method ReleaseHandle
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\Microsoft\Win32\UnsafeNativeMethods.cs'
//
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
@__DotNet__Attribute!(SuppressUnmanagedCodeSecurityAttribute.stringof/**/)
public class UnsafeNativeMethods : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method GetTimeZoneInformation
    //TODO: generate method GetDynamicTimeZoneInformation
    //TODO: generate method GetFileMUIPath
    //TODO: generate method LoadString
    //TODO: generate method LoadLibraryEx
    //TODO: generate method FreeLibrary
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    @__DotNet__Attribute!(SuppressUnmanagedCodeSecurityAttribute.stringof/**/)
    public static class ManifestEtw : __DotNet__Object
    {
        private this() {} // prevent instantiation
        public enum int ERROR_ARITHMETIC_OVERFLOW/*todo: implement initializer*/ = int();
        public enum int ERROR_NOT_ENOUGH_MEMORY/*todo: implement initializer*/ = int();
        public enum int ERROR_MORE_DATA/*todo: implement initializer*/ = int();
        public enum int ERROR_NOT_SUPPORTED/*todo: implement initializer*/ = int();
        public enum int ERROR_INVALID_PARAMETER/*todo: implement initializer*/ = int();
        public enum int EVENT_CONTROL_CODE_DISABLE_PROVIDER/*todo: implement initializer*/ = int();
        public enum int EVENT_CONTROL_CODE_ENABLE_PROVIDER/*todo: implement initializer*/ = int();
        public enum int EVENT_CONTROL_CODE_CAPTURE_STATE/*todo: implement initializer*/ = int();
        //
        // Callback
        //
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        public alias EtwEnableCallback = void delegate(/*todo: param attributes*/ref Guid sourceId, /*todo: param attributes*/int isEnabled, /*todo: param attributes*/ubyte level, /*todo: param attributes*/long matchAnyKeywords, /*todo: param attributes*/long matchAllKeywords, /*todo: param attributes*/EVENT_FILTER_DESCRIPTOR* filterData, /*todo: param attributes*/Void* callbackContext);
        //TODO: generate method EventRegister
        //TODO: generate method EventUnregister
        //TODO: generate method EventWrite
        //TODO: generate method EventWriteString
        @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
        public static struct EVENT_FILTER_DESCRIPTOR
        {
            public long Ptr;
            public int Size;
            public int Type;
        }
        //TODO: generate method EventWriteTransferWrapper
        //TODO: generate method EventWriteTransfer
        public enum ActivityControl : uint
        {
            EVENT_ACTIVITY_CTRL_GET_ID = 1,
            EVENT_ACTIVITY_CTRL_SET_ID = 2,
            EVENT_ACTIVITY_CTRL_CREATE_ID = 3,
            EVENT_ACTIVITY_CTRL_GET_SET_ID = 4,
            EVENT_ACTIVITY_CTRL_CREATE_SET_ID = 5,
        }
        //TODO: generate method EventActivityIdControl
        public enum EVENT_INFO_CLASS
        {
            BinaryTrackInfo,
            SetEnableAllKeywords,
            SetTraits,
        }
        //TODO: generate method EventSetInformation
        public enum TRACE_QUERY_INFO_CLASS
        {
            TraceGuidQueryList,
            TraceGuidQueryInfo,
            TraceGuidQueryProcess,
            TraceStackTracingInfo,
            MaxTraceSetInfoClass,
        }
        public static struct TRACE_GUID_INFO
        {
            public int InstanceCount;
            public int Reserved;
        }
        public static struct TRACE_PROVIDER_INSTANCE_INFO
        {
            public int NextOffset;
            public int EnableCount;
            public int Pid;
            public int Flags;
        }
        public static struct TRACE_ENABLE_INFO
        {
            public int IsEnabled;
            public ubyte Level;
            public ubyte Reserved1;
            public ushort LoggerId;
            public int EnableProperty;
            public int Reserved2;
            public long MatchAnyKeyword;
            public long MatchAllKeyword;
        }
        //TODO: generate method EnumerateTraceGuidsEx
    }
    //TODO: generate method RoGetActivationFactory
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\Microsoft\Win32\Win32Native.cs'
//
// *
// * Win32 encapsulation for MSCORLIB.
// 
// Remove the default demands for all P/Invoke methods with this
// global declaration on the class.
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
@__DotNet__Attribute!(SuppressUnmanagedCodeSecurityAttribute.stringof/**/)
public class Win32Native : __DotNet__Object
{
    private this() {} // prevent instantiation
    public enum int KEY_QUERY_VALUE/*todo: implement initializer*/ = int();
    public enum int KEY_SET_VALUE/*todo: implement initializer*/ = int();
    public enum int KEY_CREATE_SUB_KEY/*todo: implement initializer*/ = int();
    public enum int KEY_ENUMERATE_SUB_KEYS/*todo: implement initializer*/ = int();
    public enum int KEY_NOTIFY/*todo: implement initializer*/ = int();
    public enum int KEY_CREATE_LINK/*todo: implement initializer*/ = int();
    public enum int KEY_READ/*todo: implement initializer*/ = int();
    public enum int KEY_WRITE/*todo: implement initializer*/ = int();
    public enum int KEY_WOW64_64KEY/*todo: implement initializer*/ = int();
    public enum int KEY_WOW64_32KEY/*todo: implement initializer*/ = int();
    public enum int REG_OPTION_NON_VOLATILE/*todo: implement initializer*/ = int();
    public enum int REG_OPTION_VOLATILE/*todo: implement initializer*/ = int();
    public enum int REG_OPTION_CREATE_LINK/*todo: implement initializer*/ = int();
    public enum int REG_OPTION_BACKUP_RESTORE/*todo: implement initializer*/ = int();
    public enum int REG_NONE/*todo: implement initializer*/ = int();
    public enum int REG_SZ/*todo: implement initializer*/ = int();
    public enum int REG_EXPAND_SZ/*todo: implement initializer*/ = int();
    public enum int REG_BINARY/*todo: implement initializer*/ = int();
    public enum int REG_DWORD/*todo: implement initializer*/ = int();
    public enum int REG_DWORD_LITTLE_ENDIAN/*todo: implement initializer*/ = int();
    public enum int REG_DWORD_BIG_ENDIAN/*todo: implement initializer*/ = int();
    public enum int REG_LINK/*todo: implement initializer*/ = int();
    public enum int REG_MULTI_SZ/*todo: implement initializer*/ = int();
    public enum int REG_RESOURCE_LIST/*todo: implement initializer*/ = int();
    public enum int REG_FULL_RESOURCE_DESCRIPTOR/*todo: implement initializer*/ = int();
    public enum int REG_RESOURCE_REQUIREMENTS_LIST/*todo: implement initializer*/ = int();
    public enum int REG_QWORD/*todo: implement initializer*/ = int();
    public enum int HWND_BROADCAST/*todo: implement initializer*/ = int();
    public enum int WM_SETTINGCHANGE/*todo: implement initializer*/ = int();
    public enum uint CRYPTPROTECTMEMORY_BLOCK_SIZE/*todo: implement initializer*/ = uint();
    public enum uint CRYPTPROTECTMEMORY_SAME_PROCESS/*todo: implement initializer*/ = uint();
    public enum uint CRYPTPROTECTMEMORY_CROSS_PROCESS/*todo: implement initializer*/ = uint();
    public enum uint CRYPTPROTECTMEMORY_SAME_LOGON/*todo: implement initializer*/ = uint();
    public enum int SECURITY_ANONYMOUS/*todo: implement initializer*/ = int();
    public enum int SECURITY_SQOS_PRESENT/*todo: implement initializer*/ = int();
    public enum String MICROSOFT_KERBEROS_NAME/*todo: implement initializer*/ = null;
    public enum uint ANONYMOUS_LOGON_LUID/*todo: implement initializer*/ = uint();
    public enum int SECURITY_ANONYMOUS_LOGON_RID/*todo: implement initializer*/ = int();
    public enum int SECURITY_AUTHENTICATED_USER_RID/*todo: implement initializer*/ = int();
    public enum int SECURITY_LOCAL_SYSTEM_RID/*todo: implement initializer*/ = int();
    public enum int SECURITY_BUILTIN_DOMAIN_RID/*todo: implement initializer*/ = int();
    public enum uint SE_PRIVILEGE_DISABLED/*todo: implement initializer*/ = uint();
    public enum uint SE_PRIVILEGE_ENABLED_BY_DEFAULT/*todo: implement initializer*/ = uint();
    public enum uint SE_PRIVILEGE_ENABLED/*todo: implement initializer*/ = uint();
    public enum uint SE_PRIVILEGE_USED_FOR_ACCESS/*todo: implement initializer*/ = uint();
    public enum uint SE_GROUP_MANDATORY/*todo: implement initializer*/ = uint();
    public enum uint SE_GROUP_ENABLED_BY_DEFAULT/*todo: implement initializer*/ = uint();
    public enum uint SE_GROUP_ENABLED/*todo: implement initializer*/ = uint();
    public enum uint SE_GROUP_OWNER/*todo: implement initializer*/ = uint();
    public enum uint SE_GROUP_USE_FOR_DENY_ONLY/*todo: implement initializer*/ = uint();
    public enum uint SE_GROUP_LOGON_ID/*todo: implement initializer*/ = uint();
    public enum uint SE_GROUP_RESOURCE/*todo: implement initializer*/ = uint();
    public enum uint DUPLICATE_CLOSE_SOURCE/*todo: implement initializer*/ = uint();
    public enum uint DUPLICATE_SAME_ACCESS/*todo: implement initializer*/ = uint();
    public enum uint DUPLICATE_SAME_ATTRIBUTES/*todo: implement initializer*/ = uint();
    public enum int TIME_ZONE_ID_INVALID/*todo: implement initializer*/ = int();
    public enum int TIME_ZONE_ID_UNKNOWN/*todo: implement initializer*/ = int();
    public enum int TIME_ZONE_ID_STANDARD/*todo: implement initializer*/ = int();
    public enum int TIME_ZONE_ID_DAYLIGHT/*todo: implement initializer*/ = int();
    public enum int MAX_PATH/*todo: implement initializer*/ = int();
    public enum int MUI_LANGUAGE_ID/*todo: implement initializer*/ = int();
    public enum int MUI_LANGUAGE_NAME/*todo: implement initializer*/ = int();
    public enum int MUI_PREFERRED_UI_LANGUAGES/*todo: implement initializer*/ = int();
    public enum int MUI_INSTALLED_LANGUAGES/*todo: implement initializer*/ = int();
    public enum int MUI_ALL_LANGUAGES/*todo: implement initializer*/ = int();
    public enum int MUI_LANG_NEUTRAL_PE_FILE/*todo: implement initializer*/ = int();
    public enum int MUI_NON_LANG_NEUTRAL_FILE/*todo: implement initializer*/ = int();
    public enum int LOAD_LIBRARY_AS_DATAFILE/*todo: implement initializer*/ = int();
    public enum int LOAD_STRING_MAX_LENGTH/*todo: implement initializer*/ = int();
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static struct SystemTime
    {
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.U2*/)
        public short Year;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.U2*/)
        public short Month;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.U2*/)
        public short DayOfWeek;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.U2*/)
        public short Day;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.U2*/)
        public short Hour;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.U2*/)
        public short Minute;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.U2*/)
        public short Second;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.U2*/)
        public short Milliseconds;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet = CharSet.Unicode*/)
    public static struct TimeZoneInformation
    {
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.I4*/)
        public int Bias;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.ByValTStr, SizeConst = 32*/)
        public String StandardName;
        public SystemTime StandardDate;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.I4*/)
        public int StandardBias;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.ByValTStr, SizeConst = 32*/)
        public String DaylightName;
        public SystemTime DaylightDate;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.I4*/)
        public int DaylightBias;
        //TODO: generate constructor
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet = CharSet.Unicode*/)
    public static struct DynamicTimeZoneInformation
    {
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.I4*/)
        public int Bias;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.ByValTStr, SizeConst = 32*/)
        public String StandardName;
        public SystemTime StandardDate;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.I4*/)
        public int StandardBias;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.ByValTStr, SizeConst = 32*/)
        public String DaylightName;
        public SystemTime DaylightDate;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.I4*/)
        public int DaylightBias;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.ByValTStr, SizeConst = 128*/)
        public String TimeZoneKeyName;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.Bool*/)
        public bool DynamicDaylightTimeDisabled;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static struct RegistryTimeZoneInformation
    {
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.I4*/)
        public int Bias;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.I4*/)
        public int StandardBias;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.I4*/)
        public int DaylightBias;
        public SystemTime StandardDate;
        public SystemTime DaylightDate;
        //TODO: generate constructor
        //TODO: generate constructor
    }
    public enum int READ_CONTROL/*todo: implement initializer*/ = int();
    public enum int SYNCHRONIZE/*todo: implement initializer*/ = int();
    public enum int STANDARD_RIGHTS_READ/*todo: implement initializer*/ = int();
    public enum int STANDARD_RIGHTS_WRITE/*todo: implement initializer*/ = int();
    public enum int SEMAPHORE_MODIFY_STATE/*todo: implement initializer*/ = int();
    public enum int EVENT_MODIFY_STATE/*todo: implement initializer*/ = int();
    public enum int MUTEX_MODIFY_STATE/*todo: implement initializer*/ = int();
    public enum int MUTEX_ALL_ACCESS/*todo: implement initializer*/ = int();
    public enum int LMEM_FIXED/*todo: implement initializer*/ = int();
    public enum int LMEM_ZEROINIT/*todo: implement initializer*/ = int();
    public enum int LPTR/*todo: implement initializer*/ = int();
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Auto*/)
    public static class OSVERSIONINFO : __DotNet__Object
    {
        //TODO: generate constructor
        public int OSVersionInfoSize/*todo: implement initializer*/ = int();
        public int MajorVersion/*todo: implement initializer*/ = int();
        public int MinorVersion/*todo: implement initializer*/ = int();
        public int BuildNumber/*todo: implement initializer*/ = int();
        public int PlatformId/*todo: implement initializer*/ = int();
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.ByValTStr, SizeConst=128*/)
        public String CSDVersion/*todo: implement initializer*/ = null;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Auto*/)
    public static class OSVERSIONINFOEX : __DotNet__Object
    {
        //TODO: generate constructor
        public int OSVersionInfoSize/*todo: implement initializer*/ = int();
        public int MajorVersion/*todo: implement initializer*/ = int();
        public int MinorVersion/*todo: implement initializer*/ = int();
        public int BuildNumber/*todo: implement initializer*/ = int();
        public int PlatformId/*todo: implement initializer*/ = int();
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.ByValTStr, SizeConst=128*/)
        public String CSDVersion/*todo: implement initializer*/ = null;
        public ushort ServicePackMajor/*todo: implement initializer*/ = ushort();
        public ushort ServicePackMinor/*todo: implement initializer*/ = ushort();
        public short SuiteMask/*todo: implement initializer*/ = short();
        public ubyte ProductType/*todo: implement initializer*/ = ubyte();
        public ubyte Reserved/*todo: implement initializer*/ = ubyte();
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static struct SYSTEM_INFO
    {
        public int dwOemId;
        public int dwPageSize;
        public IntPtr lpMinimumApplicationAddress;
        public IntPtr lpMaximumApplicationAddress;
        public IntPtr dwActiveProcessorMask;
        public int dwNumberOfProcessors;
        public int dwProcessorType;
        public int dwAllocationGranularity;
        public short wProcessorLevel;
        public short wProcessorRevision;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static class SECURITY_ATTRIBUTES : __DotNet__Object
    {
        public int nLength/*todo: implement initializer*/ = int();
        public ubyte* pSecurityDescriptor/*todo: implement initializer*/ = null;
        public int bInheritHandle/*todo: implement initializer*/ = int();
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static struct WIN32_FILE_ATTRIBUTE_DATA
    {
        public int fileAttributes;
        public uint ftCreationTimeLow;
        public uint ftCreationTimeHigh;
        public uint ftLastAccessTimeLow;
        public uint ftLastAccessTimeHigh;
        public uint ftLastWriteTimeLow;
        public uint ftLastWriteTimeHigh;
        public int fileSizeHigh;
        public int fileSizeLow;
        //TODO: generate method PopulateFrom
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static struct FILE_TIME
    {
        //TODO: generate constructor
        //TODO: generate method ToTicks
        public uint ftTimeLow;
        public uint ftTimeHigh;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    public static struct KERB_S4U_LOGON
    {
        public uint MessageType;
        public uint Flags;
        public UNICODE_INTPTR_STRING ClientUpn;
        public UNICODE_INTPTR_STRING ClientRealm;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static struct LSA_OBJECT_ATTRIBUTES
    {
        public int Length;
        public IntPtr RootDirectory;
        public IntPtr ObjectName;
        public int Attributes;
        public IntPtr SecurityDescriptor;
        public IntPtr SecurityQualityOfService;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    public static struct UNICODE_STRING
    {
        public ushort Length;
        public ushort MaximumLength;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.LPWStr*/)
        public String Buffer;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    public static struct UNICODE_INTPTR_STRING
    {
        //TODO: generate constructor
        //TODO: generate constructor
        public ushort Length;
        public ushort MaxLength;
        public IntPtr Buffer;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static struct LSA_TRANSLATED_NAME
    {
        public int Use;
        public UNICODE_INTPTR_STRING Name;
        public int DomainIndex;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static struct LSA_TRANSLATED_SID
    {
        public int Use;
        public uint Rid;
        public int DomainIndex;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static struct LSA_TRANSLATED_SID2
    {
        public int Use;
        public IntPtr Sid;
        public int DomainIndex;
        private uint Flags;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static struct LSA_TRUST_INFORMATION
    {
        public UNICODE_INTPTR_STRING Name;
        public IntPtr Sid;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static struct LSA_REFERENCED_DOMAIN_LIST
    {
        public int Entries;
        public IntPtr Domains;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    public static struct LUID
    {
        public uint LowPart;
        public uint HighPart;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    public static struct LUID_AND_ATTRIBUTES
    {
        public LUID Luid;
        public uint Attributes;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    public static struct QUOTA_LIMITS
    {
        public IntPtr PagedPoolLimit;
        public IntPtr NonPagedPoolLimit;
        public IntPtr MinimumWorkingSetSize;
        public IntPtr MaximumWorkingSetSize;
        public IntPtr PagefileLimit;
        public IntPtr TimeLimit;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    public static struct SECURITY_LOGON_SESSION_DATA
    {
        public uint Size;
        public LUID LogonId;
        public UNICODE_INTPTR_STRING UserName;
        public UNICODE_INTPTR_STRING LogonDomain;
        public UNICODE_INTPTR_STRING AuthenticationPackage;
        public uint LogonType;
        public uint Session;
        public IntPtr Sid;
        public long LogonTime;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    public static struct SID_AND_ATTRIBUTES
    {
        public IntPtr Sid;
        public uint Attributes;
        public static immutable long SizeOf/*todo: implement initializer*/ = long();
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    public static struct TOKEN_GROUPS
    {
        public uint GroupCount;
        public SID_AND_ATTRIBUTES Groups;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet = CharSet.Unicode*/)
    public static struct TOKEN_PRIMARY_GROUP
    {
        public IntPtr PrimaryGroup;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    public static struct TOKEN_PRIVILEGE
    {
        public uint PrivilegeCount;
        public LUID_AND_ATTRIBUTES Privilege;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    public static struct TOKEN_SOURCE
    {
        private enum int TOKEN_SOURCE_LENGTH/*todo: implement initializer*/ = int();
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.ByValArray, SizeConst=TOKEN_SOURCE_LENGTH*/)
        public wchar[] Name;
        public LUID SourceIdentifier;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    public static struct TOKEN_STATISTICS
    {
        public LUID TokenId;
        public LUID AuthenticationId;
        public long ExpirationTime;
        public uint TokenType;
        public uint ImpersonationLevel;
        public uint DynamicCharged;
        public uint DynamicAvailable;
        public uint GroupCount;
        public uint PrivilegeCount;
        public LUID ModifiedId;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    public static struct TOKEN_USER
    {
        public SID_AND_ATTRIBUTES User;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static struct MEMORYSTATUSEX
    {
        public int length;
        public int memoryLoad;
        public ulong totalPhys;
        public ulong availPhys;
        public ulong totalPageFile;
        public ulong availPageFile;
        public ulong totalVirtual;
        public ulong availVirtual;
        public ulong availExtendedVirtual;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static struct MEMORY_BASIC_INFORMATION
    {
        public Void* BaseAddress;
        public Void* AllocationBase;
        public uint AllocationProtect;
        public UIntPtr RegionSize;
        public uint State;
        public uint Protect;
        public uint Type;
    }
    public enum String KERNEL32/*todo: implement initializer*/ = null;
    public enum String USER32/*todo: implement initializer*/ = null;
    public enum String OLE32/*todo: implement initializer*/ = null;
    public enum String OLEAUT32/*todo: implement initializer*/ = null;
    public enum String NTDLL/*todo: implement initializer*/ = null;
    public enum String ADVAPI32/*todo: implement initializer*/ = null;
    public enum String SHELL32/*todo: implement initializer*/ = null;
    public enum String SHIM/*todo: implement initializer*/ = null;
    public enum String CRYPT32/*todo: implement initializer*/ = null;
    public enum String SECUR32/*todo: implement initializer*/ = null;
    public enum String MSCORWKS/*todo: implement initializer*/ = null;
    public enum int SEM_FAILCRITICALERRORS/*todo: implement initializer*/ = int();
    //TODO: generate method GetSystemInfo
    //TODO: generate method FormatMessage
    //TODO: generate method GetMessage
    //TODO: generate method LocalAlloc_NoSafeHandle
    //TODO: generate method LocalAlloc
    //TODO: generate method LocalFree
    //TODO: generate method ZeroMemory
    //TODO: generate method GlobalMemoryStatusEx
    //TODO: generate method GlobalMemoryStatusExNative
    //TODO: generate method VirtualQuery
    //TODO: generate method VirtualAlloc
    //TODO: generate method VirtualFree
    //TODO: generate method GetProcAddress
    //TODO: generate method GetModuleHandle
    //TODO: generate method DoesWin32MethodExist
    //TODO: generate method IsWow64Process
    //TODO: generate method GetTempPath
    //TODO: generate method lstrlenA
    //TODO: generate method lstrlenW
    //TODO: generate method SysAllocStringLen
    //TODO: generate method SysStringLen
    //TODO: generate method SysFreeString
    //TODO: generate method SysAllocStringByteLen
    //TODO: generate method SysStringByteLen
    //TODO: generate method GetACP
    //TODO: generate method SetEvent
    //TODO: generate method ResetEvent
    //TODO: generate method CreateEvent
    //TODO: generate method OpenEvent
    //TODO: generate method CreateMutex
    //TODO: generate method OpenMutex
    //TODO: generate method ReleaseMutex
    //TODO: generate method GetFullPathName
    //TODO: generate method GetFullPathName
    //TODO: generate method GetLongPathName
    //TODO: generate method GetFullPathNameW
    //TODO: generate method GetLongPathName
    //TODO: generate method GetLongPathNameW
    //TODO: generate method GetLongPathNameW
    //TODO: generate method SafeCreateFile
    //TODO: generate method UnsafeCreateFile
    //TODO: generate method CreateFile
    //TODO: generate method CreateFileMapping
    //TODO: generate method MapViewOfFile
    //TODO: generate method UnmapViewOfFile
    //TODO: generate method CloseHandle
    //TODO: generate method GetFileType
    //TODO: generate method SetEndOfFile
    //TODO: generate method FlushFileBuffers
    //TODO: generate method SetFilePointerWin32
    //TODO: generate method SetFilePointer
    //TODO: generate method ReadFile
    //TODO: generate method ReadFile
    //TODO: generate method WriteFile
    //TODO: generate method WriteFile
    //TODO: generate method CancelIoEx
    //TODO: generate method GetDiskFreeSpaceEx
    //TODO: generate method GetDriveType
    //TODO: generate method GetVolumeInformation
    //TODO: generate method SetVolumeLabel
    //TODO: generate method QueryPerformanceCounter
    //TODO: generate method QueryPerformanceFrequency
    //TODO: generate method CreateSemaphore
    //TODO: generate method ReleaseSemaphore
    //TODO: generate method OpenSemaphore
    public enum int FIND_STARTSWITH/*todo: implement initializer*/ = int();
    public enum int FIND_ENDSWITH/*todo: implement initializer*/ = int();
    public enum int FIND_FROMSTART/*todo: implement initializer*/ = int();
    public enum int FIND_FROMEND/*todo: implement initializer*/ = int();
    //TODO: generate method GetWindowsDirectory
    //TODO: generate method GetSystemDirectory
    //TODO: generate method SetFileTime
    //TODO: generate method GetFileSize
    //TODO: generate method LockFile
    //TODO: generate method UnlockFile
    public static immutable IntPtr INVALID_HANDLE_VALUE/*todo: implement initializer*/ = IntPtr();
    public enum int STD_INPUT_HANDLE/*todo: implement initializer*/ = int();
    public enum int STD_OUTPUT_HANDLE/*todo: implement initializer*/ = int();
    public enum int STD_ERROR_HANDLE/*todo: implement initializer*/ = int();
    //TODO: generate method GetStdHandle
    public enum int CTRL_C_EVENT/*todo: implement initializer*/ = int();
    public enum int CTRL_BREAK_EVENT/*todo: implement initializer*/ = int();
    public enum int CTRL_CLOSE_EVENT/*todo: implement initializer*/ = int();
    public enum int CTRL_LOGOFF_EVENT/*todo: implement initializer*/ = int();
    public enum int CTRL_SHUTDOWN_EVENT/*todo: implement initializer*/ = int();
    public enum short KEY_EVENT/*todo: implement initializer*/ = short();
    public enum int FILE_TYPE_DISK/*todo: implement initializer*/ = int();
    public enum int FILE_TYPE_CHAR/*todo: implement initializer*/ = int();
    public enum int FILE_TYPE_PIPE/*todo: implement initializer*/ = int();
    public enum int REPLACEFILE_WRITE_THROUGH/*todo: implement initializer*/ = int();
    public enum int REPLACEFILE_IGNORE_MERGE_ERRORS/*todo: implement initializer*/ = int();
    private enum int FORMAT_MESSAGE_IGNORE_INSERTS/*todo: implement initializer*/ = int();
    private enum int FORMAT_MESSAGE_FROM_SYSTEM/*todo: implement initializer*/ = int();
    private enum int FORMAT_MESSAGE_ARGUMENT_ARRAY/*todo: implement initializer*/ = int();
    public enum uint FILE_MAP_WRITE/*todo: implement initializer*/ = uint();
    public enum uint FILE_MAP_READ/*todo: implement initializer*/ = uint();
    public enum int FILE_ATTRIBUTE_READONLY/*todo: implement initializer*/ = int();
    public enum int FILE_ATTRIBUTE_DIRECTORY/*todo: implement initializer*/ = int();
    public enum int FILE_ATTRIBUTE_REPARSE_POINT/*todo: implement initializer*/ = int();
    public enum int IO_REPARSE_TAG_MOUNT_POINT/*todo: implement initializer*/ = int();
    public enum int PAGE_READWRITE/*todo: implement initializer*/ = int();
    public enum int MEM_COMMIT/*todo: implement initializer*/ = int();
    public enum int MEM_RESERVE/*todo: implement initializer*/ = int();
    public enum int MEM_RELEASE/*todo: implement initializer*/ = int();
    public enum int MEM_FREE/*todo: implement initializer*/ = int();
    public enum int ERROR_SUCCESS/*todo: implement initializer*/ = int();
    public enum int ERROR_INVALID_FUNCTION/*todo: implement initializer*/ = int();
    public enum int ERROR_FILE_NOT_FOUND/*todo: implement initializer*/ = int();
    public enum int ERROR_PATH_NOT_FOUND/*todo: implement initializer*/ = int();
    public enum int ERROR_ACCESS_DENIED/*todo: implement initializer*/ = int();
    public enum int ERROR_INVALID_HANDLE/*todo: implement initializer*/ = int();
    public enum int ERROR_NOT_ENOUGH_MEMORY/*todo: implement initializer*/ = int();
    public enum int ERROR_INVALID_DATA/*todo: implement initializer*/ = int();
    public enum int ERROR_INVALID_DRIVE/*todo: implement initializer*/ = int();
    public enum int ERROR_NO_MORE_FILES/*todo: implement initializer*/ = int();
    public enum int ERROR_NOT_READY/*todo: implement initializer*/ = int();
    public enum int ERROR_BAD_LENGTH/*todo: implement initializer*/ = int();
    public enum int ERROR_SHARING_VIOLATION/*todo: implement initializer*/ = int();
    public enum int ERROR_NOT_SUPPORTED/*todo: implement initializer*/ = int();
    public enum int ERROR_FILE_EXISTS/*todo: implement initializer*/ = int();
    public enum int ERROR_INVALID_PARAMETER/*todo: implement initializer*/ = int();
    public enum int ERROR_BROKEN_PIPE/*todo: implement initializer*/ = int();
    public enum int ERROR_CALL_NOT_IMPLEMENTED/*todo: implement initializer*/ = int();
    public enum int ERROR_INSUFFICIENT_BUFFER/*todo: implement initializer*/ = int();
    public enum int ERROR_INVALID_NAME/*todo: implement initializer*/ = int();
    public enum int ERROR_BAD_PATHNAME/*todo: implement initializer*/ = int();
    public enum int ERROR_ALREADY_EXISTS/*todo: implement initializer*/ = int();
    public enum int ERROR_ENVVAR_NOT_FOUND/*todo: implement initializer*/ = int();
    public enum int ERROR_FILENAME_EXCED_RANGE/*todo: implement initializer*/ = int();
    public enum int ERROR_NO_DATA/*todo: implement initializer*/ = int();
    public enum int ERROR_PIPE_NOT_CONNECTED/*todo: implement initializer*/ = int();
    public enum int ERROR_MORE_DATA/*todo: implement initializer*/ = int();
    public enum int ERROR_DIRECTORY/*todo: implement initializer*/ = int();
    public enum int ERROR_OPERATION_ABORTED/*todo: implement initializer*/ = int();
    public enum int ERROR_NOT_FOUND/*todo: implement initializer*/ = int();
    public enum int ERROR_NO_TOKEN/*todo: implement initializer*/ = int();
    public enum int ERROR_DLL_INIT_FAILED/*todo: implement initializer*/ = int();
    public enum int ERROR_NON_ACCOUNT_SID/*todo: implement initializer*/ = int();
    public enum int ERROR_NOT_ALL_ASSIGNED/*todo: implement initializer*/ = int();
    public enum int ERROR_UNKNOWN_REVISION/*todo: implement initializer*/ = int();
    public enum int ERROR_INVALID_OWNER/*todo: implement initializer*/ = int();
    public enum int ERROR_INVALID_PRIMARY_GROUP/*todo: implement initializer*/ = int();
    public enum int ERROR_NO_SUCH_PRIVILEGE/*todo: implement initializer*/ = int();
    public enum int ERROR_PRIVILEGE_NOT_HELD/*todo: implement initializer*/ = int();
    public enum int ERROR_NONE_MAPPED/*todo: implement initializer*/ = int();
    public enum int ERROR_INVALID_ACL/*todo: implement initializer*/ = int();
    public enum int ERROR_INVALID_SID/*todo: implement initializer*/ = int();
    public enum int ERROR_INVALID_SECURITY_DESCR/*todo: implement initializer*/ = int();
    public enum int ERROR_BAD_IMPERSONATION_LEVEL/*todo: implement initializer*/ = int();
    public enum int ERROR_CANT_OPEN_ANONYMOUS/*todo: implement initializer*/ = int();
    public enum int ERROR_NO_SECURITY_ON_OBJECT/*todo: implement initializer*/ = int();
    public enum int ERROR_TRUSTED_RELATIONSHIP_FAILURE/*todo: implement initializer*/ = int();
    public enum uint STATUS_SUCCESS/*todo: implement initializer*/ = uint();
    public enum uint STATUS_SOME_NOT_MAPPED/*todo: implement initializer*/ = uint();
    public enum uint STATUS_NO_MEMORY/*todo: implement initializer*/ = uint();
    public enum uint STATUS_OBJECT_NAME_NOT_FOUND/*todo: implement initializer*/ = uint();
    public enum uint STATUS_NONE_MAPPED/*todo: implement initializer*/ = uint();
    public enum uint STATUS_INSUFFICIENT_RESOURCES/*todo: implement initializer*/ = uint();
    public enum uint STATUS_ACCESS_DENIED/*todo: implement initializer*/ = uint();
    public enum int INVALID_FILE_SIZE/*todo: implement initializer*/ = int();
    public enum int STATUS_ACCOUNT_RESTRICTION/*todo: implement initializer*/ = int();
    //TODO: generate method MakeHRFromErrorCode
    // Win32 Structs in N/Direct style
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Auto*/)
    @__DotNet__Attribute!(BestFitMappingAttribute.stringof/*, false*/)
    public static class WIN32_FIND_DATA : __DotNet__Object
    {
        public int dwFileAttributes/*todo: implement initializer*/ = int();
        public uint ftCreationTime_dwLowDateTime/*todo: implement initializer*/ = uint();
        public uint ftCreationTime_dwHighDateTime/*todo: implement initializer*/ = uint();
        public uint ftLastAccessTime_dwLowDateTime/*todo: implement initializer*/ = uint();
        public uint ftLastAccessTime_dwHighDateTime/*todo: implement initializer*/ = uint();
        public uint ftLastWriteTime_dwLowDateTime/*todo: implement initializer*/ = uint();
        public uint ftLastWriteTime_dwHighDateTime/*todo: implement initializer*/ = uint();
        public int nFileSizeHigh/*todo: implement initializer*/ = int();
        public int nFileSizeLow/*todo: implement initializer*/ = int();
        public int dwReserved0/*todo: implement initializer*/ = int();
        public int dwReserved1/*todo: implement initializer*/ = int();
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.ByValTStr, SizeConst=260*/)
        public String cFileName/*todo: implement initializer*/ = null;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.ByValTStr, SizeConst=14*/)
        public String cAlternateFileName/*todo: implement initializer*/ = null;
    }
    //TODO: generate method CopyFileEx
    //TODO: generate method CopyFile
    //TODO: generate method CreateDirectory
    //TODO: generate method DeleteFile
    //TODO: generate method ReplaceFile
    //TODO: generate method DecryptFile
    //TODO: generate method EncryptFile
    //TODO: generate method FindFirstFile
    //TODO: generate method FindNextFile
    //TODO: generate method FindClose
    //TODO: generate method GetCurrentDirectory
    //TODO: generate method GetCurrentDirectoryW
    //TODO: generate method GetFileAttributesEx
    //TODO: generate method SetFileAttributes
    //TODO: generate method GetLogicalDrives
    //TODO: generate method GetTempFileName
    //TODO: generate method MoveFileEx
    //TODO: generate method MoveFile
    //TODO: generate method DeleteVolumeMountPoint
    //TODO: generate method RemoveDirectory
    //TODO: generate method SetCurrentDirectory
    //TODO: generate method SetErrorMode_VistaAndOlder
    //TODO: generate method SetErrorMode_Win7AndNewer
    private static immutable Version ThreadErrorModeMinOsVersion/*todo: implement initializer*/ = null;
    //TODO: generate method SetErrorMode
    public enum int LCID_SUPPORTED/*todo: implement initializer*/ = int();
    //TODO: generate method WideCharToMultiByte
    public alias ConsoleCtrlHandlerRoutine = bool delegate(int controlType);
    //TODO: generate method SetConsoleCtrlHandler
    //TODO: generate method SetEnvironmentVariable
    //TODO: generate method GetEnvironmentVariable
    //TODO: generate method GetEnvironmentStrings
    //TODO: generate method FreeEnvironmentStrings
    //TODO: generate method GetCurrentProcessId
    //TODO: generate method GetUserName
    //TODO: generate method GetComputerName
    //TODO: generate method CoCreateGuid
    //TODO: generate method CoTaskMemAlloc
    //TODO: generate method CoTaskMemFree
    //TODO: generate method CoTaskMemRealloc
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static struct COORD
    {
        public short X;
        public short Y;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static struct SMALL_RECT
    {
        public short Left;
        public short Top;
        public short Right;
        public short Bottom;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static struct CONSOLE_SCREEN_BUFFER_INFO
    {
        public COORD dwSize;
        public COORD dwCursorPosition;
        public short wAttributes;
        public SMALL_RECT srWindow;
        public COORD dwMaximumWindowSize;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static struct CONSOLE_CURSOR_INFO
    {
        public int dwSize;
        public bool bVisible;
    }
    // Win32's KEY_EVENT_RECORD
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Auto*/)
    public static struct KeyEventRecord
    {
        public bool keyDown;
        public short repeatCount;
        public short virtualKeyCode;
        public short virtualScanCode;
        public wchar uChar;
        public int controlKeyState;
    }
    // Really, this is a union of KeyEventRecords and other types.
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Auto*/)
    public static struct InputRecord
    {
        public short eventType;
        public KeyEventRecord keyEvent;
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    @__DotNet__Attribute!(FlagsAttribute.stringof)
    public enum Color : short
    {
        Black = 0,
        ForegroundBlue = 0x1,
        ForegroundGreen = 0x2,
        ForegroundRed = 0x4,
        ForegroundYellow = 0x6,
        ForegroundIntensity = 0x8,
        BackgroundBlue = 0x10,
        BackgroundGreen = 0x20,
        BackgroundRed = 0x40,
        BackgroundYellow = 0x60,
        BackgroundIntensity = 0x80,
        ForegroundMask = 0xf,
        BackgroundMask = 0xf0,
        ColorMask = 0xff,
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static struct CHAR_INFO
    {
        private ushort charData;
        private short attributes;
    }
    public enum int ENABLE_PROCESSED_INPUT/*todo: implement initializer*/ = int();
    public enum int ENABLE_LINE_INPUT/*todo: implement initializer*/ = int();
    public enum int ENABLE_ECHO_INPUT/*todo: implement initializer*/ = int();
    //TODO: generate method SetConsoleMode
    //TODO: generate method GetConsoleMode
    //TODO: generate method Beep
    //TODO: generate method GetConsoleScreenBufferInfo
    //TODO: generate method SetConsoleScreenBufferSize
    //TODO: generate method GetLargestConsoleWindowSize
    //TODO: generate method FillConsoleOutputCharacter
    //TODO: generate method FillConsoleOutputAttribute
    //TODO: generate method SetConsoleWindowInfo
    //TODO: generate method SetConsoleTextAttribute
    //TODO: generate method SetConsoleCursorPosition
    //TODO: generate method GetConsoleCursorInfo
    //TODO: generate method SetConsoleCursorInfo
    //TODO: generate method SetConsoleTitle
    //TODO: generate method ReadConsoleInput
    //TODO: generate method PeekConsoleInput
    //TODO: generate method ReadConsoleOutput
    //TODO: generate method ReadConsoleW
    //TODO: generate method WriteConsoleOutput
    //TODO: generate method WriteConsoleW
    //TODO: generate method GetKeyState
    //TODO: generate method GetConsoleCP
    //TODO: generate method SetConsoleCP
    //TODO: generate method GetConsoleOutputCP
    //TODO: generate method SetConsoleOutputCP
    //TODO: generate method RegConnectRegistry
    //TODO: generate method RegCreateKeyEx
    //TODO: generate method RegDeleteKey
    //TODO: generate method RegDeleteKeyEx
    //TODO: generate method RegDeleteValue
    //TODO: generate method RegEnumKeyEx
    //TODO: generate method RegEnumValue
    //TODO: generate method RegFlushKey
    //TODO: generate method RegOpenKeyEx
    //TODO: generate method RegOpenKeyEx
    //TODO: generate method RegQueryInfoKey
    //TODO: generate method RegQueryValueEx
    //TODO: generate method RegQueryValueEx
    //TODO: generate method RegQueryValueEx
    //TODO: generate method RegQueryValueEx
    //TODO: generate method RegQueryValueEx
    //TODO: generate method RegSetValueEx
    //TODO: generate method RegSetValueEx
    //TODO: generate method RegSetValueEx
    //TODO: generate method RegSetValueEx
    //TODO: generate method ExpandEnvironmentStrings
    //TODO: generate method LocalReAlloc
    public enum int SHGFP_TYPE_CURRENT/*todo: implement initializer*/ = int();
    public enum int UOI_FLAGS/*todo: implement initializer*/ = int();
    public enum int WSF_VISIBLE/*todo: implement initializer*/ = int();
    public enum int CSIDL_FLAG_CREATE/*todo: implement initializer*/ = int();
    public enum int CSIDL_FLAG_DONT_VERIFY/*todo: implement initializer*/ = int();
    public enum int CSIDL_ADMINTOOLS/*todo: implement initializer*/ = int();
    public enum int CSIDL_CDBURN_AREA/*todo: implement initializer*/ = int();
    public enum int CSIDL_COMMON_ADMINTOOLS/*todo: implement initializer*/ = int();
    public enum int CSIDL_COMMON_DOCUMENTS/*todo: implement initializer*/ = int();
    public enum int CSIDL_COMMON_MUSIC/*todo: implement initializer*/ = int();
    public enum int CSIDL_COMMON_OEM_LINKS/*todo: implement initializer*/ = int();
    public enum int CSIDL_COMMON_PICTURES/*todo: implement initializer*/ = int();
    public enum int CSIDL_COMMON_STARTMENU/*todo: implement initializer*/ = int();
    public enum int CSIDL_COMMON_PROGRAMS/*todo: implement initializer*/ = int();
    public enum int CSIDL_COMMON_STARTUP/*todo: implement initializer*/ = int();
    public enum int CSIDL_COMMON_DESKTOPDIRECTORY/*todo: implement initializer*/ = int();
    public enum int CSIDL_COMMON_TEMPLATES/*todo: implement initializer*/ = int();
    public enum int CSIDL_COMMON_VIDEO/*todo: implement initializer*/ = int();
    public enum int CSIDL_FONTS/*todo: implement initializer*/ = int();
    public enum int CSIDL_MYVIDEO/*todo: implement initializer*/ = int();
    public enum int CSIDL_NETHOOD/*todo: implement initializer*/ = int();
    public enum int CSIDL_PRINTHOOD/*todo: implement initializer*/ = int();
    public enum int CSIDL_PROFILE/*todo: implement initializer*/ = int();
    public enum int CSIDL_PROGRAM_FILES_COMMONX86/*todo: implement initializer*/ = int();
    public enum int CSIDL_PROGRAM_FILESX86/*todo: implement initializer*/ = int();
    public enum int CSIDL_RESOURCES/*todo: implement initializer*/ = int();
    public enum int CSIDL_RESOURCES_LOCALIZED/*todo: implement initializer*/ = int();
    public enum int CSIDL_SYSTEMX86/*todo: implement initializer*/ = int();
    public enum int CSIDL_WINDOWS/*todo: implement initializer*/ = int();
    public enum int CSIDL_APPDATA/*todo: implement initializer*/ = int();
    public enum int CSIDL_COMMON_APPDATA/*todo: implement initializer*/ = int();
    public enum int CSIDL_LOCAL_APPDATA/*todo: implement initializer*/ = int();
    public enum int CSIDL_COOKIES/*todo: implement initializer*/ = int();
    public enum int CSIDL_FAVORITES/*todo: implement initializer*/ = int();
    public enum int CSIDL_HISTORY/*todo: implement initializer*/ = int();
    public enum int CSIDL_INTERNET_CACHE/*todo: implement initializer*/ = int();
    public enum int CSIDL_PROGRAMS/*todo: implement initializer*/ = int();
    public enum int CSIDL_RECENT/*todo: implement initializer*/ = int();
    public enum int CSIDL_SENDTO/*todo: implement initializer*/ = int();
    public enum int CSIDL_STARTMENU/*todo: implement initializer*/ = int();
    public enum int CSIDL_STARTUP/*todo: implement initializer*/ = int();
    public enum int CSIDL_SYSTEM/*todo: implement initializer*/ = int();
    public enum int CSIDL_TEMPLATES/*todo: implement initializer*/ = int();
    public enum int CSIDL_DESKTOPDIRECTORY/*todo: implement initializer*/ = int();
    public enum int CSIDL_PERSONAL/*todo: implement initializer*/ = int();
    public enum int CSIDL_PROGRAM_FILES/*todo: implement initializer*/ = int();
    public enum int CSIDL_PROGRAM_FILES_COMMON/*todo: implement initializer*/ = int();
    public enum int CSIDL_DESKTOP/*todo: implement initializer*/ = int();
    public enum int CSIDL_DRIVES/*todo: implement initializer*/ = int();
    public enum int CSIDL_MYMUSIC/*todo: implement initializer*/ = int();
    public enum int CSIDL_MYPICTURES/*todo: implement initializer*/ = int();
    //TODO: generate method SHGetFolderPath
    public enum int NameSamCompatible/*todo: implement initializer*/ = int();
    //TODO: generate method GetUserNameEx
    //TODO: generate method LookupAccountName
    //TODO: generate method GetProcessWindowStation
    //TODO: generate method GetUserObjectInformation
    //TODO: generate method SendMessageTimeout
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static class USEROBJECTFLAGS : __DotNet__Object
    {
        public int fInherit/*todo: implement initializer*/ = int();
        public int fReserved/*todo: implement initializer*/ = int();
        public int dwFlags/*todo: implement initializer*/ = int();
    }
    //TODO: generate method RtlNtStatusToDosError
    //TODO: generate method BCryptGetFipsAlgorithmMode
    //TODO: generate method AdjustTokenPrivileges
    //TODO: generate method AllocateLocallyUniqueId
    //TODO: generate method CheckTokenMembership
    //TODO: generate method ConvertSdToStringSd
    //TODO: generate method ConvertStringSdToSd
    //TODO: generate method ConvertStringSidToSid
    //TODO: generate method ConvertSidToStringSid
    //TODO: generate method CreateWellKnownSid
    //TODO: generate method DuplicateHandle
    //TODO: generate method DuplicateHandle
    //TODO: generate method IsEqualDomainSid
    //TODO: generate method GetCurrentProcess
    //TODO: generate method GetCurrentThread
    //TODO: generate method GetSecurityDescriptorLength
    //TODO: generate method GetSecurityInfoByHandle
    //TODO: generate method GetSecurityInfoByName
    //TODO: generate method GetTokenInformation
    //TODO: generate method GetTokenInformation
    //TODO: generate method GetWindowsAccountDomainSid
    public enum SECURITY_IMPERSONATION_LEVEL
    {
        Anonymous = 0,
        Identification = 1,
        Impersonation = 2,
        Delegation = 3,
    }
    public enum int CLAIM_SECURITY_ATTRIBUTE_TYPE_INVALID/*todo: implement initializer*/ = int();
    public enum int CLAIM_SECURITY_ATTRIBUTE_TYPE_INT64/*todo: implement initializer*/ = int();
    public enum int CLAIM_SECURITY_ATTRIBUTE_TYPE_UINT64/*todo: implement initializer*/ = int();
    public enum int CLAIM_SECURITY_ATTRIBUTE_TYPE_STRING/*todo: implement initializer*/ = int();
    public enum int CLAIM_SECURITY_ATTRIBUTE_TYPE_FQBN/*todo: implement initializer*/ = int();
    public enum int CLAIM_SECURITY_ATTRIBUTE_TYPE_SID/*todo: implement initializer*/ = int();
    public enum int CLAIM_SECURITY_ATTRIBUTE_TYPE_BOOLEAN/*todo: implement initializer*/ = int();
    public enum int CLAIM_SECURITY_ATTRIBUTE_TYPE_OCTET_STRING/*todo: implement initializer*/ = int();
    public enum int CLAIM_SECURITY_ATTRIBUTE_NON_INHERITABLE/*todo: implement initializer*/ = int();
    public enum int CLAIM_SECURITY_ATTRIBUTE_VALUE_CASE_SENSITIVE/*todo: implement initializer*/ = int();
    public enum int CLAIM_SECURITY_ATTRIBUTE_USE_FOR_DENY_ONLY/*todo: implement initializer*/ = int();
    public enum int CLAIM_SECURITY_ATTRIBUTE_DISABLED_BY_DEFAULT/*todo: implement initializer*/ = int();
    public enum int CLAIM_SECURITY_ATTRIBUTE_DISABLED/*todo: implement initializer*/ = int();
    public enum int CLAIM_SECURITY_ATTRIBUTE_MANDATORY/*todo: implement initializer*/ = int();
    public enum int CLAIM_SECURITY_ATTRIBUTE_VALID_FLAGS/*todo: implement initializer*/ = int();
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Explicit*/)
    public static struct CLAIM_SECURITY_ATTRIBUTE_INFORMATION_V1
    {
        // defined as union in CLAIM_SECURITY_ATTRIBUTES_INFORMATION
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public IntPtr pAttributeV1;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    public static struct CLAIM_SECURITY_ATTRIBUTES_INFORMATION
    {
        public ushort Version;
        public ushort Reserved;
        public uint AttributeCount;
        public CLAIM_SECURITY_ATTRIBUTE_INFORMATION_V1 Attribute;
    }
    //
    //  Fully-qualified binary name.
    //
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet = CharSet.Unicode*/)
    public static struct CLAIM_SECURITY_ATTRIBUTE_FQBN_VALUE
    {
        public ulong Version;
        // PWSTR->WCHAR*
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.LPWStr*/)
        public String Name;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet = CharSet.Unicode*/)
    public static struct CLAIM_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE
    {
        public IntPtr pValue;
        public uint ValueLength;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Explicit, CharSet = CharSet.Unicode*/)
    public static struct CLAIM_VALUES_ATTRIBUTE_V1
    {
        // PLONG64->__int64*
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public IntPtr pInt64;
        // PDWORD64->unsigned __int64*
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public IntPtr pUint64;
        // PWSTR*
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public IntPtr ppString;
        // PCLAIM_SECURITY_ATTRIBUTE_FQBN_VALUE->_CLAIM_SECURITY_ATTRIBUTE_FQBN_VALUE*
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public IntPtr pFqbn;
        // PCLAIM_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE->_CLAIM_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE*
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public IntPtr pOctetString;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet = CharSet.Unicode*/)
    public static struct CLAIM_SECURITY_ATTRIBUTE_V1
    {
        // PWSTR->WCHAR*
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.LPWStr*/)
        public String Name;
        public ushort ValueType;
        public ushort Reserved;
        public uint Flags;
        public uint ValueCount;
        public CLAIM_VALUES_ATTRIBUTE_V1 Values;
    }
    //TODO: generate method IsWellKnownSid
    //TODO: generate method LsaOpenPolicy
    //TODO: generate method LookupPrivilegeValue
    //TODO: generate method LsaLookupSids
    //TODO: generate method LsaFreeMemory
    //TODO: generate method LsaLookupNames
    //TODO: generate method LsaLookupNames2
    //TODO: generate method LsaConnectUntrusted
    //TODO: generate method LsaGetLogonSessionData
    //TODO: generate method LsaLogonUser
    //TODO: generate method LsaLookupAuthenticationPackage
    //TODO: generate method LsaRegisterLogonProcess
    //TODO: generate method LsaDeregisterLogonProcess
    //TODO: generate method LsaClose
    //TODO: generate method LsaFreeReturnBuffer
    //TODO: generate method SetSecurityInfoByName
    //TODO: generate method SetSecurityInfoByHandle
    //TODO: generate method WideCharToMultiByte
    //TODO: generate method MultiByteToWideChar
    //TODO: generate method QueryUnbiasedInterruptTime
    private enum int BCRYPT_USE_SYSTEM_PREFERRED_RNG/*todo: implement initializer*/ = int();
    //TODO: generate method BCryptGenRandom
    //TODO: generate method Random
}
