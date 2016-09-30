module mscorlib.Windows.Foundation.Diagnostics;

import mscorlib.System :
    DotNetObject;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\IAsyncCausalityTracerStatics.cs'
//
//[ComImport]
//[Guid("50850B26-267E-451B-A890-AB6A370245EE")]
//[WindowsRuntimeImport]
public interface IAsyncCausalityTracerStatics
{
    //TODO: generate method TraceOperationCreation
    //TODO: generate method TraceOperationCompletion
    //TODO: generate method TraceOperationRelation
    //TODO: generate method TraceSynchronousWorkStart
    //TODO: generate method TraceSynchronousWorkCompletion
    //TODO: generate method add_TracingStatusChanged
    //TODO: generate method remove_TracingStatusChanged
}
//[ComImport]
//[Guid("410B7711-FF3B-477F-9C9A-D2EFDA302DC3")]
//[WindowsRuntimeImport]
public interface ITracingStatusChangedEventArgs
{
    //TODO: generate property 'Enabled'
    //TODO: generate property 'TraceLevel'
}
//// We need this dummy class to satisfy a QI when the TracingStatusChangedHandler
//    // after being stored in a GIT cookie and then called by the WinRT API. This usually
//    // happens when calling a MAnaged WinMD which access this feature.
//    [ComImport]
//[Guid("410B7711-FF3B-477F-9C9A-D2EFDA302DC3")]
//[WindowsRuntimeImport]
public final class TracingStatusChangedEventArgs : DotNetObject, ITracingStatusChangedEventArgs
{
    //TODO: generate property 'Enabled'
    //TODO: generate property 'TraceLevel'
}
public enum CausalityRelation
{
    AssignDelegate,
    Join,
    Choice,
    Cancel,
    Error,
}
public enum CausalitySource
{
    Application,
    Library,
    System,
}
public enum CausalitySynchronousWork
{
    CompletionNotification,
    ProgressNotification,
    Execution,
}
public enum CausalityTraceLevel
{
    Required,
    Important,
    Verbose,
}
public enum AsyncCausalityStatus
{
    Canceled = 2,
    Completed = 1,
    Error = 3,
    Started = 0,
}
