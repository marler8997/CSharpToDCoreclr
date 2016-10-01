module mscorlib.System.Diagnostics.Tracing;

import mscorlib.System :
    __DotNet__Object,
    String,
    Guid,
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    FlagsAttribute,
    IDisposable,
    ThreadStaticAttribute,
    EventHandler1,
    __DotNet__Exception,
    Action1,
    WeakReference,
    EventArgs,
    AttributeUsageAttribute,
    Attribute,
    Tuple2,
    WeakReference1,
    Type,
    SerializableAttribute,
    Func2,
    IntPtr,
    UIntPtr,
    DateTime,
    DateTimeOffset,
    TimeSpan,
    Decimal,
    Func3;
import mscorlib.System.Threading :
    AsyncLocal1;
import mscorlib.System.Runtime.InteropServices :
    StructLayoutAttribute,
    FieldOffsetAttribute,
    GCHandle;
import mscorlib.System.Security.Permissions :
    HostProtectionAttribute;
import mscorlib.System.Security :
    SecurityCriticalAttribute,
    SecuritySafeCriticalAttribute;
import mscorlib.Microsoft.Win32 :
    UnsafeNativeMethods;
import mscorlib.System.Collections.Generic :
    List1,
    Dictionary2,
    IList1,
    IDictionary2,
    KeyValuePair2;
import mscorlib.System.Diagnostics.CodeAnalysis :
    SuppressMessageAttribute;
import mscorlib.System.Reflection :
    ParameterInfo,
    PropertyInfo;
import mscorlib.System.Collections.ObjectModel :
    ReadOnlyCollection1;
import mscorlib.System.Collections.Concurrent :
    ConcurrentDictionary2;
import mscorlib.System.Text :
    StringBuilder;
import mscorlib.System.Resources :
    ResourceManager;
import mscorlib.System.Runtime.CompilerServices :
    FriendAccessAllowedAttribute;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\ActivityTracker.cs'
//
public class ActivityTracker : __DotNet__Object
{
    //TODO: generate method OnStart
    //TODO: generate method OnStop
    //TODO: generate method Enable
    //TODO: generate property 'Instance'
    //TODO: generate property 'CurrentActivityId'
    //TODO: generate method FindActiveActivity
    //TODO: generate method NormalizeActivityName
    private static class ActivityInfo : __DotNet__Object
    {
        //TODO: generate constructor
        //TODO: generate property 'ActivityId'
        //TODO: generate method Path
        //TODO: generate method ToString
        //TODO: generate method LiveActivities
        //TODO: generate method CanBeOrphan
        //TODO: generate method CreateActivityPathGuid
        //TODO: generate method CreateOverflowGuid
        private enum NumberListCodes : ubyte
        {
            End = 0x0,
            LastImmediateValue = 0xA,
            PrefixCode = 0xB,
            // than this is a 'overflow' id.   Unlike the hierarchical IDs these are 
            // allocated densely but don't tell you anything about nesting. we use 
            // these when we run out of space in the GUID to store the path.
            MultiByte1 = 0xC,
        }
        //TODO: generate method AddIdToGuid
        //TODO: generate method WriteNibble
        public immutable String m_name;
        private immutable long m_uniqueId;
        public immutable Guid m_guid;
        public immutable int m_activityPathGuidOffset;
        public immutable int m_level;
        public immutable EventActivityOptions m_eventOptions;
        public long m_lastChildID;
        public int m_stopped;
        public immutable ActivityInfo m_creator;
        public immutable Guid m_activityIdToRestore;
    }
    //TODO: generate method ActivityChanging
    private AsyncLocal1!(ActivityInfo) m_current;
    private bool m_checkedForEnable;
    private static ActivityTracker s_activityTrackerInstance/*todo: implement initializer*/ = null;
    private static long m_nextId/*todo: implement initializer*/ = long();
    private enum ushort MAX_ACTIVITY_DEPTH/*todo: implement initializer*/ = ushort();
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\EventActivityOptions.cs'
//
/// <summary>
/// EventActivityOptions flags allow to specify different activity related characteristics.
/// </summary>
@__DotNet__Attribute!(FlagsAttribute.stringof)
public enum EventActivityOptions
{
    /// <summary>
    /// No special options are added to the event.
    /// </summary>
    None = 0,
    /// <summary>
    /// Disable Implicit Activity Tracking
    /// </summary>
    Disable = 0x2,
    /// <summary>
    /// Allow activity event to call itself (directly or indirectly)
    /// </summary>
    Recursive = 0x4,
    /// <summary>
    /// Allows event activity to live beyond its parent.
    /// </summary>
    Detachable = 0x8,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\EventDescriptor.cs'
//
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Explicit, Size = 16*/)
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
public struct EventDescriptor
{
    // # region private
    @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
    private int m_traceloggingId;
    @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
    private ushort m_id;
    @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 2*/)
    private ubyte m_version;
    @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 3*/)
    private ubyte m_channel;
    @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 4*/)
    private ubyte m_level;
    @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 5*/)
    private ubyte m_opcode;
    @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 6*/)
    private ushort m_task;
    @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 8*/)
    private long m_keywords;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'EventId'
    //TODO: generate property 'Version'
    //TODO: generate property 'Channel'
    //TODO: generate property 'Level'
    //TODO: generate property 'Opcode'
    //TODO: generate property 'Task'
    //TODO: generate property 'Keywords'
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\EventProvider.cs'
//
public enum ControllerCommand
{
    // Strictly Positive numbers are for provider-specific commands, negative number are for 'shared' commands. 256
    // The first 256 negative numbers are reserved for the framework.  
    Update = 0,
    SendManifest = -1,
    Enable = -2,
    Disable = -3,
}
/// <summary>
/// Only here because System.Diagnostics.EventProvider needs one more extensibility hook (when it gets a 
/// controller callback)
/// </summary>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
public class EventProvider : __DotNet__Object, IDisposable
{
    public static struct EventData
    {
        public ulong Ptr;
        public uint Size;
        public uint Reserved;
    }
    public static struct SessionInfo
    {
        public int sessionIdBit;
        public int etwSessionId;
        //TODO: generate constructor
    }
    private static bool m_setInformationMissing;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private UnsafeNativeMethods.ManifestEtw.EtwEnableCallback m_etwCallback;
    private long m_regHandle;
    private ubyte m_level;
    private long m_anyKeywordMask;
    private long m_allKeywordMask;
    private List1!(SessionInfo) m_liveSessions;
    private bool m_enabled;
    private Guid m_providerId;
    public bool m_disposed;
    @__DotNet__Attribute!(ThreadStaticAttribute.stringof)
    private static WriteEventErrorCode s_returnCode;
    private enum int s_basicTypeAllocationBufferSize/*todo: implement initializer*/ = int();
    private enum int s_etwMaxNumberArguments/*todo: implement initializer*/ = int();
    private enum int s_etwAPIMaxRefObjCount/*todo: implement initializer*/ = int();
    private enum int s_maxEventDataDescriptors/*todo: implement initializer*/ = int();
    private enum int s_traceEventMaximumSize/*todo: implement initializer*/ = int();
    private enum int s_traceEventMaximumStringSize/*todo: implement initializer*/ = int();
    @__DotNet__Attribute!(SuppressMessageAttribute.stringof/*, "Microsoft.Design", "CA1034:NestedTypesShouldNotBeVisible"*/)
    public enum WriteEventErrorCode : int
    {
        //check mapping to runtime codes
        NoError = 0,
        NoFreeBuffers = 1,
        EventTooBig = 2,
        NullInput = 3,
        TooManyArgs = 4,
        Other = 5,
    }
    //TODO: generate constructor
    //TODO: generate method Register
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    //TODO: generate method Close
    //TODO: generate destructor
    //TODO: generate method Deregister
    //TODO: generate method EtwEnableCallBack
    //TODO: generate method OnControllerCommand
    //TODO: generate property 'Level'
    //TODO: generate property 'MatchAnyKeyword'
    //TODO: generate property 'MatchAllKeyword'
    //TODO: generate method FindNull
    //TODO: generate method GetSessions
    //TODO: generate method GetSessionInfoCallback
    //TODO: generate method GetSessionInfo
    //TODO: generate method IndexOfSessionInList
    //TODO: generate method GetDataFromController
    //TODO: generate method IsEnabled
    //TODO: generate method IsEnabled
    //TODO: generate method GetLastWriteEventError
    //TODO: generate method SetLastError
    //TODO: generate method EncodeObject
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEventRaw
    //TODO: generate method EventRegister
    //TODO: generate method EventUnregister
    private static int[] nibblebits/*todo: implement initializer*/ = null;
    //TODO: generate method bitcount
    //TODO: generate method bitindex
    //TODO: generate method SetInformation
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\EventSource.cs'
//
public class EventSource : __DotNet__Object, IDisposable
{
    //TODO: generate property 'Name'
    //TODO: generate property 'Guid'
    //TODO: generate method IsEnabled
    //TODO: generate method IsEnabled
    //TODO: generate method IsEnabled
    //TODO: generate property 'Settings'
    //TODO: generate method GetGuid
    //TODO: generate method GetName
    //TODO: generate method GenerateManifest
    //TODO: generate method GenerateManifest
    //TODO: generate method GetSources
    //TODO: generate method SendCommand
    //TODO: generate property 'InternalCurrentThreadActivityId'
    //TODO: generate property 'FallbackActivityId'
    //TODO: generate property 'ConstructionException'
    //TODO: generate method GetTrait
    //TODO: generate method ToString
    //TODO: generate event 'EventCommandExecuted'
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetMetadata
    //TODO: generate method OnEventCommand
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    public  static struct EventData
    {
        //TODO: generate property 'DataPointer'
        //TODO: generate property 'Size'
        //TODO: generate method SetMetadata
        public long m_Ptr;
        public int m_Size;
        public int m_Reserved;
    }
    //TODO: generate method WriteEventCore
    //TODO: generate method WriteEventWithRelatedActivityIdCore
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEventWithRelatedActivityId
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    //TODO: generate destructor
    //TODO: generate method WriteStringToListener
    //TODO: generate method WriteEventRaw
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Initialize
    //TODO: generate method GetName
    private static struct Sha1ForNonSecretPurposes
    {
        private long length;
        private uint[] w;
        private int pos;
        //TODO: generate method Start
        //TODO: generate method Append
        //TODO: generate method Append
        //TODO: generate method Finish
        //TODO: generate method Drain
        //TODO: generate method Rol1
        //TODO: generate method Rol5
        //TODO: generate method Rol30
    }
    //TODO: generate method GenerateGuidFromName
    //TODO: generate method DecodeObject
    //TODO: generate method GetDispatcher
    //TODO: generate method WriteEventVarargs
    //TODO: generate method SerializeEventArgs
    //TODO: generate method LogEventArgsMismatches
    //TODO: generate method GetParamLenghtIncludingByteArray
    //TODO: generate method WriteToAllListeners
    //TODO: generate method WriteToAllListeners
    //TODO: generate method DispatchToAllListeners
    //TODO: generate method WriteEventString
    //TODO: generate method WriteStringToAllListeners
    //TODO: generate method GetEtwSessionMask
    //TODO: generate method IsEnabledByDefault
    //TODO: generate method IsEnabledCommon
    //TODO: generate method ThrowEventSourceException
    //TODO: generate method ValidateEventOpcodeForTransfer
    //TODO: generate method GetOpcodeWithDefault
    private static class OverideEventProvider : EventProvider
    {
        //TODO: generate constructor
        //TODO: generate method OnControllerCommand
        private EventSource m_eventSource;
    }
    public static struct EventMetadata
    {
        public EventDescriptor Descriptor;
        public EventTags Tags;
        public bool EnabledForAnyListener;
        public bool EnabledForETW;
        public bool HasRelatedActivityID;
        public ubyte TriggersActivityTracking;
        public String Name;
        public String Message;
        public ParameterInfo[] Parameters;
        public TraceLoggingEventTypes TraceLoggingEventTypes_;
        public EventActivityOptions ActivityOptions;
    }
    //TODO: generate method SendCommand
    //TODO: generate method DoCommand
    //TODO: generate method UpdateEtwSession
    //TODO: generate method ParseCommandArgs
    //TODO: generate method UpdateKwdTriggers
    //TODO: generate method EnableEventForDispatcher
    //TODO: generate method AnyEventEnabled
    //TODO: generate property 'IsDisposed'
    //TODO: generate method EnsureDescriptorsInitialized
    //TODO: generate method SendManifest
    //TODO: generate method GetCustomAttributeHelper
    //TODO: generate method AttributeTypeNamesMatch
    //TODO: generate method GetEventSourceBaseType
    //TODO: generate method CreateManifestAndDescriptors
    //TODO: generate method RemoveFirstArgIfRelatedActivityId
    //TODO: generate method AddProviderEnumKind
    //TODO: generate method AddEventDescriptor
    //TODO: generate method TrimEventDescriptors
    //TODO: generate method AddListener
    //TODO: generate method DebugCheckEvent
    //TODO: generate method GetHelperCallFirstArg
    //TODO: generate method ReportOutOfBandMessage
    //TODO: generate method ValidateSettings
    //TODO: generate property 'ThrowOnEventWriteErrors'
    //TODO: generate property 'SelfDescribingEvents'
    //TODO: generate method ReportActivitySamplingInfo
    private String m_name;
    public int m_id;
    private Guid m_guid;
    public /*todo: volatile*/ EventMetadata[] m_eventData;
    private /*todo: volatile*/ ubyte[] m_rawManifest;
    private EventHandler1!(EventCommandEventArgs) m_eventCommandExecuted;
    private EventSourceSettings m_config;
    private bool m_eventSourceDisposed;
    private bool m_eventSourceEnabled;
    public EventLevel m_level;
    public EventKeywords m_matchAnyKeyword;
    public /*todo: volatile*/ EventDispatcher m_Dispatchers;
    private /*todo: volatile*/ OverideEventProvider m_provider;
    private bool m_completelyInited;
    private __DotNet__Exception m_constructionException;
    private ubyte m_outOfBandMessageCount;
    private EventCommandEventArgs m_deferredCommands;
    private String[] m_traits;
    public static uint s_currentPid;
    @__DotNet__Attribute!(ThreadStaticAttribute.stringof)
    private static ubyte m_EventSourceExceptionRecurenceCount/*todo: implement initializer*/ = ubyte();
    @__DotNet__Attribute!(ThreadStaticAttribute.stringof)
    private static bool m_EventSourceInDecodeObject/*todo: implement initializer*/ = bool();
    public /*todo: volatile*/ ulong[] m_channelData;
    private SessionMask m_curLiveSessions;
    private EtwSession[] m_etwSessionIdMap;
    private List1!(EtwSession) m_legacySessions;
    public long m_keywordTriggers;
    public SessionMask m_activityFilteringForETWEnabled;
    public static Action1!(Guid) s_activityDying;
    private ActivityTracker m_activityTracker;
    public enum String s_ActivityStartSuffix/*todo: implement initializer*/ = null;
    public enum String s_ActivityStopSuffix/*todo: implement initializer*/ = null;
    private static immutable ubyte[] namespaceBytes/*todo: implement initializer*/ = null;
    //TODO: generate method SetCurrentThreadActivityId
    //TODO: generate method SetCurrentThreadActivityId
    //TODO: generate property 'CurrentThreadActivityId'
    //TODO: generate method GetParameterCount
    //TODO: generate method GetDataType
    //TODO: generate method GetResourceString
    private static immutable bool m_EventSourcePreventRecursion/*todo: implement initializer*/ = bool();
    private ubyte[] providerMetadata;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method WriteMultiMerge
    //TODO: generate method WriteMultiMergeInner
    //TODO: generate method WriteMultiMerge
    //TODO: generate method WriteImpl
    //TODO: generate method WriteToAllListeners
    //TODO: generate method WriteCleanup
    //TODO: generate method InitializeProviderMetadata
    //TODO: generate method AddValueToMetaData
    //TODO: generate method HexDigit
    //TODO: generate method UpdateDescriptor
}
/// <summary>
/// Enables specifying event source configuration options to be used in the EventSource constructor.
/// </summary>
@__DotNet__Attribute!(FlagsAttribute.stringof)
public enum EventSourceSettings
{
    /// <summary>
    /// This specifies none of the special configuration options should be enabled.
    /// </summary>
    Default = 0,
    /// <summary>
    /// Normally an EventSource NEVER throws; setting this option will tell it to throw when it encounters errors.  
    /// </summary>
    ThrowOnEventWriteErrors = 1,
    /// <summary>
    /// Setting this option is a directive to the ETW listener should use manifest-based format when
    /// firing events. This is the default option when defining a type derived from EventSource 
    /// (using the protected EventSource constructors).
    /// Only one of EtwManifestEventFormat or EtwSelfDescribingEventFormat should be specified
    /// </summary>
    EtwManifestEventFormat = 4,
    /// <summary>
    /// Setting this option is a directive to the ETW listener should use self-describing event format
    /// when firing events. This is the default option when creating a new instance of the EventSource
    /// type (using the public EventSource constructors).  
    /// Only one of EtwManifestEventFormat or EtwSelfDescribingEventFormat should be specified
    /// </summary>
    EtwSelfDescribingEventFormat = 8,
}
public class EventListener : __DotNet__Object, IDisposable
{
    //TODO: generate event field
    //TODO: generate event 'EventSourceCreated'
    //TODO: generate event field
    //TODO: generate constructor
    //TODO: generate method Dispose
    //TODO: generate method EnableEvents
    //TODO: generate method EnableEvents
    //TODO: generate method EnableEvents
    //TODO: generate method DisableEvents
    //TODO: generate method EventSourceIndex
    //TODO: generate method OnEventSourceCreated
    //TODO: generate method OnEventWritten
    //TODO: generate method AddEventSource
    //TODO: generate method DisposeOnShutdown
    //TODO: generate method RemoveReferencesToListenerInEventSources
    //TODO: generate method Validate
    //TODO: generate property 'EventListenersLock'
    //TODO: generate method CallBackForExistingEventSources
    public /*todo: volatile*/ EventListener m_Next;
    public ActivityFilter m_activityFilter;
    public static EventListener s_Listeners;
    public static List1!(WeakReference) s_EventSources;
    private static bool s_CreatingListener/*todo: implement initializer*/ = bool();
    private static bool s_EventSourceShutdownRegistered/*todo: implement initializer*/ = bool();
}
public class EventCommandEventArgs : EventArgs
{
    //TODO: generate property 'Command'
    //TODO: generate property 'Arguments'
    //TODO: generate method EnableEvent
    //TODO: generate method DisableEvent
    //TODO: generate constructor
    public EventSource eventSource;
    public EventDispatcher dispatcher;
    public EventListener listener;
    public int perEventSourceSessionId;
    public int etwSessionId;
    public bool enable;
    public EventLevel level;
    public EventKeywords matchAnyKeyword;
    public EventCommandEventArgs nextCommand;
}
public class EventSourceCreatedEventArgs : EventArgs
{
    //TODO: generate property 'EventSource'
}
public class EventWrittenEventArgs : EventArgs
{
    //TODO: generate property 'EventName'
    //TODO: generate property 'EventId'
    //TODO: generate property 'ActivityId'
    //TODO: generate property 'RelatedActivityId'
    //TODO: generate property 'Payload'
    //TODO: generate property 'PayloadNames'
    //TODO: generate property 'EventSource'
    //TODO: generate property 'Keywords'
    //TODO: generate property 'Opcode'
    //TODO: generate property 'Task'
    //TODO: generate property 'Tags'
    //TODO: generate property 'Message'
    //TODO: generate property 'Channel'
    //TODO: generate property 'Version'
    //TODO: generate property 'Level'
    //TODO: generate constructor
    private String m_message;
    private String m_eventName;
    private EventSource m_eventSource;
    private ReadOnlyCollection1!(String) m_payloadNames;
    public EventTags m_tags;
    public EventOpcode m_opcode;
    public EventLevel m_level;
    public EventKeywords m_keywords;
}
/// <summary>
/// Allows customizing defaults and specifying localization support for the event source class to which it is applied. 
/// </summary>
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class*/)
public final class EventSourceAttribute : Attribute
{
    //TODO: generate property 'Name'
    //TODO: generate property 'Guid'
    //TODO: generate property 'LocalizationResources'
}
/// <summary>
/// Any instance methods in a class that subclasses <see cref="EventSource"/> and that return void are
/// assumed by default to be methods that generate an ETW event. Enough information can be deduced from the
/// name of the method and its signature to generate basic schema information for the event. The
/// <see cref="EventAttribute"/> class allows you to specify additional event schema information for an event if
/// desired.
/// </summary>
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method*/)
public final class EventAttribute : Attribute
{
    //TODO: generate constructor
    //TODO: generate property 'EventId'
    //TODO: generate property 'Level'
    //TODO: generate property 'Keywords'
    //TODO: generate property 'Opcode'
    //TODO: generate property 'IsOpcodeSet'
    //TODO: generate property 'Task'
    //TODO: generate property 'Channel'
    //TODO: generate property 'Version'
    //TODO: generate property 'Message'
    //TODO: generate property 'Tags'
    //TODO: generate property 'ActivityOptions'
    private EventOpcode m_opcode;
    private bool m_opcodeSet;
}
/// <summary>
/// By default all instance methods in a class that subclasses code:EventSource that and return
/// void are assumed to be methods that generate an event. This default can be overridden by specifying
/// the code:NonEventAttribute
/// </summary>
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method*/)
public final class NonEventAttribute : Attribute
{
    //TODO: generate constructor
}
// FUTURE we may want to expose this at some point once we have a partner that can help us validate the design.
// #if FEATURE_MANAGED_ETW_CHANNELS
/// <summary>
/// EventChannelAttribute allows customizing channels supported by an EventSource. This attribute must be
/// applied to an member of type EventChannel defined in a Channels class nested in the EventSource class:
/// <code>
///     public static class Channels
///     {
///         [Channel(Enabled = true, EventChannelType = EventChannelType.Admin)]
///         public const EventChannel Admin = (EventChannel)16;
///     
///         [Channel(Enabled = false, EventChannelType = EventChannelType.Operational)]
///         public const EventChannel Operational = (EventChannel)17;
///     }
/// </code>
/// </summary>
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Field*/)
private class EventChannelAttribute : Attribute
{
    //TODO: generate property 'Enabled'
    //TODO: generate property 'EventChannelType'
}
private enum EventChannelType
{
    /// <summary>The admin channel</summary>
    Admin = 1,
    /// <summary>The operational channel</summary>
    Operational,
    /// <summary>The Analytic channel</summary>
    Analytic,
    /// <summary>The debug channel</summary>
    Debug,
}
public enum EventCommand
{
    /// <summary>
    /// Update EventSource state
    /// </summary>
    Update = 0,
    /// <summary>
    /// Request EventSource to generate and send its manifest
    /// </summary>
    SendManifest = -1,
    /// <summary>
    /// Enable event
    /// </summary>
    Enable = -2,
    /// <summary>
    /// Disable event
    /// </summary>
    Disable = -3,
}
public final class ActivityFilter : __DotNet__Object, IDisposable
{
    //TODO: generate method DisableFilter
    //TODO: generate method UpdateFilter
    //TODO: generate method GetFilter
    //TODO: generate method PassesActivityFilter
    //TODO: generate method IsCurrentActivityActive
    //TODO: generate method FlowActivityIfNeeded
    //TODO: generate method UpdateKwdTriggers
    //TODO: generate method GetFilterAsTuple
    //TODO: generate method Dispose
    //TODO: generate constructor
    //TODO: generate method EnsureActivityCleanupDelegate
    //TODO: generate method GetActivityDyingDelegate
    //TODO: generate method EnableFilter
    //TODO: generate method TrimActiveActivityStore
    //TODO: generate method GetActiveActivities
    private ConcurrentDictionary2!(Guid,int) m_activeActivities;
    private ConcurrentDictionary2!(Guid,Tuple2!(Guid,int)) m_rootActiveActivities;
    private Guid m_providerGuid;
    private int m_eventId;
    private int m_samplingFreq;
    private int m_curSampleCount;
    private int m_perEventSourceSessionId;
    private enum int MaxActivityTrackCount/*todo: implement initializer*/ = int();
    private ActivityFilter m_next;
    private Action1!(Guid) m_myActivityDelegate;
}
public class EtwSession : __DotNet__Object
{
    //TODO: generate method GetEtwSession
    //TODO: generate method RemoveEtwSession
    //TODO: generate method TrimGlobalList
    //TODO: generate constructor
    public immutable int m_etwSessionId;
    public ActivityFilter m_activityFilter;
    private static List1!(WeakReference1!(EtwSession)) s_etwSessions/*todo: implement initializer*/ = null;
    private enum int s_thrSessionCount/*todo: implement initializer*/ = int();
}
public struct SessionMask
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method IsEqualOrSupersetOf
    //TODO: generate property 'All'
    //TODO: generate method FromId
    //TODO: generate method ToEventKeywords
    //TODO: generate method FromEventKeywords
    //TODO: generate indexer
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    private uint m_mask;
    public enum int SHIFT_SESSION_TO_KEYWORD/*todo: implement initializer*/ = int();
    public enum uint MASK/*todo: implement initializer*/ = uint();
    public enum uint MAX/*todo: implement initializer*/ = uint();
}
public class EventDispatcher : __DotNet__Object
{
    //TODO: generate constructor
    public immutable EventListener m_Listener;
    public bool[] m_EventEnabled;
    public bool m_activityFilteringEnabled;
    public EventDispatcher m_Next;
}
/// <summary>
/// Flags that can be used with EventSource.GenerateManifest to control how the ETW manifest for the EventSource is
/// generated.
/// </summary>
@__DotNet__Attribute!(FlagsAttribute.stringof)
public enum EventManifestOptions
{
    /// <summary>
    /// Only the resources associated with current UI culture are included in the  manifest
    /// </summary>
    None = 0x0,
    /// <summary>
    /// Throw exceptions for any inconsistency encountered
    /// </summary>
    Strict = 0x1,
    /// <summary>
    /// Generate a "resources" node under "localization" for every satellite assembly provided
    /// </summary>
    AllCultures = 0x2,
    /// <summary>
    /// Generate the manifest only if the event source needs to be registered on the machine,
    /// otherwise return null (but still perform validation if Strict is specified)
    /// </summary>
    OnlyIfNeededForRegistration = 0x4,
    /// <summary>
    /// When generating the manifest do *not* enforce the rule that the current EventSource class
    /// must be the base class for the user-defined type passed in. This allows validation of .net
    /// event sources using the new validation code
    /// </summary>
    AllowEventSourceOverride = 0x8,
}
public class ManifestBuilder : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method AddOpcode
    //TODO: generate method AddTask
    //TODO: generate method AddKeyword
    //TODO: generate method AddChannel
    //TODO: generate method EventChannelToChannelType
    //TODO: generate method GetDefaultChannelAttribute
    //TODO: generate method GetChannelData
    //TODO: generate method StartEvent
    //TODO: generate method AddEventParameter
    //TODO: generate method EndEvent
    //TODO: generate method GetChannelKeyword
    //TODO: generate method CreateManifest
    //TODO: generate property 'Errors'
    //TODO: generate method ManifestError
    //TODO: generate method CreateManifestString
    //TODO: generate method WriteNameAndMessageAttribs
    //TODO: generate method WriteMessageAttrib
    //TODO: generate method GetLocalizedMessage
    //TODO: generate method GetSupportedCultures
    //TODO: generate method GetLevelName
    //TODO: generate method GetChannelName
    //TODO: generate method GetTaskName
    //TODO: generate method GetOpcodeName
    //TODO: generate method GetKeywords
    //TODO: generate method GetTypeName
    //TODO: generate method UpdateStringBuilder
    //TODO: generate method TranslateToManifestConvention
    //TODO: generate method TranslateIndexToManifestConvention
    private static class ChannelInfo : __DotNet__Object
    {
        public String Name;
        public ulong Keywords;
        public EventChannelAttribute Attribs;
    }
    private Dictionary2!(int,String) opcodeTab;
    private Dictionary2!(int,String) taskTab;
    private Dictionary2!(int,ChannelInfo) channelTab;
    private Dictionary2!(ulong,String) keywordTab;
    private Dictionary2!(String,Type) mapsTab;
    private Dictionary2!(String,String) stringTab;
    public enum ulong ValidPredefinedChannelKeywords/*todo: implement initializer*/ = ulong();
    private ulong nextChannelKeywordBit/*todo: implement initializer*/ = ulong();
    private enum int MaxCountChannels/*todo: implement initializer*/ = int();
    private StringBuilder sb;
    private StringBuilder events;
    private StringBuilder templates;
    private String providerName;
    private ResourceManager resources;
    private EventManifestOptions flags;
    private IList1!(String) errors;
    private Dictionary2!(String,List1!(int)) perEventByteArrayArgIndices;
    private String eventName;
    private int numParams;
    private List1!(int) byteArrArgIndices;
    //TODO: generate method GetTypeNameHelper
}
public struct ManifestEnvelope
{
    public enum int MaxChunkSize/*todo: implement initializer*/ = int();
    public enum ManifestFormats : ubyte
    {
        SimpleXmlFormat = 1,
    }
    public ManifestFormats Format;
    public ubyte MajorVersion;
    public ubyte MinorVersion;
    public ubyte Magic;
    public ushort TotalChunks;
    public ushort ChunkNumber;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\EventSource_CoreCLR.cs'
//
// partial class 'EventSource' moved
// partial class 'ManifestBuilder' moved
// partial class 'EventProvider' moved
public class Resources : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method GetResourceString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\EventSourceException.cs'
//
/// <summary>
/// Exception that is thrown when an error occurs during EventSource operation.
/// </summary>
// #if (!ES_BUILD_PCL && !PROJECTN)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class EventSourceException : __DotNet__Exception
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\FrameworkEventSource.cs'
//
// To use the framework provider
// 
//     \\clrmain\tools\Perfmonitor /nokernel /noclr /provider:8E9F5090-2D75-4d03-8A81-E5AFBF85DAF1 start
//     Run run your app
//     \\clrmain\tools\Perfmonitor stop
//     \\clrmain\tools\Perfmonitor print
//
// This will produce an XML file, where each event is pretty-printed with all its arguments nicely parsed.
//
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
@__DotNet__Attribute!(EventSourceAttribute.stringof/*, Guid = "8E9F5090-2D75-4d03-8A81-E5AFBF85DAF1", Name = "System.Diagnostics.Eventing.FrameworkEventSource"*/)
public final class FrameworkEventSource : EventSource
{
    public static immutable FrameworkEventSource Log/*todo: implement initializer*/ = null;
    public static class Keywords : __DotNet__Object
    {
        private this() {} // prevent instantiation
        public enum EventKeywords Loader/*todo: implement initializer*/ = (cast(EventKeywords)0);
        public enum EventKeywords ThreadPool/*todo: implement initializer*/ = (cast(EventKeywords)0);
        public enum EventKeywords NetClient/*todo: implement initializer*/ = (cast(EventKeywords)0);
        public enum EventKeywords DynamicTypeUsage/*todo: implement initializer*/ = (cast(EventKeywords)0);
        public enum EventKeywords ThreadTransfer/*todo: implement initializer*/ = (cast(EventKeywords)0);
    }
    /// <summary>ETW tasks that have start/stop events.</summary>
    @__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
    public static class Tasks : __DotNet__Object
    {
        private this() {} // prevent instantiation
        public enum EventTask GetResponse/*todo: implement initializer*/ = (cast(EventTask)0);
        public enum EventTask GetRequestStream/*todo: implement initializer*/ = (cast(EventTask)0);
        public enum EventTask ThreadTransfer/*todo: implement initializer*/ = (cast(EventTask)0);
    }
    @__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
    public static class Opcodes : __DotNet__Object
    {
        private this() {} // prevent instantiation
        public enum EventOpcode ReceiveHandled/*todo: implement initializer*/ = (cast(EventOpcode)0);
    }
    //TODO: generate property 'IsInitialized'
    //TODO: generate constructor
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method WriteEvent
    //TODO: generate method ResourceManagerLookupStarted
    //TODO: generate method ResourceManagerLookingForResourceSet
    //TODO: generate method ResourceManagerFoundResourceSetInCache
    //TODO: generate method ResourceManagerFoundResourceSetInCacheUnexpected
    //TODO: generate method ResourceManagerStreamFound
    //TODO: generate method ResourceManagerStreamNotFound
    //TODO: generate method ResourceManagerGetSatelliteAssemblySucceeded
    //TODO: generate method ResourceManagerGetSatelliteAssemblyFailed
    //TODO: generate method ResourceManagerCaseInsensitiveResourceStreamLookupSucceeded
    //TODO: generate method ResourceManagerCaseInsensitiveResourceStreamLookupFailed
    //TODO: generate method ResourceManagerManifestResourceAccessDenied
    //TODO: generate method ResourceManagerNeutralResourcesSufficient
    //TODO: generate method ResourceManagerNeutralResourceAttributeMissing
    //TODO: generate method ResourceManagerCreatingResourceSet
    //TODO: generate method ResourceManagerNotCreatingResourceSet
    //TODO: generate method ResourceManagerLookupFailed
    //TODO: generate method ResourceManagerReleasingResources
    //TODO: generate method ResourceManagerNeutralResourcesNotFound
    //TODO: generate method ResourceManagerNeutralResourcesFound
    //TODO: generate method ResourceManagerAddingCultureFromConfigFile
    //TODO: generate method ResourceManagerCultureNotFoundInConfigFile
    //TODO: generate method ResourceManagerCultureFoundInConfigFile
    //TODO: generate method ResourceManagerLookupStarted
    //TODO: generate method ResourceManagerLookingForResourceSet
    //TODO: generate method ResourceManagerFoundResourceSetInCache
    //TODO: generate method ResourceManagerFoundResourceSetInCacheUnexpected
    //TODO: generate method ResourceManagerStreamFound
    //TODO: generate method ResourceManagerStreamNotFound
    //TODO: generate method ResourceManagerGetSatelliteAssemblySucceeded
    //TODO: generate method ResourceManagerGetSatelliteAssemblyFailed
    //TODO: generate method ResourceManagerCaseInsensitiveResourceStreamLookupSucceeded
    //TODO: generate method ResourceManagerCaseInsensitiveResourceStreamLookupFailed
    //TODO: generate method ResourceManagerManifestResourceAccessDenied
    //TODO: generate method ResourceManagerNeutralResourcesSufficient
    //TODO: generate method ResourceManagerNeutralResourceAttributeMissing
    //TODO: generate method ResourceManagerCreatingResourceSet
    //TODO: generate method ResourceManagerNotCreatingResourceSet
    //TODO: generate method ResourceManagerLookupFailed
    //TODO: generate method ResourceManagerReleasingResources
    //TODO: generate method ResourceManagerNeutralResourcesNotFound
    //TODO: generate method ResourceManagerNeutralResourcesFound
    //TODO: generate method ResourceManagerAddingCultureFromConfigFile
    //TODO: generate method ResourceManagerCultureNotFoundInConfigFile
    //TODO: generate method ResourceManagerCultureFoundInConfigFile
    //TODO: generate method GetName
    //TODO: generate method ThreadPoolEnqueueWork
    //TODO: generate method ThreadPoolEnqueueWorkObject
    //TODO: generate method ThreadPoolDequeueWork
    //TODO: generate method ThreadPoolDequeueWorkObject
    //TODO: generate method GetResponseStart
    //TODO: generate method GetResponseStop
    //TODO: generate method GetRequestStreamStart
    //TODO: generate method GetRequestStreamStop
    //TODO: generate method BeginGetResponse
    //TODO: generate method EndGetResponse
    //TODO: generate method BeginGetRequestStream
    //TODO: generate method EndGetRequestStream
    //TODO: generate method ThreadTransferSend
    //TODO: generate method ThreadTransferSendObj
    //TODO: generate method ThreadTransferReceive
    //TODO: generate method ThreadTransferReceiveObj
    //TODO: generate method ThreadTransferReceiveHandled
    //TODO: generate method ThreadTransferReceiveHandledObj
    //TODO: generate method IdForObject
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\ArrayTypeInfo.cs'
//
public final class ArrayTypeInfo : TraceLoggingTypeInfo
{
    private immutable TraceLoggingTypeInfo elementInfo;
    //TODO: generate constructor
    //TODO: generate method WriteMetadata
    //TODO: generate method WriteData
    //TODO: generate method GetData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\ConcurrentSet.cs'
//
public struct ConcurrentSet2(KeyType,ItemType)
{
    private ItemType[] items;
    //TODO: generate method TryGet
    //TODO: generate method GetOrAdd
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\ConcurrentSetItem.cs'
//
public abstract class ConcurrentSetItem2(KeyType,ItemType) : __DotNet__Object/*where ItemType : ConcurrentSetItem<KeyType, ItemType>*/
{
    //TODO: generate method Compare
    //TODO: generate method Compare
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\DataCollector.cs'
//
/// <summary>
/// TraceLogging: This is the implementation of the DataCollector
/// functionality. To enable safe access to the DataCollector from
/// untrusted code, there is one thread-local instance of this structure
/// per thread. The instance must be Enabled before any data is written to
/// it. The instance must be Finished before the data is passed to
/// EventWrite. The instance must be Disabled before the arrays referenced
/// by the pointers are freed or unpinned.
/// </summary>
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public struct DataCollector
{
    @__DotNet__Attribute!(ThreadStaticAttribute.stringof)
    public static DataCollector ThreadInstance;
    private ubyte* scratchEnd;
    private EventSource.EventData* datasEnd;
    private GCHandle* pinsEnd;
    private EventSource.EventData* datasStart;
    private ubyte* scratch;
    private EventSource.EventData* datas;
    private GCHandle* pins;
    private ubyte[] buffer;
    private int bufferPos;
    private int bufferNesting;
    private bool writingScalars;
    //TODO: generate method Enable
    //TODO: generate method Disable
    //TODO: generate method Finish
    //TODO: generate method AddScalar
    //TODO: generate method AddBinary
    //TODO: generate method AddBinary
    //TODO: generate method AddArray
    //TODO: generate method BeginBufferedArray
    //TODO: generate method EndBufferedArray
    //TODO: generate method BeginBuffered
    //TODO: generate method EndBuffered
    //TODO: generate method EnsureBuffer
    //TODO: generate method EnsureBuffer
    //TODO: generate method GrowBuffer
    //TODO: generate method PinArray
    //TODO: generate method ScalarsBegin
    //TODO: generate method ScalarsEnd
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\EmptyStruct.cs'
//
public struct EmptyStruct
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\EnumerableTypeInfo.cs'
//
public final class EnumerableTypeInfo : TraceLoggingTypeInfo
{
    private immutable TraceLoggingTypeInfo elementInfo;
    //TODO: generate constructor
    //TODO: generate method WriteMetadata
    //TODO: generate method WriteData
    //TODO: generate method GetData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\EventDataAttribute.cs'
//
/// <summary>
/// Used when authoring types that will be passed to EventSource.Write.
/// EventSource.Write&lt;T> only works when T is either an anonymous type
/// or a type with an [EventData] attribute. In addition, the properties
/// of T must be supported property types. Supported property types include
/// simple built-in types (int, string, Guid, DateTime, DateTimeOffset,
/// KeyValuePair, etc.), anonymous types that only contain supported types,
/// types with an [EventData] attribute, arrays of the above, and IEnumerable
/// of the above.
/// </summary>
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class | AttributeTargets.Struct, Inherited = false*/)
public class EventDataAttribute : Attribute
{
    private EventLevel level/*todo: implement initializer*/ = (cast(EventLevel)0);
    private EventOpcode opcode/*todo: implement initializer*/ = (cast(EventOpcode)0);
    //TODO: generate property 'Name'
    //TODO: generate property 'Level'
    //TODO: generate property 'Opcode'
    //TODO: generate property 'Keywords'
    //TODO: generate property 'Tags'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\EventFieldAttribute.cs'
//
/// <summary>
/// Tags are flags that are not interpreted by EventSource but are passed along
/// to the EventListener. The EventListener determines the semantics of the flags.
/// </summary>
@__DotNet__Attribute!(FlagsAttribute.stringof)
public enum EventFieldTags
{
    /// <summary>
    /// No special traits are added to the field.
    /// </summary>
    None = 0,
}
/// <summary>
/// TraceLogging: used when authoring types that will be passed to EventSource.Write.
/// Controls how a field or property is handled when it is written as a
/// field in a TraceLogging event. Apply this attribute to a field or
/// property if the default handling is not correct. (Apply the
/// TraceLoggingIgnore attribute if the property should not be
/// included as a field in the event.)
/// The default for Name is null, which means that the name of the
/// underlying field or property will be used as the event field's name.
/// The default for PiiTag is 0, which means that the event field does not
/// contain personally-identifiable information.
/// </summary>
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Property*/)
public class EventFieldAttribute : Attribute
{
    //TODO: generate property 'Tags'
    //TODO: generate property 'Name'
    //TODO: generate property 'Format'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\EventFieldFormat.cs'
//
public enum EventFieldFormat
{
    /// <summary>
    /// Field receives default formatting based on the field's underlying type.
    /// </summary>
    Default = 0,
    // #if false 
    /// <summary>
    /// Field should not be displayed.
    /// </summary>
    // NoPrint = 1,
    // #endif
    /// <summary>
    /// Field should be formatted as character or string data.
    /// Typically applied to 8-bit or 16-bit integers.
    /// This is the default format for String and Char types.
    /// </summary>
    String = 2,
    /// <summary>
    /// Field should be formatted as boolean data. Typically applied to 8-bit
    /// or 32-bit integers. This is the default format for the Boolean type.
    /// </summary>
    Boolean = 3,
    /// <summary>
    /// Field should be formatted as hexadecimal data. Typically applied to
    /// integer types.
    /// </summary>
    Hexadecimal = 4,
    // #if false 
    /// <summary>
    /// Field should be formatted as a process identifier. Typically applied to
    /// 32-bit integer types.
    /// </summary>
    // ProcessId = 5,
    /// <summary>
    /// Field should be formatted as a thread identifier. Typically applied to
    /// 32-bit integer types.
    /// </summary>
    // ThreadId = 6,
    /// <summary>
    /// Field should be formatted as an Internet port. Typically applied to 16-bit integer
    /// types.
    /// </summary>
    // Port = 7,
    /// <summary>
    /// Field should be formatted as an Internet Protocol v4 address. Typically applied to
    /// 32-bit integer types.
    /// </summary>
    // Ipv4Address = 8,
    /// <summary>
    /// Field should be formatted as an Internet Protocol v6 address. Typically applied to
    /// byte[] types.
    /// </summary>
    // Ipv6Address = 9,
    /// <summary>
    /// Field should be formatted as a SOCKADDR. Typically applied to byte[] types.
    /// </summary>
    // SocketAddress = 10,
    // #endif
    /// <summary>
    /// Field should be formatted as XML string data. Typically applied to
    /// strings or arrays of 8-bit or 16-bit integers.
    /// </summary>
    Xml = 11,
    /// <summary>
    /// Field should be formatted as JSON string data. Typically applied to
    /// strings or arrays of 8-bit or 16-bit integers.
    /// </summary>
    Json = 12,
    // #if false 
    /// <summary>
    /// Field should be formatted as a Win32 error code. Typically applied to
    /// 32-bit integer types.
    /// </summary>
    // Win32Error = 13,
    /// <summary>
    /// Field should be formatted as an NTSTATUS code. Typically applied to
    /// 32-bit integer types.
    /// </summary>
    // NTStatus = 14,
    // #endif
    /// <summary>
    /// Field should be formatted as an HRESULT code. Typically applied to
    /// 32-bit integer types.
    /// </summary>
    HResult = 15,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\EventIgnoreAttribute.cs'
//
/// <summary>
/// Used when authoring types that will be passed to EventSource.Write.
/// By default, EventSource.Write will write all of an object's public
/// properties to the event payload. Apply [EventIgnore] to a public
/// property to prevent EventSource.Write from including the property in
/// the event.
/// </summary>
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Property*/)
public class EventIgnoreAttribute : Attribute
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\EventPayload.cs'
//
public class EventPayload : __DotNet__Object, IDictionary2!(String,__DotNet__Object)
{
    //TODO: generate constructor
    //TODO: generate property 'Keys'
    //TODO: generate property 'Values'
    //TODO: generate indexer
    //TODO: generate method Add
    //TODO: generate method Add
    //TODO: generate method Clear
    //TODO: generate method Contains
    //TODO: generate method ContainsKey
    //TODO: generate property 'Count'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    //TODO: generate method CopyTo
    //TODO: generate method Remove
    //TODO: generate method Remove
    //TODO: generate method TryGetValue
    private List1!(String) m_names;
    private List1!(__DotNet__Object) m_values;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\EventSourceActivity.cs'
//
public final class EventSourceActivity : __DotNet__Object, IDisposable
{
    //TODO: generate constructor
    //TODO: generate conversion operator
    //TODO: generate property 'EventSource'
    //TODO: generate property 'Id'
    //TODO: generate method Start
    //TODO: generate method Start
    //TODO: generate method Start
    //TODO: generate method Start
    //TODO: generate method Stop
    //TODO: generate method Stop
    //TODO: generate method Stop
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Dispose
    //TODO: generate method Start
    //TODO: generate method Write
    //TODO: generate method Stop
    private enum State
    {
        Started,
        Stopped,
    }
    //TODO: generate property 'StartEventWasFired'
    private immutable EventSource eventSource;
    private EventSourceOptions startStopOptions;
    public Guid activityId;
    private State state;
    private String eventName;
    public static Guid s_empty;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\EventSourceOptions.cs'
//
public struct EventSourceOptions
{
    public EventKeywords keywords;
    public EventTags tags;
    public EventActivityOptions activityOptions;
    public ubyte level;
    public ubyte opcode;
    public ubyte valuesSet;
    public enum ubyte keywordsSet/*todo: implement initializer*/ = ubyte();
    public enum ubyte tagsSet/*todo: implement initializer*/ = ubyte();
    public enum ubyte levelSet/*todo: implement initializer*/ = ubyte();
    public enum ubyte opcodeSet/*todo: implement initializer*/ = ubyte();
    public enum ubyte activityOptionsSet/*todo: implement initializer*/ = ubyte();
    //TODO: generate property 'Level'
    //TODO: generate property 'Opcode'
    //TODO: generate property 'IsOpcodeSet'
    //TODO: generate property 'Keywords'
    //TODO: generate property 'Tags'
    //TODO: generate property 'ActivityOptions'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\FieldMetadata.cs'
//
public class FieldMetadata : __DotNet__Object
{
    private immutable String name;
    private immutable int nameSize;
    private immutable EventFieldTags tags;
    private immutable ubyte[] custom;
    private immutable ushort fixedCount;
    private ubyte inType;
    private ubyte outType;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method IncrementStructFieldCount
    //TODO: generate method Encode
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\InvokeTypeInfo.cs'
//
public final class InvokeTypeInfo : TraceLoggingTypeInfo
{
    private immutable PropertyAnalysis[] properties;
    //TODO: generate constructor
    //TODO: generate method WriteMetadata
    //TODO: generate method WriteData
    //TODO: generate method GetData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\NameInfo.cs'
//
public final class NameInfo : ConcurrentSetItem2!(KeyValuePair2!(String,EventTags),NameInfo)
{
    //TODO: generate method ReserveEventIDsBelow
    private static int lastIdentity/*todo: implement initializer*/ = int();
    public immutable String name;
    public immutable EventTags tags;
    public immutable int identity;
    public immutable ubyte[] nameMetadata;
    //TODO: generate constructor
    //TODO: generate method Compare
    //TODO: generate method Compare
    //TODO: generate method Compare
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\PropertyAnalysis.cs'
//
public final class PropertyAnalysis : __DotNet__Object
{
    public immutable String name;
    public immutable PropertyInfo propertyInfo;
    public immutable Func2!(PropertyValue,PropertyValue) getter;
    public immutable TraceLoggingTypeInfo typeInfo;
    public immutable EventFieldAttribute fieldAttribute;
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\PropertyValue.cs'
//
public struct PropertyValue
{
    /// <summary>
    /// Union of well-known value types, to avoid boxing those types.
    /// </summary>
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Explicit*/)
    public static struct Scalar
    {
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public bool AsBoolean;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public ubyte AsByte;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public byte AsSByte;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public wchar AsChar;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public short AsInt16;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public ushort AsUInt16;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public int AsInt32;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public uint AsUInt32;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public long AsInt64;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public ulong AsUInt64;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public IntPtr AsIntPtr;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public UIntPtr AsUIntPtr;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public float AsSingle;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public double AsDouble;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public Guid AsGuid;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public DateTime AsDateTime;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public DateTimeOffset AsDateTimeOffset;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public TimeSpan AsTimeSpan;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public Decimal AsDecimal;
    }
    private immutable __DotNet__Object _reference;
    private immutable Scalar _scalar;
    private immutable int _scalarLength;
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
    //TODO: generate constructor
    //TODO: generate method GetFactory
    //TODO: generate property 'ReferenceValue'
    //TODO: generate property 'ScalarValue'
    //TODO: generate property 'ScalarLength'
    //TODO: generate method GetPropertyGetter
    //TODO: generate method GetBoxedValueTypePropertyGetter
    //TODO: generate method GetReferenceTypePropertyGetter
    private static abstract class TypeHelper : __DotNet__Object
    {
        //TODO: generate method GetPropertyGetter
        //TODO: generate method GetGetMethod
    }
    private static final class ReferenceTypeHelper1(TContainer) : TypeHelper/*where TContainer : class*/
    {
        //TODO: generate method GetPropertyGetter
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\SimpleEventTypes.cs'
//
public class SimpleEventTypes1(T) : __DotNet__Object
{
    private this() {} // prevent instantiation
    private static TraceLoggingEventTypes instance;
    //TODO: generate property 'Instance'
    //TODO: generate method InitInstance
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\SimpleTypeInfos.cs'
//
public final class NullTypeInfo : TraceLoggingTypeInfo
{
    //TODO: generate constructor
    //TODO: generate method WriteMetadata
    //TODO: generate method WriteData
    //TODO: generate method GetData
}
private final class ScalarTypeInfo : TraceLoggingTypeInfo
{
    private Func3!(EventFieldFormat,TraceLoggingDataType,TraceLoggingDataType) formatFunc;
    private TraceLoggingDataType nativeFormat;
    //TODO: generate constructor
    //TODO: generate method WriteMetadata
    //TODO: generate method WriteData
    //TODO: generate method Boolean
    //TODO: generate method Byte
    //TODO: generate method SByte
    //TODO: generate method Char
    //TODO: generate method Int16
    //TODO: generate method UInt16
    //TODO: generate method Int32
    //TODO: generate method UInt32
    //TODO: generate method Int64
    //TODO: generate method UInt64
    //TODO: generate method IntPtr
    //TODO: generate method UIntPtr
    //TODO: generate method Single
    //TODO: generate method Double
    //TODO: generate method Guid
}
public final class ScalarArrayTypeInfo : TraceLoggingTypeInfo
{
    private Func3!(EventFieldFormat,TraceLoggingDataType,TraceLoggingDataType) formatFunc;
    private TraceLoggingDataType nativeFormat;
    private int elementSize;
    //TODO: generate constructor
    //TODO: generate method WriteMetadata
    //TODO: generate method WriteData
    //TODO: generate method Boolean
    //TODO: generate method Byte
    //TODO: generate method SByte
    //TODO: generate method Char
    //TODO: generate method Int16
    //TODO: generate method UInt16
    //TODO: generate method Int32
    //TODO: generate method UInt32
    //TODO: generate method Int64
    //TODO: generate method UInt64
    //TODO: generate method IntPtr
    //TODO: generate method UIntPtr
    //TODO: generate method Single
    //TODO: generate method Double
    //TODO: generate method Guid
}
public final class StringTypeInfo : TraceLoggingTypeInfo
{
    //TODO: generate constructor
    //TODO: generate method WriteMetadata
    //TODO: generate method WriteData
    //TODO: generate method GetData
}
public final class DateTimeTypeInfo : TraceLoggingTypeInfo
{
    //TODO: generate constructor
    //TODO: generate method WriteMetadata
    //TODO: generate method WriteData
}
public final class DateTimeOffsetTypeInfo : TraceLoggingTypeInfo
{
    //TODO: generate constructor
    //TODO: generate method WriteMetadata
    //TODO: generate method WriteData
}
public final class TimeSpanTypeInfo : TraceLoggingTypeInfo
{
    //TODO: generate constructor
    //TODO: generate method WriteMetadata
    //TODO: generate method WriteData
}
public final class DecimalTypeInfo : TraceLoggingTypeInfo
{
    //TODO: generate constructor
    //TODO: generate method WriteMetadata
    //TODO: generate method WriteData
}
public final class NullableTypeInfo : TraceLoggingTypeInfo
{
    private immutable TraceLoggingTypeInfo valueInfo;
    private immutable Func2!(PropertyValue,PropertyValue) hasValueGetter;
    private immutable Func2!(PropertyValue,PropertyValue) valueGetter;
    //TODO: generate constructor
    //TODO: generate method WriteMetadata
    //TODO: generate method WriteData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\Statics.cs'
//
public class Statics : __DotNet__Object
{
    private this() {} // prevent instantiation
    public enum ubyte DefaultLevel/*todo: implement initializer*/ = ubyte();
    public enum ubyte TraceLoggingChannel/*todo: implement initializer*/ = ubyte();
    public enum ubyte InTypeMask/*todo: implement initializer*/ = ubyte();
    public enum ubyte InTypeFixedCountFlag/*todo: implement initializer*/ = ubyte();
    public enum ubyte InTypeVariableCountFlag/*todo: implement initializer*/ = ubyte();
    public enum ubyte InTypeCustomCountFlag/*todo: implement initializer*/ = ubyte();
    public enum ubyte InTypeCountMask/*todo: implement initializer*/ = ubyte();
    public enum ubyte InTypeChainFlag/*todo: implement initializer*/ = ubyte();
    public enum ubyte OutTypeMask/*todo: implement initializer*/ = ubyte();
    public enum ubyte OutTypeChainFlag/*todo: implement initializer*/ = ubyte();
    public enum EventTags EventTagsMask/*todo: implement initializer*/ = (cast(EventTags)0);
    public static immutable TraceLoggingDataType IntPtrType/*todo: implement initializer*/ = (cast(TraceLoggingDataType)0);
    public static immutable TraceLoggingDataType UIntPtrType/*todo: implement initializer*/ = (cast(TraceLoggingDataType)0);
    public static immutable TraceLoggingDataType HexIntPtrType/*todo: implement initializer*/ = (cast(TraceLoggingDataType)0);
    //TODO: generate method MetadataForString
    //TODO: generate method EncodeTags
    //TODO: generate method Combine
    //TODO: generate method Combine
    //TODO: generate method Combine
    //TODO: generate method CheckName
    //TODO: generate method ShouldOverrideFieldName
    //TODO: generate method MakeDataType
    //TODO: generate method Format8
    //TODO: generate method Format16
    //TODO: generate method Format32
    //TODO: generate method Format64
    //TODO: generate method FormatPtr
    //TODO: generate method CreateInstance
    //TODO: generate method IsValueType
    //TODO: generate method IsEnum
    //TODO: generate method GetProperties
    //TODO: generate method GetGetMethod
    //TODO: generate method GetDeclaredStaticMethod
    //TODO: generate method HasCustomAttribute
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetGenericArguments
    //TODO: generate method FindEnumerableElementType
    //TODO: generate method IsGenericMatch
    //TODO: generate method CreateDelegate
    //TODO: generate method CreateDefaultTypeInfo
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\TraceLoggingDataCollector.cs'
//
/// <summary>
/// TraceLogging: Used when implementing a custom TraceLoggingTypeInfo.
/// The instance of this type is provided to the TypeInfo.WriteData method.
/// All operations are forwarded to the current thread's DataCollector.
/// Note that this abstraction would allow us to expose the custom
/// serialization system to partially-trusted code. If we end up not
/// making custom serialization public, or if we only expose it to
/// full-trust code, this abstraction is unnecessary (though it probably
/// doesn't hurt anything).
/// </summary>
@__DotNet__Attribute!(SecuritySafeCriticalAttribute.stringof)
public class TraceLoggingDataCollector : __DotNet__Object
{
    public static immutable TraceLoggingDataCollector Instance/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method BeginBufferedArray
    //TODO: generate method EndBufferedArray
    //TODO: generate method AddGroup
    //TODO: generate method AddScalar
    //TODO: generate method AddScalar
    //TODO: generate method AddScalar
    //TODO: generate method AddBinary
    //TODO: generate method AddArray
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\TraceLoggingDataType.cs'
//
public enum TraceLoggingDataType
{
    /// <summary>
    /// Core type.
    /// Data type with no value (0-length payload).
    /// NOTE: arrays of Nil are illegal.
    /// NOTE: a fixed-length array of Nil is interpreted by the decoder as
    /// a struct (obsolete but retained for backwards-compatibility).
    /// </summary>
    Nil = 0,
    /// <summary>
    /// Core type.
    /// Encoding assumes null-terminated Char16 string.
    /// Decoding treats as UTF-16LE string.
    /// </summary>
    Utf16String = 1,
    /// <summary>
    /// Core type.
    /// Encoding assumes null-terminated Char8 string.
    /// Decoding treats as MBCS string.
    /// </summary>
    MbcsString = 2,
    /// <summary>
    /// Core type.
    /// Encoding assumes 8-bit value.
    /// Decoding treats as signed integer.
    /// </summary>
    Int8 = 3,
    /// <summary>
    /// Core type.
    /// Encoding assumes 8-bit value.
    /// Decoding treats as unsigned integer.
    /// </summary>
    UInt8 = 4,
    /// <summary>
    /// Core type.
    /// Encoding assumes 16-bit value.
    /// Decoding treats as signed integer.
    /// </summary>
    Int16 = 5,
    /// <summary>
    /// Core type.
    /// Encoding assumes 16-bit value.
    /// Decoding treats as unsigned integer.
    /// </summary>
    UInt16 = 6,
    /// <summary>
    /// Core type.
    /// Encoding assumes 32-bit value.
    /// Decoding treats as signed integer.
    /// </summary>
    Int32 = 7,
    /// <summary>
    /// Core type.
    /// Encoding assumes 32-bit value.
    /// Decoding treats as unsigned integer.
    /// </summary>
    UInt32 = 8,
    /// <summary>
    /// Core type.
    /// Encoding assumes 64-bit value.
    /// Decoding treats as signed integer.
    /// </summary>
    Int64 = 9,
    /// <summary>
    /// Core type.
    /// Encoding assumes 64-bit value.
    /// Decoding treats as unsigned integer.
    /// </summary>
    UInt64 = 10,
    /// <summary>
    /// Core type.
    /// Encoding assumes 32-bit value.
    /// Decoding treats as Float.
    /// </summary>
    Float = 11,
    /// <summary>
    /// Core type.
    /// Encoding assumes 64-bit value.
    /// Decoding treats as Double.
    /// </summary>
    Double = 12,
    /// <summary>
    /// Core type.
    /// Encoding assumes 32-bit value.
    /// Decoding treats as Boolean.
    /// </summary>
    Boolean32 = 13,
    /// <summary>
    /// Core type.
    /// Encoding assumes 16-bit bytecount followed by binary data.
    /// Decoding treats as binary data.
    /// </summary>
    Binary = 14,
    /// <summary>
    /// Core type.
    /// Encoding assumes 16-byte value.
    /// Decoding treats as GUID.
    /// </summary>
    Guid = 15,
    /// <summary>
    /// Core type.
    /// Encoding assumes 64-bit value.
    /// Decoding treats as FILETIME.
    /// </summary>
    FileTime = 17,
    /// <summary>
    /// Core type.
    /// Encoding assumes 16-byte value.
    /// Decoding treats as SYSTEMTIME.
    /// </summary>
    SystemTime = 18,
    /// <summary>
    /// Core type.
    /// Encoding assumes 32-bit value.
    /// Decoding treats as hexadecimal unsigned integer.
    /// </summary>
    HexInt32 = 20,
    /// <summary>
    /// Core type.
    /// Encoding assumes 64-bit value.
    /// Decoding treats as hexadecimal unsigned integer.
    /// </summary>
    HexInt64 = 21,
    /// <summary>
    /// Core type.
    /// Encoding assumes 16-bit bytecount followed by Char16 data.
    /// Decoding treats as UTF-16LE string.
    /// </summary>
    CountedUtf16String = 22,
    /// <summary>
    /// Core type.
    /// Encoding assumes 16-bit bytecount followed by Char8 data.
    /// Decoding treats as MBCS string.
    /// </summary>
    CountedMbcsString = 23,
    /// <summary>
    /// Core type.
    /// Special case: Struct indicates that this field plus the the
    /// subsequent N logical fields are to be considered as one logical
    /// field (i.e. a nested structure). The OutType is used to encode N.
    /// The maximum value for N is 127. This field has no payload by
    /// itself, but logically contains the payload of the following N
    /// fields. It is legal to have an array of Struct.
    /// </summary>
    Struct = 24,
    /// <summary>
    /// Formatted type.
    /// Encoding assumes 16-bit value.
    /// Decoding treats as UTF-16LE character.
    /// </summary>
    Char16 = UInt16 + (/*MemberExpression:Type*/EventFieldFormat.String << 8),
    /// <summary>
    /// Formatted type.
    /// Encoding assumes 8-bit value.
    /// Decoding treats as character.
    /// </summary>
    Char8 = UInt8 + (/*MemberExpression:Type*/EventFieldFormat.String << 8),
    /// <summary>
    /// Formatted type.
    /// Encoding assumes 8-bit value.
    /// Decoding treats as Boolean.
    /// </summary>
    Boolean8 = UInt8 + (/*MemberExpression:Type*/EventFieldFormat.Boolean << 8),
    /// <summary>
    /// Formatted type.
    /// Encoding assumes 8-bit value.
    /// Decoding treats as hexadecimal unsigned integer.
    /// </summary>
    HexInt8 = UInt8 + (/*MemberExpression:Type*/EventFieldFormat.Hexadecimal << 8),
    /// <summary>
    /// Formatted type.
    /// Encoding assumes 16-bit value.
    /// Decoding treats as hexadecimal unsigned integer.
    /// </summary>
    HexInt16 = UInt16 + (/*MemberExpression:Type*/EventFieldFormat.Hexadecimal << 8),
    // #if false 
    /// <summary>
    /// Formatted type.
    /// Encoding assumes 32-bit value.
    /// Decoding treats as process identifier.
    /// </summary>
    // ProcessId = UInt32 + (EventSourceFieldFormat.ProcessId << 8),
    /// <summary>
    /// Formatted type.
    /// Encoding assumes 32-bit value.
    /// Decoding treats as thread identifier.
    /// </summary>
    // ThreadId = UInt32 + (EventSourceFieldFormat.ThreadId << 8),
    /// <summary>
    /// Formatted type.
    /// Encoding assumes 16-bit value.
    /// Decoding treats as IP port.
    /// </summary>
    // Port = UInt16 + (EventSourceFieldFormat.Port << 8),
    /// <summary>
    /// Formatted type.
    /// Encoding assumes 32-bit value.
    /// Decoding treats as IPv4 address.
    /// </summary>
    // Ipv4Address = UInt32 + (EventSourceFieldFormat.Ipv4Address << 8),
    /// <summary>
    /// Formatted type.
    /// Encoding assumes 16-bit bytecount followed by binary data.
    /// Decoding treats as IPv6 address.
    /// </summary>
    // Ipv6Address = Binary + (EventSourceFieldFormat.Ipv6Address << 8),
    /// <summary>
    /// Formatted type.
    /// Encoding assumes 16-bit bytecount followed by binary data.
    /// Decoding treats as SOCKADDR.
    /// </summary>
    // SocketAddress = Binary + (EventSourceFieldFormat.SocketAddress << 8),
    // #endif
    /// <summary>
    /// Formatted type.
    /// Encoding assumes null-terminated Char16 string.
    /// Decoding treats as UTF-16LE XML string.
    /// </summary>
    Utf16Xml = Utf16String + (/*MemberExpression:Type*/EventFieldFormat.Xml << 8),
    /// <summary>
    /// Formatted type.
    /// Encoding assumes null-terminated Char8 string.
    /// Decoding treats as MBCS XML string.
    /// </summary>
    MbcsXml = MbcsString + (/*MemberExpression:Type*/EventFieldFormat.Xml << 8),
    /// <summary>
    /// Formatted type.
    /// Encoding assumes 16-bit bytecount followed by Char16 data.
    /// Decoding treats as UTF-16LE XML.
    /// </summary>
    CountedUtf16Xml = CountedUtf16String + (/*MemberExpression:Type*/EventFieldFormat.Xml << 8),
    /// <summary>
    /// Formatted type.
    /// Encoding assumes 16-bit bytecount followed by Char8 data.
    /// Decoding treats as MBCS XML.
    /// </summary>
    CountedMbcsXml = CountedMbcsString + (/*MemberExpression:Type*/EventFieldFormat.Xml << 8),
    /// <summary>
    /// Formatted type.
    /// Encoding assumes null-terminated Char16 string.
    /// Decoding treats as UTF-16LE JSON string.
    /// </summary>
    Utf16Json = Utf16String + (/*MemberExpression:Type*/EventFieldFormat.Json << 8),
    /// <summary>
    /// Formatted type.
    /// Encoding assumes null-terminated Char8 string.
    /// Decoding treats as MBCS JSON string.
    /// </summary>
    MbcsJson = MbcsString + (/*MemberExpression:Type*/EventFieldFormat.Json << 8),
    /// <summary>
    /// Formatted type.
    /// Encoding assumes 16-bit bytecount followed by Char16 data.
    /// Decoding treats as UTF-16LE JSON.
    /// </summary>
    CountedUtf16Json = CountedUtf16String + (/*MemberExpression:Type*/EventFieldFormat.Json << 8),
    /// <summary>
    /// Formatted type.
    /// Encoding assumes 16-bit bytecount followed by Char8 data.
    /// Decoding treats as MBCS JSON.
    /// </summary>
    CountedMbcsJson = CountedMbcsString + (/*MemberExpression:Type*/EventFieldFormat.Json << 8),
    // #if false 
    /// <summary>
    /// Formatted type.
    /// Encoding assumes 32-bit value.
    /// Decoding treats as Win32 error.
    /// </summary>
    // Win32Error = UInt32 + (EventSourceFieldFormat.Win32Error << 8),
    /// <summary>
    /// Formatted type.
    /// Encoding assumes 32-bit value.
    /// Decoding treats as NTSTATUS.
    /// </summary>
    // NTStatus = UInt32 + (EventSourceFieldFormat.NTStatus << 8),
    // #endif
    /// <summary>
    /// Formatted type.
    /// Encoding assumes 32-bit value.
    /// Decoding treats as HRESULT.
    /// </summary>
    HResult = Int32 + (/*MemberExpression:Type*/EventFieldFormat.HResult << 8),
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\TraceLoggingEventSource.cs'
//
// partial class 'EventSource' moved

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\TraceLoggingEventTraits.cs'
//
/// <summary>
/// Tags are flags that are not interpreted by EventSource but are passed along
/// to the EventListener. The EventListener determines the semantics of the flags.
/// </summary>
@__DotNet__Attribute!(FlagsAttribute.stringof)
public enum EventTags
{
    /// <summary>
    /// No special traits are added to the event.
    /// </summary>
    None = 0,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\TraceLoggingEventTypes.cs'
//
public class TraceLoggingEventTypes : __DotNet__Object
{
    public immutable TraceLoggingTypeInfo[] typeInfos;
    public immutable String name;
    public immutable EventTags tags;
    public immutable ubyte level;
    public immutable ubyte opcode;
    public immutable EventKeywords keywords;
    public immutable ubyte[] typeMetadata;
    public immutable int scratchSize;
    public immutable int dataCount;
    public immutable int pinCount;
    private ConcurrentSet2!(KeyValuePair2!(String,EventTags),NameInfo) nameInfos;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Name'
    //TODO: generate property 'Level'
    //TODO: generate property 'Opcode'
    //TODO: generate property 'Keywords'
    //TODO: generate property 'Tags'
    //TODO: generate method GetNameInfo
    //TODO: generate method MakeArray
    //TODO: generate method MakeArray
    //TODO: generate method MakeArray
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\TraceLoggingMetadataCollector.cs'
//
public class TraceLoggingMetadataCollector : __DotNet__Object
{
    private immutable Impl impl;
    private immutable FieldMetadata currentGroup;
    private int bufferedArrayFieldCount/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Tags'
    //TODO: generate property 'ScratchSize'
    //TODO: generate property 'DataCount'
    //TODO: generate property 'PinCount'
    //TODO: generate property 'BeginningBufferedArray'
    //TODO: generate method AddGroup
    //TODO: generate method AddScalar
    //TODO: generate method AddBinary
    //TODO: generate method AddArray
    //TODO: generate method BeginBufferedArray
    //TODO: generate method EndBufferedArray
    //TODO: generate method AddCustom
    //TODO: generate method GetMetadata
    //TODO: generate method AddField
    private static class Impl : __DotNet__Object
    {
        public immutable List1!(FieldMetadata) fields/*todo: implement initializer*/ = null;
        public short scratchSize;
        public byte dataCount;
        public byte pinCount;
        private int bufferNesting;
        private bool scalar;
        //TODO: generate method AddScalar
        //TODO: generate method AddNonscalar
        //TODO: generate method BeginBuffered
        //TODO: generate method EndBuffered
        //TODO: generate method Encode
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\TraceLoggingTypeInfo.cs'
//
public abstract class TraceLoggingTypeInfo : __DotNet__Object
{
    private immutable String name;
    private immutable EventKeywords keywords;
    private immutable EventLevel level/*todo: implement initializer*/ = (cast(EventLevel)0);
    private immutable EventOpcode opcode/*todo: implement initializer*/ = (cast(EventOpcode)0);
    private immutable EventTags tags;
    private immutable Type dataType;
    private immutable Func2!(__DotNet__Object,PropertyValue) propertyValueFactory;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Name'
    //TODO: generate property 'Level'
    //TODO: generate property 'Opcode'
    //TODO: generate property 'Keywords'
    //TODO: generate property 'Tags'
    //TODO: generate property 'DataType'
    //TODO: generate property 'PropertyValueFactory'
    //TODO: generate method WriteMetadata
    //TODO: generate method WriteData
    //TODO: generate method GetData
    @__DotNet__Attribute!(ThreadStaticAttribute.stringof)
    private static Dictionary2!(Type,TraceLoggingTypeInfo) threadCache;
    //TODO: generate method GetInstance
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\TraceLogging\TypeAnalysis.cs'
//
public final class TypeAnalysis : __DotNet__Object
{
    public immutable PropertyAnalysis[] properties;
    public immutable String name;
    public immutable EventKeywords keywords;
    public immutable EventLevel level/*todo: implement initializer*/ = (cast(EventLevel)0);
    public immutable EventOpcode opcode/*todo: implement initializer*/ = (cast(EventOpcode)0);
    public immutable EventTags tags;
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\Winmeta.cs'
//
public enum EventLevel
{
    /// <summary>
    /// Log always
    /// </summary>
    LogAlways = 0,
    /// <summary>
    /// Only critical errors
    /// </summary>
    Critical,
    /// <summary>
    /// All errors, including previous levels
    /// </summary>
    Error,
    /// <summary>
    /// All warnings, including previous levels
    /// </summary>
    Warning,
    /// <summary>
    /// All informational events, including previous levels
    /// </summary>
    Informational,
    /// <summary>
    /// All events, including previous levels 
    /// </summary>
    Verbose,
}
/// <summary>
/// WindowsEventTask. Custom values must be in the range from 1 through 65534
/// </summary>
// #if (!ES_BUILD_STANDALONE && !PROJECTN)
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
public enum EventTask
{
    /// <summary>
    /// Undefined task
    /// </summary>
    None = 0,
}
/// <summary>
/// EventOpcode. Custom values must be in the range from 11 through 239
/// </summary>
// #if (!ES_BUILD_STANDALONE && !PROJECTN)
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
public enum EventOpcode
{
    /// <summary>
    /// An informational event
    /// </summary>
    Info = 0,
    /// <summary>
    /// An activity start event
    /// </summary>
    Start,
    /// <summary>
    /// An activity end event 
    /// </summary>
    Stop,
    /// <summary>
    /// A trace collection start event
    /// </summary>
    DataCollectionStart,
    /// <summary>
    /// A trace collection end event
    /// </summary>
    DataCollectionStop,
    /// <summary>
    /// An extensional event
    /// </summary>
    Extension,
    /// <summary>
    /// A reply event
    /// </summary>
    Reply,
    /// <summary>
    /// An event representing the activity resuming from the suspension
    /// </summary>
    Resume,
    /// <summary>
    /// An event representing the activity is suspended, pending another activity's completion
    /// </summary>
    Suspend,
    /// <summary>
    /// An event representing the activity is transferred to another component, and can continue to work
    /// </summary>
    Send,
    /// <summary>
    /// An event representing receiving an activity transfer from another component 
    /// </summary>
    Receive = 240,
}
// Added for CLR V4
/// <summary>
/// EventChannel. Custom values must be in the range from 16 through 255. Currently only predefined values allowed.
/// </summary>
@__DotNet__Attribute!(SuppressMessageAttribute.stringof/*, "Microsoft.Design", "CA1028:EnumStorageShouldBeInt32", Justification = "Backwards compatibility"*/)
// #if (!ES_BUILD_STANDALONE && !PROJECTN)
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
public enum EventChannel : ubyte
{
    /// <summary>
    /// No channel
    /// </summary>
    None = 0,
    // Channels 1 - 15 are reserved...
    /// <summary>The admin channel</summary>
    Admin = 16,
    /// <summary>The operational channel</summary>
    Operational = 17,
    /// <summary>The analytic channel</summary>
    Analytic = 18,
    /// <summary>The debug channel</summary>
    Debug = 19,
}
/// <summary>
/// EventOpcode
/// </summary>
@__DotNet__Attribute!(FlagsAttribute.stringof)
public enum EventKeywords : long
{
    /// <summary>
    /// No events. 
    /// </summary>
    None = 0x0,
    /// <summary>
    /// All Events 
    /// </summary>
    All = ~0,
    /// <summary>
    /// Telemetry events
    /// </summary>
    MicrosoftTelemetry = 0x02000000000000,
    /// <summary>
    /// WDI context events
    /// </summary>
    WdiContext = 0x02000000000000,
    /// <summary>
    /// WDI diagnostic events
    /// </summary>
    WdiDiagnostic = 0x04000000000000,
    /// <summary>
    /// SQM events
    /// </summary>
    Sqm = 0x08000000000000,
    /// <summary>
    /// Failed security audits
    /// </summary>
    AuditFailure = 0x10000000000000,
    /// <summary>
    /// Successful security audits
    /// </summary>
    AuditSuccess = 0x20000000000000,
    /// <summary>
    /// Transfer events where the related Activity ID is a computed value and not a GUID
    /// N.B. The correct value for this field is 0x40000000000000.
    /// </summary>
    CorrelationHint = 0x10000000000000,
    /// <summary>
    /// Events raised using classic eventlog API
    /// </summary>
    EventLogClassic = 0x80000000000000,
}
