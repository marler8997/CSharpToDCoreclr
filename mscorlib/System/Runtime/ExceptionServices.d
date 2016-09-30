module mscorlib.System.Runtime.ExceptionServices;

import mscorlib.System :
    Attribute,
    DotNetObject,
    DotNetException,
    String,
    UIntPtr;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\ExceptionServices\CorruptingExceptionCommon.cs'
//
//// This attribute can be applied to methods to indicate that ProcessCorruptedState
//    // Exceptions should be delivered to them.
//    [AttributeUsage(AttributeTargets.Method, AllowMultiple = false, Inherited = false)]
public final class HandleProcessCorruptedStateExceptionsAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\ExceptionServices\ExceptionServicesCommon.cs'
//
public final class ExceptionDispatchInfo : DotNetObject
{
    private DotNetException m_Exception;
    private String m_remoteStackTrace;
    private DotNetObject m_stackTrace;
    private DotNetObject m_dynamicMethods;
    private UIntPtr m_IPForWatsonBuckets;
    private DotNetObject m_WatsonBuckets;
    //TODO: generate constructor
    //TODO: generate property 'IPForWatsonBuckets'
    //TODO: generate property 'WatsonBuckets'
    //TODO: generate property 'BinaryStackTraceArray'
    //TODO: generate property 'DynamicMethodArray'
    //TODO: generate property 'RemoteStackTrace'
    //TODO: generate method Capture
    //TODO: generate property 'SourceException'
    //TODO: generate method Throw
}
