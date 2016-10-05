module mscorlib.System.Threading.Tasks;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    __DotNet__Object,
    Guid,
    FlagsAttribute,
    Action,
    IAsyncResult,
    AsyncCallback,
    __DotNet__Exception,
    Func2,
    Func3,
    Action1,
    Nullable1,
    IDisposable,
    ThreadStaticAttribute,
    Predicate1,
    SerializableAttribute,
    OperationCanceledException,
    NonSerializedAttribute,
    EventHandler,
    EventHandler1,
    EventArgs,
    AggregateException;
import mscorlib.System.Runtime.CompilerServices :
    FriendAccessAllowedAttribute,
    ICriticalNotifyCompletion,
    ConditionalWeakTable2;
/* NameConflict: CausalityTraceLevel*/
/* NameConflict: AsyncCausalityStatus*/
/* NameConflict: CausalityRelation*/
/* NameConflict: CausalitySynchronousWork*/
import mscorlib.Windows.Foundation.Diagnostics :
    CausalitySource,
    IAsyncCausalityTracerStatics;
static import mscorlib.Windows.Foundation.Diagnostics;
import mscorlib.System.Diagnostics.Contracts :
    Contract;
import mscorlib.System.Threading :
    Interlocked,
    CancellationToken,
    IThreadPoolWorkItem,
    ExecutionContext,
    ManualResetEventSlim,
    CancellationTokenRegistration,
    ContextCallback,
    Timer,
    SendOrPostCallback,
    SynchronizationContext,
    ParameterizedThreadStart;
import mscorlib.System.Security.Permissions :
    HostProtectionAttribute,
    PermissionSetAttribute;
import mscorlib.System.Diagnostics :
    DebuggerDisplayAttribute,
    DebuggerTypeProxyAttribute;
import mscorlib.System.Collections.Concurrent :
    ConcurrentDictionary2,
    ConcurrentQueue1;
import mscorlib.System.Diagnostics.CodeAnalysis :
    SuppressMessageAttribute;
import mscorlib.System.Collections.Generic :
    List1,
    IEnumerable1,
    Dictionary2,
    IList1;
import mscorlib.System.Runtime.InteropServices :
    StructLayoutAttribute;
import mscorlib.System.Security :
    SecurityCriticalAttribute;
import mscorlib.System.Runtime.ExceptionServices :
    ExceptionDispatchInfo;
import mscorlib.System.Diagnostics.Tracing :
    EventSourceAttribute,
    EventSource,
    EventTask,
    EventKeywords;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\AsyncCausalityTracer.cs'
//
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
package(mscorlib) enum CausalityTraceLevel
{
    // #if FEATURE_COMINTEROP
    Required = /*MemberName:Type*/mscorlib.Windows.Foundation.Diagnostics.CausalityTraceLevel.Required,
    Important = /*MemberName:Type*/mscorlib.Windows.Foundation.Diagnostics.CausalityTraceLevel.Important,
    Verbose = /*MemberName:Type*/mscorlib.Windows.Foundation.Diagnostics.CausalityTraceLevel.Verbose,
}
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
package(mscorlib) enum AsyncCausalityStatus
{
    // #if FEATURE_COMINTEROP
    Canceled = /*MemberName:Type*/mscorlib.Windows.Foundation.Diagnostics.AsyncCausalityStatus.Canceled,
    Completed = /*MemberName:Type*/mscorlib.Windows.Foundation.Diagnostics.AsyncCausalityStatus.Completed,
    Error = /*MemberName:Type*/mscorlib.Windows.Foundation.Diagnostics.AsyncCausalityStatus.Error,
    Started = /*MemberName:Type*/mscorlib.Windows.Foundation.Diagnostics.AsyncCausalityStatus.Started,
}
package(mscorlib) enum CausalityRelation
{
    // #if FEATURE_COMINTEROP
    AssignDelegate = /*MemberName:Type*/mscorlib.Windows.Foundation.Diagnostics.CausalityRelation.AssignDelegate,
    Join = /*MemberName:Type*/mscorlib.Windows.Foundation.Diagnostics.CausalityRelation.Join,
    Choice = /*MemberName:Type*/mscorlib.Windows.Foundation.Diagnostics.CausalityRelation.Choice,
    Cancel = /*MemberName:Type*/mscorlib.Windows.Foundation.Diagnostics.CausalityRelation.Cancel,
    Error = /*MemberName:Type*/mscorlib.Windows.Foundation.Diagnostics.CausalityRelation.Error,
}
package(mscorlib) enum CausalitySynchronousWork
{
    // #if FEATURE_COMINTEROP
    CompletionNotification = /*MemberName:Type*/mscorlib.Windows.Foundation.Diagnostics.CausalitySynchronousWork.CompletionNotification,
    ProgressNotification = /*MemberName:Type*/mscorlib.Windows.Foundation.Diagnostics.CausalitySynchronousWork.ProgressNotification,
    Execution = /*MemberName:Type*/mscorlib.Windows.Foundation.Diagnostics.CausalitySynchronousWork.Execution,
}
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
package(mscorlib) class AsyncCausalityTracer : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method EnableToETW
    //TODO: generate property 'LoggingOn'
    private static immutable Guid s_PlatformId/*todo: implement initializer*/ = Guid();
    private enum CausalitySource s_CausalitySource/*todo: implement initializer*/ = (cast(CausalitySource)0);
    private static IAsyncCausalityTracerStatics s_TracerFactory;
    // The loggers that this Tracer knows about. 
    @__DotNet__Attribute!(FlagsAttribute.stringof)
    private enum Loggers : ubyte
    {
        CausalityTracer = 1,
        ETW = 2,
    }
    private static Loggers f_LoggingOn;
    //TODO: generate constructor
    //TODO: generate method TracingStatusChangedHandler
    //TODO: generate method TraceOperationCreation
    //TODO: generate method TraceOperationCompletion
    //TODO: generate method TraceOperationRelation
    //TODO: generate method TraceSynchronousWorkStart
    //TODO: generate method TraceSynchronousWorkCompletion
    //TODO: generate method LogAndDisable
    //TODO: generate method GetOperationId
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\BeginEndAwaitableAdapter.cs'
//
package(mscorlib) final class BeginEndAwaitableAdapter : __DotNet__Object, ICriticalNotifyCompletion
{
    private static immutable Action CALLBACK_RAN/*todo: implement initializer*/ = null;
    private IAsyncResult _asyncResult;
    private Action _continuation;
    public static immutable AsyncCallback Callback/*todo: implement initializer*/ = null;
    //TODO: generate method GetAwaiter
    //TODO: generate property 'IsCompleted'
    //TODO: generate method UnsafeOnCompleted
    //TODO: generate method OnCompleted
    //TODO: generate method GetResult
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\ConcurrentExclusiveSchedulerPair.cs'
//
/// <summary>
/// Provides concurrent and exclusive task schedulers that coordinate to execute
/// tasks while ensuring that concurrent tasks may run concurrently and exclusive tasks never do.
/// </summary>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Concurrent={ConcurrentTaskCountForDebugger}, Exclusive={ExclusiveTaskCountForDebugger}, Mode={ModeForDebugger}"*/)
@__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(ConcurrentExclusiveSchedulerPair.DebugView)*/)
public class ConcurrentExclusiveSchedulerPair : __DotNet__Object
{
    private immutable ConcurrentDictionary2!(int,ProcessingMode) m_threadProcessingMapping/*todo: implement initializer*/ = null;
    private immutable ConcurrentExclusiveTaskScheduler m_concurrentTaskScheduler;
    private immutable ConcurrentExclusiveTaskScheduler m_exclusiveTaskScheduler;
    private immutable TaskScheduler m_underlyingTaskScheduler;
    private immutable int m_maxConcurrencyLevel;
    private immutable int m_maxItemsPerTask;
    private int m_processingCount;
    private CompletionState m_completionState;
    private enum int UNLIMITED_PROCESSING/*todo: implement initializer*/ = int();
    private enum int EXCLUSIVE_PROCESSING_SENTINEL/*todo: implement initializer*/ = int();
    private enum int DEFAULT_MAXITEMSPERTASK/*todo: implement initializer*/ = int();
    //TODO: generate property 'DefaultMaxConcurrencyLevel'
    //TODO: generate property 'ValueLock'
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Complete
    //TODO: generate property 'Completion'
    //TODO: generate method EnsureCompletionStateInitialized
    //TODO: generate property 'CompletionRequested'
    //TODO: generate method RequestCompletion
    //TODO: generate method CleanupStateIfCompletingAndQuiesced
    //TODO: generate property 'ReadyToComplete'
    //TODO: generate method CompleteTaskAsync
    //TODO: generate method FaultWithTask
    //TODO: generate property 'ConcurrentScheduler'
    //TODO: generate property 'ExclusiveScheduler'
    //TODO: generate property 'ConcurrentTaskCountForDebugger'
    //TODO: generate property 'ExclusiveTaskCountForDebugger'
    //TODO: generate method ProcessAsyncIfNecessary
    //TODO: generate method ProcessExclusiveTasks
    //TODO: generate method ProcessConcurrentTasks
    // #if PRENET45
    /// <summary>
    /// Type used with TaskCompletionSource(Of TResult) as the TResult
    /// to ensure that the resulting task can't be upcast to something
    /// that in the future could lead to compat problems.
    /// </summary>
    // [SuppressMessage("Microsoft.Performance", "CA1812:AvoidUninstantiatedInternalClasses")]
    // [DebuggerNonUserCode]
    // private struct VoidTaskResult { }
    // #endif
    /// <summary>
    /// Holder for lazily-initialized state about the completion of a scheduler pair.
    /// Completion is only triggered either by rare exceptional conditions or by
    /// the user calling Complete, and as such we only lazily initialize this
    /// state in one of those conditions or if the user explicitly asks for
    /// the Completion.
    /// </summary>
    @__DotNet__Attribute!(SuppressMessageAttribute.stringof/*, "Microsoft.Performance", "CA1812:AvoidUninstantiatedInternalClasses"*/)
    private static final class CompletionState : TaskCompletionSource1!(VoidTaskResult)
    {
        package(mscorlib) bool m_completionRequested;
        package(mscorlib) bool m_completionQueued;
        package(mscorlib) List1!(__DotNet__Exception) m_exceptions;
    }
    /// <summary>
    /// A scheduler shim used to queue tasks to the pair and execute those tasks on request of the pair.
    /// </summary>
    @__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Count={CountForDebugger}, MaxConcurrencyLevel={m_maxConcurrencyLevel}, Id={Id}"*/)
    @__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(ConcurrentExclusiveTaskScheduler.DebugView)*/)
    private static final class ConcurrentExclusiveTaskScheduler : TaskScheduler
    {
        private static immutable Func2!(__DotNet__Object,bool) s_tryExecuteTaskShim/*todo: implement initializer*/ = null;
        private immutable ConcurrentExclusiveSchedulerPair m_pair;
        private immutable int m_maxConcurrencyLevel;
        private immutable ProcessingMode m_processingMode;
        package(mscorlib) immutable IProducerConsumerQueue1!(Task) m_tasks;
        //TODO: generate constructor
        //TODO: generate property 'MaximumConcurrencyLevel'
        //TODO: generate method QueueTask
        //TODO: generate method ExecuteTask
        //TODO: generate method TryExecuteTaskInline
        //TODO: generate method TryExecuteTaskInlineOnTargetScheduler
        //TODO: generate method TryExecuteTaskShim
        //TODO: generate method GetScheduledTasks
        //TODO: generate property 'CountForDebugger'
        private static final class DebugView : __DotNet__Object
        {
            private immutable ConcurrentExclusiveTaskScheduler m_taskScheduler;
            //TODO: generate constructor
            //TODO: generate property 'MaximumConcurrencyLevel'
            //TODO: generate property 'ScheduledTasks'
            //TODO: generate property 'SchedulerPair'
        }
    }
    private static final class DebugView : __DotNet__Object
    {
        private immutable ConcurrentExclusiveSchedulerPair m_pair;
        //TODO: generate constructor
        //TODO: generate property 'Mode'
        //TODO: generate property 'ScheduledExclusive'
        //TODO: generate property 'ScheduledConcurrent'
        //TODO: generate property 'CurrentlyExecutingTaskCount'
        //TODO: generate property 'TargetScheduler'
    }
    //TODO: generate property 'ModeForDebugger'
    //TODO: generate method ContractAssertMonitorStatus
    //TODO: generate method GetCreationOptionsForTask
    /// <summary>Provides an enumeration that represents the current state of the scheduler pair.</summary>
    @__DotNet__Attribute!(FlagsAttribute.stringof)
    private enum ProcessingMode : ubyte
    {
        /// <summary>The scheduler pair is currently dormant, with no work scheduled.</summary>
        NotCurrentlyProcessing = 0x0,
        /// <summary>The scheduler pair has queued processing for exclusive tasks.</summary>
        ProcessingExclusiveTask = 0x1,
        /// <summary>The scheduler pair has queued processing for concurrent tasks.</summary>
        ProcessingConcurrentTasks = 0x2,
        /// <summary>Completion has been requested.</summary>
        Completing = 0x4,
        /// <summary>The scheduler pair is finished processing.</summary>
        Completed = 0x8,
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\future.cs'
//
/// <summary>
/// Represents an asynchronous operation that produces a result at some time in the future.
/// </summary>
/// <typeparam name="TResult">
/// The type of the result produced by this <see cref="Task{TResult}"/>.
/// </typeparam>
/// <remarks>
/// <para>
/// <see cref="Task{TResult}"/> instances may be created in a variety of ways. The most common approach is by
/// using the task's <see cref="Factory"/> property to retrieve a <see
/// cref="System.Threading.Tasks.TaskFactory{TResult}"/> instance that can be used to create tasks for several
/// purposes. For example, to create a <see cref="Task{TResult}"/> that runs a function, the factory's StartNew
/// method may be used:
/// <code>
/// // C# 
/// var t = Task&lt;int&gt;.Factory.StartNew(() => GenerateResult());
/// - or -
/// var t = Task.Factory.StartNew(() => GenerateResult());
/// 
/// ' Visual Basic 
/// Dim t = Task&lt;int&gt;.Factory.StartNew(Function() GenerateResult())
/// - or -
/// Dim t = Task.Factory.StartNew(Function() GenerateResult())
/// </code>
/// </para>
/// <para>
/// The <see cref="Task{TResult}"/> class also provides constructors that initialize the task but that do not
/// schedule it for execution. For performance reasons, the StartNew method should be the
/// preferred mechanism for creating and scheduling computational tasks, but for scenarios where creation
/// and scheduling must be separated, the constructors may be used, and the task's 
/// <see cref="System.Threading.Tasks.Task.Start()">Start</see>
/// method may then be used to schedule the task for execution at a later time.
/// </para>
/// <para>
/// All members of <see cref="Task{TResult}"/>, except for 
/// <see cref="System.Threading.Tasks.Task.Dispose()">Dispose</see>, are thread-safe
/// and may be used from multiple threads concurrently.
/// </para>
/// </remarks>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
@__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(SystemThreadingTasks_FutureDebugView<>)*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Id = {Id}, Status = {Status}, Method = {DebuggerDisplayMethodDescription}, Result = {DebuggerDisplayResultDescription}"*/)
public class Task1(TResult) : Task
{
    package(mscorlib) TResult m_result;
    private static immutable TaskFactory1!(TResult) s_Factory/*todo: implement initializer*/ = null;
    package(mscorlib) static immutable Func2!(Task1!(Task),Task1!(TResult)) TaskWhenAnyCast/*todo: implement initializer*/ = null;
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
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate property 'DebuggerDisplayResultDescription'
    //TODO: generate property 'DebuggerDisplayMethodDescription'
    //TODO: generate method TrySetResult
    //TODO: generate method DangerousSetResult
    //TODO: generate property 'Result'
    //TODO: generate property 'ResultOnSuccess'
    //TODO: generate method GetResultCore
    //TODO: generate method TrySetException
    //TODO: generate method TrySetCanceled
    //TODO: generate method TrySetCanceled
    //TODO: generate property 'Factory'
    //TODO: generate method InnerInvoke
    //TODO: generate method GetAwaiter
    //TODO: generate method ConfigureAwait
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
}
package(mscorlib) class SystemThreadingTasks_FutureDebugView1(TResult) : __DotNet__Object
{
    private Task1!(TResult) m_task;
    //TODO: generate constructor
    //TODO: generate property 'Result'
    //TODO: generate property 'AsyncState'
    //TODO: generate property 'CreationOptions'
    //TODO: generate property 'Exception'
    //TODO: generate property 'Id'
    //TODO: generate property 'CancellationPending'
    //TODO: generate property 'Status'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\FutureFactory.cs'
//
/// <summary>
/// Provides support for creating and scheduling
/// <see cref="T:System.Threading.Tasks.Task{TResult}">Task{TResult}</see> objects.
/// </summary>
/// <typeparam name="TResult">The type of the results that are available though 
/// the <see cref="T:System.Threading.Tasks.Task{TResult}">Task{TResult}</see> objects that are associated with 
/// the methods in this class.</typeparam>
/// <remarks>
/// <para>
/// There are many common patterns for which tasks are relevant. The <see cref="TaskFactory{TResult}"/>
/// class encodes some of these patterns into methods that pick up default settings, which are
/// configurable through its constructors.
/// </para>
/// <para>
/// A default instance of <see cref="TaskFactory{TResult}"/> is available through the
/// <see cref="System.Threading.Tasks.Task{TResult}.Factory">Task{TResult}.Factory</see> property.
/// </para>
/// </remarks>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
public class TaskFactory1(TResult) : __DotNet__Object
{
    private CancellationToken m_defaultCancellationToken;
    private TaskScheduler m_defaultScheduler;
    private TaskCreationOptions m_defaultCreationOptions;
    private TaskContinuationOptions m_defaultContinuationOptions;
    //TODO: generate property 'DefaultScheduler'
    //TODO: generate method GetDefaultScheduler
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'CancellationToken'
    //TODO: generate property 'Scheduler'
    //TODO: generate property 'CreationOptions'
    //TODO: generate property 'ContinuationOptions'
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method FromAsyncCoreLogic
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsyncImpl
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsyncImpl
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsyncImpl
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsyncImpl
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsyncImpl
    //TODO: generate method FromAsyncTrim
    private static final class FromAsyncTrimPromise1(TInstance) : Task1!(TResult)/*where TInstance : class*/
    {
        package(mscorlib) static immutable AsyncCallback s_completeFromAsyncResult/*todo: implement initializer*/ = null;
        private TInstance m_thisRef;
        private Func3!(TInstance,IAsyncResult,TResult) m_endMethod;
        //TODO: generate constructor
        //TODO: generate method CompleteFromAsyncResult
        //TODO: generate method Complete
    }
    //TODO: generate method CreateCanceledTask
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAllImpl
    //TODO: generate method ContinueWhenAllImpl
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAnyImpl
    //TODO: generate method ContinueWhenAnyImpl
}
package(mscorlib) class GenericDelegateCache2(TAntecedentResult,TResult) : __DotNet__Object
{
    private this() {} // prevent instantiation
    package(mscorlib) static Func3!(Task1!(Task),__DotNet__Object,TResult) CWAnyFuncDelegate/*todo: implement initializer*/ = null;
    package(mscorlib) static Func3!(Task1!(Task),__DotNet__Object,TResult) CWAnyActionDelegate/*todo: implement initializer*/ = null;
    package(mscorlib) static Func3!(Task1!(Task1!(TAntecedentResult)[]),__DotNet__Object,TResult) CWAllFuncDelegate/*todo: implement initializer*/ = null;
    package(mscorlib) static Func3!(Task1!(Task1!(TAntecedentResult)[]),__DotNet__Object,TResult) CWAllActionDelegate/*todo: implement initializer*/ = null;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\Parallel.cs'
//
public class ParallelOptions : __DotNet__Object
{
    private TaskScheduler m_scheduler;
    private int m_maxDegreeOfParallelism;
    private CancellationToken m_cancellationToken;
    //TODO: generate constructor
    //TODO: generate property 'TaskScheduler'
    //TODO: generate property 'EffectiveTaskScheduler'
    //TODO: generate property 'MaxDegreeOfParallelism'
    //TODO: generate property 'CancellationToken'
    //TODO: generate property 'EffectiveMaxConcurrencyLevel'
}
/// <summary>
/// Provides support for parallel loops and regions.
/// </summary>
/// <remarks>
/// The <see cref="T:System.Threading.Tasks.Parallel"/> class provides library-based data parallel replacements
/// for common operations such as for loops, for each loops, and execution of a set of statements.
/// </remarks>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
public class Parallel : __DotNet__Object
{
    private this() {} // prevent instantiation
    package(mscorlib) static int s_forkJoinContextID;
    package(mscorlib) enum int DEFAULT_LOOP_STRIDE/*todo: implement initializer*/ = int();
    package(mscorlib) static ParallelOptions s_defaultParallelOptions/*todo: implement initializer*/ = null;
    //TODO: generate method Invoke
    //TODO: generate method Invoke
    //TODO: generate method For
    //TODO: generate method For
    //TODO: generate method For
    //TODO: generate method For
    //TODO: generate method For
    //TODO: generate method For
    //TODO: generate method For
    //TODO: generate method For
    //TODO: generate method For
    //TODO: generate method For
    //TODO: generate method For
    //TODO: generate method For
    //TODO: generate method ForWorker
    //TODO: generate method ForWorker64
    //TODO: generate method ForEach
    //TODO: generate method ForEach
    //TODO: generate method ForEach
    //TODO: generate method ForEach
    //TODO: generate method ForEach
    //TODO: generate method ForEach
    //TODO: generate method ForEach
    //TODO: generate method ForEach
    //TODO: generate method ForEach
    //TODO: generate method ForEach
    //TODO: generate method ForEachWorker
    //TODO: generate method ForEachWorker
    //TODO: generate method ForEachWorker
    //TODO: generate method ForEach
    //TODO: generate method ForEach
    //TODO: generate method ForEach
    //TODO: generate method ForEach
    //TODO: generate method ForEach
    //TODO: generate method ForEach
    //TODO: generate method ForEach
    //TODO: generate method ForEach
    //TODO: generate method ForEach
    //TODO: generate method ForEach
    //TODO: generate method PartitionerForEachWorker
    //TODO: generate method ThrowIfReducableToSingleOCE
    package(mscorlib) static struct LoopTimer
    {
        //TODO: generate constructor
        //TODO: generate method LimitExceeded
        private enum int s_BaseNotifyPeriodMS/*todo: implement initializer*/ = int();
        private enum int s_NotifyPeriodIncrementMS/*todo: implement initializer*/ = int();
        private int m_timeLimit;
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\ParallelLoopState.cs'
//
/// <summary>
/// Enables iterations of <see cref="T:System.Threading.Tasks.Parallel"/> loops to interact with
/// other iterations.
/// </summary>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "ShouldExitCurrentIteration = {ShouldExitCurrentIteration}"*/)
public class ParallelLoopState : __DotNet__Object
{
    private ParallelLoopStateFlags m_flagsBase;
    //TODO: generate constructor
    //TODO: generate property 'InternalShouldExitCurrentIteration'
    //TODO: generate property 'ShouldExitCurrentIteration'
    //TODO: generate property 'IsStopped'
    //TODO: generate property 'IsExceptional'
    //TODO: generate property 'InternalLowestBreakIteration'
    //TODO: generate property 'LowestBreakIteration'
    //TODO: generate method Stop
    //TODO: generate method InternalBreak
    //TODO: generate method Break
    //TODO: generate method Break
    //TODO: generate method Break
}
package(mscorlib) class ParallelLoopState32 : ParallelLoopState
{
    private ParallelLoopStateFlags32 m_sharedParallelStateFlags;
    private int m_currentIteration/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate property 'CurrentIteration'
    //TODO: generate property 'InternalShouldExitCurrentIteration'
    //TODO: generate property 'InternalLowestBreakIteration'
    //TODO: generate method InternalBreak
}
package(mscorlib) class ParallelLoopState64 : ParallelLoopState
{
    private ParallelLoopStateFlags64 m_sharedParallelStateFlags;
    private long m_currentIteration/*todo: implement initializer*/ = long();
    //TODO: generate constructor
    //TODO: generate property 'CurrentIteration'
    //TODO: generate property 'InternalShouldExitCurrentIteration'
    //TODO: generate property 'InternalLowestBreakIteration'
    //TODO: generate method InternalBreak
}
package(mscorlib) class ParallelLoopStateFlags : __DotNet__Object
{
    package(mscorlib) static int PLS_NONE;
    package(mscorlib) static int PLS_EXCEPTIONAL/*todo: implement initializer*/ = int();
    package(mscorlib) static int PLS_BROKEN/*todo: implement initializer*/ = int();
    package(mscorlib) static int PLS_STOPPED/*todo: implement initializer*/ = int();
    package(mscorlib) static int PLS_CANCELED/*todo: implement initializer*/ = int();
    private /*todo: volatile*/ int m_LoopStateFlags/*todo: implement initializer*/ = int();
    //TODO: generate property 'LoopStateFlags'
    //TODO: generate method AtomicLoopStateUpdate
    //TODO: generate method AtomicLoopStateUpdate
    //TODO: generate method SetExceptional
    //TODO: generate method Stop
    //TODO: generate method Cancel
}
package(mscorlib) class ParallelLoopStateFlags32 : ParallelLoopStateFlags
{
    package(mscorlib) /*todo: volatile*/ int m_lowestBreakIteration/*todo: implement initializer*/ = int();
    //TODO: generate property 'LowestBreakIteration'
    //TODO: generate property 'NullableLowestBreakIteration'
    //TODO: generate method ShouldExitLoop
    //TODO: generate method ShouldExitLoop
}
package(mscorlib) class ParallelLoopStateFlags64 : ParallelLoopStateFlags
{
    package(mscorlib) long m_lowestBreakIteration/*todo: implement initializer*/ = long();
    //TODO: generate property 'LowestBreakIteration'
    //TODO: generate property 'NullableLowestBreakIteration'
    //TODO: generate method ShouldExitLoop
    //TODO: generate method ShouldExitLoop
}
public struct ParallelLoopResult
{
    package(mscorlib) bool m_completed;
    package(mscorlib) Nullable1!(long) m_lowestBreakIteration;
    //TODO: generate property 'IsCompleted'
    //TODO: generate property 'LowestBreakIteration'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\ParallelRangeManager.cs'
//
package(mscorlib) struct IndexRange
{
    package(mscorlib) long m_nFromInclusive;
    package(mscorlib) long m_nToExclusive;
    package(mscorlib) /*todo: volatile*/ Shared1!(long) m_nSharedCurrentIndexOffset;
    package(mscorlib) int m_bRangeFinished;
}
package(mscorlib) struct RangeWorker
{
    package(mscorlib) immutable IndexRange[] m_indexRanges;
    package(mscorlib) int m_nCurrentIndexRange;
    package(mscorlib) long m_nStep;
    package(mscorlib) long m_nIncrementValue;
    package(mscorlib) immutable long m_nMaxIncrementValue;
    //TODO: generate constructor
    //TODO: generate method FindNewWork
    //TODO: generate method FindNewWork32
}
package(mscorlib) class RangeManager : __DotNet__Object
{
    package(mscorlib) immutable IndexRange[] m_indexRanges;
    package(mscorlib) int m_nCurrentIndexRangeToAssign;
    package(mscorlib) long m_nStep;
    //TODO: generate constructor
    //TODO: generate method RegisterNewWorker
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\ProducerConsumerQueues.cs'
//
package(mscorlib) interface IProducerConsumerQueue1(T) : IEnumerable1!(T)
{
    //TODO: generate method Enqueue
    //TODO: generate method TryDequeue
    //TODO: generate property 'IsEmpty'
    //TODO: generate property 'Count'
    //TODO: generate method GetCountSafe
}
/// <summary>
/// Provides a producer/consumer queue safe to be used by any number of producers and consumers concurrently.
/// </summary>
/// <typeparam name="T">Specifies the type of data contained in the queue.</typeparam>
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Count = {Count}"*/)
package(mscorlib) final class MultiProducerMultiConsumerQueue1(T) : ConcurrentQueue1!(T), IProducerConsumerQueue1!(T)
{
    //TODO: generate method Enqueue
    //TODO: generate method TryDequeue
    //TODO: generate property 'IsEmpty'
    //TODO: generate property 'Count'
    //TODO: generate method GetCountSafe
}
/// <summary>
/// Provides a producer/consumer queue safe to be used by only one producer and one consumer concurrently.
/// </summary>
/// <typeparam name="T">Specifies the type of data contained in the queue.</typeparam>
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Count = {Count}"*/)
@__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(SingleProducerSingleConsumerQueue<>.SingleProducerSingleConsumerQueue_DebugView)*/)
package(mscorlib) final class SingleProducerSingleConsumerQueue1(T) : __DotNet__Object, IProducerConsumerQueue1!(T)
{
    private enum int INIT_SEGMENT_SIZE/*todo: implement initializer*/ = int();
    private enum int MAX_SEGMENT_SIZE/*todo: implement initializer*/ = int();
    private /*todo: volatile*/ Segment m_head;
    private /*todo: volatile*/ Segment m_tail;
    //TODO: generate constructor
    //TODO: generate method Enqueue
    //TODO: generate method EnqueueSlow
    //TODO: generate method TryDequeue
    //TODO: generate method TryDequeueSlow
    //TODO: generate method TryPeek
    //TODO: generate method TryPeekSlow
    //TODO: generate method TryDequeueIf
    //TODO: generate method TryDequeueIfSlow
    //TODO: generate method Clear
    //TODO: generate property 'IsEmpty'
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    //TODO: generate property 'Count'
    //TODO: generate method GetCountSafe
    /// <summary>A segment in the queue containing one or more items.</summary>
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    private static final class Segment : __DotNet__Object
    {
        package(mscorlib) Segment m_next;
        package(mscorlib) immutable T[] m_array;
        package(mscorlib) SegmentState m_state;
        //TODO: generate constructor
    }
    /// <summary>Stores information about a segment.</summary>
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    private static struct SegmentState
    {
        package(mscorlib) PaddingFor32 m_pad0;
        package(mscorlib) /*todo: volatile*/ int m_first;
        package(mscorlib) int m_lastCopy;
        package(mscorlib) PaddingFor32 m_pad1;
        package(mscorlib) int m_firstCopy;
        package(mscorlib) /*todo: volatile*/ int m_last;
        package(mscorlib) PaddingFor32 m_pad2;
    }
    private static final class SingleProducerSingleConsumerQueue_DebugView : __DotNet__Object
    {
        private immutable SingleProducerSingleConsumerQueue1!(T) m_queue;
        //TODO: generate constructor
        //TODO: generate property 'Items'
    }
}
private class PaddingHelpers : __DotNet__Object
{
    private this() {} // prevent instantiation
    package(mscorlib) enum int CACHE_LINE_SIZE/*todo: implement initializer*/ = int();
}
/// <summary>Padding structure used to minimize false sharing in SingleProducerSingleConsumerQueue{T}.</summary>
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Explicit, Size = PaddingHelpers.CACHE_LINE_SIZE - sizeof(Int32)*/)
private struct PaddingFor32
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\Task.cs'
//
package(mscorlib) class Shared1(T) : __DotNet__Object
{
    package(mscorlib) T Value;
    //TODO: generate constructor
}
public enum TaskStatus
{
    /// <summary> 
    /// The task has been initialized but has not yet been scheduled.
    /// </summary>
    Created,
    /// <summary> 
    /// The task is waiting to be activated and scheduled internally by the .NET Framework infrastructure.
    /// </summary>
    WaitingForActivation,
    /// <summary>
    /// The task has been scheduled for execution but has not yet begun executing.
    /// </summary>
    WaitingToRun,
    /// <summary>
    /// The task is running but has not yet completed.
    /// </summary>
    Running,
    // /// <summary>
    // /// The task is currently blocked in a wait state.
    // /// </summary>
    // Blocked,
    /// <summary>
    /// The task has finished executing and is implicitly waiting for
    /// attached child tasks to complete.
    /// </summary>
    WaitingForChildrenToComplete,
    /// <summary>
    /// The task completed execution successfully.
    /// </summary>
    RanToCompletion,
    /// <summary>
    /// The task acknowledged cancellation by throwing an OperationCanceledException with its own CancellationToken
    /// while the token was in signaled state, or the task's CancellationToken was already signaled before the
    /// task started executing.
    /// </summary>
    Canceled,
    /// <summary>
    /// The task completed due to an unhandled exception.
    /// </summary>
    Faulted,
}
/// <summary>
/// Represents an asynchronous operation.
/// </summary>
/// <remarks>
/// <para>
/// <see cref="Task"/> instances may be created in a variety of ways. The most common approach is by
/// using the Task type's <see cref="Factory"/> property to retrieve a <see
/// cref="System.Threading.Tasks.TaskFactory"/> instance that can be used to create tasks for several
/// purposes. For example, to create a <see cref="Task"/> that runs an action, the factory's StartNew
/// method may be used:
/// <code>
/// // C# 
/// var t = Task.Factory.StartNew(() => DoAction());
/// 
/// ' Visual Basic 
/// Dim t = Task.Factory.StartNew(Function() DoAction())
/// </code>
/// </para>
/// <para>
/// The <see cref="Task"/> class also provides constructors that initialize the Task but that do not
/// schedule it for execution. For performance reasons, TaskFactory's StartNew method should be the
/// preferred mechanism for creating and scheduling computational tasks, but for scenarios where creation
/// and scheduling must be separated, the constructors may be used, and the task's <see cref="Start()"/>
/// method may then be used to schedule the task for execution at a later time.
/// </para>
/// <para>
/// All members of <see cref="Task"/>, except for <see cref="Dispose()"/>, are thread-safe
/// and may be used from multiple threads concurrently.
/// </para>
/// <para>
/// For operations that return values, the <see cref="System.Threading.Tasks.Task{TResult}"/> class
/// should be used.
/// </para>
/// <para>
/// For developers implementing custom debuggers, several internal and private members of Task may be
/// useful (these may change from release to release). The Int32 m_taskId field serves as the backing
/// store for the <see cref="Id"/> property, however accessing this field directly from a debugger may be
/// more efficient than accessing the same value through the property's getter method (the
/// s_taskIdCounter Int32 counter is used to retrieve the next available ID for a Task). Similarly, the
/// Int32 m_stateFlags field stores information about the current lifecycle stage of the Task,
/// information also accessible through the <see cref="Status"/> property. The m_action System.Object
/// field stores a reference to the Task's delegate, and the m_stateObject System.Object field stores the
/// async state passed to the Task by the developer. Finally, for debuggers that parse stack frames, the
/// InternalWait method serves a potential marker for when a Task is entering a wait operation.
/// </para>
/// </remarks>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
@__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(SystemThreadingTasks_TaskDebugView)*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Id = {Id}, Status = {Status}, Method = {DebuggerDisplayMethodDescription}"*/)
public class Task : __DotNet__Object, IThreadPoolWorkItem, IAsyncResult, IDisposable
{
    @__DotNet__Attribute!(ThreadStaticAttribute.stringof)
    package(mscorlib) static Task t_currentTask;
    @__DotNet__Attribute!(ThreadStaticAttribute.stringof)
    private static StackGuard t_stackGuard;
    package(mscorlib) static int s_taskIdCounter;
    private static immutable TaskFactory s_factory/*todo: implement initializer*/ = null;
    private /*todo: volatile*/ int m_taskId;
    package(mscorlib) __DotNet__Object m_action;
    package(mscorlib) __DotNet__Object m_stateObject;
    package(mscorlib) TaskScheduler m_taskScheduler;
    package(mscorlib) /*todo: volatile*/ int m_stateFlags;
    //TODO: generate property 'ParentForDebugger'
    //TODO: generate property 'StateFlagsForDebugger'
    private enum int OptionsMask/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TASK_STATE_STARTED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TASK_STATE_DELEGATE_INVOKED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TASK_STATE_DISPOSED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TASK_STATE_EXCEPTIONOBSERVEDBYPARENT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TASK_STATE_CANCELLATIONACKNOWLEDGED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TASK_STATE_FAULTED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TASK_STATE_CANCELED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TASK_STATE_WAITING_ON_CHILDREN/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TASK_STATE_RAN_TO_COMPLETION/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TASK_STATE_WAITINGFORACTIVATION/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TASK_STATE_COMPLETION_RESERVED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TASK_STATE_THREAD_WAS_ABORTED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TASK_STATE_WAIT_COMPLETION_NOTIFICATION/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TASK_STATE_EXECUTIONCONTEXT_IS_NULL/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TASK_STATE_TASKSCHEDULED_WAS_FIRED/*todo: implement initializer*/ = int();
    private enum int TASK_STATE_COMPLETED_MASK/*todo: implement initializer*/ = int();
    private enum int CANCELLATION_REQUESTED/*todo: implement initializer*/ = int();
    private /*todo: volatile*/ __DotNet__Object m_continuationObject/*todo: implement initializer*/ = null;
    private static immutable __DotNet__Object s_taskCompletionSentinel/*todo: implement initializer*/ = null;
    // A private flag that would be set (only) by the debugger
    // When true the Async Causality logging trace is enabled as well as a dictionary to relate operation ids with Tasks
    @__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
    package(mscorlib) static bool s_asyncDebuggingEnabled;
    private static immutable Dictionary2!(int,Task) s_currentActiveTasks/*todo: implement initializer*/ = null;
    private static immutable __DotNet__Object s_activeTasksLock/*todo: implement initializer*/ = null;
    //TODO: generate method AddToActiveTasks
    //TODO: generate method RemoveFromActiveTasks
    package(mscorlib) static class ContingentProperties : __DotNet__Object
    {
        package(mscorlib) ExecutionContext m_capturedContext;
        package(mscorlib) /*todo: volatile*/ ManualResetEventSlim m_completionEvent;
        package(mscorlib) /*todo: volatile*/ TaskExceptionHolder m_exceptionsHolder;
        package(mscorlib) CancellationToken m_cancellationToken;
        package(mscorlib) Shared1!(CancellationTokenRegistration) m_cancellationRegistration;
        package(mscorlib) /*todo: volatile*/ int m_internalCancellationRequested;
        package(mscorlib) /*todo: volatile*/ int m_completionCountdown/*todo: implement initializer*/ = int();
        package(mscorlib) /*todo: volatile*/ List1!(Task) m_exceptionalChildren;
        package(mscorlib) Task m_parent;
        //TODO: generate method SetCompleted
        //TODO: generate method DeregisterCancellationCallback
    }
    package(mscorlib) ContingentProperties m_contingentProperties;
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
    //TODO: generate method TaskConstructorCore
    //TODO: generate method AssignCancellationToken
    private static immutable Action1!(__DotNet__Object) s_taskCancelCallback/*todo: implement initializer*/ = null;
    //TODO: generate method TaskCancelCallback
    //TODO: generate property 'DebuggerDisplayMethodDescription'
    //TODO: generate method PossiblyCaptureContext
    //TODO: generate property 'Options'
    //TODO: generate method OptionsMethod
    //TODO: generate method AtomicStateUpdate
    //TODO: generate method AtomicStateUpdate
    //TODO: generate method SetNotificationForWaitCompletion
    //TODO: generate method NotifyDebuggerOfWaitCompletionIfNecessary
    //TODO: generate method AnyTaskRequiresNotifyDebuggerOfWaitCompletion
    //TODO: generate property 'IsWaitNotificationEnabledOrNotRanToCompletion'
    //TODO: generate property 'ShouldNotifyDebuggerOfWaitCompletion'
    //TODO: generate property 'IsWaitNotificationEnabled'
    //TODO: generate method NotifyDebuggerOfWaitCompletion
    //TODO: generate method MarkStarted
    //TODO: generate method FireTaskScheduledIfNeeded
    //TODO: generate method AddNewChild
    //TODO: generate method DisregardChild
    //TODO: generate method Start
    //TODO: generate method Start
    //TODO: generate method RunSynchronously
    //TODO: generate method RunSynchronously
    //TODO: generate method InternalRunSynchronously
    //TODO: generate method InternalStartNew
    //TODO: generate method NewId
    //TODO: generate property 'Id'
    //TODO: generate property 'CurrentId'
    //TODO: generate property 'InternalCurrent'
    //TODO: generate method InternalCurrentIfAttached
    //TODO: generate property 'CurrentStackGuard'
    //TODO: generate property 'Exception'
    //TODO: generate property 'Status'
    //TODO: generate property 'IsCanceled'
    //TODO: generate property 'IsCancellationRequested'
    //TODO: generate method EnsureContingentPropertiesInitialized
    //TODO: generate method EnsureContingentPropertiesInitializedUnsafe
    //TODO: generate property 'CancellationToken'
    //TODO: generate property 'IsCancellationAcknowledged'
    //TODO: generate property 'IsCompleted'
    //TODO: generate method IsCompletedMethod
    //TODO: generate property 'IsRanToCompletion'
    //TODO: generate property 'CreationOptions'
    //TODO: generate property 'AsyncWaitHandle'
    //TODO: generate property 'AsyncState'
    //TODO: generate property 'CompletedSynchronously'
    //TODO: generate property 'ExecutingTaskScheduler'
    //TODO: generate property 'Factory'
    private static Task s_completedTask;
    //TODO: generate property 'CompletedTask'
    //TODO: generate property 'CompletedEvent'
    //TODO: generate property 'IsSelfReplicatingRoot'
    //TODO: generate property 'IsChildReplica'
    //TODO: generate property 'ActiveChildCount'
    //TODO: generate property 'ExceptionRecorded'
    //TODO: generate property 'IsFaulted'
    //TODO: generate property 'CapturedContext'
    //TODO: generate method CopyExecutionContext
    //TODO: generate property 'InternalId'
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    //TODO: generate method ScheduleAndStart
    //TODO: generate method AddException
    //TODO: generate method AddException
    //TODO: generate method GetExceptions
    //TODO: generate method GetExceptionDispatchInfos
    //TODO: generate method GetCancellationExceptionDispatchInfo
    //TODO: generate method ThrowIfExceptional
    //TODO: generate method UpdateExceptionObservedStatus
    //TODO: generate property 'IsExceptionObservedByParent'
    //TODO: generate property 'IsDelegateInvoked'
    //TODO: generate method Finish
    private static immutable Predicate1!(Task) s_IsExceptionObservedByParentPredicate/*todo: implement initializer*/ = null;
    //TODO: generate method FinishStageTwo
    //TODO: generate method FinishStageThree
    //TODO: generate method ProcessChildCompletion
    //TODO: generate method AddExceptionsFromChildren
    //TODO: generate method FinishThreadAbortedTask
    //TODO: generate method Execute
    //TODO: generate method ShouldReplicate
    //TODO: generate method CreateReplicaTask
    //TODO: generate property 'SavedStateForNextReplica'
    //TODO: generate property 'SavedStateFromPreviousReplica'
    //TODO: generate property 'HandedOverChildReplica'
    //TODO: generate method ExecuteSelfReplicating
    //TODO: generate method ExecuteWorkItem
    //TODO: generate method MarkAborted
    //TODO: generate method ExecuteEntry
    //TODO: generate method ExecuteWithThreadLocal
    // Cached callback delegate that's lazily initialized due to ContextCallback being SecurityCritical
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private static ContextCallback s_ecCallback;
    //TODO: generate method ExecutionContextCallback
    //TODO: generate method InnerInvoke
    //TODO: generate method InnerInvokeWithArg
    //TODO: generate method HandleException
    //TODO: generate method GetAwaiter
    //TODO: generate method ConfigureAwait
    //TODO: generate method SetContinuationForAwait
    //TODO: generate method Yield
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method WrappedTryRunInline
    //TODO: generate method InternalWait
    private static final class SetOnInvokeMres : ManualResetEventSlim, ITaskCompletionAction
    {
        //TODO: generate constructor
        //TODO: generate method Invoke
        //TODO: generate property 'InvokeMayRunArbitraryCode'
    }
    //TODO: generate method SpinThenBlockingWait
    //TODO: generate method SpinWait
    //TODO: generate method InternalCancel
    //TODO: generate method RecordInternalCancellationRequest
    //TODO: generate method RecordInternalCancellationRequest
    //TODO: generate method RecordInternalCancellationRequest
    //TODO: generate method CancellationCleanupLogic
    //TODO: generate method SetCancellationAcknowledged
    //TODO: generate method FinishContinuations
    //TODO: generate method LogFinishCompletionNotification
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method ContinueWith
    //TODO: generate method CreationOptionsFromContinuationOptions
    //TODO: generate method ContinueWithCore
    //TODO: generate method AddCompletionAction
    //TODO: generate method AddCompletionAction
    //TODO: generate method AddTaskContinuationComplex
    //TODO: generate method AddTaskContinuation
    //TODO: generate method RemoveContinuation
    private static immutable Predicate1!(__DotNet__Object) s_IsTaskContinuationNullPredicate/*todo: implement initializer*/ = null;
    //TODO: generate method WaitAll
    //TODO: generate method WaitAll
    //TODO: generate method WaitAll
    //TODO: generate method WaitAll
    //TODO: generate method WaitAll
    //TODO: generate method AddToList
    //TODO: generate method WaitAllBlockingCore
    private static final class SetOnCountdownMres : ManualResetEventSlim, ITaskCompletionAction
    {
        private int _count;
        //TODO: generate constructor
        //TODO: generate method Invoke
        //TODO: generate property 'InvokeMayRunArbitraryCode'
    }
    //TODO: generate method FastWaitAll
    //TODO: generate method AddExceptionsForCompletedTask
    //TODO: generate method WaitAny
    //TODO: generate method WaitAny
    //TODO: generate method WaitAny
    //TODO: generate method WaitAny
    //TODO: generate method WaitAny
    //TODO: generate method FromResult
    //TODO: generate method FromException
    //TODO: generate method FromException
    //TODO: generate method FromCanceled
    //TODO: generate method FromCanceled
    //TODO: generate method FromCancellation
    //TODO: generate method FromCancellation
    //TODO: generate method FromCancellation
    //TODO: generate method Run
    //TODO: generate method Run
    //TODO: generate method Run
    //TODO: generate method Run
    //TODO: generate method Run
    //TODO: generate method Run
    //TODO: generate method Run
    //TODO: generate method Run
    //TODO: generate method Delay
    //TODO: generate method Delay
    //TODO: generate method Delay
    //TODO: generate method Delay
    private static final class DelayPromise : Task1!(VoidTaskResult)
    {
        //TODO: generate constructor
        package(mscorlib) immutable CancellationToken Token;
        package(mscorlib) CancellationTokenRegistration Registration;
        package(mscorlib) Timer Timer_;
        //TODO: generate method Complete
    }
    //TODO: generate method WhenAll
    //TODO: generate method WhenAll
    //TODO: generate method InternalWhenAll
    private static final class WhenAllPromise : Task1!(VoidTaskResult), ITaskCompletionAction
    {
        private immutable Task[] m_tasks;
        private int m_count;
        //TODO: generate constructor
        //TODO: generate method Invoke
        //TODO: generate property 'InvokeMayRunArbitraryCode'
        //TODO: generate property 'ShouldNotifyDebuggerOfWaitCompletion'
    }
    //TODO: generate method WhenAll
    //TODO: generate method WhenAll
    //TODO: generate method InternalWhenAll
    private static final class WhenAllPromise1(T) : Task1!(T[]), ITaskCompletionAction
    {
        private immutable Task1!(T)[] m_tasks;
        private int m_count;
        //TODO: generate constructor
        //TODO: generate method Invoke
        //TODO: generate property 'InvokeMayRunArbitraryCode'
        //TODO: generate property 'ShouldNotifyDebuggerOfWaitCompletion'
    }
    //TODO: generate method WhenAny
    //TODO: generate method WhenAny
    //TODO: generate method WhenAny
    //TODO: generate method WhenAny
    //TODO: generate method CreateUnwrapPromise
    //TODO: generate method GetDelegateContinuationsForDebugger
    //TODO: generate method GetDelegatesFromContinuationObject
    //TODO: generate method GetActiveTaskFromId
    //TODO: generate method GetActiveTasks
}
package(mscorlib) final class CompletionActionInvoker : __DotNet__Object, IThreadPoolWorkItem
{
    private immutable ITaskCompletionAction m_action;
    private immutable Task m_completingTask;
    //TODO: generate constructor
    //TODO: generate method ExecuteWorkItem
    //TODO: generate method MarkAborted
}
package(mscorlib) class SystemThreadingTasks_TaskDebugView : __DotNet__Object
{
    private Task m_task;
    //TODO: generate constructor
    //TODO: generate property 'AsyncState'
    //TODO: generate property 'CreationOptions'
    //TODO: generate property 'Exception'
    //TODO: generate property 'Id'
    //TODO: generate property 'CancellationPending'
    //TODO: generate property 'Status'
}
package(mscorlib) class ParallelForReplicatingTask : Task
{
    private int m_replicationDownCount;
    //TODO: generate constructor
    //TODO: generate method ShouldReplicate
    //TODO: generate method CreateReplicaTask
}
package(mscorlib) class ParallelForReplicaTask : Task
{
    package(mscorlib) __DotNet__Object m_stateForNextReplica;
    package(mscorlib) __DotNet__Object m_stateFromPreviousReplica;
    package(mscorlib) Task m_handedOverChildReplica;
    //TODO: generate constructor
    //TODO: generate property 'SavedStateForNextReplica'
    //TODO: generate property 'SavedStateFromPreviousReplica'
    //TODO: generate property 'HandedOverChildReplica'
}
/// <summary>
/// Specifies flags that control optional behavior for the creation and execution of tasks.
/// </summary>
// NOTE: These options are a subset of TaskContinuationsOptions, thus before adding a flag check it is
// not already in use.
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum TaskCreationOptions
{
    /// <summary>
    /// Specifies that the default behavior should be used.
    /// </summary>
    None = 0x0,
    /// <summary>
    /// A hint to a <see cref="System.Threading.Tasks.TaskScheduler">TaskScheduler</see> to schedule a
    /// task in as fair a manner as possible, meaning that tasks scheduled sooner will be more likely to
    /// be run sooner, and tasks scheduled later will be more likely to be run later.
    /// </summary>
    PreferFairness = 0x01,
    /// <summary>
    /// Specifies that a task will be a long-running, course-grained operation. It provides a hint to the
    /// <see cref="System.Threading.Tasks.TaskScheduler">TaskScheduler</see> that oversubscription may be
    /// warranted. 
    /// </summary>
    LongRunning = 0x02,
    /// <summary>
    /// Specifies that a task is attached to a parent in the task hierarchy.
    /// </summary>
    AttachedToParent = 0x04,
    /// <summary>
    /// Specifies that an InvalidOperationException will be thrown if an attempt is made to attach a child task to the created task.
    /// </summary>
    DenyChildAttach = 0x08,
    /// <summary>
    /// Prevents the ambient scheduler from being seen as the current scheduler in the created task.  This means that operations
    /// like StartNew or ContinueWith that are performed in the created task will see TaskScheduler.Default as the current scheduler.
    /// </summary>
    HideScheduler = 0x10,
    // 0x20 is already being used in TaskContinuationOptions
    /// <summary>
    /// Forces continuations added to the current task to be executed asynchronously.
    /// This option has precedence over TaskContinuationOptions.ExecuteSynchronously
    /// </summary>
    RunContinuationsAsynchronously = 0x40,
}
/// <summary>
/// Task creation flags which are only used internally.
/// </summary>
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) enum InternalTaskOptions
{
    /// <summary> Specifies "No internal task options" </summary>
    None,
    /// <summary>Used to filter out internal vs. public task creation options.</summary>
    InternalOptionsMask = 0x0000FF00,
    ChildReplica = 0x0100,
    ContinuationTask = 0x0200,
    PromiseTask = 0x0400,
    SelfReplicating = 0x0800,
    /// <summary>
    /// Store the presence of TaskContinuationOptions.LazyCancellation, since it does not directly
    /// translate into any TaskCreationOptions.
    /// </summary>
    LazyCancellation = 0x1000,
    /// <summary>Specifies that the task will be queued by the runtime before handing it over to the user. 
    /// This flag will be used to skip the cancellationtoken registration step, which is only meant for unstarted tasks.</summary>
    QueuedByRuntime = 0x2000,
    /// <summary>
    /// Denotes that Dispose should be a complete nop for a Task.  Used when constructing tasks that are meant to be cached/reused.
    /// </summary>
    DoNotDispose = 0x4000,
}
/// <summary>
/// Specifies flags that control optional behavior for the creation and execution of continuation tasks.
/// </summary>
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum TaskContinuationOptions
{
    /// <summary>
    /// Default = "Continue on any, no task options, run asynchronously"
    /// Specifies that the default behavior should be used.  Continuations, by default, will
    /// be scheduled when the antecedent task completes, regardless of the task's final <see
    /// cref="System.Threading.Tasks.TaskStatus">TaskStatus</see>.
    /// </summary>
    None = 0,
    // These are identical to their meanings and values in TaskCreationOptions
    /// <summary>
    /// A hint to a <see cref="System.Threading.Tasks.TaskScheduler">TaskScheduler</see> to schedule a
    /// task in as fair a manner as possible, meaning that tasks scheduled sooner will be more likely to
    /// be run sooner, and tasks scheduled later will be more likely to be run later.
    /// </summary>
    PreferFairness = 0x01,
    /// <summary>
    /// Specifies that a task will be a long-running, course-grained operation.  It provides
    /// a hint to the <see cref="System.Threading.Tasks.TaskScheduler">TaskScheduler</see> that
    /// oversubscription may be warranted.
    /// </summary>
    LongRunning = 0x02,
    /// <summary>
    /// Specifies that a task is attached to a parent in the task hierarchy.
    /// </summary>
    AttachedToParent = 0x04,
    /// <summary>
    /// Specifies that an InvalidOperationException will be thrown if an attempt is made to attach a child task to the created task.
    /// </summary>
    DenyChildAttach = 0x08,
    /// <summary>
    /// Prevents the ambient scheduler from being seen as the current scheduler in the created task.  This means that operations
    /// like StartNew or ContinueWith that are performed in the created task will see TaskScheduler.Default as the current scheduler.
    /// </summary>
    HideScheduler = 0x10,
    /// <summary>
    /// In the case of continuation cancellation, prevents completion of the continuation until the antecedent has completed.
    /// </summary>
    LazyCancellation = 0x20,
    RunContinuationsAsynchronously = 0x40,
    // These are specific to continuations
    /// <summary>
    /// Specifies that the continuation task should not be scheduled if its antecedent ran to completion.
    /// This option is not valid for multi-task continuations.
    /// </summary>
    NotOnRanToCompletion = 0x10000,
    /// <summary>
    /// Specifies that the continuation task should not be scheduled if its antecedent threw an unhandled
    /// exception. This option is not valid for multi-task continuations.
    /// </summary>
    NotOnFaulted = 0x20000,
    /// <summary>
    /// Specifies that the continuation task should not be scheduled if its antecedent was canceled. This
    /// option is not valid for multi-task continuations.
    /// </summary>
    NotOnCanceled = 0x40000,
    /// <summary>
    /// Specifies that the continuation task should be scheduled only if its antecedent ran to
    /// completion. This option is not valid for multi-task continuations.
    /// </summary>
    OnlyOnRanToCompletion = NotOnFaulted | NotOnCanceled,
    /// <summary>
    /// Specifies that the continuation task should be scheduled only if its antecedent threw an
    /// unhandled exception. This option is not valid for multi-task continuations.
    /// </summary>
    OnlyOnFaulted = NotOnRanToCompletion | NotOnCanceled,
    /// <summary>
    /// Specifies that the continuation task should be scheduled only if its antecedent was canceled.
    /// This option is not valid for multi-task continuations.
    /// </summary>
    OnlyOnCanceled = NotOnRanToCompletion | NotOnFaulted,
    /// <summary>
    /// Specifies that the continuation task should be executed synchronously. With this option
    /// specified, the continuation will be run on the same thread that causes the antecedent task to
    /// transition into its final state. If the antecedent is already complete when the continuation is
    /// created, the continuation will run on the thread creating the continuation.  Only very
    /// short-running continuations should be executed synchronously.
    /// </summary>
    ExecuteSynchronously = 0x80000,
}
package(mscorlib) class StackGuard : __DotNet__Object
{
    private int m_inliningDepth/*todo: implement initializer*/ = int();
    private enum int MAX_UNCHECKED_INLINING_DEPTH/*todo: implement initializer*/ = int();
    //TODO: generate method TryBeginInliningScope
    //TODO: generate method EndInliningScope
    //TODO: generate method CheckForSufficientStack
}
package(mscorlib) struct VoidTaskResult
{
}
package(mscorlib) interface ITaskCompletionAction
{
    //TODO: generate method Invoke
    //TODO: generate property 'InvokeMayRunArbitraryCode'
}
package(mscorlib) final class UnwrapPromise1(TResult) : Task1!(TResult), ITaskCompletionAction
{
    private enum ubyte STATE_WAITING_ON_OUTER_TASK/*todo: implement initializer*/ = ubyte();
    private enum ubyte STATE_WAITING_ON_INNER_TASK/*todo: implement initializer*/ = ubyte();
    private enum ubyte STATE_DONE/*todo: implement initializer*/ = ubyte();
    private ubyte _state;
    private immutable bool _lookForOce;
    //TODO: generate constructor
    //TODO: generate method Invoke
    //TODO: generate method InvokeCore
    //TODO: generate method InvokeCoreAsync
    //TODO: generate method ProcessCompletedOuterTask
    //TODO: generate method TrySetFromTask
    //TODO: generate method ProcessInnerTask
    //TODO: generate property 'InvokeMayRunArbitraryCode'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\TaskCanceledException.cs'
//
/// <summary>
/// Represents an exception used to communicate task cancellation.
/// </summary>
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class TaskCanceledException : OperationCanceledException
{
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private Task m_canceledTask;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Task'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\TaskCompletionSource.cs'
//
/// <summary>
/// Represents the producer side of a <see cref="T:System.Threading.Tasks.Task{TResult}"/> unbound to a
/// delegate, providing access to the consumer side through the <see cref="Task"/> property.
/// </summary>
/// <remarks>
/// <para>
/// It is often the case that a <see cref="T:System.Threading.Tasks.Task{TResult}"/> is desired to
/// represent another asynchronous operation.
/// <see cref="TaskCompletionSource{TResult}">TaskCompletionSource</see> is provided for this purpose. It enables
/// the creation of a task that can be handed out to consumers, and those consumers can use the members
/// of the task as they would any other. However, unlike most tasks, the state of a task created by a
/// TaskCompletionSource is controlled explicitly by the methods on TaskCompletionSource. This enables the
/// completion of the external asynchronous operation to be propagated to the underlying Task. The
/// separation also ensures that consumers are not able to transition the state without access to the
/// corresponding TaskCompletionSource.
/// </para>
/// <para>
/// All members of <see cref="TaskCompletionSource{TResult}"/> are thread-safe
/// and may be used from multiple threads concurrently.
/// </para>
/// </remarks>
/// <typeparam name="TResult">The type of the result value assocatied with this <see
/// cref="TaskCompletionSource{TResult}"/>.</typeparam>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
public class TaskCompletionSource1(TResult) : __DotNet__Object
{
    private immutable Task1!(TResult) m_task;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Task'
    //TODO: generate method SpinUntilCompleted
    //TODO: generate method TrySetException
    //TODO: generate method TrySetException
    //TODO: generate method TrySetException
    //TODO: generate method SetException
    //TODO: generate method SetException
    //TODO: generate method TrySetResult
    //TODO: generate method SetResult
    //TODO: generate method TrySetCanceled
    //TODO: generate method TrySetCanceled
    //TODO: generate method SetCanceled
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\TaskContinuation.cs'
//
package(mscorlib) final class ContinuationTaskFromTask : Task
{
    private Task m_antecedent;
    //TODO: generate constructor
    //TODO: generate method InnerInvoke
}
package(mscorlib) final class ContinuationResultTaskFromTask1(TResult) : Task1!(TResult)
{
    private Task m_antecedent;
    //TODO: generate constructor
    //TODO: generate method InnerInvoke
}
package(mscorlib) final class ContinuationTaskFromResultTask1(TAntecedentResult) : Task
{
    private Task1!(TAntecedentResult) m_antecedent;
    //TODO: generate constructor
    //TODO: generate method InnerInvoke
}
package(mscorlib) final class ContinuationResultTaskFromResultTask2(TAntecedentResult,TResult) : Task1!(TResult)
{
    private Task1!(TAntecedentResult) m_antecedent;
    //TODO: generate constructor
    //TODO: generate method InnerInvoke
}
package(mscorlib) abstract class TaskContinuation : __DotNet__Object
{
    //TODO: generate method Run
    //TODO: generate method InlineIfPossibleOrElseQueue
    //TODO: generate method GetDelegateContinuationsForDebugger
}
package(mscorlib) class StandardTaskContinuation : TaskContinuation
{
    package(mscorlib) immutable Task m_task;
    package(mscorlib) immutable TaskContinuationOptions m_options;
    private immutable TaskScheduler m_taskScheduler;
    //TODO: generate constructor
    //TODO: generate method Run
    //TODO: generate method GetDelegateContinuationsForDebugger
}
package(mscorlib) final class SynchronizationContextAwaitTaskContinuation : AwaitTaskContinuation
{
    private static immutable SendOrPostCallback s_postCallback/*todo: implement initializer*/ = null;
    /// <summary>Cached delegate for PostAction</summary>
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private static ContextCallback s_postActionCallback;
    private immutable SynchronizationContext m_syncContext;
    //TODO: generate constructor
    //TODO: generate method Run
    //TODO: generate method PostAction
    //TODO: generate method GetActionLogDelegate
    //TODO: generate method GetPostActionCallback
}
package(mscorlib) final class TaskSchedulerAwaitTaskContinuation : AwaitTaskContinuation
{
    private immutable TaskScheduler m_scheduler;
    //TODO: generate constructor
    //TODO: generate method Run
}
package(mscorlib) class AwaitTaskContinuation : TaskContinuation, IThreadPoolWorkItem
{
    private immutable ExecutionContext m_capturedContext;
    protected immutable Action m_action;
    protected int m_continuationId;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CreateTask
    //TODO: generate method Run
    //TODO: generate property 'IsValidLocationForInlining'
    //TODO: generate method ExecuteWorkItemHelper
    //TODO: generate method ExecuteWorkItem
    //TODO: generate method MarkAborted
    /// <summary>Cached delegate that invokes an Action passed as an object parameter.</summary>
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private static ContextCallback s_invokeActionCallback;
    //TODO: generate method InvokeAction
    //TODO: generate method GetInvokeActionCallback
    //TODO: generate method RunCallback
    //TODO: generate method RunOrScheduleAction
    //TODO: generate method UnsafeScheduleAction
    //TODO: generate method ThrowAsyncIfNecessary
    //TODO: generate method GetDelegateContinuationsForDebugger
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\TaskExceptionHolder.cs'
//
package(mscorlib) class TaskExceptionHolder : __DotNet__Object
{
    private static immutable bool s_failFastOnUnobservedException/*todo: implement initializer*/ = bool();
    private static /*todo: volatile*/ bool s_domainUnloadStarted;
    private static /*todo: volatile*/ EventHandler s_adUnloadEventHandler;
    private immutable Task m_task;
    private /*todo: volatile*/ List1!(ExceptionDispatchInfo) m_faultExceptions;
    private ExceptionDispatchInfo m_cancellationException;
    private /*todo: volatile*/ bool m_isHandled;
    //TODO: generate constructor
    //TODO: generate method ShouldFailFastOnUnobservedException
    //TODO: generate method EnsureADUnloadCallbackRegistered
    //TODO: generate method AppDomainUnloadCallback
    //TODO: generate destructor
    //TODO: generate property 'ContainsFaultList'
    //TODO: generate method Add
    //TODO: generate method Add
    //TODO: generate method SetCancellationException
    //TODO: generate method AddFaultException
    //TODO: generate method MarkAsUnhandled
    //TODO: generate method MarkAsHandled
    //TODO: generate method CreateExceptionObject
    //TODO: generate method GetExceptionDispatchInfos
    //TODO: generate method GetCancellationExceptionDispatchInfo
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\TaskFactory.cs'
//
/// <summary>
/// Provides support for creating and scheduling
/// <see cref="T:System.Threading.Tasks.Task">Tasks</see>.
/// </summary>
/// <remarks>
/// <para>
/// There are many common patterns for which tasks are relevant. The <see cref="TaskFactory"/>
/// class encodes some of these patterns into methods that pick up default settings, which are
/// configurable through its constructors.
/// </para>
/// <para>
/// A default instance of <see cref="TaskFactory"/> is available through the
/// <see cref="System.Threading.Tasks.Task.Factory">Task.Factory</see> property.
/// </para>
/// </remarks>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
public class TaskFactory : __DotNet__Object
{
    private CancellationToken m_defaultCancellationToken;
    private TaskScheduler m_defaultScheduler;
    private TaskCreationOptions m_defaultCreationOptions;
    private TaskContinuationOptions m_defaultContinuationOptions;
    //TODO: generate property 'DefaultScheduler'
    //TODO: generate method GetDefaultScheduler
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CheckCreationOptions
    //TODO: generate property 'CancellationToken'
    //TODO: generate property 'Scheduler'
    //TODO: generate property 'CreationOptions'
    //TODO: generate property 'ContinuationOptions'
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method StartNew
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method FromAsync
    //TODO: generate method CheckFromAsyncOptions
    private static final class CompleteOnCountdownPromise : Task1!(Task[]), ITaskCompletionAction
    {
        private immutable Task[] _tasks;
        private int _count;
        //TODO: generate constructor
        //TODO: generate method Invoke
        //TODO: generate property 'InvokeMayRunArbitraryCode'
        //TODO: generate property 'ShouldNotifyDebuggerOfWaitCompletion'
    }
    //TODO: generate method CommonCWAllLogic
    private static final class CompleteOnCountdownPromise1(T) : Task1!(Task1!(T)[]), ITaskCompletionAction
    {
        private immutable Task1!(T)[] _tasks;
        private int _count;
        //TODO: generate constructor
        //TODO: generate method Invoke
        //TODO: generate property 'InvokeMayRunArbitraryCode'
        //TODO: generate property 'ShouldNotifyDebuggerOfWaitCompletion'
    }
    //TODO: generate method CommonCWAllLogic
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    //TODO: generate method ContinueWhenAll
    package(mscorlib) static final class CompleteOnInvokePromise : Task1!(Task), ITaskCompletionAction
    {
        private IList1!(Task) _tasks;
        private int m_firstTaskAlreadyCompleted;
        //TODO: generate constructor
        //TODO: generate method Invoke
        //TODO: generate property 'InvokeMayRunArbitraryCode'
    }
    //TODO: generate method CommonCWAnyLogic
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method ContinueWhenAny
    //TODO: generate method CheckMultiContinuationTasksAndCopy
    //TODO: generate method CheckMultiContinuationTasksAndCopy
    //TODO: generate method CheckMultiTaskContinuationOptions
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\TaskScheduler.cs'
//
/// <summary>
/// Represents an abstract scheduler for tasks.
/// </summary>
/// <remarks>
/// <para>
/// <see cref="System.Threading.Tasks.TaskScheduler">TaskScheduler</see> acts as the extension point for all 
/// pluggable scheduling logic.  This includes mechanisms such as how to schedule a task for execution, and
/// how scheduled tasks should be exposed to debuggers.
/// </para>
/// <para>
/// All members of the abstract <see cref="TaskScheduler"/> type are thread-safe
/// and may be used from multiple threads concurrently.
/// </para>
/// </remarks>
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Id={Id}"*/)
@__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(SystemThreadingTasks_TaskSchedulerDebugView)*/)
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
// #pragma warning disable 618
@__DotNet__Attribute!(PermissionSetAttribute.stringof/*, SecurityAction.InheritanceDemand, Unrestricted = true*/)
public abstract class TaskScheduler : __DotNet__Object
{
    //TODO: generate method QueueTask
    //TODO: generate method TryExecuteTaskInline
    //TODO: generate method GetScheduledTasks
    //TODO: generate property 'MaximumConcurrencyLevel'
    //TODO: generate method TryRunInline
    //TODO: generate method TryDequeue
    //TODO: generate method NotifyWorkItemProgress
    //TODO: generate property 'RequiresAtomicStartTransition'
    //TODO: generate method InternalQueueTask
    private static ConditionalWeakTable2!(TaskScheduler,__DotNet__Object) s_activeTaskSchedulers;
    private static immutable TaskScheduler s_defaultTaskScheduler/*todo: implement initializer*/ = null;
    package(mscorlib) static int s_taskSchedulerIdCounter;
    private /*todo: volatile*/ int m_taskSchedulerId;
    //TODO: generate constructor
    //TODO: generate method AddToActiveTaskSchedulers
    //TODO: generate property 'Default'
    //TODO: generate property 'Current'
    //TODO: generate property 'InternalCurrent'
    //TODO: generate method FromCurrentSynchronizationContext
    //TODO: generate property 'Id'
    //TODO: generate method TryExecuteTask
    private static EventHandler1!(UnobservedTaskExceptionEventArgs) _unobservedTaskException;
    private static immutable __DotNet__Object _unobservedTaskExceptionLockObject/*todo: implement initializer*/ = null;
    //TODO: generate event 'UnobservedTaskException'
    //TODO: generate method PublishUnobservedTaskException
    //TODO: generate method GetScheduledTasksForDebugger
    //TODO: generate method GetTaskSchedulersForDebugger
    package(mscorlib) static final class SystemThreadingTasks_TaskSchedulerDebugView : __DotNet__Object
    {
        private immutable TaskScheduler m_taskScheduler;
        //TODO: generate constructor
        //TODO: generate property 'Id'
        //TODO: generate property 'ScheduledTasks'
    }
}
package(mscorlib) final class SynchronizationContextTaskScheduler : TaskScheduler
{
    private SynchronizationContext m_synchronizationContext;
    //TODO: generate constructor
    //TODO: generate method QueueTask
    //TODO: generate method TryExecuteTaskInline
    //TODO: generate method GetScheduledTasks
    //TODO: generate property 'MaximumConcurrencyLevel'
    private static SendOrPostCallback s_postCallback/*todo: implement initializer*/ = null;
    //TODO: generate method PostCallback
}
public class UnobservedTaskExceptionEventArgs : EventArgs
{
    private AggregateException m_exception;
    package(mscorlib) bool m_observed/*todo: implement initializer*/ = bool();
    //TODO: generate constructor
    //TODO: generate method SetObserved
    //TODO: generate property 'Observed'
    //TODO: generate property 'Exception'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\TaskSchedulerException.cs'
//
/// <summary>
/// Represents an exception used to communicate an invalid operation by a
/// <see cref="T:System.Threading.Tasks.TaskScheduler"/>.
/// </summary>
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class TaskSchedulerException : __DotNet__Exception
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\TaskToApm.cs'
//
package(mscorlib) class TaskToApm : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method Begin
    //TODO: generate method End
    //TODO: generate method End
    //TODO: generate method InvokeCallbackWhenTaskCompletes
    private static final class TaskWrapperAsyncResult : __DotNet__Object, IAsyncResult
    {
        package(mscorlib) immutable Task Task_;
        private immutable __DotNet__Object m_state;
        private immutable bool m_completedSynchronously;
        //TODO: generate constructor
        //TODO: generate property 'AsyncState'
        //TODO: generate property 'CompletedSynchronously'
        //TODO: generate property 'IsCompleted'
        //TODO: generate property 'AsyncWaitHandle'
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\ThreadPoolTaskScheduler.cs'
//
package(mscorlib) final class ThreadPoolTaskScheduler : TaskScheduler
{
    //TODO: generate constructor
    private static immutable ParameterizedThreadStart s_longRunningThreadWork/*todo: implement initializer*/ = null;
    //TODO: generate method LongRunningThreadWork
    //TODO: generate method QueueTask
    //TODO: generate method TryExecuteTaskInline
    //TODO: generate method TryDequeue
    //TODO: generate method GetScheduledTasks
    //TODO: generate method FilterTasksFromWorkItems
    //TODO: generate method NotifyWorkItemProgress
    //TODO: generate property 'RequiresAtomicStartTransition'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\TPLETWProvider.cs'
//
/// <summary>Provides an event source for tracing TPL information.</summary>
@__DotNet__Attribute!(EventSourceAttribute.stringof/*, Name = "System.Threading.Tasks.TplEventSource", Guid = "2e5dba47-a3d2-4d16-8ee0-6671ffdcd7b5", LocalizationResources = System.CoreLib.Name*/)
package(mscorlib) final class TplEtwProvider : EventSource
{
    package(mscorlib) bool TasksSetActivityIds;
    package(mscorlib) bool Debug;
    private bool DebugActivityId;
    //TODO: generate method OnEventCommand
    public static TplEtwProvider Log/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    public enum ForkJoinOperationType
    {
        /// <summary>Parallel.Invoke.</summary>
        ParallelInvoke = 1,
        /// <summary>Parallel.For.</summary>
        ParallelFor = 2,
        /// <summary>Parallel.ForEach.</summary>
        ParallelForEach = 3,
    }
    public enum TaskWaitBehavior : int
    {
        /// <summary>A synchronous wait.</summary>
        Synchronous = 1,
        /// <summary>An asynchronous await.</summary>
        Asynchronous = 2,
    }
    public static class Tasks : __DotNet__Object
    {
        public enum EventTask Loop/*todo: implement initializer*/ = (cast(EventTask)0);
        public enum EventTask Invoke/*todo: implement initializer*/ = (cast(EventTask)0);
        public enum EventTask TaskExecute/*todo: implement initializer*/ = (cast(EventTask)0);
        public enum EventTask TaskWait/*todo: implement initializer*/ = (cast(EventTask)0);
        public enum EventTask ForkJoin/*todo: implement initializer*/ = (cast(EventTask)0);
        public enum EventTask TaskScheduled/*todo: implement initializer*/ = (cast(EventTask)0);
        public enum EventTask AwaitTaskContinuationScheduled/*todo: implement initializer*/ = (cast(EventTask)0);
        public enum EventTask TraceOperation/*todo: implement initializer*/ = (cast(EventTask)0);
        public enum EventTask TraceSynchronousWork/*todo: implement initializer*/ = (cast(EventTask)0);
    }
    public static class Keywords : __DotNet__Object
    {
        public enum EventKeywords TaskTransfer/*todo: implement initializer*/ = (cast(EventKeywords)0);
        public enum EventKeywords Tasks/*todo: implement initializer*/ = (cast(EventKeywords)0);
        public enum EventKeywords Parallel/*todo: implement initializer*/ = (cast(EventKeywords)0);
        public enum EventKeywords AsyncCausalityOperation/*todo: implement initializer*/ = (cast(EventKeywords)0);
        public enum EventKeywords AsyncCausalityRelation/*todo: implement initializer*/ = (cast(EventKeywords)0);
        public enum EventKeywords AsyncCausalitySynchronousWork/*todo: implement initializer*/ = (cast(EventKeywords)0);
        public enum EventKeywords TaskStops/*todo: implement initializer*/ = (cast(EventKeywords)0);
        public enum EventKeywords TasksFlowActivityIds/*todo: implement initializer*/ = (cast(EventKeywords)0);
        public enum EventKeywords TasksSetActivityIds/*todo: implement initializer*/ = (cast(EventKeywords)0);
        public enum EventKeywords Debug/*todo: implement initializer*/ = (cast(EventKeywords)0);
        public enum EventKeywords DebugActivityId/*todo: implement initializer*/ = (cast(EventKeywords)0);
    }
    private enum EventKeywords ALL_KEYWORDS/*todo: implement initializer*/ = (cast(EventKeywords)0);
    private enum int PARALLELLOOPBEGIN_ID/*todo: implement initializer*/ = int();
    private enum int PARALLELLOOPEND_ID/*todo: implement initializer*/ = int();
    private enum int PARALLELINVOKEBEGIN_ID/*todo: implement initializer*/ = int();
    private enum int PARALLELINVOKEEND_ID/*todo: implement initializer*/ = int();
    private enum int PARALLELFORK_ID/*todo: implement initializer*/ = int();
    private enum int PARALLELJOIN_ID/*todo: implement initializer*/ = int();
    private enum int TASKSCHEDULED_ID/*todo: implement initializer*/ = int();
    private enum int TASKSTARTED_ID/*todo: implement initializer*/ = int();
    private enum int TASKCOMPLETED_ID/*todo: implement initializer*/ = int();
    private enum int TASKWAITBEGIN_ID/*todo: implement initializer*/ = int();
    private enum int TASKWAITEND_ID/*todo: implement initializer*/ = int();
    private enum int AWAITTASKCONTINUATIONSCHEDULED_ID/*todo: implement initializer*/ = int();
    private enum int TASKWAITCONTINUATIONCOMPLETE_ID/*todo: implement initializer*/ = int();
    private enum int TASKWAITCONTINUATIONSTARTED_ID/*todo: implement initializer*/ = int();
    private enum int TRACEOPERATIONSTART_ID/*todo: implement initializer*/ = int();
    private enum int TRACEOPERATIONSTOP_ID/*todo: implement initializer*/ = int();
    private enum int TRACEOPERATIONRELATION_ID/*todo: implement initializer*/ = int();
    private enum int TRACESYNCHRONOUSWORKSTART_ID/*todo: implement initializer*/ = int();
    private enum int TRACESYNCHRONOUSWORKSTOP_ID/*todo: implement initializer*/ = int();
    //TODO: generate method ParallelLoopBegin
    //TODO: generate method ParallelLoopEnd
    //TODO: generate method ParallelInvokeBegin
    //TODO: generate method ParallelInvokeEnd
    //TODO: generate method ParallelFork
    //TODO: generate method ParallelJoin
    //TODO: generate method TaskScheduled
    //TODO: generate method TaskStarted
    //TODO: generate method TaskCompleted
    //TODO: generate method TaskWaitBegin
    //TODO: generate method TaskWaitEnd
    //TODO: generate method TaskWaitContinuationComplete
    //TODO: generate method TaskWaitContinuationStarted
    //TODO: generate method AwaitTaskContinuationScheduled
    //TODO: generate method TraceOperationBegin
    //TODO: generate method TraceOperationRelation
    //TODO: generate method TraceOperationEnd
    //TODO: generate method TraceSynchronousWorkBegin
    //TODO: generate method TraceSynchronousWorkEnd
    //TODO: generate method RunningContinuation
    //TODO: generate method RunningContinuation
    //TODO: generate method RunningContinuationList
    //TODO: generate method RunningContinuationList
    //TODO: generate method DebugMessage
    //TODO: generate method DebugFacilityMessage
    //TODO: generate method DebugFacilityMessage1
    //TODO: generate method SetActivityId
    //TODO: generate method NewID
    //TODO: generate method CreateGuidForTaskID
}
