module mscorlib.System.Runtime.ConstrainedExecution;

import mscorlib.System :
    DotNetObject,
    Attribute;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Reliability\CriticalFinalizerObject.cs'
//
//#if !FEATURE_CORECLR
//    [SecurityPermission(SecurityAction.InheritanceDemand, UnmanagedCode=true)]
//#endif
//    [System.Runtime.InteropServices.ComVisible(true)]
public abstract class CriticalFinalizerObject : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate destructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Reliability\PrePrepareMethodAttribute.cs'
//
//[AttributeUsage(AttributeTargets.Constructor | AttributeTargets.Method, Inherited = false)]
public final class PrePrepareMethodAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Reliability\ReliabilityContractAttribute.cs'
//
// Ignored: // **************************************************************************************************************************
// Ignored: //
// Ignored: // Note that if you change either of the enums below or the constructors, fields or properties of the custom attribute itself
// Ignored: // you must also change the logic and definitions in vm\ConstrainedExecutionRegion.cpp to match.
// Ignored: //
// Ignored: // **************************************************************************************************************************
// Ignored: [Serializable]
public enum Consistency : int
{
    MayCorruptProcess = 0,
    MayCorruptAppDomain = 1,
    MayCorruptInstance = 2,
    WillNotCorruptState = 3,
}
// Ignored: [Serializable]
public enum Cer : int
{
    None = 0,
    MayFail = 1,
    Success = 2,
}
//[AttributeUsage(AttributeTargets.Assembly | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Constructor | AttributeTargets.Method | AttributeTargets.Interface /* | AttributeTargets.Delegate*/, Inherited = false)]
public final class ReliabilityContractAttribute : Attribute
{
    private Consistency _consistency;
    private Cer _cer;
    //TODO: generate constructor
    //TODO: generate property 'ConsistencyGuarantee'
    //TODO: generate property 'Cer'
}
