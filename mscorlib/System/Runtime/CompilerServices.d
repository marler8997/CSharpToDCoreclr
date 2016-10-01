module mscorlib.System.Runtime.CompilerServices;

import mscorlib.System :
    __DotNet__Object,
    EventHandler1,
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    AttributeUsageAttribute,
    Attribute,
    String,
    SerializableAttribute,
    Action,
    FlagsAttribute,
    IntPtr,
    DateTime,
    Decimal,
    Type,
    FormattableString,
    Void,
    __DotNet__Exception;
import mscorlib.System.Diagnostics.Contracts :
    ContractFailedEventArgs;
import mscorlib.System.Runtime.InteropServices :
    ComVisibleAttribute;
import mscorlib.System.Security.Permissions :
    HostProtectionAttribute;
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
import mscorlib.System.Security :
    SecurityCriticalAttribute;
import mscorlib.System.Reflection :
    MethodImplAttributes;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Contracts\Contracts.cs'
//
public class ContractHelper : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method RaiseContractFailedEvent
    //TODO: generate method TriggerFailure
    //TODO: generate method RaiseContractFailedEventImplementation
    //TODO: generate method TriggerFailureImplementation
    private static /*todo: volatile*/ EventHandler1!(ContractFailedEventArgs) contractFailedEvent;
    private static immutable __DotNet__Object lockObject/*todo: implement initializer*/ = null;
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
// partial class 'ContractHelper' moved

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\AccessedThroughPropertyAttribute.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Field*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AccessedThroughPropertyAttribute : Attribute
{
    private immutable String propertyName;
    //TODO: generate constructor
    //TODO: generate property 'PropertyName'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\AssemblyAttributesGoHere.cs'
//
// NOTE TO DEVELOPERS:  These classes are used by ALink (the assembly linker).
// They're used for metadata tokens for making multi-module assemblies.
// Do not randomly touch these classes.
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
public final class AssemblyAttributesGoHere : __DotNet__Object
{
    //TODO: generate constructor
}
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
public final class AssemblyAttributesGoHereS : __DotNet__Object
{
    //TODO: generate constructor
}
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
public final class AssemblyAttributesGoHereM : __DotNet__Object
{
    //TODO: generate constructor
}
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
public final class AssemblyAttributesGoHereSM : __DotNet__Object
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\AssemblySettingAttributes.cs'
//
// 
// NGenHint is not supported in Whidbey     
// [Serializable]
// public enum NGenHint
// {    
// Default             = 0x0000, // No preference specified
// Eager               = 0x0001, // NGen at install time
// Lazy                = 0x0002, // NGen after install time
// Never               = 0x0003, // Assembly should not be ngened      
// }
// 
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum LoadHint
{
    Default = 0x0000,
    Always = 0x0001,
    Sometimes = 0x0002,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly*/)
public final class DefaultDependencyAttribute : Attribute
{
    private LoadHint loadHint;
    //TODO: generate constructor
    //TODO: generate property 'LoadHint'
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, AllowMultiple = true*/)
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
/// <summary>
/// Provides a builder for asynchronous methods that return void.
/// This type is intended for compiler use only.
/// </summary>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
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
/// <summary>
/// Provides a builder for asynchronous methods that return <see cref="System.Threading.Tasks.Task"/>.
/// This type is intended for compiler use only.
/// </summary>
/// <remarks>
/// AsyncTaskMethodBuilder is a value type, and thus it is copied by value.
/// Prior to being copied, one of its Task, SetResult, or SetException members must be accessed,
/// or else the copies may end up building distinct Task instances.
/// </remarks>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
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
/// <summary>
/// Provides a builder for asynchronous methods that return <see cref="System.Threading.Tasks.Task{TResult}"/>.
/// This type is intended for compiler use only.
/// </summary>
/// <remarks>
/// AsyncTaskMethodBuilder{TResult} is a value type, and thus it is copied by value.
/// Prior to being copied, one of its Task, SetResult, or SetException members must be accessed,
/// or else the copies may end up building distinct Task instances.
/// </remarks>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
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
public class AsyncTaskCache : __DotNet__Object
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
    public static class MoveNextRunner : __DotNet__Object
    {
        public IAsyncStateMachine m_stateMachine;
        //TODO: generate constructor
        //TODO: generate method RunWithDefaultContext
        //TODO: generate property 'InvokeMoveNextCallback'
        /// <summary>Cached delegate used with ExecutionContext.Run.</summary>
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private static ContextCallback s_invokeMoveNext;
        //TODO: generate method InvokeMoveNext
    }
    private static class ContinuationWrapper : __DotNet__Object
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, Inherited = false, AllowMultiple = false*/)
public final class AsyncStateMachineAttribute : StateMachineAttribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\CallerFilePathAttribute.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Parameter, Inherited = false*/)
public final class CallerFilePathAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\CallerLineNumberAttribute.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Parameter, Inherited = false*/)
public final class CallerLineNumberAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\CallerMemberNameAttribute.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Parameter, Inherited = false*/)
public final class CallerMemberNameAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\CompilationRelaxations.cs'
//
/// IMPORTANT: Keep this in sync with corhdr.h
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum CompilationRelaxations : int
{
    NoStringInterning = 0x0008,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly | AttributeTargets.Module | AttributeTargets.Class | AttributeTargets.Method*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.All, Inherited = true*/)
public final class CompilerGeneratedAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\CompilerGlobalScopeAttribute.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class CompilerGlobalScopeAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\CompilerMarshalOverride.cs'
//
public class CompilerMarshalOverride : __DotNet__Object
{
    private this() {} // prevent instantiation
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\ConditionalWeakTable.cs'
//
// #region ConditionalWeakTable
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
public final class ConditionalWeakTable2(TKey,TValue) : __DotNet__Object/*where TKey : class*//*where TValue : class*/
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
    private immutable __DotNet__Object _lock;
    private bool _invalid;
}
// #endregion
// #region DependentHandle
//=========================================================================================
// This struct collects all operations on native DependentHandles. The DependentHandle
// merely wraps an IntPtr so this struct serves mainly as a "managed typedef."
//
// DependentHandles exist in one of two states:
//
//    IsAllocated == false
//        No actual handle is allocated underneath. Illegal to call GetPrimary
//        or GetPrimaryAndSecondary(). Ok to call Free().
//
//        Initializing a DependentHandle using the nullary ctor creates a DependentHandle
//        that's in the !IsAllocated state.
//        (! Right now, we get this guarantee for free because (IntPtr)0 == NULL unmanaged handle.
//         ! If that assertion ever becomes false, we'll have to add an _isAllocated field
//         ! to compensate.)
//        
//
//    IsAllocated == true
//        There's a handle allocated underneath. You must call Free() on this eventually
//        or you cause a native handle table leak.
//
// This struct intentionally does no self-synchronization. It's up to the caller to
// to use DependentHandles in a thread-safe way.
//=========================================================================================
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Field | AttributeTargets.Parameter, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class CustomConstantAttribute : Attribute
{
    //TODO: generate property 'Value'
    //TODO: generate method GetRawConstant
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\DateTimeConstantAttribute.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Field | AttributeTargets.Parameter, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Field | AttributeTargets.Parameter, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.All*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
public final class DecoratedNameAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\DisablePrivateReflectionAttribute.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, AllowMultiple=false, Inherited=false*/)
public final class DisablePrivateReflectionAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\DiscardableAttribute.cs'
//
// Custom attribute to indicating a TypeDef is a discardable attribute
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class DiscardableAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\ExtensionAttribute.cs'
//
/// <summary>
/// Indicates that a method is an extension method, or that a class or assembly contains extension methods.
/// </summary>
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method | AttributeTargets.Class | AttributeTargets.Assembly*/)
public final class ExtensionAttribute : Attribute
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\FixedAddressValueTypeAttribute.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Field*/)
public final class FixedAddressValueTypeAttribute : Attribute
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\FixedBufferAttribute.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Field, Inherited=false*/)
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
public class FormattableStringFactory : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method Create
    private static final class ConcreteFormattableString : FormattableString
    {
        private immutable String _format;
        private immutable __DotNet__Object[] _arguments;
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
private class ICastableHelpers : __DotNet__Object
{
    //TODO: generate method IsInstanceOfInterface
    //TODO: generate method GetImplType
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\IDispatchConstantAttribute.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Field | AttributeTargets.Parameter, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class IDispatchConstantAttribute : CustomConstantAttribute
{
    //TODO: generate constructor
    //TODO: generate property 'Value'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\IndexerNameAttribute.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Property, Inherited = true*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, AllowMultiple=true, Inherited=false*/)
public final class InternalsVisibleToAttribute : Attribute
{
    private String _assemblyName;
    private bool _allInternalsVisible/*todo: implement initializer*/ = bool();
    //TODO: generate constructor
    //TODO: generate property 'AssemblyName'
    //TODO: generate property 'AllInternalsVisible'
}
/// <summary>
///     If AllInternalsVisible is not true for a friend assembly, the FriendAccessAllowed attribute
///     indicates which internals are shared with that friend assembly.
/// </summary>
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class |
                    AttributeTargets.Constructor |
                    AttributeTargets.Enum |
                    AttributeTargets.Event |
                    AttributeTargets.Field |
                    AttributeTargets.Interface |
                    AttributeTargets.Method |
                    AttributeTargets.Property |
                    AttributeTargets.Struct, AllowMultiple = false, Inherited = false*/)
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
public final class FriendAccessAllowedAttribute : Attribute
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\IsVolatile.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class IsVolatile : __DotNet__Object
{
    private this() {} // prevent instantiation
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\IteratorStateMachineAttribute.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, Inherited = false, AllowMultiple = false*/)
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
public class PinningHelper : __DotNet__Object
{
    public ubyte m_data;
}
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
public class JitHelpers : __DotNet__Object
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
// This Enum matchs the miImpl flags defined in corhdr.h. It is used to specify 
// certain method properties.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum MethodImplOptions
{
    Unmanaged = /*MemberName:Type*/MethodImplAttributes.Unmanaged,
    ForwardRef = /*MemberName:Type*/MethodImplAttributes.ForwardRef,
    PreserveSig = /*MemberName:Type*/MethodImplAttributes.PreserveSig,
    InternalCall = /*MemberName:Type*/MethodImplAttributes.InternalCall,
    Synchronized = /*MemberName:Type*/MethodImplAttributes.Synchronized,
    NoInlining = /*MemberName:Type*/MethodImplAttributes.NoInlining,
    AggressiveInlining = /*MemberName:Type*/MethodImplAttributes.AggressiveInlining,
    NoOptimization = /*MemberName:Type*/MethodImplAttributes.NoOptimization,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum MethodCodeType
{
    IL = /*MemberName:Type*/MethodImplAttributes.IL,
    Native = /*MemberName:Type*/MethodImplAttributes.Native,
    /// <internalonly/>
    OPTIL = /*MemberName:Type*/MethodImplAttributes.OPTIL,
    Runtime = /*MemberName:Type*/MethodImplAttributes.Runtime,
}
// Custom attribute to specify additional method properties.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method | AttributeTargets.Constructor, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, AllowMultiple=false*/)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited=false, AllowMultiple=false*/)
public final class RuntimeCompatibilityAttribute : Attribute
{
    private bool m_wrapNonExceptionThrows;
    //TODO: generate constructor
    //TODO: generate property 'WrapNonExceptionThrows'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\RuntimeHelpers.cs'
//
public class RuntimeHelpers : __DotNet__Object
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
    // #if FEATURE_CORECLR
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    public alias TryCode = void delegate(__DotNet__Object userData);
    // #if FEATURE_CORECLR
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    public alias CleanupCode = void delegate(__DotNet__Object userData, bool exceptionThrown);
    //TODO: generate method ExecuteCodeWithGuaranteedCleanup
    //TODO: generate method ExecuteBackoutCodeHelper
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\RuntimeWrappedException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class RuntimeWrappedException : __DotNet__Exception
{
    //TODO: generate constructor
    //TODO: generate property 'WrappedException'
    private __DotNet__Object m_wrappedException;
    //TODO: generate method GetObjectData
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\SpecialNameAttribute.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class | 
                    AttributeTargets.Method |
                    AttributeTargets.Property |
                    AttributeTargets.Field |
                    AttributeTargets.Event |
                    AttributeTargets.Struct*/)
public final class SpecialNameAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\StateMachineAttribute.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, Inherited = false, AllowMultiple = false*/)
public class StateMachineAttribute : Attribute
{
    //TODO: generate property 'StateMachineType'
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\SuppressIldasmAttribute.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly | AttributeTargets.Module*/)
public final class SuppressIldasmAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\SuppressMergeCheckAttribute.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class | 
                    AttributeTargets.Constructor | 
                    AttributeTargets.Method |
                    AttributeTargets.Field |
                    AttributeTargets.Event |
                    AttributeTargets.Property*/)
public final class SuppressMergeCheckAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\TaskAwaiter.cs'
//
/// <summary>Provides an awaiter for awaiting a <see cref="System.Threading.Tasks.Task"/>.</summary>
/// <remarks>This type is intended for compiler use only.</remarks>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
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
public class __Boxed__TaskAwaiter : __DotNet__Object, ICriticalNotifyCompletion
{
    TaskAwaiter value;
    alias value this;
}
/// <summary>Provides an awaiter for awaiting a <see cref="System.Threading.Tasks.Task{TResult}"/>.</summary>
/// <remarks>This type is intended for compiler use only.</remarks>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
public struct TaskAwaiter1(TResult)
{
    private immutable Task1!(TResult) m_task;
    //TODO: generate constructor
    //TODO: generate property 'IsCompleted'
    //TODO: generate method OnCompleted
    //TODO: generate method UnsafeOnCompleted
    //TODO: generate method GetResult
}
public class __Boxed__TaskAwaiter1(TResult) : __DotNet__Object, ICriticalNotifyCompletion
{
    TaskAwaiter1!(TResult) value;
    alias value this;
}
public struct ConfiguredTaskAwaitable
{
    private immutable ConfiguredTaskAwaiter m_configuredTaskAwaiter;
    //TODO: generate constructor
    //TODO: generate method GetAwaiter
    /// <summary>Provides an awaiter for a <see cref="ConfiguredTaskAwaitable"/>.</summary>
    /// <remarks>This type is intended for compiler use only.</remarks>
    @__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
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
    public static class __Boxed__ConfiguredTaskAwaiter : __DotNet__Object, ICriticalNotifyCompletion
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
    /// <summary>Provides an awaiter for a <see cref="ConfiguredTaskAwaitable{TResult}"/>.</summary>
    /// <remarks>This type is intended for compiler use only.</remarks>
    @__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
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
    public static class __Boxed__ConfiguredTaskAwaiter : __DotNet__Object, ICriticalNotifyCompletion
    {
        ConfiguredTaskAwaiter value;
        alias value this;
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\TypeDependencyAttribute.cs'
//
// We might want to make this inherited someday.  But I suspect it shouldn't
// be necessary.
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Struct | AttributeTargets.Class | AttributeTargets.Interface, AllowMultiple = true, Inherited = false*/)
public final class TypeDependencyAttribute : Attribute
{
    private String typeName;
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\TypeForwardedFromAttribute.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Enum | AttributeTargets.Interface | AttributeTargets.Delegate, Inherited = false, AllowMultiple = false*/)
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
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, AllowMultiple=true, Inherited=false*/)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Struct*/)
public final class UnsafeValueTypeAttribute : Attribute
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\CompilerServices\YieldAwaitable.cs'
//
public struct YieldAwaitable
{
    //TODO: generate method GetAwaiter
    /// <summary>Provides an awaiter that switches into a target environment.</summary>
    /// <remarks>This type is intended for compiler use only.</remarks>
    @__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
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
    public static class __Boxed__YieldAwaiter : __DotNet__Object, ICriticalNotifyCompletion
    {
        YieldAwaiter value;
        alias value this;
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\StringFreezingAttribute.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited = false*/)
public final class StringFreezingAttribute : Attribute
{
    //TODO: generate constructor
}
