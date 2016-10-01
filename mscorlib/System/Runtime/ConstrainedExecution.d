module mscorlib.System.Runtime.ConstrainedExecution;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    __DotNet__Object,
    AttributeUsageAttribute,
    Attribute,
    SerializableAttribute;
import mscorlib.System.Runtime.InteropServices :
    ComVisibleAttribute;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Reliability\CriticalFinalizerObject.cs'
//
// #if !FEATURE_CORECLR
// [SecurityPermission(SecurityAction.InheritanceDemand, UnmanagedCode=true)]
// #endif
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class CriticalFinalizerObject : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate destructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Reliability\PrePrepareMethodAttribute.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Constructor | AttributeTargets.Method, Inherited = false*/)
public final class PrePrepareMethodAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Reliability\ReliabilityContractAttribute.cs'
//
// **************************************************************************************************************************
//
// Note that if you change either of the enums below or the constructors, fields or properties of the custom attribute itself
// you must also change the logic and definitions in vm\ConstrainedExecutionRegion.cpp to match.
//
// **************************************************************************************************************************
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum Consistency : int
{
    MayCorruptProcess = 0,
    MayCorruptAppDomain = 1,
    MayCorruptInstance = 2,
    WillNotCorruptState = 3,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum Cer : int
{
    None = 0,
    MayFail = 1,
    Success = 2,
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Constructor | AttributeTargets.Method | AttributeTargets.Interface  | AttributeTargets.Delegate, Inherited = false*/)
public final class ReliabilityContractAttribute : Attribute
{
    private Consistency _consistency;
    private Cer _cer;
    //TODO: generate constructor
    //TODO: generate property 'ConsistencyGuarantee'
    //TODO: generate property 'Cer'
}
