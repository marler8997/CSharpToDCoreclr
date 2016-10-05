module mscorlib.System.Diagnostics;

import mscorlib.System :
    __DotNet__Object,
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    SerializableAttribute,
    AttributeUsageAttribute,
    Attribute,
    String,
    FlagsAttribute,
    Type,
    Void,
    IDisposable,
    NonSerializedAttribute,
    IntPtr,
    ThreadStaticAttribute;
import mscorlib.System.Runtime.InteropServices :
    ComVisibleAttribute;
import mscorlib.System.Security.Permissions :
    HostProtectionAttribute;
import mscorlib.System.Collections :
    Hashtable;
import mscorlib.System.Reflection :
    MethodBase,
    MethodInfo;
import mscorlib.System.Runtime.Serialization :
    OptionalFieldAttribute;
import mscorlib.System.Threading :
    Thread;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Assert.cs'
//
package(mscorlib) class Assert : __DotNet__Object
{
    private this() {} // prevent instantiation
    package(mscorlib) enum int COR_E_FAILFAST/*todo: implement initializer*/ = int();
    private static AssertFilter Filter;
    //TODO: generate constructor
    //TODO: generate method Check
    //TODO: generate method Check
    //TODO: generate method Fail
    //TODO: generate method Fail
    //TODO: generate method Fail
    //TODO: generate method Fail
    //TODO: generate method ShowDefaultAssertDialog
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\AssertFilter.cs'
//
// A Filter is used to decide whether an assert failure 
// should terminate the program (or invoke the debugger).  
// Typically this is done by popping up a dialog & asking the user.
// 
// The default filter brings up a simple Win32 dialog with 3 buttons.
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) abstract class AssertFilter : __DotNet__Object
{
    //TODO: generate method AssertFailure
}
package(mscorlib) class DefaultFilter : AssertFilter
{
    //TODO: generate constructor
    //TODO: generate method AssertFailure
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\AssertFilters.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) enum AssertFilters
{
    FailDebug = 0,
    FailIgnore = 1,
    FailTerminate = 2,
    FailContinueFilter = 3,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\ConditionalAttribute.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method | AttributeTargets.Class, AllowMultiple=true*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ConditionalAttribute : Attribute
{
    //TODO: generate constructor
    //TODO: generate property 'ConditionString'
    private String m_conditionString;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Debugger.cs'
//
// No data, does not need to be marked with the serializable attribute
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class Debugger : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method Break
    //TODO: generate method BreakCanThrow
    //TODO: generate method BreakInternal
    //TODO: generate method Launch
    private static class CrossThreadDependencyNotification : __DotNet__Object, ICustomDebuggerNotification
    {
        //TODO: generate constructor
    }
    //TODO: generate method NotifyOfCrossThreadDependencySlow
    //TODO: generate method NotifyOfCrossThreadDependency
    //TODO: generate method LaunchInternal
    //TODO: generate property 'IsAttached'
    public static immutable String DefaultCategory/*todo: implement initializer*/ = null;
    //TODO: generate method Log
    //TODO: generate method IsLogging
    //TODO: generate method CustomNotification
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\DebuggerAttributes.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Method | AttributeTargets.Constructor, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class DebuggerStepThroughAttribute : Attribute
{
    //TODO: generate constructor
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method | AttributeTargets.Constructor, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class DebuggerStepperBoundaryAttribute : Attribute
{
    //TODO: generate constructor
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method | AttributeTargets.Property | AttributeTargets.Constructor, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class DebuggerHiddenAttribute : Attribute
{
    //TODO: generate constructor
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class | AttributeTargets.Method | AttributeTargets.Property | AttributeTargets.Constructor |AttributeTargets.Struct, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class DebuggerNonUserCodeAttribute : Attribute
{
    //TODO: generate constructor
}
// Attribute class used by the compiler to mark modules.  
// If present, then debugging information for everything in the
// assembly was generated by the compiler, and will be preserved
// by the Runtime so that the debugger can provide full functionality
// in the case of JIT attach. If not present, then the compiler may
// or may not have included debugging information, and the Runtime
// won't preserve the debugging info, which will make debugging after
// a JIT attach difficult.
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly|AttributeTargets.Module, AllowMultiple = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class DebuggableAttribute : Attribute
{
    @__DotNet__Attribute!(FlagsAttribute.stringof)
    @__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
    public enum DebuggingModes
    {
        None = 0x0,
        Default = 0x1,
        DisableOptimizations = 0x100,
        IgnoreSymbolStoreSequencePoints = 0x2,
        EnableEditAndContinue = 0x4,
    }
    private DebuggingModes m_debuggingModes;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'IsJITTrackingEnabled'
    //TODO: generate property 'IsJITOptimizerDisabled'
    //TODO: generate property 'DebuggingFlags'
}
//  DebuggerBrowsableState states are defined as follows:
//      Never       never show this element
//      Expanded    expansion of the class is done, so that all visible internal members are shown
//      Collapsed   expansion of the class is not performed. Internal visible members are hidden
//      RootHidden  The target element itself should not be shown, but should instead be 
//                  automatically expanded to have its members displayed.
//  Default value is collapsed
//  Please also change the code which validates DebuggerBrowsableState variable (in this file)
//  if you change this enum.
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum DebuggerBrowsableState
{
    Never = 0,
    //Expanded is not supported in this release
    //Expanded = 1, 
    Collapsed = 2,
    RootHidden = 3,
}
// the one currently supported with the csee.dat 
// (mcee.dat, autoexp.dat) file. 
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Field | AttributeTargets.Property, AllowMultiple = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class DebuggerBrowsableAttribute : Attribute
{
    private DebuggerBrowsableState state;
    //TODO: generate constructor
    //TODO: generate property 'State'
}
// DebuggerTypeProxyAttribute
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Struct | AttributeTargets.Class | AttributeTargets.Assembly, AllowMultiple = true*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class DebuggerTypeProxyAttribute : Attribute
{
    private String typeName;
    private String targetName;
    private Type target;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'ProxyTypeName'
    //TODO: generate property 'Target'
    //TODO: generate property 'TargetTypeName'
}
// This attribute is used to control what is displayed for the given class or field 
// in the data windows in the debugger.  The single argument to this attribute is
// the string that will be displayed in the value column for instances of the type.  
// This string can include text between { and } which can be either a field, 
// property or method (as will be documented in mscorlib).  In the C# case, 
// a general expression will be allowed which only has implicit access to the this pointer 
// for the current instance of the target type. The expression will be limited, 
// however: there is no access to aliases, locals, or pointers. 
// In addition, attributes on properties referenced in the expression are not processed.
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Delegate | AttributeTargets.Enum | AttributeTargets.Field | AttributeTargets.Property | AttributeTargets.Assembly, AllowMultiple = true*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class DebuggerDisplayAttribute : Attribute
{
    private String name;
    private String value;
    private String type;
    private String targetName;
    private Type target;
    //TODO: generate constructor
    //TODO: generate property 'Value'
    //TODO: generate property 'Name'
    //TODO: generate property 'Type'
    //TODO: generate property 'Target'
    //TODO: generate property 'TargetTypeName'
}
/// <summary>
/// Signifies that the attributed type has a visualizer which is pointed
/// to by the parameter type name strings.
/// </summary>
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Struct | AttributeTargets.Class | AttributeTargets.Assembly, AllowMultiple = true*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class DebuggerVisualizerAttribute : Attribute
{
    private String visualizerObjectSourceName;
    private String visualizerName;
    private String description;
    private String targetName;
    private Type target;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'VisualizerObjectSourceTypeName'
    //TODO: generate property 'VisualizerTypeName'
    //TODO: generate property 'Description'
    //TODO: generate property 'Target'
    //TODO: generate property 'TargetTypeName'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\EditAndContinueHelper.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class EditAndContinueHelper : __DotNet__Object
{
    private __DotNet__Object _objectReference;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\ICustomDebuggerNotification.cs'
//
package(mscorlib) interface ICustomDebuggerNotification
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\log.cs'
//
// LogMessageEventHandlers are triggered when a message is generated which is
// "on" per its switch.
// 
// By default, the debugger (if attached) is the only event handler. 
// There is also a "built-in" console device which can be enabled
// programatically, by registry (specifics....) or environment
// variables.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization=true, ExternalThreading=true*/)
package(mscorlib) alias LogMessageEventHandler = void delegate(LoggingLevels level, LogSwitch category, String message, StackTrace location);
// LogSwitchLevelHandlers are triggered when the level of a LogSwitch is modified
// NOTE: These are NOT triggered when the log switch setting is changed from the 
// attached debugger.
// 
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) alias LogSwitchLevelHandler = void delegate(LogSwitch ls, LoggingLevels newLevel);
package(mscorlib) class Log : __DotNet__Object
{
    private this() {} // prevent instantiation
    package(mscorlib) static Hashtable m_Hashtable;
    private static /*todo: volatile*/ bool m_fConsoleDeviceEnabled;
    private static LogMessageEventHandler _LogMessageEventHandler;
    private static /*todo: volatile*/ LogSwitchLevelHandler _LogSwitchLevelHandler;
    private static __DotNet__Object locker;
    public static immutable LogSwitch GlobalSwitch;
    //TODO: generate constructor
    //TODO: generate method AddOnLogMessage
    //TODO: generate method RemoveOnLogMessage
    //TODO: generate method AddOnLogSwitchLevel
    //TODO: generate method RemoveOnLogSwitchLevel
    //TODO: generate method InvokeLogSwitchLevelHandlers
    //TODO: generate property 'IsConsoleEnabled'
    //TODO: generate method LogMessage
    //TODO: generate method LogMessage
    //TODO: generate method Trace
    //TODO: generate method Trace
    //TODO: generate method Trace
    //TODO: generate method Status
    //TODO: generate method Status
    //TODO: generate method Status
    //TODO: generate method Warning
    //TODO: generate method Warning
    //TODO: generate method Warning
    //TODO: generate method Error
    //TODO: generate method Error
    //TODO: generate method Error
    //TODO: generate method Panic
    //TODO: generate method AddLogSwitch
    //TODO: generate method ModifyLogSwitch
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\LoggingLevels.cs'
//
// Constants representing the importance level of messages to be logged.
// This level can be used to organize messages, and also to filter which
// messages are displayed.
//
// An attached debugger can enable or disable which messages will
// actually be reported to the user through the COM+ debugger
// services API.  This info is communicated to the runtime so only
// desired events are actually reported to the debugger.  
// NOTE: The following constants mirror the constants 
// declared in the EE code (DebugDebugger.h). Any changes here will also
// need to be made there.
// Constants representing the importance level of messages to be logged.
// This level can be used to organize messages, and also to filter which
// messages are displayed.
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) enum LoggingLevels
{
    TraceLevel0 = 0,
    TraceLevel1 = 1,
    TraceLevel2 = 2,
    TraceLevel3 = 3,
    TraceLevel4 = 4,
    StatusLevel0 = 20,
    StatusLevel1 = 21,
    StatusLevel2 = 22,
    StatusLevel3 = 23,
    StatusLevel4 = 24,
    WarningLevel = 40,
    ErrorLevel = 50,
    PanicLevel = 100,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\LogSwitch.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class LogSwitch : __DotNet__Object
{
    package(mscorlib) String strName;
    package(mscorlib) String strDescription;
    private LogSwitch ParentSwitch;
    package(mscorlib) /*todo: volatile*/ LoggingLevels iLevel;
    package(mscorlib) /*todo: volatile*/ LoggingLevels iOldLevel;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Name'
    //TODO: generate property 'Description'
    //TODO: generate property 'Parent'
    //TODO: generate property 'MinimumLevel'
    //TODO: generate method CheckLevel
    //TODO: generate method GetSwitch
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Stackframe.cs'
//
// There is no good reason for the methods of this class to be virtual.  
// In order to ensure trusted code can trust the data it gets from a 
// StackTrace, we use an InheritanceDemand to prevent partially-trusted
// subclasses.
// #if !FEATURE_CORECLR
// [SecurityPermission(SecurityAction.InheritanceDemand, UnmanagedCode=true)]
// #endif
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class StackFrame : __DotNet__Object
{
    private MethodBase method;
    private int offset;
    private int ILOffset;
    private String strFileName;
    private int iLineNumber;
    private int iColumnNumber;
    // #if FEATURE_EXCEPTIONDISPATCHINFO
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof)
    private bool fIsLastFrameFromForeignExceptionStackTrace;
    //TODO: generate method InitMembers
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    public enum int OFFSET_UNKNOWN/*todo: implement initializer*/ = int();
    //TODO: generate method SetMethodBase
    //TODO: generate method SetOffset
    //TODO: generate method SetILOffset
    //TODO: generate method SetFileName
    //TODO: generate method SetLineNumber
    //TODO: generate method SetColumnNumber
    //TODO: generate method SetIsLastFrameFromForeignExceptionStackTrace
    //TODO: generate method GetIsLastFrameFromForeignExceptionStackTrace
    //TODO: generate method GetMethod
    //TODO: generate method GetNativeOffset
    //TODO: generate method GetILOffset
    //TODO: generate method GetFileName
    //TODO: generate method GetFileLineNumber
    //TODO: generate method GetFileColumnNumber
    //TODO: generate method ToString
    //TODO: generate method BuildStackFrame
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Stacktrace.cs'
//
// READ ME:
// Modifying the order or fields of this object may require other changes 
// to the unmanaged definition of the StackFrameHelper class, in 
// VM\DebugDebugger.h. The binder will catch some of these layout problems.
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class StackFrameHelper : __DotNet__Object, IDisposable
{
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private Thread targetThread;
    private int[] rgiOffset;
    private int[] rgiILOffset;
    private MethodBase[] rgMethodBase;
    private __DotNet__Object dynamicMethods;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private IntPtr[] rgMethodHandle;
    private String[] rgAssemblyPath;
    private IntPtr[] rgLoadedPeAddress;
    private int[] rgiLoadedPeSize;
    private IntPtr[] rgInMemoryPdbAddress;
    private int[] rgiInMemoryPdbSize;
    private int[] rgiMethodToken;
    private String[] rgFilename;
    private int[] rgiLineNumber;
    private int[] rgiColumnNumber;
    // #if FEATURE_EXCEPTIONDISPATCHINFO
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof)
    private bool[] rgiLastFrameFromForeignExceptionStackTrace;
    private GetSourceLineInfoDelegate getSourceLineInfo;
    private int iFrameCount;
    private alias GetSourceLineInfoDelegate = void delegate(String assemblyPath, IntPtr loadedPeAddress, int loadedPeSize, IntPtr inMemoryPdbAddress, int inMemoryPdbSize, int methodToken, int ilOffset, out String sourceFile, out int sourceLine, out int sourceColumn);
    private static Type s_symbolsType/*todo: implement initializer*/ = null;
    private static MethodInfo s_symbolsMethodInfo/*todo: implement initializer*/ = null;
    @__DotNet__Attribute!(ThreadStaticAttribute.stringof)
    private static int t_reentrancy/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate method InitializeSourceInfo
    //TODO: generate method Dispose
    //TODO: generate method GetMethodBase
    //TODO: generate method GetOffset
    //TODO: generate method GetILOffset
    //TODO: generate method GetFilename
    //TODO: generate method GetLineNumber
    //TODO: generate method GetColumnNumber
    //TODO: generate method IsLastFrameFromForeignExceptionStackTrace
    //TODO: generate method GetNumberOfFrames
    //TODO: generate method SetNumberOfFrames
    //TODO: generate method OnSerializing
    //TODO: generate method OnSerialized
    //TODO: generate method OnDeserialized
}
// Class which represents a description of a stack trace
// There is no good reason for the methods of this class to be virtual.  
// In order to ensure trusted code can trust the data it gets from a 
// StackTrace, we use an InheritanceDemand to prevent partially-trusted
// subclasses.
// #if !FEATURE_CORECLR
// [SecurityPermission(SecurityAction.InheritanceDemand, UnmanagedCode=true)]
// #endif
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class StackTrace : __DotNet__Object
{
    private StackFrame[] frames;
    private int m_iNumOfFrames;
    public enum int METHODS_TO_SKIP/*todo: implement initializer*/ = int();
    private int m_iMethodsToSkip;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetStackFramesInternal
    //TODO: generate method CalculateFramesToSkip
    //TODO: generate method CaptureStackTrace
    //TODO: generate property 'FrameCount'
    //TODO: generate method GetFrame
    //TODO: generate method GetFrames
    //TODO: generate method ToString
    package(mscorlib) enum TraceFormat
    {
        Normal,
        TrailingNewLine,
        NoResourceLookup,
    }
    //TODO: generate method ToString
    //TODO: generate method GetManagedStackTraceStringHelper
}
