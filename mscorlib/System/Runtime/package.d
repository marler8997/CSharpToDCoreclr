module mscorlib.System.Runtime;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    SerializableAttribute,
    __DotNet__Object,
    IDisposable,
    String;
import mscorlib.System.Runtime.ConstrainedExecution :
    CriticalFinalizerObject;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\GcSettings.cs'
//
// These settings are the same format as in clr\src\vm\gcpriv.h
// make sure you change that file if you change this file!
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum GCLargeObjectHeapCompactionMode
{
    Default = 1,
    CompactOnce = 2,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum GCLatencyMode
{
    Batch = 0,
    Interactive = 1,
    LowLatency = 2,
    SustainedLowLatency = 3,
    NoGCRegion = 4,
}
public class GCSettings : __DotNet__Object
{
    private this() {} // prevent instantiation
    private enum SetLatencyModeStatus
    {
        Succeeded = 0,
        NoGCInProgress = 1,
    }
    //TODO: generate property 'LatencyMode'
    //TODO: generate property 'LargeObjectHeapCompactionMode'
    //TODO: generate property 'IsServerGC'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\MemoryFailPoint.cs'
//
public final class MemoryFailPoint : CriticalFinalizerObject, IDisposable
{
    private static immutable ulong TopOfMemory;
    private static long hiddenLastKnownFreeAddressSpace/*todo: implement initializer*/ = long();
    private static long hiddenLastTimeCheckingAddressSpace/*todo: implement initializer*/ = long();
    private enum int CheckThreshold/*todo: implement initializer*/ = int();
    //TODO: generate property 'LastKnownFreeAddressSpace'
    //TODO: generate method AddToLastKnownFreeAddressSpace
    //TODO: generate property 'LastTimeCheckingAddressSpace'
    private enum int LowMemoryFudgeFactor/*todo: implement initializer*/ = int();
    private enum int MemoryCheckGranularity/*todo: implement initializer*/ = int();
    private static immutable ulong GCSegmentSize;
    private ulong _reservedMemory;
    private bool _mustSubtractReservation;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CheckForAvailableMemory
    //TODO: generate method CheckForFreeAddressSpace
    //TODO: generate method MemFreeAfterAddress
    //TODO: generate method GetMemorySettings
    //TODO: generate destructor
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    // #if _DEBUG
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    package(mscorlib) static final class MemoryFailPointState : __DotNet__Object
    {
        private ulong _segmentSize;
        private int _allocationSizeInMB;
        private bool _needPageFile;
        private bool _needAddressSpace;
        private bool _needContiguousVASpace;
        private ulong _availPageFile;
        private ulong _totalFreeAddressSpace;
        private long _lastKnownFreeAddressSpace;
        private ulong _reservedMem;
        private String _stackTrace;
        //TODO: generate constructor
        //TODO: generate method ToString
        //TODO: generate property 'StackTrace'
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\ProfileOptimization.cs'
//
public class ProfileOptimization : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method InternalSetProfileRoot
    //TODO: generate method InternalStartProfile
    //TODO: generate method SetProfileRoot
    //TODO: generate method StartProfile
}
