module mscorlib.System.Runtime.CompilerServices;

import mscorlib.System :
    DotNetObject,
    EventHandler1,
    Attribute,
    String,
    Action,
    IntPtr,
    DateTime,
    Decimal,
    Type,
    FormattableString,
    Void,
    DotNetException;
import mscorlib.System.Diagnostics.Contracts :
    ContractFailedEventArgs;
import mscorlib.System.Threading :
    SynchronizationContext,
    ExecutionContext,
    ContextCallback,
    WaitCallback,
    SendOrPostCallback;
import mscorlib.System.Threading.Tasks :
    Task,
    Task1,
    VoidTaskResult;
import mscorlib.System.Reflection :
    MethodImplAttributes;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Contracts\Contracts.cs'
//
public class ContractHelper : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method RaiseContractFailedEvent
    //TODO: generate method TriggerFailure
    //TODO: generate method RaiseContractFailedEventImplementation
    //TODO: generate method TriggerFailureImplementation
    private static /*todo: volatile*/EventHandler1!(ContractFailedEventArgs) contractFailedEvent;
    private static immutable DotNetObject lockObject/*todo: implement initializer*/ = null;
    public enum int COR_E_CODECONTRACTFAILED/*todo: implement initializer*/ = int();
    //TODO: generate event 'InternalContractFailed'
    //TODO: generate method RaiseContractFailedEventImplementation
    //TODO: generate method TriggerFailureImplementation
    //TODO: generate method GetResourceNameForFailure
    //TODO: generate method GetDisplayMessage
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Contracts\ContractsBCL.cs'
//

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\AccessedThroughPropertyAttribute.cs'
//
//[AttributeUsage(AttributeTargets.Field)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AccessedThroughPropertyAttribute : Attribute
{
    private immutable String propertyName;
    //TODO: generate constructor
    //TODO: generate property 'PropertyName'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\AssemblyAttributesGoHere.cs'
//
//// NOTE TO DEVELOPERS:  These classes are used by ALink (the assembly linker).
//    // They're used for metadata tokens for making multi-module assemblies.
//    // Do not randomly touch these classes.
//    [System.Runtime.CompilerServices.FriendAccessAllowed]
public final class AssemblyAttributesGoHere : DotNetObject
{
    //TODO: generate constructor
}
//[System.Runtime.CompilerServices.FriendAccessAllowed]
public final class AssemblyAttributesGoHereS : DotNetObject
{
    //TODO: generate constructor
}
//[System.Runtime.CompilerServices.FriendAccessAllowed]
public final class AssemblyAttributesGoHereM : DotNetObject
{
    //TODO: generate constructor
}
//[System.Runtime.CompilerServices.FriendAccessAllowed]
public final class AssemblyAttributesGoHereSM : DotNetObject
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\AssemblySettingAttributes.cs'
//
// Ignored: /*
// Ignored: NGenHint is not supported in Whidbey
// Ignored: [Serializable]
// Ignored: public enum NGenHint
// Ignored: {
// Ignored: Default             = 0x0000, // No preference specified
// Ignored: Eager               = 0x0001, // NGen at install time
// Ignored: Lazy                = 0x0002, // NGen after install time
// Ignored: Never               = 0x0003, // Assembly should not be ngened
// Ignored: }
// Ignored: */
// Ignored: [Serializable]
public enum LoadHint
{
    Default = 0x0000,
    Always = 0x0001,
    Sometimes = 0x0002,
}
//[Serializable]
//[AttributeUsage(AttributeTargets.Assembly)]
public final class DefaultDependencyAttribute : Attribute
{
    private LoadHint loadHint;
    //TODO: generate constructor
    //TODO: generate property 'LoadHint'
}
//[Serializable]
//[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = true)]
public final class DependencyAttribute : Attribute
{
    private String dependentAssembly;
    private LoadHint loadHint;
    //TODO: generate constructor
    //TODO: generate property 'DependentAssembly'
    //TODO: generate property 'LoadHint'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\AsyncMethodBuilder.cs'
//
///// <summary>
//    /// Provides a builder for asynchronous methods that return void.
//    /// This type is intended for compiler use only.
//    /// </summary>
//    [HostProtection(Synchronization = true, ExternalThreading = true)]
public struct AsyncVoidMethodBuilder
{
    private SynchronizationContext m_synchronizationContext;
    private AsyncMethodBuilderCore m_coreState;
    private Task m_task;
    //TODO: generate method Create
    //TODO: generate method Start
    //TODO: generate method SetStateMachine
    //TODO: generate method AwaitOnCompleted
    //TODO: generate method AwaitUnsafeOnCompleted
    //TODO: generate method SetResult
    //TODO: generate method SetException
    //TODO: generate method NotifySynchronizationContextOfCompletion
    //TODO: generate property 'Task'
    //TODO: generate property 'ObjectIdForDebugger'
}
///// <summary>
//    /// Provides a builder for asynchronous methods that return <see cref="System.Threading.Tasks.Task"/>.
//    /// This type is intended for compiler use only.
//    /// </summary>
//    /// <remarks>
//    /// AsyncTaskMethodBuilder is a value type, and thus it is copied by value.
//    /// Prior to being copied, one of its Task, SetResult, or SetException members must be accessed,
//    /// or else the copies may end up building distinct Task instances.
//    /// </remarks>
//    [HostProtection(Synchronization = true, ExternalThreading = true)]
public struct AsyncTaskMethodBuilder
{
    private static immutable Task1!(VoidTaskResult) s_cachedCompleted/*todo: implement initializer*/ = null;
    private AsyncTaskMethodBuilder1!(VoidTaskResult) m_builder;
    //TODO: generate method Create
    //TODO: generate method Start
    //TODO: generate method SetStateMachine
    //TODO: generate method AwaitOnCompleted
    //TODO: generate method AwaitUnsafeOnCompleted
    //TODO: generate property 'Task'
    //TODO: generate method SetResult
    //TODO: generate method SetException
    //TODO: generate method SetNotificationForWaitCompletion
    //TODO: generate property 'ObjectIdForDebugger'
}
///// <summary>
//    /// Provides a builder for asynchronous methods that return <see cref="System.Threading.Tasks.Task{TResult}"/>.
//    /// This type is intended for compiler use only.
//    /// </summary>
//    /// <remarks>
//    /// AsyncTaskMethodBuilder{TResult} is a value type, and thus it is copied by value.
//    /// Prior to being copied, one of its Task, SetResult, or SetException members must be accessed,
//    /// or else the copies may end up building distinct Task instances.
//    /// </remarks>
//    [HostProtection(Synchronization = true, ExternalThreading = true)]
public struct AsyncTaskMethodBuilder1(TResult)
{
    public static immutable Task1!(TResult) s_defaultResultTask/*todo: implement initializer*/ = null;
    private AsyncMethodBuilderCore m_coreState;
    private Task1!(TResult) m_task;
    //TODO: generate method Create
    //TODO: generate method Start
    //TODO: generate method SetStateMachine
    //TODO: generate method AwaitOnCompleted
    //TODO: generate method AwaitUnsafeOnCompleted
    //TODO: generate property 'Task'
    //TODO: generate method SetResult
    //TODO: generate method SetResult
    //TODO: generate method SetException
    //TODO: generate method SetNotificationForWaitCompletion
    //TODO: generate property 'ObjectIdForDebugger'
    //TODO: generate method GetTaskForResult
}
public class AsyncTaskCache : DotNetObject
{
    private this() {} // prevent instantiation
    public static immutable Task1!(bool) TrueTask/*todo: implement initializer*/ = null;
    public static immutable Task1!(bool) FalseTask/*todo: implement initializer*/ = null;
    public static immutable Task1!(int)[] Int32Tasks/*todo: implement initializer*/ = null;
    public enum int INCLUSIVE_INT32_MIN/*todo: implement initializer*/ = int();
    public enum int EXCLUSIVE_INT32_MAX/*todo: implement initializer*/ = int();
    //TODO: generate method CreateInt32Tasks
    //TODO: generate method CreateCacheableTask
}
public struct AsyncMethodBuilderCore
{
    public IAsyncStateMachine m_stateMachine;
    public Action m_defaultContextAction;
    //TODO: generate method SetStateMachine
    //TODO: generate method GetCompletionAction
    //TODO: generate method OutputAsyncCausalityEvents
    //TODO: generate method PostBoxInitialization
    //TODO: generate method ThrowAsync
    public static final class MoveNextRunnerWithContext : MoveNextRunner
    {
        private immutable ExecutionContext m_context;
        //TODO: generate constructor
        //TODO: generate method RunWithCapturedContext
    }
    public static class MoveNextRunner : DotNetObject
    {
        public IAsyncStateMachine m_stateMachine;
        //TODO: generate constructor
        //TODO: generate method RunWithDefaultContext
        //TODO: generate property 'InvokeMoveNextCallback'
        // Ignored: /// <summary>Cached delegate used with ExecutionContext.Run.</summary>
        // Ignored: [SecurityCritical]
        private static ContextCallback s_invokeMoveNext;
        //TODO: generate method InvokeMoveNext
    }
    private static class ContinuationWrapper : DotNetObject
    {
        public immutable Action m_continuation;
        private immutable Action m_invokeAction;
        public immutable Task m_innerTask;
        //TODO: generate constructor
        //TODO: generate method Invoke
    }
    //TODO: generate method CreateContinuationWrapper
    //TODO: generate method TryGetStateMachineForDebugger
    //TODO: generate method TryGetContinuationTask
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\AsyncStateMachineAttribute.cs'
//
//[Serializable, AttributeUsage(AttributeTargets.Method, Inherited = false, AllowMultiple = false)]
public final class AsyncStateMachineAttribute : StateMachineAttribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\CallerFilePathAttribute.cs'
//
//[AttributeUsage(AttributeTargets.Parameter, Inherited = false)]
public final class CallerFilePathAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\CallerLineNumberAttribute.cs'
//
//[AttributeUsage(AttributeTargets.Parameter, Inherited = false)]
public final class CallerLineNumberAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\CallerMemberNameAttribute.cs'
//
//[AttributeUsage(AttributeTargets.Parameter, Inherited = false)]
public final class CallerMemberNameAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\CompilationRelaxations.cs'
//
// Ignored: /// IMPORTANT: Keep this in sync with corhdr.h
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum CompilationRelaxations : int
{
    NoStringInterning = 0x0008,
}
//[Serializable]
//[AttributeUsage(AttributeTargets.Assembly | AttributeTargets.Module | AttributeTargets.Class | AttributeTargets.Method)]
//[System.Runtime.InteropServices.ComVisible(true)]
public class CompilationRelaxationsAttribute : Attribute
{
    private int m_relaxations;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'CompilationRelaxations'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\CompilerGeneratedAttribute.cs'
//
//[Serializable]
//[AttributeUsage(AttributeTargets.All, Inherited = true)]
public final class CompilerGeneratedAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\CompilerGlobalScopeAttribute.cs'
//
//[Serializable]
//[AttributeUsage(AttributeTargets.Class)]
//[System.Runtime.InteropServices.ComVisible(true)]
public class CompilerGlobalScopeAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\CompilerMarshalOverride.cs'
//
public class CompilerMarshalOverride : DotNetObject
{
    private this() {} // prevent instantiation
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\ConditionalWeakTable.cs'
//
//#region ConditionalWeakTable
//    [System.Runtime.InteropServices.ComVisible(false)]
public final class ConditionalWeakTable2(TKey,TValue) : DotNetObject/*where TKey : class*//*where TValue : class*/
{
    //TODO: generate constructor
    //TODO: generate method TryGetValue
    //TODO: generate method Add
    //TODO: generate method Remove
    //TODO: generate method GetValue
    //TODO: generate method GetOrCreateValue
    public alias CreateValueCallback = TValue delegate(TKey key);
    //TODO: generate method FindEquivalentKeyUnsafe
    //TODO: generate property 'Keys'
    //TODO: generate property 'Values'
    //TODO: generate method Clear
    //TODO: generate method TryGetValueWorker
    //TODO: generate method CreateEntry
    //TODO: generate method Resize
    //TODO: generate method FindEntry
    //TODO: generate method VerifyIntegrity
    //TODO: generate destructor
    private static struct Entry
    {
        public DependentHandle depHnd;
        public int hashCode;
        public int next;
    }
    private int[] _buckets;
    private Entry[] _entries;
    private int _freeList;
    private enum int _initialCapacity/*todo: implement initializer*/ = int();
    private immutable DotNetObject _lock;
    private bool _invalid;
}
//#endregion
//
//
//
//
//    #region DependentHandle
//    //=========================================================================================
//    // This struct collects all operations on native DependentHandles. The DependentHandle
//    // merely wraps an IntPtr so this struct serves mainly as a "managed typedef."
//    //
//    // DependentHandles exist in one of two states:
//    //
//    //    IsAllocated == false
//    //        No actual handle is allocated underneath. Illegal to call GetPrimary
//    //        or GetPrimaryAndSecondary(). Ok to call Free().
//    //
//    //        Initializing a DependentHandle using the nullary ctor creates a DependentHandle
//    //        that's in the !IsAllocated state.
//    //        (! Right now, we get this guarantee for free because (IntPtr)0 == NULL unmanaged handle.
//    //         ! If that assertion ever becomes false, we'll have to add an _isAllocated field
//    //         ! to compensate.)
//    //        
//    //
//    //    IsAllocated == true
//    //        There's a handle allocated underneath. You must call Free() on this eventually
//    //        or you cause a native handle table leak.
//    //
//    // This struct intentionally does no self-synchronization. It's up to the caller to
//    // to use DependentHandles in a thread-safe way.
//    //=========================================================================================
//    [ComVisible(false)]
private struct DependentHandle
{
    //TODO: generate constructor
    //TODO: generate property 'IsAllocated'
    //TODO: generate method GetPrimary
    //TODO: generate method GetPrimaryAndSecondary
    //TODO: generate method Free
    //TODO: generate method nInitialize
    //TODO: generate method nGetPrimary
    //TODO: generate method nGetPrimaryAndSecondary
    //TODO: generate method nFree
    private IntPtr _handle;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\CustomConstantAttribute.cs'
//
//[Serializable]
//[AttributeUsage(AttributeTargets.Field | AttributeTargets.Parameter, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public abstract class CustomConstantAttribute : Attribute
{
    //TODO: generate property 'Value'
    //TODO: generate method GetRawConstant
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\DateTimeConstantAttribute.cs'
//
//[Serializable]
//[AttributeUsage(AttributeTargets.Field | AttributeTargets.Parameter, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class DateTimeConstantAttribute : CustomConstantAttribute
{
    //TODO: generate constructor
    //TODO: generate property 'Value'
    //TODO: generate method GetRawDateTimeConstant
    private DateTime date;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\DecimalConstantAttribute.cs'
//
//[Serializable]
//[AttributeUsage(AttributeTargets.Field | AttributeTargets.Parameter, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class DecimalConstantAttribute : Attribute
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Value'
    //TODO: generate method GetRawDecimalConstant
    private Decimal dec;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\DecoratedNameAttribute.cs'
//
//[AttributeUsage(AttributeTargets.All),
//     ComVisible(false)]
public final class DecoratedNameAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\DisablePrivateReflectionAttribute.cs'
//
//[AttributeUsage(AttributeTargets.Assembly, AllowMultiple=false, Inherited=false)]
public final class DisablePrivateReflectionAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\DiscardableAttribute.cs'
//
//// Custom attribute to indicating a TypeDef is a discardable attribute
//[System.Runtime.InteropServices.ComVisible(true)]
public class DiscardableAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\ExtensionAttribute.cs'
//
///// <summary>
//    /// Indicates that a method is an extension method, or that a class or assembly contains extension methods.
//    /// </summary>
//    [AttributeUsage(AttributeTargets.Method | AttributeTargets.Class | AttributeTargets.Assembly)]
public final class ExtensionAttribute : Attribute
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\FixedAddressValueTypeAttribute.cs'
//
//[Serializable]
//[AttributeUsage(AttributeTargets.Field)]
public final class FixedAddressValueTypeAttribute : Attribute
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\FixedBufferAttribute.cs'
//
//[AttributeUsage(AttributeTargets.Field, Inherited=false)]
public final class FixedBufferAttribute : Attribute
{
    private Type elementType;
    private int length;
    //TODO: generate constructor
    //TODO: generate property 'ElementType'
    //TODO: generate property 'Length'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\FormattableStringFactory.cs'
//
public class FormattableStringFactory : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method Create
    private static final class ConcreteFormattableString : FormattableString
    {
        private immutable String _format;
        private immutable DotNetObject[] _arguments;
        //TODO: generate constructor
        //TODO: generate property 'Format'
        //TODO: generate method GetArguments
        //TODO: generate property 'ArgumentCount'
        //TODO: generate method GetArgument
        //TODO: generate method ToString
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\IAsyncStateMachine.cs'
//
public interface IAsyncStateMachine
{
    //TODO: generate method MoveNext
    //TODO: generate method SetStateMachine
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\ICastable.cs'
//
public interface ICastable
{
    //TODO: generate method IsInstanceOfInterface
    //TODO: generate method GetImplType
}
private class ICastableHelpers : DotNetObject
{
    //TODO: generate method IsInstanceOfInterface
    //TODO: generate method GetImplType
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\IDispatchConstantAttribute.cs'
//
//[Serializable]
//[AttributeUsage(AttributeTargets.Field | AttributeTargets.Parameter, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class IDispatchConstantAttribute : CustomConstantAttribute
{
    //TODO: generate constructor
    //TODO: generate property 'Value'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\IndexerNameAttribute.cs'
//
//[Serializable]
//[AttributeUsage(AttributeTargets.Property, Inherited = true)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class IndexerNameAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\INotifyCompletion.cs'
//
public interface INotifyCompletion
{
    //TODO: generate method OnCompleted
}
public interface ICriticalNotifyCompletion : INotifyCompletion
{
    //TODO: generate method UnsafeOnCompleted
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\InternalsVisibleToAttribute.cs'
//
//[AttributeUsage(AttributeTargets.Assembly, AllowMultiple=true, Inherited=false)]
public final class InternalsVisibleToAttribute : Attribute
{
    private String _assemblyName;
    private bool _allInternalsVisible/*todo: implement initializer*/ = bool();
    //TODO: generate constructor
    //TODO: generate property 'AssemblyName'
    //TODO: generate property 'AllInternalsVisible'
}
///// <summary>
//    ///     If AllInternalsVisible is not true for a friend assembly, the FriendAccessAllowed attribute
//    ///     indicates which internals are shared with that friend assembly.
//    /// </summary>
//    [AttributeUsage(AttributeTargets.Class |
//                    AttributeTargets.Constructor |
//                    AttributeTargets.Enum |
//                    AttributeTargets.Event |
//                    AttributeTargets.Field |
//                    AttributeTargets.Interface |
//                    AttributeTargets.Method |
//                    AttributeTargets.Property |
//                    AttributeTargets.Struct,
//        AllowMultiple = false,
//        Inherited = false)]
//[FriendAccessAllowed]
public final class FriendAccessAllowedAttribute : Attribute
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\IsVolatile.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public class IsVolatile : DotNetObject
{
    private this() {} // prevent instantiation
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\IteratorStateMachineAttribute.cs'
//
//[Serializable, AttributeUsage(AttributeTargets.Method, Inherited = false, AllowMultiple = false)]
public final class IteratorStateMachineAttribute : StateMachineAttribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\jithelpers.cs'
//
public struct StringHandleOnStack
{
    private IntPtr m_ptr;
    //TODO: generate constructor
}
public struct ObjectHandleOnStack
{
    private IntPtr m_ptr;
    //TODO: generate constructor
}
public struct StackCrawlMarkHandle
{
    private IntPtr m_ptr;
    //TODO: generate constructor
}
public class PinningHelper : DotNetObject
{
    public ubyte m_data;
}
//[FriendAccessAllowed]
public class JitHelpers : DotNetObject
{
    private this() {} // prevent instantiation
    public enum String QCall/*todo: implement initializer*/ = null;
    //TODO: generate method GetStringHandleOnStack
    //TODO: generate method GetObjectHandleOnStack
    //TODO: generate method GetStackCrawlMarkHandle
    //TODO: generate method UnsafeCast
    //TODO: generate method UnsafeCastInternal
    //TODO: generate method UnsafeEnumCast
    //TODO: generate method UnsafeEnumCastInternal
    //TODO: generate method UnsafeEnumCastLong
    //TODO: generate method UnsafeEnumCastLongInternal
    //TODO: generate method UnsafeCastToStackPointer
    //TODO: generate method UnsafeCastToStackPointerInternal
    //TODO: generate method UnsafeSetArrayElement
    //TODO: generate method GetPinningHelper
    //TODO: generate method IsAddressInStack
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\MethodImplAttribute.cs'
//
// Ignored: // This Enum matchs the miImpl flags defined in corhdr.h. It is used to specify
// Ignored: // certain method properties.
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum MethodImplOptions
{
    Unmanaged = /*MemberName:Type*/MethodImplAttributes.Unmanaged,
    ForwardRef = /*MemberName:Type*/MethodImplAttributes.ForwardRef,
    PreserveSig = /*MemberName:Type*/MethodImplAttributes.PreserveSig,
    InternalCall = /*MemberName:Type*/MethodImplAttributes.InternalCall,
    Synchronized = /*MemberName:Type*/MethodImplAttributes.Synchronized,
    NoInlining = /*MemberName:Type*/MethodImplAttributes.NoInlining,
    // Ignored: [System.Runtime.InteropServices.ComVisible(false)]
    AggressiveInlining = /*MemberName:Type*/MethodImplAttributes.AggressiveInlining,
    NoOptimization = /*MemberName:Type*/MethodImplAttributes.NoOptimization,
}
// Ignored: [Serializable]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum MethodCodeType
{
    IL = /*MemberName:Type*/MethodImplAttributes.IL,
    Native = /*MemberName:Type*/MethodImplAttributes.Native,
    OPTIL = /*MemberName:Type*/MethodImplAttributes.OPTIL,
    Runtime = /*MemberName:Type*/MethodImplAttributes.Runtime,
}
//// Custom attribute to specify additional method properties.
//[Serializable]
//[AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor, Inherited = false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class MethodImplAttribute : Attribute
{
    public MethodImplOptions _val;
    public MethodCodeType MethodCodeType_;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Value'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\ReferenceAssemblyAttribute.cs'
//
//[Serializable]
//[AttributeUsage(AttributeTargets.Assembly, AllowMultiple=false)]
public final class ReferenceAssemblyAttribute : Attribute
{
    private String _description;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Description'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\RuntimeCompatibilityAttribute.cs'
//
//[Serializable]
//[AttributeUsage(AttributeTargets.Assembly, Inherited=false, AllowMultiple=false)]
public final class RuntimeCompatibilityAttribute : Attribute
{
    private bool m_wrapNonExceptionThrows;
    //TODO: generate constructor
    //TODO: generate property 'WrapNonExceptionThrows'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\RuntimeHelpers.cs'
//
public class RuntimeHelpers : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method GetUninitializedObject
    //TODO: generate method InitializeArray
    //TODO: generate method GetObjectValue
    //TODO: generate method _RunClassConstructor
    //TODO: generate method RunClassConstructor
    //TODO: generate method _RunModuleConstructor
    //TODO: generate method RunModuleConstructor
    //TODO: generate method _CompileMethod
    //TODO: generate method PrepareMethod
    //TODO: generate method PrepareMethod
    //TODO: generate method PrepareContractedDelegate
    //TODO: generate method PrepareDelegate
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate property 'OffsetToStringData'
    //TODO: generate method EnsureSufficientExecutionStack
    //TODO: generate method TryEnsureSufficientExecutionStack
    //TODO: generate method ProbeForSufficientStack
    //TODO: generate method PrepareConstrainedRegions
    //TODO: generate method PrepareConstrainedRegionsNoOP
    //#if FEATURE_CORECLR
//        [System.Security.SecurityCritical] // auto-generated
    public alias TryCode = void delegate(DotNetObject userData);
    //#if FEATURE_CORECLR
//        [System.Security.SecurityCritical] // auto-generated
    public alias CleanupCode = void delegate(DotNetObject userData, bool exceptionThrown);
    //TODO: generate method ExecuteCodeWithGuaranteedCleanup
    //TODO: generate method ExecuteBackoutCodeHelper
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\RuntimeWrappedException.cs'
//
//[Serializable]
public final class RuntimeWrappedException : DotNetException
{
    //TODO: generate constructor
    //TODO: generate property 'WrappedException'
    private DotNetObject m_wrappedException;
    //TODO: generate method GetObjectData
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\SpecialNameAttribute.cs'
//
//[AttributeUsage(AttributeTargets.Class | 
//                    AttributeTargets.Method |
//                    AttributeTargets.Property |
//                    AttributeTargets.Field |
//                    AttributeTargets.Event |
//                    AttributeTargets.Struct)]
public final class SpecialNameAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\StateMachineAttribute.cs'
//
//[Serializable, AttributeUsage(AttributeTargets.Method, Inherited = false, AllowMultiple = false)]
public class StateMachineAttribute : Attribute
{
    //TODO: generate property 'StateMachineType'
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\SuppressIldasmAttribute.cs'
//
//[AttributeUsage(AttributeTargets.Assembly | AttributeTargets.Module)]
public final class SuppressIldasmAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\SuppressMergeCheckAttribute.cs'
//
//[AttributeUsage(AttributeTargets.Class | 
//                    AttributeTargets.Constructor | 
//                    AttributeTargets.Method |
//                    AttributeTargets.Field |
//                    AttributeTargets.Event |
//                    AttributeTargets.Property)]
public final class SuppressMergeCheckAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\TaskAwaiter.cs'
//
///// <summary>Provides an awaiter for awaiting a <see cref="System.Threading.Tasks.Task"/>.</summary>
//    /// <remarks>This type is intended for compiler use only.</remarks>
//    [HostProtection(Synchronization = true, ExternalThreading = true)]
public struct TaskAwaiter
{
    private immutable Task m_task;
    //TODO: generate constructor
    //TODO: generate property 'IsCompleted'
    //TODO: generate method OnCompleted
    //TODO: generate method UnsafeOnCompleted
    //TODO: generate method GetResult
    //TODO: generate method ValidateEnd
    //TODO: generate method HandleNonSuccessAndDebuggerNotification
    //TODO: generate method ThrowForNonSuccess
    //TODO: generate method OnCompletedInternal
    //TODO: generate method OutputWaitEtwEvents
}
public class __Boxed__TaskAwaiter : DotNetObject, ICriticalNotifyCompletion
{
    TaskAwaiter value;
    alias value this;
}
///// <summary>Provides an awaiter for awaiting a <see cref="System.Threading.Tasks.Task{TResult}"/>.</summary>
//    /// <remarks>This type is intended for compiler use only.</remarks>
//    [HostProtection(Synchronization = true, ExternalThreading = true)]
public struct TaskAwaiter1(TResult)
{
    private immutable Task1!(TResult) m_task;
    //TODO: generate constructor
    //TODO: generate property 'IsCompleted'
    //TODO: generate method OnCompleted
    //TODO: generate method UnsafeOnCompleted
    //TODO: generate method GetResult
}
public class __Boxed__TaskAwaiter1(TResult) : DotNetObject, ICriticalNotifyCompletion
{
    TaskAwaiter1!(TResult) value;
    alias value this;
}
public struct ConfiguredTaskAwaitable
{
    private immutable ConfiguredTaskAwaiter m_configuredTaskAwaiter;
    //TODO: generate constructor
    //TODO: generate method GetAwaiter
    ///// <summary>Provides an awaiter for a <see cref="ConfiguredTaskAwaitable"/>.</summary>
//        /// <remarks>This type is intended for compiler use only.</remarks>
//        [HostProtection(Synchronization = true, ExternalThreading = true)]
    public static struct ConfiguredTaskAwaiter
    {
        private immutable Task m_task;
        private immutable bool m_continueOnCapturedContext;
        //TODO: generate constructor
        //TODO: generate property 'IsCompleted'
        //TODO: generate method OnCompleted
        //TODO: generate method UnsafeOnCompleted
        //TODO: generate method GetResult
    }
    public static class __Boxed__ConfiguredTaskAwaiter : DotNetObject, ICriticalNotifyCompletion
    {
        ConfiguredTaskAwaiter value;
        alias value this;
    }
}
public struct ConfiguredTaskAwaitable1(TResult)
{
    private immutable ConfiguredTaskAwaiter m_configuredTaskAwaiter;
    //TODO: generate constructor
    //TODO: generate method GetAwaiter
    ///// <summary>Provides an awaiter for a <see cref="ConfiguredTaskAwaitable{TResult}"/>.</summary>
//        /// <remarks>This type is intended for compiler use only.</remarks>
//        [HostProtection(Synchronization = true, ExternalThreading = true)]
    public static struct ConfiguredTaskAwaiter
    {
        private immutable Task1!(TResult) m_task;
        private immutable bool m_continueOnCapturedContext;
        //TODO: generate constructor
        //TODO: generate property 'IsCompleted'
        //TODO: generate method OnCompleted
        //TODO: generate method UnsafeOnCompleted
        //TODO: generate method GetResult
    }
    public static class __Boxed__ConfiguredTaskAwaiter : DotNetObject, ICriticalNotifyCompletion
    {
        ConfiguredTaskAwaiter value;
        alias value this;
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\TypeDependencyAttribute.cs'
//
//// We might want to make this inherited someday.  But I suspect it shouldn't
//    // be necessary.
//    [AttributeUsage(AttributeTargets.Struct | AttributeTargets.Class | AttributeTargets.Interface, AllowMultiple = true, Inherited = false)]
public final class TypeDependencyAttribute : Attribute
{
    private String typeName;
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\TypeForwardedFromAttribute.cs'
//
//[AttributeUsage(AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Enum | AttributeTargets.Interface | AttributeTargets.Delegate, Inherited = false, AllowMultiple = false)]
public final class TypeForwardedFromAttribute : Attribute
{
    private String assemblyFullName;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'AssemblyFullName'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\TypeForwardedToAttribute.cs'
//
//[AttributeUsage(AttributeTargets.Assembly, AllowMultiple=true, Inherited=false)]
public final class TypeForwardedToAttribute : Attribute
{
    private Type _destination;
    //TODO: generate constructor
    //TODO: generate property 'Destination'
    //TODO: generate method GetCustomAttribute
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\UnsafeValueTypeAttribute.cs'
//
//[Serializable]
//[AttributeUsage(AttributeTargets.Struct)]
public final class UnsafeValueTypeAttribute : Attribute
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\YieldAwaitable.cs'
//
public struct YieldAwaitable
{
    //TODO: generate method GetAwaiter
    ///// <summary>Provides an awaiter that switches into a target environment.</summary>
//        /// <remarks>This type is intended for compiler use only.</remarks>
//        [HostProtection(Synchronization = true, ExternalThreading = true)]
    public static struct YieldAwaiter
    {
        //TODO: generate property 'IsCompleted'
        //TODO: generate method OnCompleted
        //TODO: generate method UnsafeOnCompleted
        //TODO: generate method QueueContinuation
        //TODO: generate method OutputCorrelationEtwEvent
        private static immutable WaitCallback s_waitCallbackRunAction/*todo: implement initializer*/ = null;
        private static immutable SendOrPostCallback s_sendOrPostCallbackRunAction/*todo: implement initializer*/ = null;
        //TODO: generate method RunAction
        //TODO: generate method GetResult
    }
    public static class __Boxed__YieldAwaiter : DotNetObject, ICriticalNotifyCompletion
    {
        YieldAwaiter value;
        alias value this;
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\StringFreezingAttribute.cs'
//
//[Serializable]
//[AttributeUsage(AttributeTargets.Assembly, Inherited = false)]
public final class StringFreezingAttribute : Attribute
{
    //TODO: generate constructor
}
