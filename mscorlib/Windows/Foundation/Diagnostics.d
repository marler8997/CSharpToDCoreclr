module mscorlib.Windows.Foundation.Diagnostics;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    __DotNet__Object;
import mscorlib.System.Runtime.InteropServices :
    ComImportAttribute,
    GuidAttribute;
import mscorlib.System.Runtime.InteropServices.WindowsRuntime :
    WindowsRuntimeImportAttribute;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Tasks\IAsyncCausalityTracerStatics.cs'
//
@__DotNet__Attribute!(ComImportAttribute.stringof)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "50850B26-267E-451B-A890-AB6A370245EE"*/)
@__DotNet__Attribute!(WindowsRuntimeImportAttribute.stringof)
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
@__DotNet__Attribute!(ComImportAttribute.stringof)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "410B7711-FF3B-477F-9C9A-D2EFDA302DC3"*/)
@__DotNet__Attribute!(WindowsRuntimeImportAttribute.stringof)
public interface ITracingStatusChangedEventArgs
{
    //TODO: generate property 'Enabled'
    //TODO: generate property 'TraceLevel'
}
// We need this dummy class to satisfy a QI when the TracingStatusChangedHandler
// after being stored in a GIT cookie and then called by the WinRT API. This usually
// happens when calling a MAnaged WinMD which access this feature.
@__DotNet__Attribute!(ComImportAttribute.stringof)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "410B7711-FF3B-477F-9C9A-D2EFDA302DC3"*/)
@__DotNet__Attribute!(WindowsRuntimeImportAttribute.stringof)
public final class TracingStatusChangedEventArgs : __DotNet__Object, ITracingStatusChangedEventArgs
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
