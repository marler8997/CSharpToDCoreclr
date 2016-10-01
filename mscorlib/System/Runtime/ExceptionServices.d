module mscorlib.System.Runtime.ExceptionServices;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    AttributeUsageAttribute,
    Attribute,
    __DotNet__Object,
    __DotNet__Exception,
    String,
    UIntPtr;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\ExceptionServices\CorruptingExceptionCommon.cs'
//
// This attribute can be applied to methods to indicate that ProcessCorruptedState
// Exceptions should be delivered to them.
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, AllowMultiple = false, Inherited = false*/)
public final class HandleProcessCorruptedStateExceptionsAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\ExceptionServices\ExceptionServicesCommon.cs'
//
public final class ExceptionDispatchInfo : __DotNet__Object
{
    private __DotNet__Exception m_Exception;
    private String m_remoteStackTrace;
    private __DotNet__Object m_stackTrace;
    private __DotNet__Object m_dynamicMethods;
    private UIntPtr m_IPForWatsonBuckets;
    private __DotNet__Object m_WatsonBuckets;
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
