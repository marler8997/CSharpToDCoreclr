module mscorlib.Microsoft.Win32;

import mscorlib.System :
    __DotNet__Object,
    Type,
    Empty,
    Void,
    String,
    DateTime,
    TimeSpan,
    Decimal,
    DBNull,
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    IntPtr,
    SerializableAttribute,
    IDisposable,
    FlagsAttribute,
    Guid,
    UIntPtr,
    Version;
import mscorlib.System.Reflection :
    Missing;
import mscorlib.System.Runtime.InteropServices :
    ComVisibleAttribute,
    StructLayoutAttribute,
    MarshalAsAttribute,
    Marshal,
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
package(mscorlib) class OAVariantLib : __DotNet__Object
{
    private this() {} // prevent instantiation
    public enum int NoValueProp/*todo: implement initializer*/ = int();
    public enum int AlphaBool/*todo: implement initializer*/ = int();
    public enum int NoUserOverride/*todo: implement initializer*/ = int();
    public enum int CalendarHijri/*todo: implement initializer*/ = int();
    public enum int LocalBool/*todo: implement initializer*/ = int();
    package(mscorlib) static immutable Type[] ClassTypes/*todo: implement initializer*/ = null;
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
    package(mscorlib) static immutable IntPtr HKEY_CLASSES_ROOT/*todo: implement initializer*/ = IntPtr();
    package(mscorlib) static immutable IntPtr HKEY_CURRENT_USER/*todo: implement initializer*/ = IntPtr();
    package(mscorlib) static immutable IntPtr HKEY_LOCAL_MACHINE/*todo: implement initializer*/ = IntPtr();
    package(mscorlib) static immutable IntPtr HKEY_USERS/*todo: implement initializer*/ = IntPtr();
    package(mscorlib) static immutable IntPtr HKEY_PERFORMANCE_DATA/*todo: implement initializer*/ = IntPtr();
    package(mscorlib) static immutable IntPtr HKEY_CURRENT_CONFIG/*todo: implement initializer*/ = IntPtr();
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
package(mscorlib) final class SafeLibraryHandle : SafeHandleZeroOrMinusOneIsInvalid
{
    //TODO: generate constructor
    //TODO: generate method ReleaseHandle
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\Microsoft\Win32\UnsafeNativeMethods.cs'
//
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
@__DotNet__Attribute!(SuppressUnmanagedCodeSecurityAttribute.stringof/**/)
package(mscorlib) class UnsafeNativeMethods : __DotNet__Object
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
    package(mscorlib) static class ManifestEtw : __DotNet__Object
    {
        private this() {} // prevent instantiation
        package(mscorlib) enum int ERROR_ARITHMETIC_OVERFLOW/*todo: implement initializer*/ = int();
        package(mscorlib) enum int ERROR_NOT_ENOUGH_MEMORY/*todo: implement initializer*/ = int();
        package(mscorlib) enum int ERROR_MORE_DATA/*todo: implement initializer*/ = int();
        package(mscorlib) enum int ERROR_NOT_SUPPORTED/*todo: implement initializer*/ = int();
        package(mscorlib) enum int ERROR_INVALID_PARAMETER/*todo: implement initializer*/ = int();
        package(mscorlib) enum int EVENT_CONTROL_CODE_DISABLE_PROVIDER/*todo: implement initializer*/ = int();
        package(mscorlib) enum int EVENT_CONTROL_CODE_ENABLE_PROVIDER/*todo: implement initializer*/ = int();
        package(mscorlib) enum int EVENT_CONTROL_CODE_CAPTURE_STATE/*todo: implement initializer*/ = int();
        //
        // Callback
        //
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        package(mscorlib) alias EtwEnableCallback = void delegate(/*todo: param attributes*/ref Guid sourceId, /*todo: param attributes*/int isEnabled, /*todo: param attributes*/ubyte level, /*todo: param attributes*/long matchAnyKeywords, /*todo: param attributes*/long matchAllKeywords, /*todo: param attributes*/EVENT_FILTER_DESCRIPTOR* filterData, /*todo: param attributes*/Void* callbackContext);
        //TODO: generate method EventRegister
        //TODO: generate method EventUnregister
        //TODO: generate method EventWrite
        //TODO: generate method EventWriteString
        @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
        package(mscorlib) static struct EVENT_FILTER_DESCRIPTOR
        {
            public long Ptr;
            public int Size;
            public int Type;
        }
        //TODO: generate method EventWriteTransferWrapper
        //TODO: generate method EventWriteTransfer
        package(mscorlib) enum ActivityControl : uint
        {
            EVENT_ACTIVITY_CTRL_GET_ID = 1,
            EVENT_ACTIVITY_CTRL_SET_ID = 2,
            EVENT_ACTIVITY_CTRL_CREATE_ID = 3,
            EVENT_ACTIVITY_CTRL_GET_SET_ID = 4,
            EVENT_ACTIVITY_CTRL_CREATE_SET_ID = 5,
        }
        //TODO: generate method EventActivityIdControl
        package(mscorlib) enum EVENT_INFO_CLASS
        {
            BinaryTrackInfo,
            SetEnableAllKeywords,
            SetTraits,
        }
        //TODO: generate method EventSetInformation
        package(mscorlib) enum TRACE_QUERY_INFO_CLASS
        {
            TraceGuidQueryList,
            TraceGuidQueryInfo,
            TraceGuidQueryProcess,
            TraceStackTracingInfo,
            MaxTraceSetInfoClass,
        }
        package(mscorlib) static struct TRACE_GUID_INFO
        {
            public int InstanceCount;
            public int Reserved;
        }
        package(mscorlib) static struct TRACE_PROVIDER_INSTANCE_INFO
        {
            public int NextOffset;
            public int EnableCount;
            public int Pid;
            public int Flags;
        }
        package(mscorlib) static struct TRACE_ENABLE_INFO
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
package(mscorlib) class Win32Native : __DotNet__Object
{
    private this() {} // prevent instantiation
    package(mscorlib) enum int KEY_QUERY_VALUE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int KEY_SET_VALUE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int KEY_CREATE_SUB_KEY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int KEY_ENUMERATE_SUB_KEYS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int KEY_NOTIFY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int KEY_CREATE_LINK/*todo: implement initializer*/ = int();
    package(mscorlib) enum int KEY_READ/*todo: implement initializer*/ = int();
    package(mscorlib) enum int KEY_WRITE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int KEY_WOW64_64KEY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int KEY_WOW64_32KEY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REG_OPTION_NON_VOLATILE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REG_OPTION_VOLATILE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REG_OPTION_CREATE_LINK/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REG_OPTION_BACKUP_RESTORE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REG_NONE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REG_SZ/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REG_EXPAND_SZ/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REG_BINARY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REG_DWORD/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REG_DWORD_LITTLE_ENDIAN/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REG_DWORD_BIG_ENDIAN/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REG_LINK/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REG_MULTI_SZ/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REG_RESOURCE_LIST/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REG_FULL_RESOURCE_DESCRIPTOR/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REG_RESOURCE_REQUIREMENTS_LIST/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REG_QWORD/*todo: implement initializer*/ = int();
    package(mscorlib) enum int HWND_BROADCAST/*todo: implement initializer*/ = int();
    package(mscorlib) enum int WM_SETTINGCHANGE/*todo: implement initializer*/ = int();
    package(mscorlib) enum uint CRYPTPROTECTMEMORY_BLOCK_SIZE/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint CRYPTPROTECTMEMORY_SAME_PROCESS/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint CRYPTPROTECTMEMORY_CROSS_PROCESS/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint CRYPTPROTECTMEMORY_SAME_LOGON/*todo: implement initializer*/ = uint();
    package(mscorlib) enum int SECURITY_ANONYMOUS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int SECURITY_SQOS_PRESENT/*todo: implement initializer*/ = int();
    package(mscorlib) enum String MICROSOFT_KERBEROS_NAME/*todo: implement initializer*/ = null;
    package(mscorlib) enum uint ANONYMOUS_LOGON_LUID/*todo: implement initializer*/ = uint();
    package(mscorlib) enum int SECURITY_ANONYMOUS_LOGON_RID/*todo: implement initializer*/ = int();
    package(mscorlib) enum int SECURITY_AUTHENTICATED_USER_RID/*todo: implement initializer*/ = int();
    package(mscorlib) enum int SECURITY_LOCAL_SYSTEM_RID/*todo: implement initializer*/ = int();
    package(mscorlib) enum int SECURITY_BUILTIN_DOMAIN_RID/*todo: implement initializer*/ = int();
    package(mscorlib) enum uint SE_PRIVILEGE_DISABLED/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint SE_PRIVILEGE_ENABLED_BY_DEFAULT/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint SE_PRIVILEGE_ENABLED/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint SE_PRIVILEGE_USED_FOR_ACCESS/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint SE_GROUP_MANDATORY/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint SE_GROUP_ENABLED_BY_DEFAULT/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint SE_GROUP_ENABLED/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint SE_GROUP_OWNER/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint SE_GROUP_USE_FOR_DENY_ONLY/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint SE_GROUP_LOGON_ID/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint SE_GROUP_RESOURCE/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint DUPLICATE_CLOSE_SOURCE/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint DUPLICATE_SAME_ACCESS/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint DUPLICATE_SAME_ATTRIBUTES/*todo: implement initializer*/ = uint();
    package(mscorlib) enum int TIME_ZONE_ID_INVALID/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TIME_ZONE_ID_UNKNOWN/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TIME_ZONE_ID_STANDARD/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TIME_ZONE_ID_DAYLIGHT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int MAX_PATH/*todo: implement initializer*/ = int();
    package(mscorlib) enum int MUI_LANGUAGE_ID/*todo: implement initializer*/ = int();
    package(mscorlib) enum int MUI_LANGUAGE_NAME/*todo: implement initializer*/ = int();
    package(mscorlib) enum int MUI_PREFERRED_UI_LANGUAGES/*todo: implement initializer*/ = int();
    package(mscorlib) enum int MUI_INSTALLED_LANGUAGES/*todo: implement initializer*/ = int();
    package(mscorlib) enum int MUI_ALL_LANGUAGES/*todo: implement initializer*/ = int();
    package(mscorlib) enum int MUI_LANG_NEUTRAL_PE_FILE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int MUI_NON_LANG_NEUTRAL_FILE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int LOAD_LIBRARY_AS_DATAFILE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int LOAD_STRING_MAX_LENGTH/*todo: implement initializer*/ = int();
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    package(mscorlib) static struct SystemTime
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
    package(mscorlib) static struct TimeZoneInformation
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
    package(mscorlib) static struct DynamicTimeZoneInformation
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
    package(mscorlib) static struct RegistryTimeZoneInformation
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
    package(mscorlib) enum int READ_CONTROL/*todo: implement initializer*/ = int();
    package(mscorlib) enum int SYNCHRONIZE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int STANDARD_RIGHTS_READ/*todo: implement initializer*/ = int();
    package(mscorlib) enum int STANDARD_RIGHTS_WRITE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int SEMAPHORE_MODIFY_STATE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int EVENT_MODIFY_STATE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int MUTEX_MODIFY_STATE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int MUTEX_ALL_ACCESS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int LMEM_FIXED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int LMEM_ZEROINIT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int LPTR/*todo: implement initializer*/ = int();
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Auto*/)
    package(mscorlib) static class OSVERSIONINFO : __DotNet__Object
    {
        //TODO: generate constructor
        package(mscorlib) int OSVersionInfoSize/*todo: implement initializer*/ = int();
        package(mscorlib) int MajorVersion/*todo: implement initializer*/ = int();
        package(mscorlib) int MinorVersion/*todo: implement initializer*/ = int();
        package(mscorlib) int BuildNumber/*todo: implement initializer*/ = int();
        package(mscorlib) int PlatformId/*todo: implement initializer*/ = int();
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.ByValTStr, SizeConst=128*/)
        package(mscorlib) String CSDVersion/*todo: implement initializer*/ = null;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Auto*/)
    package(mscorlib) static class OSVERSIONINFOEX : __DotNet__Object
    {
        //TODO: generate constructor
        package(mscorlib) int OSVersionInfoSize/*todo: implement initializer*/ = int();
        package(mscorlib) int MajorVersion/*todo: implement initializer*/ = int();
        package(mscorlib) int MinorVersion/*todo: implement initializer*/ = int();
        package(mscorlib) int BuildNumber/*todo: implement initializer*/ = int();
        package(mscorlib) int PlatformId/*todo: implement initializer*/ = int();
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.ByValTStr, SizeConst=128*/)
        package(mscorlib) String CSDVersion/*todo: implement initializer*/ = null;
        package(mscorlib) ushort ServicePackMajor/*todo: implement initializer*/ = ushort();
        package(mscorlib) ushort ServicePackMinor/*todo: implement initializer*/ = ushort();
        package(mscorlib) short SuiteMask/*todo: implement initializer*/ = short();
        package(mscorlib) ubyte ProductType/*todo: implement initializer*/ = ubyte();
        package(mscorlib) ubyte Reserved/*todo: implement initializer*/ = ubyte();
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    package(mscorlib) static struct SYSTEM_INFO
    {
        package(mscorlib) int dwOemId;
        package(mscorlib) int dwPageSize;
        package(mscorlib) IntPtr lpMinimumApplicationAddress;
        package(mscorlib) IntPtr lpMaximumApplicationAddress;
        package(mscorlib) IntPtr dwActiveProcessorMask;
        package(mscorlib) int dwNumberOfProcessors;
        package(mscorlib) int dwProcessorType;
        package(mscorlib) int dwAllocationGranularity;
        package(mscorlib) short wProcessorLevel;
        package(mscorlib) short wProcessorRevision;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    package(mscorlib) static class SECURITY_ATTRIBUTES : __DotNet__Object
    {
        package(mscorlib) int nLength/*todo: implement initializer*/ = int();
        package(mscorlib) ubyte* pSecurityDescriptor/*todo: implement initializer*/ = null;
        package(mscorlib) int bInheritHandle/*todo: implement initializer*/ = int();
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    package(mscorlib) static struct WIN32_FILE_ATTRIBUTE_DATA
    {
        package(mscorlib) int fileAttributes;
        package(mscorlib) uint ftCreationTimeLow;
        package(mscorlib) uint ftCreationTimeHigh;
        package(mscorlib) uint ftLastAccessTimeLow;
        package(mscorlib) uint ftLastAccessTimeHigh;
        package(mscorlib) uint ftLastWriteTimeLow;
        package(mscorlib) uint ftLastWriteTimeHigh;
        package(mscorlib) int fileSizeHigh;
        package(mscorlib) int fileSizeLow;
        //TODO: generate method PopulateFrom
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    package(mscorlib) static struct FILE_TIME
    {
        //TODO: generate constructor
        //TODO: generate method ToTicks
        package(mscorlib) uint ftTimeLow;
        package(mscorlib) uint ftTimeHigh;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    package(mscorlib) static struct KERB_S4U_LOGON
    {
        package(mscorlib) uint MessageType;
        package(mscorlib) uint Flags;
        package(mscorlib) UNICODE_INTPTR_STRING ClientUpn;
        package(mscorlib) UNICODE_INTPTR_STRING ClientRealm;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    package(mscorlib) static struct LSA_OBJECT_ATTRIBUTES
    {
        package(mscorlib) int Length;
        package(mscorlib) IntPtr RootDirectory;
        package(mscorlib) IntPtr ObjectName;
        package(mscorlib) int Attributes;
        package(mscorlib) IntPtr SecurityDescriptor;
        package(mscorlib) IntPtr SecurityQualityOfService;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    package(mscorlib) static struct UNICODE_STRING
    {
        package(mscorlib) ushort Length;
        package(mscorlib) ushort MaximumLength;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.LPWStr*/)
        package(mscorlib) String Buffer;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    package(mscorlib) static struct UNICODE_INTPTR_STRING
    {
        //TODO: generate constructor
        //TODO: generate constructor
        package(mscorlib) ushort Length;
        package(mscorlib) ushort MaxLength;
        package(mscorlib) IntPtr Buffer;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    package(mscorlib) static struct LSA_TRANSLATED_NAME
    {
        package(mscorlib) int Use;
        package(mscorlib) UNICODE_INTPTR_STRING Name;
        package(mscorlib) int DomainIndex;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    package(mscorlib) static struct LSA_TRANSLATED_SID
    {
        package(mscorlib) int Use;
        package(mscorlib) uint Rid;
        package(mscorlib) int DomainIndex;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    package(mscorlib) static struct LSA_TRANSLATED_SID2
    {
        package(mscorlib) int Use;
        package(mscorlib) IntPtr Sid;
        package(mscorlib) int DomainIndex;
        private uint Flags;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    package(mscorlib) static struct LSA_TRUST_INFORMATION
    {
        package(mscorlib) UNICODE_INTPTR_STRING Name;
        package(mscorlib) IntPtr Sid;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    package(mscorlib) static struct LSA_REFERENCED_DOMAIN_LIST
    {
        package(mscorlib) int Entries;
        package(mscorlib) IntPtr Domains;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    package(mscorlib) static struct LUID
    {
        package(mscorlib) uint LowPart;
        package(mscorlib) uint HighPart;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    package(mscorlib) static struct LUID_AND_ATTRIBUTES
    {
        package(mscorlib) LUID Luid;
        package(mscorlib) uint Attributes;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    package(mscorlib) static struct QUOTA_LIMITS
    {
        package(mscorlib) IntPtr PagedPoolLimit;
        package(mscorlib) IntPtr NonPagedPoolLimit;
        package(mscorlib) IntPtr MinimumWorkingSetSize;
        package(mscorlib) IntPtr MaximumWorkingSetSize;
        package(mscorlib) IntPtr PagefileLimit;
        package(mscorlib) IntPtr TimeLimit;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    package(mscorlib) static struct SECURITY_LOGON_SESSION_DATA
    {
        package(mscorlib) uint Size;
        package(mscorlib) LUID LogonId;
        package(mscorlib) UNICODE_INTPTR_STRING UserName;
        package(mscorlib) UNICODE_INTPTR_STRING LogonDomain;
        package(mscorlib) UNICODE_INTPTR_STRING AuthenticationPackage;
        package(mscorlib) uint LogonType;
        package(mscorlib) uint Session;
        package(mscorlib) IntPtr Sid;
        package(mscorlib) long LogonTime;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    package(mscorlib) static struct SID_AND_ATTRIBUTES
    {
        package(mscorlib) IntPtr Sid;
        package(mscorlib) uint Attributes;
        package(mscorlib) static immutable long SizeOf/*todo: implement initializer*/ = long();
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    package(mscorlib) static struct TOKEN_GROUPS
    {
        package(mscorlib) uint GroupCount;
        package(mscorlib) SID_AND_ATTRIBUTES Groups;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet = CharSet.Unicode*/)
    package(mscorlib) static struct TOKEN_PRIMARY_GROUP
    {
        package(mscorlib) IntPtr PrimaryGroup;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    package(mscorlib) static struct TOKEN_PRIVILEGE
    {
        package(mscorlib) uint PrivilegeCount;
        package(mscorlib) LUID_AND_ATTRIBUTES Privilege;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    package(mscorlib) static struct TOKEN_SOURCE
    {
        private enum int TOKEN_SOURCE_LENGTH/*todo: implement initializer*/ = int();
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.ByValArray, SizeConst=TOKEN_SOURCE_LENGTH*/)
        package(mscorlib) wchar[] Name;
        package(mscorlib) LUID SourceIdentifier;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    package(mscorlib) static struct TOKEN_STATISTICS
    {
        package(mscorlib) LUID TokenId;
        package(mscorlib) LUID AuthenticationId;
        package(mscorlib) long ExpirationTime;
        package(mscorlib) uint TokenType;
        package(mscorlib) uint ImpersonationLevel;
        package(mscorlib) uint DynamicCharged;
        package(mscorlib) uint DynamicAvailable;
        package(mscorlib) uint GroupCount;
        package(mscorlib) uint PrivilegeCount;
        package(mscorlib) LUID ModifiedId;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
    package(mscorlib) static struct TOKEN_USER
    {
        package(mscorlib) SID_AND_ATTRIBUTES User;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    package(mscorlib) static struct MEMORYSTATUSEX
    {
        package(mscorlib) int length;
        package(mscorlib) int memoryLoad;
        package(mscorlib) ulong totalPhys;
        package(mscorlib) ulong availPhys;
        package(mscorlib) ulong totalPageFile;
        package(mscorlib) ulong availPageFile;
        package(mscorlib) ulong totalVirtual;
        package(mscorlib) ulong availVirtual;
        package(mscorlib) ulong availExtendedVirtual;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    package(mscorlib) static struct MEMORY_BASIC_INFORMATION
    {
        package(mscorlib) Void* BaseAddress;
        package(mscorlib) Void* AllocationBase;
        package(mscorlib) uint AllocationProtect;
        package(mscorlib) UIntPtr RegionSize;
        package(mscorlib) uint State;
        package(mscorlib) uint Protect;
        package(mscorlib) uint Type;
    }
    package(mscorlib) enum String KERNEL32/*todo: implement initializer*/ = null;
    package(mscorlib) enum String USER32/*todo: implement initializer*/ = null;
    package(mscorlib) enum String OLE32/*todo: implement initializer*/ = null;
    package(mscorlib) enum String OLEAUT32/*todo: implement initializer*/ = null;
    package(mscorlib) enum String NTDLL/*todo: implement initializer*/ = null;
    package(mscorlib) enum String ADVAPI32/*todo: implement initializer*/ = null;
    package(mscorlib) enum String SHELL32/*todo: implement initializer*/ = null;
    package(mscorlib) enum String SHIM/*todo: implement initializer*/ = null;
    package(mscorlib) enum String CRYPT32/*todo: implement initializer*/ = null;
    package(mscorlib) enum String SECUR32/*todo: implement initializer*/ = null;
    package(mscorlib) enum String MSCORWKS/*todo: implement initializer*/ = null;
    package(mscorlib) enum int SEM_FAILCRITICALERRORS/*todo: implement initializer*/ = int();
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
    package(mscorlib) enum int FIND_STARTSWITH/*todo: implement initializer*/ = int();
    package(mscorlib) enum int FIND_ENDSWITH/*todo: implement initializer*/ = int();
    package(mscorlib) enum int FIND_FROMSTART/*todo: implement initializer*/ = int();
    package(mscorlib) enum int FIND_FROMEND/*todo: implement initializer*/ = int();
    //TODO: generate method GetWindowsDirectory
    //TODO: generate method GetSystemDirectory
    //TODO: generate method SetFileTime
    //TODO: generate method GetFileSize
    //TODO: generate method LockFile
    //TODO: generate method UnlockFile
    package(mscorlib) static immutable IntPtr INVALID_HANDLE_VALUE/*todo: implement initializer*/ = IntPtr();
    package(mscorlib) enum int STD_INPUT_HANDLE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int STD_OUTPUT_HANDLE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int STD_ERROR_HANDLE/*todo: implement initializer*/ = int();
    //TODO: generate method GetStdHandle
    package(mscorlib) enum int CTRL_C_EVENT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CTRL_BREAK_EVENT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CTRL_CLOSE_EVENT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CTRL_LOGOFF_EVENT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CTRL_SHUTDOWN_EVENT/*todo: implement initializer*/ = int();
    package(mscorlib) enum short KEY_EVENT/*todo: implement initializer*/ = short();
    package(mscorlib) enum int FILE_TYPE_DISK/*todo: implement initializer*/ = int();
    package(mscorlib) enum int FILE_TYPE_CHAR/*todo: implement initializer*/ = int();
    package(mscorlib) enum int FILE_TYPE_PIPE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REPLACEFILE_WRITE_THROUGH/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REPLACEFILE_IGNORE_MERGE_ERRORS/*todo: implement initializer*/ = int();
    private enum int FORMAT_MESSAGE_IGNORE_INSERTS/*todo: implement initializer*/ = int();
    private enum int FORMAT_MESSAGE_FROM_SYSTEM/*todo: implement initializer*/ = int();
    private enum int FORMAT_MESSAGE_ARGUMENT_ARRAY/*todo: implement initializer*/ = int();
    package(mscorlib) enum uint FILE_MAP_WRITE/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint FILE_MAP_READ/*todo: implement initializer*/ = uint();
    package(mscorlib) enum int FILE_ATTRIBUTE_READONLY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int FILE_ATTRIBUTE_DIRECTORY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int FILE_ATTRIBUTE_REPARSE_POINT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int IO_REPARSE_TAG_MOUNT_POINT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int PAGE_READWRITE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int MEM_COMMIT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int MEM_RESERVE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int MEM_RELEASE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int MEM_FREE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_SUCCESS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_INVALID_FUNCTION/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_FILE_NOT_FOUND/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_PATH_NOT_FOUND/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_ACCESS_DENIED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_INVALID_HANDLE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_NOT_ENOUGH_MEMORY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_INVALID_DATA/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_INVALID_DRIVE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_NO_MORE_FILES/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_NOT_READY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_BAD_LENGTH/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_SHARING_VIOLATION/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_NOT_SUPPORTED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_FILE_EXISTS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_INVALID_PARAMETER/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_BROKEN_PIPE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_CALL_NOT_IMPLEMENTED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_INSUFFICIENT_BUFFER/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_INVALID_NAME/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_BAD_PATHNAME/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_ALREADY_EXISTS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_ENVVAR_NOT_FOUND/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_FILENAME_EXCED_RANGE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_NO_DATA/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_PIPE_NOT_CONNECTED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_MORE_DATA/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_DIRECTORY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_OPERATION_ABORTED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_NOT_FOUND/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_NO_TOKEN/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_DLL_INIT_FAILED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_NON_ACCOUNT_SID/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_NOT_ALL_ASSIGNED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_UNKNOWN_REVISION/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_INVALID_OWNER/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_INVALID_PRIMARY_GROUP/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_NO_SUCH_PRIVILEGE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_PRIVILEGE_NOT_HELD/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_NONE_MAPPED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_INVALID_ACL/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_INVALID_SID/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_INVALID_SECURITY_DESCR/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_BAD_IMPERSONATION_LEVEL/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_CANT_OPEN_ANONYMOUS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_NO_SECURITY_ON_OBJECT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ERROR_TRUSTED_RELATIONSHIP_FAILURE/*todo: implement initializer*/ = int();
    package(mscorlib) enum uint STATUS_SUCCESS/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint STATUS_SOME_NOT_MAPPED/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint STATUS_NO_MEMORY/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint STATUS_OBJECT_NAME_NOT_FOUND/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint STATUS_NONE_MAPPED/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint STATUS_INSUFFICIENT_RESOURCES/*todo: implement initializer*/ = uint();
    package(mscorlib) enum uint STATUS_ACCESS_DENIED/*todo: implement initializer*/ = uint();
    package(mscorlib) enum int INVALID_FILE_SIZE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int STATUS_ACCOUNT_RESTRICTION/*todo: implement initializer*/ = int();
    //TODO: generate method MakeHRFromErrorCode
    // Win32 Structs in N/Direct style
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Auto*/)
    @__DotNet__Attribute!(BestFitMappingAttribute.stringof/*, false*/)
    package(mscorlib) static class WIN32_FIND_DATA : __DotNet__Object
    {
        package(mscorlib) int dwFileAttributes/*todo: implement initializer*/ = int();
        package(mscorlib) uint ftCreationTime_dwLowDateTime/*todo: implement initializer*/ = uint();
        package(mscorlib) uint ftCreationTime_dwHighDateTime/*todo: implement initializer*/ = uint();
        package(mscorlib) uint ftLastAccessTime_dwLowDateTime/*todo: implement initializer*/ = uint();
        package(mscorlib) uint ftLastAccessTime_dwHighDateTime/*todo: implement initializer*/ = uint();
        package(mscorlib) uint ftLastWriteTime_dwLowDateTime/*todo: implement initializer*/ = uint();
        package(mscorlib) uint ftLastWriteTime_dwHighDateTime/*todo: implement initializer*/ = uint();
        package(mscorlib) int nFileSizeHigh/*todo: implement initializer*/ = int();
        package(mscorlib) int nFileSizeLow/*todo: implement initializer*/ = int();
        package(mscorlib) int dwReserved0/*todo: implement initializer*/ = int();
        package(mscorlib) int dwReserved1/*todo: implement initializer*/ = int();
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.ByValTStr, SizeConst=260*/)
        package(mscorlib) String cFileName/*todo: implement initializer*/ = null;
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.ByValTStr, SizeConst=14*/)
        package(mscorlib) String cAlternateFileName/*todo: implement initializer*/ = null;
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
    package(mscorlib) enum int LCID_SUPPORTED/*todo: implement initializer*/ = int();
    //TODO: generate method WideCharToMultiByte
    package(mscorlib) alias ConsoleCtrlHandlerRoutine = bool delegate(int controlType);
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
    package(mscorlib) static struct COORD
    {
        package(mscorlib) short X;
        package(mscorlib) short Y;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    package(mscorlib) static struct SMALL_RECT
    {
        package(mscorlib) short Left;
        package(mscorlib) short Top;
        package(mscorlib) short Right;
        package(mscorlib) short Bottom;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    package(mscorlib) static struct CONSOLE_SCREEN_BUFFER_INFO
    {
        package(mscorlib) COORD dwSize;
        package(mscorlib) COORD dwCursorPosition;
        package(mscorlib) short wAttributes;
        package(mscorlib) SMALL_RECT srWindow;
        package(mscorlib) COORD dwMaximumWindowSize;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    package(mscorlib) static struct CONSOLE_CURSOR_INFO
    {
        package(mscorlib) int dwSize;
        package(mscorlib) bool bVisible;
    }
    // Win32's KEY_EVENT_RECORD
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Auto*/)
    package(mscorlib) static struct KeyEventRecord
    {
        package(mscorlib) bool keyDown;
        package(mscorlib) short repeatCount;
        package(mscorlib) short virtualKeyCode;
        package(mscorlib) short virtualScanCode;
        package(mscorlib) wchar uChar;
        package(mscorlib) int controlKeyState;
    }
    // Really, this is a union of KeyEventRecords and other types.
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Auto*/)
    package(mscorlib) static struct InputRecord
    {
        package(mscorlib) short eventType;
        package(mscorlib) KeyEventRecord keyEvent;
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    @__DotNet__Attribute!(FlagsAttribute.stringof)
    package(mscorlib) enum Color : short
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
    package(mscorlib) static struct CHAR_INFO
    {
        private ushort charData;
        private short attributes;
    }
    package(mscorlib) enum int ENABLE_PROCESSED_INPUT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ENABLE_LINE_INPUT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ENABLE_ECHO_INPUT/*todo: implement initializer*/ = int();
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
    package(mscorlib) enum int SHGFP_TYPE_CURRENT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int UOI_FLAGS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int WSF_VISIBLE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_FLAG_CREATE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_FLAG_DONT_VERIFY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_ADMINTOOLS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_CDBURN_AREA/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_COMMON_ADMINTOOLS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_COMMON_DOCUMENTS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_COMMON_MUSIC/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_COMMON_OEM_LINKS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_COMMON_PICTURES/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_COMMON_STARTMENU/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_COMMON_PROGRAMS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_COMMON_STARTUP/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_COMMON_DESKTOPDIRECTORY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_COMMON_TEMPLATES/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_COMMON_VIDEO/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_FONTS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_MYVIDEO/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_NETHOOD/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_PRINTHOOD/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_PROFILE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_PROGRAM_FILES_COMMONX86/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_PROGRAM_FILESX86/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_RESOURCES/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_RESOURCES_LOCALIZED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_SYSTEMX86/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_WINDOWS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_APPDATA/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_COMMON_APPDATA/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_LOCAL_APPDATA/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_COOKIES/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_FAVORITES/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_HISTORY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_INTERNET_CACHE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_PROGRAMS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_RECENT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_SENDTO/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_STARTMENU/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_STARTUP/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_SYSTEM/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_TEMPLATES/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_DESKTOPDIRECTORY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_PERSONAL/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_PROGRAM_FILES/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_PROGRAM_FILES_COMMON/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_DESKTOP/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_DRIVES/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_MYMUSIC/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CSIDL_MYPICTURES/*todo: implement initializer*/ = int();
    //TODO: generate method SHGetFolderPath
    package(mscorlib) enum int NameSamCompatible/*todo: implement initializer*/ = int();
    //TODO: generate method GetUserNameEx
    //TODO: generate method LookupAccountName
    //TODO: generate method GetProcessWindowStation
    //TODO: generate method GetUserObjectInformation
    //TODO: generate method SendMessageTimeout
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    package(mscorlib) static class USEROBJECTFLAGS : __DotNet__Object
    {
        package(mscorlib) int fInherit/*todo: implement initializer*/ = int();
        package(mscorlib) int fReserved/*todo: implement initializer*/ = int();
        package(mscorlib) int dwFlags/*todo: implement initializer*/ = int();
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
    package(mscorlib) enum SECURITY_IMPERSONATION_LEVEL
    {
        Anonymous = 0,
        Identification = 1,
        Impersonation = 2,
        Delegation = 3,
    }
    package(mscorlib) enum int CLAIM_SECURITY_ATTRIBUTE_TYPE_INVALID/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CLAIM_SECURITY_ATTRIBUTE_TYPE_INT64/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CLAIM_SECURITY_ATTRIBUTE_TYPE_UINT64/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CLAIM_SECURITY_ATTRIBUTE_TYPE_STRING/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CLAIM_SECURITY_ATTRIBUTE_TYPE_FQBN/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CLAIM_SECURITY_ATTRIBUTE_TYPE_SID/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CLAIM_SECURITY_ATTRIBUTE_TYPE_BOOLEAN/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CLAIM_SECURITY_ATTRIBUTE_TYPE_OCTET_STRING/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CLAIM_SECURITY_ATTRIBUTE_NON_INHERITABLE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CLAIM_SECURITY_ATTRIBUTE_VALUE_CASE_SENSITIVE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CLAIM_SECURITY_ATTRIBUTE_USE_FOR_DENY_ONLY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CLAIM_SECURITY_ATTRIBUTE_DISABLED_BY_DEFAULT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CLAIM_SECURITY_ATTRIBUTE_DISABLED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CLAIM_SECURITY_ATTRIBUTE_MANDATORY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CLAIM_SECURITY_ATTRIBUTE_VALID_FLAGS/*todo: implement initializer*/ = int();
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Explicit*/)
    package(mscorlib) static struct CLAIM_SECURITY_ATTRIBUTE_INFORMATION_V1
    {
        // defined as union in CLAIM_SECURITY_ATTRIBUTES_INFORMATION
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public IntPtr pAttributeV1;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    package(mscorlib) static struct CLAIM_SECURITY_ATTRIBUTES_INFORMATION
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
    package(mscorlib) static struct CLAIM_SECURITY_ATTRIBUTE_FQBN_VALUE
    {
        public ulong Version;
        // PWSTR->WCHAR*
        @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.LPWStr*/)
        public String Name;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet = CharSet.Unicode*/)
    package(mscorlib) static struct CLAIM_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE
    {
        public IntPtr pValue;
        public uint ValueLength;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Explicit, CharSet = CharSet.Unicode*/)
    package(mscorlib) static struct CLAIM_VALUES_ATTRIBUTE_V1
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
    package(mscorlib) static struct CLAIM_SECURITY_ATTRIBUTE_V1
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
