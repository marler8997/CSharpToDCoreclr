module mscorlib.System.Threading;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    SerializableAttribute,
    SystemException,
    __DotNet__Object,
    Action1,
    IEquatable1,
    IDisposable,
    Void,
    FlagsAttribute,
    Func1,
    __DotNet__Exception,
    String,
    IntPtr,
    IAsyncResult,
    PinnableBufferCache,
    Delegate,
    LocalDataStoreMgr,
    ThreadStaticAttribute,
    LocalDataStoreHolder,
    Environment,
    Random,
    CLSCompliantAttribute,
    TimeSpan;
import mscorlib.System.Runtime.InteropServices :
    ComVisibleAttribute,
    StructLayoutAttribute,
    ClassInterfaceAttribute,
    ComDefaultInterfaceAttribute,
    _Thread;
import mscorlib.System.Security :
    SecurityCriticalAttribute;
import mscorlib.System.Security.Permissions :
    HostProtectionAttribute;
import mscorlib.System.Diagnostics :
    DebuggerDisplayAttribute,
    DebuggerTypeProxyAttribute;
import mscorlib.System.Collections.Generic :
    Dictionary2,
    List1;
import mscorlib.Microsoft.Win32 :
    Win32Native;
import mscorlib.Microsoft.Win32.SafeHandles :
    SafeWaitHandle,
    SafeHandleZeroOrMinusOneIsInvalid;
import mscorlib.System.Threading.Tasks :
    Task1,
    TaskCreationOptions,
    InternalTaskOptions;
import mscorlib.System.Runtime.CompilerServices :
    FriendAccessAllowedAttribute;
import mscorlib.System.Runtime.ConstrainedExecution :
    CriticalFinalizerObject;
import mscorlib.System.Globalization :
    CultureInfo;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\AbandonedMutexException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
public class AbandonedMutexException : SystemException
{
    private int m_MutexIndex/*todo: implement initializer*/ = int();
    private Mutex m_Mutex/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method SetupException
    //TODO: generate constructor
    //TODO: generate property 'Mutex'
    //TODO: generate property 'MutexIndex'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\ApartmentState.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum ApartmentState
{
    // =========================================================================
    // ** Constants for thread apartment states.
    // =========================================================================
    STA = 0,
    MTA = 1,
    Unknown = 2,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\AsyncLocal.cs'
//
public final class AsyncLocal1(T) : __DotNet__Object, IAsyncLocal
{
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private immutable Action1!(AsyncLocalValueChangedArgs1!(T)) m_valueChangedHandler;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Value'
    //TODO: generate method OnValueChanged
}
package(mscorlib) interface IAsyncLocal
{
    //TODO: generate method OnValueChanged
}
public struct AsyncLocalValueChangedArgs1(T)
{
    //TODO: generate property 'PreviousValue'
    //TODO: generate property 'CurrentValue'
    //TODO: generate property 'ThreadContextChanged'
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\AutoResetEvent.cs'
//
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization=true, ExternalThreading=true*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AutoResetEvent : EventWaitHandle
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\CancellationToken.cs'
//
/// <summary>
/// Propagates notification that operations should be canceled.
/// </summary>
/// <remarks>
/// <para>
/// A <see cref="CancellationToken"/> may be created directly in an unchangeable canceled or non-canceled state
/// using the CancellationToken's constructors. However, to have a CancellationToken that can change 
/// from a non-canceled to a canceled state, 
/// <see cref="System.Threading.CancellationTokenSource">CancellationTokenSource</see> must be used.
/// CancellationTokenSource exposes the associated CancellationToken that may be canceled by the source through its 
/// <see cref="System.Threading.CancellationTokenSource.Token">Token</see> property. 
/// </para>
/// <para>
/// Once canceled, a token may not transition to a non-canceled state, and a token whose 
/// <see cref="CanBeCanceled"/> is false will never change to one that can be canceled.
/// </para>
/// <para>
/// All members of this struct are thread-safe and may be used concurrently from multiple threads.
/// </para>
/// </remarks>
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "IsCancellationRequested = {IsCancellationRequested}"*/)
public struct CancellationToken
{
    private CancellationTokenSource m_source;
    //TODO: generate property 'None'
    //TODO: generate property 'IsCancellationRequested'
    //TODO: generate property 'CanBeCanceled'
    //TODO: generate property 'WaitHandle'
    //TODO: generate constructor
    //TODO: generate constructor
    private static immutable Action1!(__DotNet__Object) s_ActionToActionObjShunt/*todo: implement initializer*/ = null;
    //TODO: generate method ActionToActionObjShunt
    //TODO: generate method Register
    //TODO: generate method Register
    //TODO: generate method Register
    //TODO: generate method Register
    //TODO: generate method InternalRegisterWithoutEC
    //TODO: generate method Register
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method ThrowIfCancellationRequested
    //TODO: generate method ThrowIfSourceDisposed
    //TODO: generate method ThrowOperationCanceledException
    //TODO: generate method ThrowObjectDisposedException
    //TODO: generate method InitializeDefaultSource
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\CancellationTokenRegistration.cs'
//
/// <summary>
/// Represents a callback delegate that has been registered with a <see cref="T:System.Threading.CancellationToken">CancellationToken</see>.
/// </summary>
/// <remarks>
/// To unregister a callback, dispose the corresponding Registration instance.
/// </remarks>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
public struct CancellationTokenRegistration
{
    private immutable CancellationCallbackInfo m_callbackInfo;
    private immutable SparselyPopulatedArrayAddInfo1!(CancellationCallbackInfo) m_registrationInfo;
    //TODO: generate constructor
    //TODO: generate method TryDeregister
    //TODO: generate method Dispose
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
public class __Boxed__CancellationTokenRegistration : __DotNet__Object, IEquatable1!(CancellationTokenRegistration), IDisposable
{
    CancellationTokenRegistration value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\CancellationTokenSource.cs'
//
/// <summary>
/// Signals to a <see cref="System.Threading.CancellationToken"/> that it should be canceled.
/// </summary>
/// <remarks>
/// <para>
/// <see cref="T:System.Threading.CancellationTokenSource"/> is used to instantiate a <see
/// cref="T:System.Threading.CancellationToken"/>
/// (via the source's <see cref="System.Threading.CancellationTokenSource.Token">Token</see> property)
/// that can be handed to operations that wish to be notified of cancellation or that can be used to
/// register asynchronous operations for cancellation. That token may have cancellation requested by
/// calling to the source's <see cref="System.Threading.CancellationTokenSource.Cancel()">Cancel</see>
/// method.
/// </para>
/// <para>
/// All members of this class, except <see cref="Dispose">Dispose</see>, are thread-safe and may be used
/// concurrently from multiple threads.
/// </para>
/// </remarks>
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
public class CancellationTokenSource : __DotNet__Object, IDisposable
{
    private static immutable CancellationTokenSource _staticSource_Set/*todo: implement initializer*/ = null;
    private static immutable CancellationTokenSource _staticSource_NotCancelable/*todo: implement initializer*/ = null;
    private static immutable int s_nLists/*todo: implement initializer*/ = int();
    private /*todo: volatile*/ ManualResetEvent m_kernelEvent;
    private /*todo: volatile*/ SparselyPopulatedArray1!(CancellationCallbackInfo)[] m_registeredCallbacksLists;
    private enum int CANNOT_BE_CANCELED/*todo: implement initializer*/ = int();
    private enum int NOT_CANCELED/*todo: implement initializer*/ = int();
    private enum int NOTIFYING/*todo: implement initializer*/ = int();
    private enum int NOTIFYINGCOMPLETE/*todo: implement initializer*/ = int();
    private /*todo: volatile*/ int m_state;
    private /*todo: volatile*/ int m_threadIDExecutingCallbacks/*todo: implement initializer*/ = int();
    private bool m_disposed;
    private /*todo: volatile*/ CancellationCallbackInfo m_executingCallback;
    private /*todo: volatile*/ Timer m_timer;
    //TODO: generate property 'IsCancellationRequested'
    //TODO: generate property 'IsCancellationCompleted'
    //TODO: generate property 'IsDisposed'
    //TODO: generate property 'ThreadIDExecutingCallbacks'
    //TODO: generate property 'Token'
    //TODO: generate property 'CanBeCanceled'
    //TODO: generate property 'WaitHandle'
    //TODO: generate property 'ExecutingCallback'
    //TODO: generate property 'CallbackCount'
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method InitializeWithTimer
    //TODO: generate method Cancel
    //TODO: generate method Cancel
    //TODO: generate method CancelAfter
    //TODO: generate method CancelAfter
    private static immutable TimerCallback s_timerCallback/*todo: implement initializer*/ = null;
    //TODO: generate method TimerCallbackLogic
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    //TODO: generate method ThrowIfDisposed
    //TODO: generate method ThrowObjectDisposedException
    //TODO: generate method InternalGetStaticSource
    //TODO: generate method InternalRegister
    //TODO: generate method NotifyCancellation
    //TODO: generate method ExecuteCallbackHandlers
    //TODO: generate method CancellationCallbackCoreWork_OnSyncContext
    //TODO: generate method CancellationCallbackCoreWork
    //TODO: generate method CreateLinkedTokenSource
    //TODO: generate method CreateLinkedTokenSource
    //TODO: generate method WaitForCallbackToComplete
    private static final class LinkedCancellationTokenSource : CancellationTokenSource
    {
        private static immutable Action1!(__DotNet__Object) s_linkedTokenCancelDelegate/*todo: implement initializer*/ = null;
        private CancellationTokenRegistration[] m_linkingRegistrations;
        //TODO: generate constructor
        //TODO: generate constructor
        //TODO: generate method Dispose
    }
}
package(mscorlib) struct CancellationCallbackCoreWorkArguments
{
    package(mscorlib) SparselyPopulatedArrayFragment1!(CancellationCallbackInfo) m_currArrayFragment;
    package(mscorlib) int m_currArrayIndex;
    //TODO: generate constructor
}
package(mscorlib) class CancellationCallbackInfo : __DotNet__Object
{
    package(mscorlib) immutable Action1!(__DotNet__Object) Callback;
    package(mscorlib) immutable __DotNet__Object StateForCallback;
    package(mscorlib) immutable ExecutionContext TargetExecutionContext;
    package(mscorlib) immutable CancellationTokenSource CancellationTokenSource_;
    package(mscorlib) static final class WithSyncContext : CancellationCallbackInfo
    {
        package(mscorlib) immutable SynchronizationContext TargetSyncContext;
        //TODO: generate constructor
    }
    //TODO: generate constructor
    // Cached callback delegate that's lazily initialized due to ContextCallback being SecurityCritical
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private static ContextCallback s_executionContextCallback;
    //TODO: generate method ExecuteCallback
    //TODO: generate method ExecutionContextCallback
}
package(mscorlib) class SparselyPopulatedArray1(T) : __DotNet__Object/*where T : class*/
{
    private immutable SparselyPopulatedArrayFragment1!(T) m_head;
    private /*todo: volatile*/ SparselyPopulatedArrayFragment1!(T) m_tail;
    //TODO: generate constructor
    //TODO: generate property 'Head'
    //TODO: generate property 'Tail'
    //TODO: generate method Add
}
package(mscorlib) struct SparselyPopulatedArrayAddInfo1(T)
{
    private SparselyPopulatedArrayFragment1!(T) m_source;
    private int m_index;
    //TODO: generate constructor
    //TODO: generate property 'Source'
    //TODO: generate property 'Index'
}
package(mscorlib) class SparselyPopulatedArrayFragment1(T) : __DotNet__Object/*where T : class*/
{
    package(mscorlib) immutable T[] m_elements;
    package(mscorlib) /*todo: volatile*/ int m_freeCount;
    package(mscorlib) /*todo: volatile*/ SparselyPopulatedArrayFragment1!(T) m_next;
    package(mscorlib) /*todo: volatile*/ SparselyPopulatedArrayFragment1!(T) m_prev;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate indexer
    //TODO: generate property 'Length'
    //TODO: generate property 'Next'
    //TODO: generate property 'Prev'
    //TODO: generate method SafeAtomicRemove
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\CountdownEvent.cs'
//
/// <summary>
/// Represents a synchronization primitive that is signaled when its count reaches zero.
/// </summary>
/// <remarks>
/// All public and protected members of <see cref="CountdownEvent"/> are thread-safe and may be used
/// concurrently from multiple threads, with the exception of Dispose, which
/// must only be used when all other operations on the <see cref="CountdownEvent"/> have
/// completed, and Reset, which should only be used when no other threads are
/// accessing the event.
/// </remarks>
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Initial Count={InitialCount}, Current Count={CurrentCount}"*/)
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
public class CountdownEvent : __DotNet__Object, IDisposable
{
    private int m_initialCount;
    private /*todo: volatile*/ int m_currentCount;
    private ManualResetEventSlim m_event;
    private /*todo: volatile*/ bool m_disposed;
    //TODO: generate constructor
    //TODO: generate property 'CurrentCount'
    //TODO: generate property 'InitialCount'
    //TODO: generate property 'IsSet'
    //TODO: generate property 'WaitHandle'
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    //TODO: generate method Signal
    //TODO: generate method Signal
    //TODO: generate method AddCount
    //TODO: generate method TryAddCount
    //TODO: generate method AddCount
    //TODO: generate method TryAddCount
    //TODO: generate method Reset
    //TODO: generate method Reset
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method ThrowIfDisposed
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\EventResetMode.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
public enum EventResetMode
{
    AutoReset = 0,
    ManualReset = 1,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\EventWaitHandle.cs'
//
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization=true, ExternalThreading=true*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class EventWaitHandle : WaitHandle
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method OpenExisting
    //TODO: generate method OpenExisting
    //TODO: generate method TryOpenExisting
    //TODO: generate method TryOpenExisting
    //TODO: generate method OpenExistingWorker
    //TODO: generate method Reset
    //TODO: generate method Set
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\ExecutionContext.cs'
//
// #if FEATURE_CORECLR
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
// #endif
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public alias ContextCallback = void delegate(__DotNet__Object state);
// #if FEATURE_CORECLR
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
package(mscorlib) struct ExecutionContextSwitcher
{
    package(mscorlib) ExecutionContext m_ec;
    package(mscorlib) SynchronizationContext m_sc;
    //TODO: generate method Undo
}
public final class ExecutionContext : __DotNet__Object, IDisposable
{
    private static immutable ExecutionContext Default/*todo: implement initializer*/ = null;
    private immutable Dictionary2!(IAsyncLocal,__DotNet__Object) m_localValues;
    private immutable IAsyncLocal[] m_localChangeNotifications;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Capture
    //TODO: generate method Run
    //TODO: generate method Restore
    //TODO: generate method EstablishCopyOnWriteScope
    //TODO: generate method OnContextChanged
    //TODO: generate method GetLocalValue
    //TODO: generate method SetLocalValue
    // #region Wrappers for CLR compat, to avoid ifdefs all over the BCL
    @__DotNet__Attribute!(FlagsAttribute.stringof)
    package(mscorlib) enum CaptureOptions
    {
        None = 0x00,
        IgnoreSyncCtx = 0x01,
        OptimizeDefaultCase = 0x02,
    }
    //TODO: generate method Capture
    //TODO: generate method FastCapture
    //TODO: generate method Run
    //TODO: generate method IsDefaultFTContext
    //TODO: generate method CreateCopy
    //TODO: generate method Dispose
    //TODO: generate method IsFlowSuppressed
    //TODO: generate property 'PreAllocatedDefault'
    //TODO: generate property 'IsPreAllocatedDefault'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Interlocked.cs'
//
public class Interlocked : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method Increment
    //TODO: generate method Increment
    //TODO: generate method Decrement
    //TODO: generate method Decrement
    //TODO: generate method Exchange
    //TODO: generate method Exchange
    //TODO: generate method Exchange
    //TODO: generate method Exchange
    //TODO: generate method Exchange
    //TODO: generate method Exchange
    //TODO: generate method Exchange
    //TODO: generate method _Exchange
    //TODO: generate method CompareExchange
    //TODO: generate method CompareExchange
    //TODO: generate method CompareExchange
    //TODO: generate method CompareExchange
    //TODO: generate method CompareExchange
    //TODO: generate method CompareExchange
    //TODO: generate method CompareExchange
    //TODO: generate method _CompareExchange
    //TODO: generate method CompareExchange
    //TODO: generate method ExchangeAdd
    //TODO: generate method ExchangeAdd
    //TODO: generate method Add
    //TODO: generate method Add
    //TODO: generate method Read
    //TODO: generate method MemoryBarrier
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\LazyInitializer.cs'
//
public enum LazyThreadSafetyMode
{
    /// <summary>
    /// This mode makes no guarantees around the thread-safety of the <see cref="T:System.Threading.Lazy{T}"/> instance.  If used from multiple threads, the behavior of the <see cref="T:System.Threading.Lazy{T}"/> is undefined.
    /// This mode should be used when a <see cref="T:System.Threading.Lazy{T}"/> is guaranteed to never be initialized from more than one thread simultaneously and high performance is crucial. 
    /// If valueFactory throws an exception when the <see cref="T:System.Threading.Lazy{T}"/> is initialized, the exception will be cached and returned on subsequent accesses to Value. Also, if valueFactory recursively
    /// accesses Value on this <see cref="T:System.Threading.Lazy{T}"/> instance, a <see cref="T:System.InvalidOperationException"/> will be thrown.
    /// </summary>
    None,
    /// <summary>
    /// When multiple threads attempt to simultaneously initialize a <see cref="T:System.Threading.Lazy{T}"/> instance, this mode allows each thread to execute the
    /// valueFactory but only the first thread to complete initialization will be allowed to set the final value of the  <see cref="T:System.Threading.Lazy{T}"/>.
    /// Once initialized successfully, any future calls to Value will return the cached result.  If valueFactory throws an exception on any thread, that exception will be
    /// propagated out of Value. If any thread executes valueFactory without throwing an exception and, therefore, successfully sets the value, that value will be returned on
    /// subsequent accesses to Value from any thread.  If no thread succeeds in setting the value, IsValueCreated will remain false and subsequent accesses to Value will result in
    /// the valueFactory delegate re-executing.  Also, if valueFactory recursively accesses Value on this  <see cref="T:System.Threading.Lazy{T}"/> instance, an exception will NOT be thrown.
    /// </summary>
    PublicationOnly,
    /// <summary>
    /// This mode uses locks to ensure that only a single thread can initialize a <see cref="T:System.Threading.Lazy{T}"/> instance in a thread-safe manner.  In general,
    /// taken if this mode is used in conjunction with a <see cref="T:System.Threading.Lazy{T}"/> valueFactory delegate that uses locks internally, a deadlock can occur if not
    /// handled carefully.  If valueFactory throws an exception when the<see cref="T:System.Threading.Lazy{T}"/> is initialized, the exception will be cached and returned on
    /// subsequent accesses to Value. Also, if valueFactory recursively accesses Value on this <see cref="T:System.Threading.Lazy{T}"/> instance, a  <see cref="T:System.InvalidOperationException"/> will be thrown.
    /// </summary>
    ExecutionAndPublication,
}
/// <summary>
/// Provides lazy initialization routines.
/// </summary>
/// <remarks>
/// These routines avoid needing to allocate a dedicated, lazy-initialization instance, instead using
/// references to ensure targets have been initialized as they are accessed.
/// </remarks>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
public class LazyInitializer : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method EnsureInitialized
    //TODO: generate method EnsureInitialized
    //TODO: generate method EnsureInitializedCore
    //TODO: generate method EnsureInitialized
    //TODO: generate method EnsureInitialized
    //TODO: generate method EnsureInitializedCore
}
private class LazyHelpers1(T) : __DotNet__Object
{
    private this() {} // prevent instantiation
    package(mscorlib) static Func1!(T) s_activatorFactorySelector/*todo: implement initializer*/ = null;
    //TODO: generate method ActivatorFactorySelector
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\LockCookie.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct LockCookie
{
    private int _dwFlags;
    private int _dwWriterSeqNum;
    private int _wReaderAndWriterLevel;
    private int _dwThreadID;
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\LockRecursionException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
public class LockRecursionException : __DotNet__Exception
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\ManualResetEvent.cs'
//
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization=true, ExternalThreading=true*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ManualResetEvent : EventWaitHandle
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\ManualResetEventSlim.cs'
//
// ManualResetEventSlim wraps a manual-reset event internally with a little bit of
// spinning. When an event will be set imminently, it is often advantageous to avoid
// a 4k+ cycle context switch in favor of briefly spinning. Therefore we layer on to
// a brief amount of spinning that should, on the average, make using the slim event
// cheaper than using Win32 events directly. This can be reset manually, much like
// a Win32 manual-reset would be.
//
// Notes:
//     We lazily allocate the Win32 event internally. Therefore, the caller should
//     always call Dispose to clean it up, just in case. This API is a no-op of the
//     event wasn't allocated, but if it was, ensures that the event goes away
//     eagerly, instead of waiting for finalization.
/// <summary>
/// Provides a slimmed down version of <see cref="T:System.Threading.ManualResetEvent"/>.
/// </summary>
/// <remarks>
/// All public and protected members of <see cref="ManualResetEventSlim"/> are thread-safe and may be used
/// concurrently from multiple threads, with the exception of Dispose, which
/// must only be used when all other operations on the <see cref="ManualResetEventSlim"/> have
/// completed, and Reset, which should only be used when no other threads are
/// accessing the event.
/// </remarks>
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Set = {IsSet}"*/)
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
public class ManualResetEventSlim : __DotNet__Object, IDisposable
{
    private enum int DEFAULT_SPIN_SP/*todo: implement initializer*/ = int();
    private enum int DEFAULT_SPIN_MP/*todo: implement initializer*/ = int();
    private /*todo: volatile*/ __DotNet__Object m_lock;
    private /*todo: volatile*/ ManualResetEvent m_eventObj;
    private /*todo: volatile*/ int m_combinedState;
    private enum int SignalledState_BitMask/*todo: implement initializer*/ = int();
    private enum int SignalledState_ShiftCount/*todo: implement initializer*/ = int();
    private enum int Dispose_BitMask/*todo: implement initializer*/ = int();
    private enum int SpinCountState_BitMask/*todo: implement initializer*/ = int();
    private enum int SpinCountState_ShiftCount/*todo: implement initializer*/ = int();
    private enum int SpinCountState_MaxValue/*todo: implement initializer*/ = int();
    private enum int NumWaitersState_BitMask/*todo: implement initializer*/ = int();
    private enum int NumWaitersState_ShiftCount/*todo: implement initializer*/ = int();
    private enum int NumWaitersState_MaxValue/*todo: implement initializer*/ = int();
    private static int s_nextId;
    private int m_id/*todo: implement initializer*/ = int();
    private long m_lastSetTime;
    private long m_lastResetTime;
    //TODO: generate property 'WaitHandle'
    //TODO: generate property 'IsSet'
    //TODO: generate property 'SpinCount'
    //TODO: generate property 'Waiters'
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Initialize
    //TODO: generate method EnsureLockObjectCreated
    //TODO: generate method LazyInitializeEvent
    //TODO: generate method Set
    //TODO: generate method Set
    //TODO: generate method Reset
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    //TODO: generate method ThrowIfDisposed
    private static Action1!(__DotNet__Object) s_cancellationTokenCallback/*todo: implement initializer*/ = null;
    //TODO: generate method CancellationTokenCallback
    //TODO: generate method UpdateStateAtomically
    //TODO: generate method ExtractStatePortionAndShiftRight
    //TODO: generate method ExtractStatePortion
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Monitor.cs'
//
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization=true, ExternalThreading=true*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class Monitor : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method Enter
    //TODO: generate method Enter
    //TODO: generate method ThrowLockTakenException
    //TODO: generate method ReliableEnter
    //TODO: generate method Exit
    //TODO: generate method TryEnter
    //TODO: generate method TryEnter
    //TODO: generate method TryEnter
    //TODO: generate method MillisecondsTimeoutFromTimeSpan
    //TODO: generate method TryEnter
    //TODO: generate method TryEnter
    //TODO: generate method TryEnter
    //TODO: generate method ReliableEnterTimeout
    //TODO: generate method IsEntered
    //TODO: generate method IsEnteredNative
    //TODO: generate method ObjWait
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method ObjPulse
    //TODO: generate method Pulse
    //TODO: generate method ObjPulseAll
    //TODO: generate method PulseAll
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Mutex.cs'
//
// #if FEATURE_MACL
// using System.Security.AccessControl;
// #endif
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization=true, ExternalThreading=true*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class Mutex : WaitHandle
{
    private static bool dummyBool;
    public static class MutexSecurity : __DotNet__Object
    {
    }
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CreateMutexWithGuaranteedCleanup
    package(mscorlib) static class MutexTryCodeHelper : __DotNet__Object
    {
        private bool m_initiallyOwned;
        private MutexCleanupInfo m_cleanupInfo;
        package(mscorlib) bool m_newMutex;
        private String m_name;
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private Win32Native.SECURITY_ATTRIBUTES m_secAttrs;
        private Mutex m_mutex;
        //TODO: generate constructor
        //TODO: generate method MutexTryCode
    }
    //TODO: generate method MutexCleanupCode
    package(mscorlib) static class MutexCleanupInfo : __DotNet__Object
    {
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        package(mscorlib) SafeWaitHandle mutexHandle;
        package(mscorlib) bool inCriticalRegion;
        //TODO: generate constructor
    }
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method OpenExisting
    public enum MutexRights{__no_values__}
    //TODO: generate method OpenExisting
    //TODO: generate method TryOpenExisting
    //TODO: generate method TryOpenExisting
    //TODO: generate method OpenExistingWorker
    //TODO: generate method ReleaseMutex
    //TODO: generate method CreateMutexHandle
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Overlapped.cs'
//
// #region struct NativeOverlapped
// Valuetype that represents the (unmanaged) Win32 OVERLAPPED structure
// the layout of this structure must be identical to OVERLAPPED.
// The first five matches OVERLAPPED structure.
// The remaining are reserved at the end
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct NativeOverlapped
{
    public IntPtr InternalLow;
    public IntPtr InternalHigh;
    public int OffsetLow;
    public int OffsetHigh;
    public IntPtr EventHandle;
}
package(mscorlib) class _IOCompletionCallback : __DotNet__Object
{
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private IOCompletionCallback _ioCompletionCallback;
    private ExecutionContext _executionContext;
    private uint _errorCode;
    private uint _numBytes;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private NativeOverlapped* _pOVERLAP;
    //TODO: generate constructor
    //TODO: generate constructor
    // Context callback: same sig for SendOrPostCallback and ContextCallback
    // #if FEATURE_CORECLR
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    package(mscorlib) static ContextCallback _ccb/*todo: implement initializer*/ = null;
    //TODO: generate method IOCompletionCallback_Context
    //TODO: generate method PerformIOCompletionCallback
}
package(mscorlib) final class OverlappedData : __DotNet__Object
{
    package(mscorlib) IAsyncResult m_asyncResult;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    package(mscorlib) IOCompletionCallback m_iocb;
    package(mscorlib) _IOCompletionCallback m_iocbHelper;
    package(mscorlib) Overlapped m_overlapped;
    private __DotNet__Object m_userObject;
    private IntPtr m_pinSelf;
    private IntPtr m_userObjectInternal;
    private int m_AppDomainId;
    private ubyte m_isArray;
    private ubyte m_toBeCleaned;
    package(mscorlib) NativeOverlapped m_nativeOverlapped;
    //TODO: generate constructor
    //TODO: generate method ReInitialize
    //TODO: generate method Pack
    //TODO: generate method UnsafePack
    //TODO: generate property 'UserHandle'
    //TODO: generate method AllocateNativeOverlapped
    //TODO: generate method FreeNativeOverlapped
    //TODO: generate method GetOverlappedFromNative
    //TODO: generate method CheckVMForIOPacket
}
// #endregion class OverlappedData
// #region class Overlapped
/// <internalonly/>
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class Overlapped : __DotNet__Object
{
    private OverlappedData m_overlappedData;
    private static PinnableBufferCache s_overlappedDataCache/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'AsyncResult'
    //TODO: generate property 'OffsetLow'
    //TODO: generate property 'OffsetHigh'
    //TODO: generate property 'EventHandle'
    //TODO: generate property 'EventHandleIntPtr'
    //TODO: generate property 'iocbHelper'
    //TODO: generate property 'UserCallback'
    //TODO: generate method Pack
    //TODO: generate method Pack
    //TODO: generate method UnsafePack
    //TODO: generate method UnsafePack
    //TODO: generate method Unpack
    //TODO: generate method Free
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\ParameterizedThreadStart.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
public alias ParameterizedThreadStart = void delegate(__DotNet__Object obj);

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Semaphore.cs'
//
public final class Semaphore : WaitHandle
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CreateSemaphone
    //TODO: generate method OpenExisting
    //TODO: generate method TryOpenExisting
    //TODO: generate method OpenExistingWorker
    //TODO: generate method Release
    //TODO: generate method Release
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\SemaphoreFullException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
public class SemaphoreFullException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\SemaphoreSlim.cs'
//
/// <summary>
/// Limits the number of threads that can access a resource or pool of resources concurrently.
/// </summary>
/// <remarks>
/// <para>
/// The <see cref="SemaphoreSlim"/> provides a lightweight semaphore class that doesn't
/// use Windows kernel semaphores.
/// </para>
/// <para>
/// All public and protected members of <see cref="SemaphoreSlim"/> are thread-safe and may be used
/// concurrently from multiple threads, with the exception of Dispose, which
/// must only be used when all other operations on the <see cref="SemaphoreSlim"/> have
/// completed.
/// </para>
/// </remarks>
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Current Count = {m_currentCount}"*/)
public class SemaphoreSlim : __DotNet__Object, IDisposable
{
    private /*todo: volatile*/ int m_currentCount;
    private immutable int m_maxCount;
    private /*todo: volatile*/ int m_waitCount;
    private __DotNet__Object m_lockObj;
    private /*todo: volatile*/ ManualResetEvent m_waitHandle;
    private TaskNode m_asyncHead;
    private TaskNode m_asyncTail;
    private static immutable Task1!(bool) s_trueTask/*todo: implement initializer*/ = null;
    private static immutable Task1!(bool) s_falseTask/*todo: implement initializer*/ = null;
    private enum int NO_MAXIMUM/*todo: implement initializer*/ = int();
    private static final class TaskNode : Task1!(bool), IThreadPoolWorkItem
    {
        package(mscorlib) TaskNode Prev, Next;
        //TODO: generate constructor
        //TODO: generate method ExecuteWorkItem
        //TODO: generate method MarkAborted
    }
    //TODO: generate property 'CurrentCount'
    //TODO: generate property 'AvailableWaitHandle'
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method Wait
    //TODO: generate method WaitUntilCountOrTimeout
    //TODO: generate method WaitAsync
    //TODO: generate method WaitAsync
    //TODO: generate method WaitAsync
    //TODO: generate method WaitAsync
    //TODO: generate method WaitAsync
    //TODO: generate method WaitAsync
    //TODO: generate method CreateAndAddAsyncWaiter
    //TODO: generate method RemoveAsyncWaiter
    //TODO: generate method WaitUntilCountOrTimeoutAsync
    //TODO: generate method Release
    //TODO: generate method Release
    //TODO: generate method QueueWaiterTask
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    private static Action1!(__DotNet__Object) s_cancellationTokenCanceledEventHandler/*todo: implement initializer*/ = null;
    //TODO: generate method CancellationTokenCanceledEventHandler
    //TODO: generate method CheckDispose
    //TODO: generate method GetResourceString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\SendOrPostCallback.cs'
//
public alias SendOrPostCallback = void delegate(__DotNet__Object state);

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\SpinLock.cs'
//
/// <summary>
/// Provides a mutual exclusion lock primitive where a thread trying to acquire the lock waits in a loop
/// repeatedly checking until the lock becomes available.
/// </summary>
/// <remarks>
/// <para>
/// Spin locks can be used for leaf-level locks where the object allocation implied by using a <see
/// cref="System.Threading.Monitor"/>, in size or due to garbage collection pressure, is overly
/// expensive. Avoiding blocking is another reason that a spin lock can be useful, however if you expect
/// any significant amount of blocking, you are probably best not using spin locks due to excessive
/// spinning. Spinning can be beneficial when locks are fine grained and large in number (for example, a
/// lock per node in a linked list) as well as when lock hold times are always extremely short. In
/// general, while holding a spin lock, one should avoid blocking, calling anything that itself may
/// block, holding more than one spin lock at once, making dynamically dispatched calls (interface and
/// virtuals), making statically dispatched calls into any code one doesn't own, or allocating memory.
/// </para>
/// <para>
/// <see cref="SpinLock"/> should only be used when it's been determined that doing so will improve an
/// application's performance. It's also important to note that <see cref="SpinLock"/> is a value type,
/// for performance reasons. As such, one must be very careful not to accidentally copy a SpinLock
/// instance, as the two instances (the original and the copy) would then be completely independent of
/// one another, which would likely lead to erroneous behavior of the application. If a SpinLock instance
/// must be passed around, it should be passed by reference rather than by value.
/// </para>
/// <para>
/// Do not store <see cref="SpinLock"/> instances in readonly fields.
/// </para>
/// <para>
/// All members of <see cref="SpinLock"/> are thread-safe and may be used from multiple threads
/// concurrently.
/// </para>
/// </remarks>
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
@__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(SystemThreading_SpinLockDebugView)*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "IsHeld = {IsHeld}"*/)
public struct SpinLock
{
    private /*todo: volatile*/ int m_owner;
    private enum int SPINNING_FACTOR/*todo: implement initializer*/ = int();
    private enum int SLEEP_ONE_FREQUENCY/*todo: implement initializer*/ = int();
    private enum int SLEEP_ZERO_FREQUENCY/*todo: implement initializer*/ = int();
    private enum int TIMEOUT_CHECK_FREQUENCY/*todo: implement initializer*/ = int();
    private enum int LOCK_ID_DISABLE_MASK/*todo: implement initializer*/ = int();
    private enum int LOCK_ANONYMOUS_OWNED/*todo: implement initializer*/ = int();
    private enum int WAITERS_MASK/*todo: implement initializer*/ = int();
    private enum int ID_DISABLED_AND_ANONYMOUS_OWNED/*todo: implement initializer*/ = int();
    private enum int LOCK_UNOWNED/*todo: implement initializer*/ = int();
    private static int MAXIMUM_WAITERS/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate method Enter
    //TODO: generate method TryEnter
    //TODO: generate method TryEnter
    //TODO: generate method TryEnter
    //TODO: generate method ContinueTryEnter
    //TODO: generate method DecrementWaiters
    //TODO: generate method ContinueTryEnterWithThreadTracking
    //TODO: generate method Exit
    //TODO: generate method Exit
    //TODO: generate method ExitSlowPath
    //TODO: generate property 'IsHeld'
    //TODO: generate property 'IsHeldByCurrentThread'
    //TODO: generate property 'IsThreadOwnerTrackingEnabled'
    package(mscorlib) static class SystemThreading_SpinLockDebugView : __DotNet__Object
    {
        private SpinLock m_spinLock;
        //TODO: generate constructor
        //TODO: generate property 'IsHeldByCurrentThread'
        //TODO: generate property 'OwnerThreadID'
        //TODO: generate property 'IsHeld'
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\SpinWait.cs'
//
// SpinWait is just a little value type that encapsulates some common spinning
// logic. It ensures we always yield on single-proc machines (instead of using busy
// waits), and that we work well on HT. It encapsulates a good mixture of spinning
// and real yielding. It's a value type so that various areas of the engine can use
// one by allocating it on the stack w/out unnecessary GC allocation overhead, e.g.:
//
//     void f() {
//         SpinWait wait = new SpinWait();
//         while (!p) { wait.SpinOnce(); }
//         ...
//     }
//
// Internally it just maintains a counter that is used to decide when to yield, etc.
// 
// A common usage is to spin before blocking. In those cases, the NextSpinWillYield
// property allows a user to decide to fall back to waiting once it returns true:
// 
//     void f() {
//         SpinWait wait = new SpinWait();
//         while (!p) {
//             if (wait.NextSpinWillYield) { /* block! */ }
//             else { wait.SpinOnce(); }
//         }
//         ...
//     }
/// <summary>
/// Provides support for spin-based waiting.
/// </summary>
/// <remarks>
/// <para>
/// <see cref="SpinWait"/> encapsulates common spinning logic. On single-processor machines, yields are
/// always used instead of busy waits, and on computers with Intel™ processors employing Hyper-Threading™
/// technology, it helps to prevent hardware thread starvation. SpinWait encapsulates a good mixture of
/// spinning and true yielding.
/// </para>
/// <para>
/// <see cref="SpinWait"/> is a value type, which means that low-level code can utilize SpinWait without
/// fear of unnecessary allocation overheads. SpinWait is not generally useful for ordinary applications.
/// In most cases, you should use the synchronization classes provided by the .NET Framework, such as
/// <see cref="System.Threading.Monitor"/>. For most purposes where spin waiting is required, however,
/// the <see cref="SpinWait"/> type should be preferred over the <see
/// cref="System.Threading.Thread.SpinWait"/> method.
/// </para>
/// <para>
/// While SpinWait is designed to be used in concurrent applications, it is not designed to be
/// used from multiple threads concurrently.  SpinWait's members are not thread-safe.  If multiple
/// threads must spin, each should use its own instance of SpinWait.
/// </para>
/// </remarks>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
public struct SpinWait
{
    package(mscorlib) enum int YIELD_THRESHOLD/*todo: implement initializer*/ = int();
    package(mscorlib) enum int SLEEP_0_EVERY_HOW_MANY_TIMES/*todo: implement initializer*/ = int();
    package(mscorlib) enum int SLEEP_1_EVERY_HOW_MANY_TIMES/*todo: implement initializer*/ = int();
    private int m_count;
    //TODO: generate property 'Count'
    //TODO: generate property 'NextSpinWillYield'
    //TODO: generate method SpinOnce
    //TODO: generate method Reset
    //TODO: generate method SpinUntil
    //TODO: generate method SpinUntil
    //TODO: generate method SpinUntil
}
package(mscorlib) class PlatformHelper : __DotNet__Object
{
    private this() {} // prevent instantiation
    private enum int PROCESSOR_COUNT_REFRESH_INTERVAL_MS/*todo: implement initializer*/ = int();
    private static /*todo: volatile*/ int s_processorCount;
    private static /*todo: volatile*/ int s_lastProcessorCountRefreshTicks;
    //TODO: generate property 'ProcessorCount'
    //TODO: generate property 'IsSingleProcessor'
}
package(mscorlib) class TimeoutHelper : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method GetTime
    //TODO: generate method UpdateTimeOut
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\SynchronizationContext.cs'
//
// #if FEATURE_SYNCHRONIZATIONCONTEXT_WAIT
// [Flags]
// enum SynchronizationContextProperties
// {
// None = 0,
// RequireWaitNotification = 0x1
// };
// #endif
// #if FEATURE_COMINTEROP && FEATURE_APPX
//
// This is implemented in System.Runtime.WindowsRuntime, allowing us to ask that assembly for a WinRT-specific SyncCtx.
// I'd like this to be an interface, or at least an abstract class - but neither seems to play nice with FriendAccessAllowed.
//
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
package(mscorlib) class WinRTSynchronizationContextFactoryBase : __DotNet__Object
{
    //TODO: generate method Create
}
public class SynchronizationContext : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method Send
    //TODO: generate method Post
    //TODO: generate method OperationStarted
    //TODO: generate method OperationCompleted
    //TODO: generate method SetSynchronizationContext
    //TODO: generate method SetThreadStaticContext
    //TODO: generate property 'Current'
    //TODO: generate property 'CurrentNoFlow'
    //TODO: generate method GetWinRTContext
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private static WinRTSynchronizationContextFactoryBase s_winRTContextFactory;
    //TODO: generate method GetWinRTSynchronizationContextFactory
    //TODO: generate method GetWinRTDispatcherForCurrentThread
    //TODO: generate method CreateCopy
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\SynchronizationLockException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class SynchronizationLockException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Thread.cs'
//
package(mscorlib) alias InternalCrossContextDelegate = __DotNet__Object delegate(__DotNet__Object[] args);
package(mscorlib) class ThreadHelper : __DotNet__Object
{
    //TODO: generate constructor
    private Delegate _start;
    private __DotNet__Object _startArg/*todo: implement initializer*/ = null;
    private ExecutionContext _executionContext/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method SetExecutionContextHelper
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    package(mscorlib) static ContextCallback _ccb/*todo: implement initializer*/ = null;
    //TODO: generate method ThreadStart_Context
    //TODO: generate method ThreadStart
    //TODO: generate method ThreadStart
}
package(mscorlib) struct ThreadHandle
{
    private IntPtr m_ptr;
    //TODO: generate constructor
}
// deliberately not [serializable]
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_Thread)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class Thread : CriticalFinalizerObject, _Thread
{
    private ExecutionContext m_ExecutionContext;
    private SynchronizationContext m_SynchronizationContext;
    private String m_Name;
    private Delegate m_Delegate;
    private __DotNet__Object m_ThreadStartArg;
    private IntPtr DONT_USE_InternalThread;
    private int m_Priority;
    private int m_ManagedThreadId;
    private bool m_ExecutionContextBelongsToOuterScope;
    private bool m_ForbidExecutionContextMutation;
    private static LocalDataStoreMgr s_LocalDataStoreMgr;
    // =========================================================================
    // ** Thread-local data store
    // =========================================================================
    @__DotNet__Attribute!(ThreadStaticAttribute.stringof)
    private static LocalDataStoreHolder s_LocalDataStore;
    // Do not move! Order of above fields needs to be preserved for alignment
    // with native code
    // See code:#threadCultureInfo
    // #if !FEATURE_LEAK_CULTURE_INFO
    @__DotNet__Attribute!(ThreadStaticAttribute.stringof)
    package(mscorlib) static CultureInfo m_CurrentCulture;
    @__DotNet__Attribute!(ThreadStaticAttribute.stringof)
    package(mscorlib) static CultureInfo m_CurrentUICulture;
    private static AsyncLocal1!(CultureInfo) s_asyncLocalCurrentCulture;
    private static AsyncLocal1!(CultureInfo) s_asyncLocalCurrentUICulture;
    //TODO: generate method AsyncLocalSetCurrentCulture
    //TODO: generate method AsyncLocalSetCurrentUICulture
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetHashCode
    //TODO: generate property 'ManagedThreadId'
    //TODO: generate method GetNativeHandle
    //TODO: generate method Start
    //TODO: generate method Start
    //TODO: generate method Start
    //TODO: generate property 'ExecutionContext'
    //TODO: generate property 'SynchronizationContext'
    //TODO: generate method StartInternal
    //TODO: generate method InternalGetCurrentThread
    //TODO: generate method Abort
    //TODO: generate method AbortInternal
    //TODO: generate property 'Priority'
    //TODO: generate method GetPriorityNative
    //TODO: generate method SetPriorityNative
    //TODO: generate property 'IsAlive'
    //TODO: generate property 'IsThreadPoolThread'
    //TODO: generate method JoinInternal
    //TODO: generate method Join
    //TODO: generate method Join
    //TODO: generate method Join
    //TODO: generate method SleepInternal
    //TODO: generate method Sleep
    //TODO: generate method Sleep
    //TODO: generate method SpinWaitInternal
    //TODO: generate method SpinWait
    //TODO: generate method YieldInternal
    //TODO: generate method Yield
    //TODO: generate property 'CurrentThread'
    //TODO: generate method GetCurrentThreadNative
    //TODO: generate method SetStartHelper
    //TODO: generate method GetProcessDefaultStackSize
    //TODO: generate method SetStart
    //TODO: generate destructor
    //TODO: generate method InternalFinalize
    //TODO: generate method DisableComObjectEagerCleanup
    //TODO: generate property 'IsBackground'
    //TODO: generate method IsBackgroundNative
    //TODO: generate method SetBackgroundNative
    //TODO: generate property 'ThreadState'
    //TODO: generate method GetThreadStateNative
    //TODO: generate property 'ApartmentState'
    //TODO: generate method GetApartmentState
    //TODO: generate method TrySetApartmentState
    //TODO: generate method SetApartmentState
    //TODO: generate method SetApartmentStateHelper
    //TODO: generate method GetApartmentStateNative
    //TODO: generate method SetApartmentStateNative
    //TODO: generate method StartupSetApartmentStateInternal
    //TODO: generate method AllocateDataSlot
    //TODO: generate method AllocateNamedDataSlot
    //TODO: generate method GetNamedDataSlot
    //TODO: generate method FreeNamedDataSlot
    //TODO: generate method GetData
    //TODO: generate method SetData
    //TODO: generate property 'CurrentUICulture'
    //TODO: generate method GetCurrentUICultureNoAppX
    //TODO: generate property 'CurrentCulture'
    //TODO: generate method GetCurrentCultureNoAppX
    //TODO: generate method nativeInitCultureAccessors
    //TODO: generate method GetDomainInternal
    //TODO: generate method GetFastDomainInternal
    //TODO: generate method GetDomain
    //TODO: generate method GetDomainID
    //TODO: generate property 'Name'
    //TODO: generate method InformThreadNameChange
    //TODO: generate property 'AbortReason'
    //TODO: generate method VolatileRead
    //TODO: generate method VolatileRead
    //TODO: generate method VolatileRead
    //TODO: generate method VolatileRead
    //TODO: generate method VolatileRead
    //TODO: generate method VolatileRead
    //TODO: generate method VolatileRead
    //TODO: generate method VolatileRead
    //TODO: generate method VolatileRead
    //TODO: generate method VolatileRead
    //TODO: generate method VolatileRead
    //TODO: generate method VolatileRead
    //TODO: generate method VolatileRead
    //TODO: generate method VolatileWrite
    //TODO: generate method VolatileWrite
    //TODO: generate method VolatileWrite
    //TODO: generate method VolatileWrite
    //TODO: generate method VolatileWrite
    //TODO: generate method VolatileWrite
    //TODO: generate method VolatileWrite
    //TODO: generate method VolatileWrite
    //TODO: generate method VolatileWrite
    //TODO: generate method VolatileWrite
    //TODO: generate method VolatileWrite
    //TODO: generate method VolatileWrite
    //TODO: generate method VolatileWrite
    //TODO: generate method MemoryBarrier
    //TODO: generate property 'LocalDataStoreManager'
    //TODO: generate method SetAbortReason
    //TODO: generate method GetAbortReason
    //TODO: generate method ClearAbortReason
}
// declaring a local var of this enum type and passing it by ref into a function that needs to do a
// stack crawl will both prevent inlining of the calle and pass an ESP point to stack crawl to
// Declaring these in EH clauses is illegal; they must declared in the main method body
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) enum StackCrawlMark
{
    LookForMe = 0,
    LookForMyCaller = 1,
    LookForMyCallersCaller = 2,
    LookForThread = 3,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\ThreadAbortException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class ThreadAbortException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'ExceptionState'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\ThreadInterruptedException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class ThreadInterruptedException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\ThreadLocal.cs'
//
/// <summary>
/// Provides thread-local storage of data.
/// </summary>
/// <typeparam name="T">Specifies the type of data stored per-thread.</typeparam>
/// <remarks>
/// <para>
/// With the exception of <see cref="Dispose()"/>, all public and protected members of 
/// <see cref="ThreadLocal{T}"/> are thread-safe and may be used
/// concurrently from multiple threads.
/// </para>
/// </remarks>
@__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(SystemThreading_ThreadLocalDebugView<>)*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "IsValueCreated={IsValueCreated}, Value={ValueForDebugDisplay}, Count={ValuesCountForDebugDisplay}"*/)
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
public class ThreadLocal1(T) : __DotNet__Object, IDisposable
{
    private Func1!(T) m_valueFactory;
    //
    // ts_slotArray is a table of thread-local values for all ThreadLocal<T> instances
    //
    // So, when a thread reads ts_slotArray, it gets back an array of *all* ThreadLocal<T> values for this thread and this T.
    // The slot relevant to this particular ThreadLocal<T> instance is determined by the m_idComplement instance field stored in
    // the ThreadLocal<T> instance.
    //
    @__DotNet__Attribute!(ThreadStaticAttribute.stringof)
    private static LinkedSlotVolatile[] ts_slotArray;
    @__DotNet__Attribute!(ThreadStaticAttribute.stringof)
    private static FinalizationHelper ts_finalizationHelper;
    private int m_idComplement;
    private /*todo: volatile*/ bool m_initialized;
    private static IdManager s_idManager/*todo: implement initializer*/ = null;
    private LinkedSlot m_linkedSlot/*todo: implement initializer*/ = null;
    private bool m_trackAllValues;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Initialize
    //TODO: generate destructor
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    //TODO: generate method ToString
    //TODO: generate property 'Value'
    //TODO: generate method GetValueSlow
    //TODO: generate method SetValueSlow
    //TODO: generate method CreateLinkedSlot
    //TODO: generate property 'Values'
    //TODO: generate method GetValuesAsList
    //TODO: generate property 'ValuesCountForDebugDisplay'
    //TODO: generate property 'IsValueCreated'
    //TODO: generate property 'ValueForDebugDisplay'
    //TODO: generate property 'ValuesForDebugDisplay'
    //TODO: generate method GrowTable
    //TODO: generate method GetNewTableSize
    private static struct LinkedSlotVolatile
    {
        package(mscorlib) /*todo: volatile*/ LinkedSlot Value;
    }
    private static final class LinkedSlot : __DotNet__Object
    {
        //TODO: generate constructor
        package(mscorlib) /*todo: volatile*/ LinkedSlot Next;
        package(mscorlib) /*todo: volatile*/ LinkedSlot Previous;
        package(mscorlib) /*todo: volatile*/ LinkedSlotVolatile[] SlotArray;
        package(mscorlib) T Value;
    }
    private static class IdManager : __DotNet__Object
    {
        private int m_nextIdToTry/*todo: implement initializer*/ = int();
        private List1!(bool) m_freeIds/*todo: implement initializer*/ = null;
        //TODO: generate method GetId
        //TODO: generate method ReturnId
    }
    private static class FinalizationHelper : __DotNet__Object
    {
        package(mscorlib) LinkedSlotVolatile[] SlotArray;
        private bool m_trackAllValues;
        //TODO: generate constructor
        //TODO: generate destructor
    }
}
package(mscorlib) final class SystemThreading_ThreadLocalDebugView1(T) : __DotNet__Object
{
    private immutable ThreadLocal1!(T) m_tlocal;
    //TODO: generate constructor
    //TODO: generate property 'IsValueCreated'
    //TODO: generate property 'Value'
    //TODO: generate property 'Values'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\ThreadPool.cs'
//
package(mscorlib) class ThreadPoolGlobals : __DotNet__Object
{
    private this() {} // prevent instantiation
    public static uint tpQuantum/*todo: implement initializer*/ = uint();
    public static int processorCount/*todo: implement initializer*/ = int();
    public static bool tpHosted/*todo: implement initializer*/ = bool();
    public static /*todo: volatile*/ bool vmTpInitialized;
    public static bool enableWorkerTracking;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    public static ThreadPoolWorkQueue workQueue/*todo: implement initializer*/ = null;
    //TODO: generate constructor
}
package(mscorlib) final class ThreadPoolWorkQueue : __DotNet__Object
{
    package(mscorlib) static class SparseArray1(T) : __DotNet__Object/*where T : class*/
    {
        private /*todo: volatile*/ T[] m_array;
        //TODO: generate constructor
        //TODO: generate property 'Current'
        //TODO: generate method Add
        //TODO: generate method Remove
    }
    package(mscorlib) static class WorkStealingQueue : __DotNet__Object
    {
        private enum int INITIAL_SIZE/*todo: implement initializer*/ = int();
        package(mscorlib) /*todo: volatile*/ IThreadPoolWorkItem[] m_array/*todo: implement initializer*/ = null;
        private /*todo: volatile*/ int m_mask/*todo: implement initializer*/ = int();
        private enum int START_INDEX/*todo: implement initializer*/ = int();
        private /*todo: volatile*/ int m_headIndex/*todo: implement initializer*/ = int();
        private /*todo: volatile*/ int m_tailIndex/*todo: implement initializer*/ = int();
        private SpinLock m_foreignLock/*todo: implement initializer*/ = SpinLock();
        //TODO: generate method LocalPush
        //TODO: generate method LocalFindAndPop
        //TODO: generate method LocalPop
        //TODO: generate method TrySteal
        //TODO: generate method TrySteal
    }
    package(mscorlib) static class QueueSegment : __DotNet__Object
    {
        package(mscorlib) immutable IThreadPoolWorkItem[] nodes;
        private enum int QueueSegmentLength/*todo: implement initializer*/ = int();
        private /*todo: volatile*/ int indexes;
        public /*todo: volatile*/ QueueSegment Next;
        private enum int SixteenBits/*todo: implement initializer*/ = int();
        //TODO: generate method GetIndexes
        //TODO: generate method CompareExchangeIndexes
        //TODO: generate constructor
        //TODO: generate method IsUsedUp
        //TODO: generate method TryEnqueue
        //TODO: generate method TryDequeue
    }
    package(mscorlib) /*todo: volatile*/ QueueSegment queueHead;
    package(mscorlib) /*todo: volatile*/ QueueSegment queueTail;
    package(mscorlib) bool loggingEnabled;
    package(mscorlib) static SparseArray1!(WorkStealingQueue) allThreadQueues/*todo: implement initializer*/ = null;
    private /*todo: volatile*/ int numOutstandingThreadRequests/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate method EnsureCurrentThreadHasQueue
    //TODO: generate method EnsureThreadRequested
    //TODO: generate method MarkThreadRequestSatisfied
    //TODO: generate method Enqueue
    //TODO: generate method LocalFindAndPop
    //TODO: generate method Dequeue
    //TODO: generate method Dispatch
}
package(mscorlib) final class ThreadPoolWorkQueueThreadLocals : __DotNet__Object
{
    @__DotNet__Attribute!(ThreadStaticAttribute.stringof)
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    public static ThreadPoolWorkQueueThreadLocals threadLocals;
    public immutable ThreadPoolWorkQueue workQueue;
    public immutable ThreadPoolWorkQueue.WorkStealingQueue workStealingQueue;
    public immutable Random random/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method CleanUp
    //TODO: generate destructor
}
package(mscorlib) final class RegisteredWaitHandleSafe : CriticalFinalizerObject
{
    //TODO: generate property 'InvalidHandle'
    private IntPtr registeredWaitHandle;
    private WaitHandle m_internalWaitObject;
    private bool bReleaseNeeded/*todo: implement initializer*/ = bool();
    private /*todo: volatile*/ int m_lock/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate method GetHandle
    //TODO: generate method SetHandle
    //TODO: generate method SetWaitObject
    //TODO: generate method Unregister
    //TODO: generate method ValidHandle
    //TODO: generate destructor
    //TODO: generate method WaitHandleCleanupNative
    //TODO: generate method UnregisterWaitNative
}
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class RegisteredWaitHandle : __DotNet__Object
{
    private RegisteredWaitHandleSafe internalRegisteredWait;
    //TODO: generate constructor
    //TODO: generate method SetHandle
    //TODO: generate method SetWaitObject
    //TODO: generate method Unregister
}
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public alias WaitCallback = void delegate(__DotNet__Object state);
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public alias WaitOrTimerCallback = void delegate(__DotNet__Object state, bool timedOut);
package(mscorlib) class _ThreadPoolWaitCallback : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method PerformWaitCallback
}
package(mscorlib) interface IThreadPoolWorkItem
{
    //TODO: generate method ExecuteWorkItem
    //TODO: generate method MarkAborted
}
package(mscorlib) final class QueueUserWorkItemCallback : __DotNet__Object, IThreadPoolWorkItem
{
    //TODO: generate constructor
    private WaitCallback callback;
    private ExecutionContext context;
    private __DotNet__Object state;
    private /*todo: volatile*/ int executed;
    //TODO: generate destructor
    //TODO: generate method MarkExecuted
    //TODO: generate constructor
    //TODO: generate method ExecuteWorkItem
    //TODO: generate method MarkAborted
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    package(mscorlib) static ContextCallback ccb/*todo: implement initializer*/ = null;
    //TODO: generate method WaitCallback_Context
}
package(mscorlib) final class QueueUserWorkItemCallbackDefaultContext : __DotNet__Object, IThreadPoolWorkItem
{
    //TODO: generate constructor
    private WaitCallback callback;
    private __DotNet__Object state;
    private /*todo: volatile*/ int executed;
    //TODO: generate destructor
    //TODO: generate method MarkExecuted
    //TODO: generate constructor
    //TODO: generate method ExecuteWorkItem
    //TODO: generate method MarkAborted
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    package(mscorlib) static ContextCallback ccb/*todo: implement initializer*/ = null;
    //TODO: generate method WaitCallback_Context
}
package(mscorlib) class _ThreadPoolWaitOrTimerCallback : __DotNet__Object
{
    //TODO: generate constructor
    private WaitOrTimerCallback _waitOrTimerCallback;
    private ExecutionContext _executionContext;
    private __DotNet__Object _state;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private static ContextCallback _ccbt/*todo: implement initializer*/ = null;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private static ContextCallback _ccbf/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method WaitOrTimerCallback_Context_t
    //TODO: generate method WaitOrTimerCallback_Context_f
    //TODO: generate method WaitOrTimerCallback_Context
    //TODO: generate method PerformWaitOrTimerCallback
}
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public alias IOCompletionCallback = void delegate(uint errorCode, uint numBytes, NativeOverlapped* pOVERLAP);
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization=true, ExternalThreading=true*/)
public class ThreadPool : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method SetMaxThreads
    //TODO: generate method GetMaxThreads
    //TODO: generate method SetMinThreads
    //TODO: generate method GetMinThreads
    //TODO: generate method GetAvailableThreads
    //TODO: generate method RegisterWaitForSingleObject
    //TODO: generate method UnsafeRegisterWaitForSingleObject
    //TODO: generate method RegisterWaitForSingleObject
    //TODO: generate method RegisterWaitForSingleObject
    //TODO: generate method UnsafeRegisterWaitForSingleObject
    //TODO: generate method RegisterWaitForSingleObject
    //TODO: generate method UnsafeRegisterWaitForSingleObject
    //TODO: generate method RegisterWaitForSingleObject
    //TODO: generate method UnsafeRegisterWaitForSingleObject
    //TODO: generate method QueueUserWorkItem
    //TODO: generate method QueueUserWorkItem
    //TODO: generate method UnsafeQueueUserWorkItem
    //TODO: generate method QueueUserWorkItemHelper
    //TODO: generate method UnsafeQueueCustomWorkItem
    //TODO: generate method TryPopCustomWorkItem
    //TODO: generate method GetQueuedWorkItems
    //TODO: generate method EnumerateQueuedWorkItems
    //TODO: generate method GetLocallyQueuedWorkItems
    //TODO: generate method GetGloballyQueuedWorkItems
    //TODO: generate method ToObjectArray
    //TODO: generate method GetQueuedWorkItemsForDebugger
    //TODO: generate method GetGloballyQueuedWorkItemsForDebugger
    //TODO: generate method GetLocallyQueuedWorkItemsForDebugger
    //TODO: generate method RequestWorkerThread
    //TODO: generate method PostQueuedCompletionStatus
    //TODO: generate method UnsafeQueueNativeOverlapped
    //TODO: generate method EnsureVMInitialized
    //TODO: generate method SetMinThreadsNative
    //TODO: generate method SetMaxThreadsNative
    //TODO: generate method GetMinThreadsNative
    //TODO: generate method GetMaxThreadsNative
    //TODO: generate method GetAvailableThreadsNative
    //TODO: generate method NotifyWorkItemComplete
    //TODO: generate method ReportThreadStatus
    //TODO: generate method NotifyWorkItemProgress
    //TODO: generate method NotifyWorkItemProgressNative
    //TODO: generate method IsThreadPoolHosted
    //TODO: generate method InitializeVMTp
    //TODO: generate method RegisterWaitForSingleObjectNative
    //TODO: generate method BindHandle
    //TODO: generate method BindIOCompletionCallbackNative
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\ThreadPriority.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum ThreadPriority
{
    // =========================================================================
    // ** Constants for thread priorities.
    // =========================================================================
    Lowest = 0,
    BelowNormal = 1,
    Normal = 2,
    AboveNormal = 3,
    Highest = 4,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\ThreadStart.cs'
//
// Define the delegate
// NOTE: If you change the signature here, there is code in COMSynchronization
//  that invokes this delegate in native.
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public alias ThreadStart = void delegate();

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\ThreadStartException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class ThreadStartException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\ThreadState.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum ThreadState
{
    // =========================================================================
    // ** Constants for thread states.
    // =========================================================================
    Running = 0,
    StopRequested = 1,
    SuspendRequested = 2,
    Background = 4,
    Unstarted = 8,
    Stopped = 16,
    WaitSleepJoin = 32,
    Suspended = 64,
    AbortRequested = 128,
    Aborted = 256,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\ThreadStateException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class ThreadStateException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Timeout.cs'
//
// A constant used by methods that take a timeout (Object.Wait, Thread.Sleep
// etc) to indicate that no timeout should occur.
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class Timeout : __DotNet__Object
{
    private this() {} // prevent instantiation
    @__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
    public static immutable TimeSpan InfiniteTimeSpan/*todo: implement initializer*/ = TimeSpan();
    public enum int Infinite/*todo: implement initializer*/ = int();
    package(mscorlib) enum uint UnsignedInfinite/*todo: implement initializer*/ = uint();
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Timer.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public alias TimerCallback = void delegate(__DotNet__Object state);
private class TimerQueue : __DotNet__Object
{
    private static TimerQueue s_queue/*todo: implement initializer*/ = null;
    //TODO: generate property 'Instance'
    //TODO: generate constructor
    //TODO: generate property 'TickCount'
    //
    // We use a SafeHandle to ensure that the native timer is destroyed when the AppDomain is unloaded.
    //
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private static class AppDomainTimerSafeHandle : SafeHandleZeroOrMinusOneIsInvalid
    {
        //TODO: generate constructor
        //TODO: generate method ReleaseHandle
    }
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private AppDomainTimerSafeHandle m_appDomainTimer;
    private bool m_isAppDomainTimerScheduled;
    private int m_currentAppDomainTimerStartTicks;
    private uint m_currentAppDomainTimerDuration;
    //TODO: generate method EnsureAppDomainTimerFiresBy
    //TODO: generate method AppDomainTimerCallback
    //TODO: generate method CreateAppDomainTimer
    //TODO: generate method ChangeAppDomainTimer
    //TODO: generate method DeleteAppDomainTimer
    private TimerQueueTimer m_timers;
    private /*todo: volatile*/ int m_pauseTicks/*todo: implement initializer*/ = int();
    //TODO: generate method Pause
    //TODO: generate method Resume
    //TODO: generate method FireNextTimers
    //TODO: generate method QueueTimerCompletion
    private static WaitCallback s_fireQueuedTimerCompletion;
    //TODO: generate method FireQueuedTimerCompletion
    //TODO: generate method UpdateTimer
    //TODO: generate method DeleteTimer
}
private final class TimerQueueTimer : __DotNet__Object
{
    package(mscorlib) TimerQueueTimer m_next;
    package(mscorlib) TimerQueueTimer m_prev;
    package(mscorlib) int m_startTicks;
    package(mscorlib) uint m_dueTime;
    package(mscorlib) uint m_period;
    private immutable TimerCallback m_timerCallback;
    private immutable __DotNet__Object m_state;
    private immutable ExecutionContext m_executionContext;
    private int m_callbacksRunning;
    private /*todo: volatile*/ bool m_canceled;
    private /*todo: volatile*/ WaitHandle m_notifyWhenNoCallbacksRunning;
    //TODO: generate constructor
    //TODO: generate method Change
    //TODO: generate method Close
    //TODO: generate method Close
    //TODO: generate method Fire
    //TODO: generate method SignalNoCallbacksRunning
    //TODO: generate method CallCallback
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private static ContextCallback s_callCallbackInContext;
    //TODO: generate method CallCallbackInContext
}
private final class TimerHolder : __DotNet__Object
{
    package(mscorlib) TimerQueueTimer m_timer;
    //TODO: generate constructor
    //TODO: generate destructor
    //TODO: generate method Close
    //TODO: generate method Close
}
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization=true, ExternalThreading=true*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class Timer : __DotNet__Object, IDisposable
{
    private enum uint MAX_SUPPORTED_TIMEOUT/*todo: implement initializer*/ = uint();
    private TimerHolder m_timer;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method TimerSetup
    //TODO: generate method Pause
    //TODO: generate method Resume
    //TODO: generate method Change
    //TODO: generate method Change
    //TODO: generate method Change
    //TODO: generate method Change
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    //TODO: generate method KeepRootedWhileScheduled
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\Volatile.cs'
//
public class Volatile : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method Read
    //TODO: generate method Read
    //TODO: generate method Read
    //TODO: generate method Read
    //TODO: generate method Read
    //TODO: generate method Read
    //TODO: generate method Read
    //TODO: generate method Read
    //TODO: generate method Read
    //TODO: generate method Read
    //TODO: generate method Read
    //TODO: generate method Read
    //TODO: generate method Read
    //TODO: generate method Read
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\WaitHandle.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class WaitHandle : __DotNet__Object, IDisposable
{
    public enum int WaitTimeout/*todo: implement initializer*/ = int();
    private enum int MAX_WAITHANDLES/*todo: implement initializer*/ = int();
    private IntPtr waitHandle;
    // #pragma warning restore 414
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    package(mscorlib) /*todo: volatile*/ SafeWaitHandle safeWaitHandle;
    package(mscorlib) bool hasThreadAffinity;
    //TODO: generate method GetInvalidHandle
    protected static immutable IntPtr InvalidHandle/*todo: implement initializer*/ = IntPtr();
    private enum int WAIT_OBJECT_0/*todo: implement initializer*/ = int();
    private enum int WAIT_ABANDONED/*todo: implement initializer*/ = int();
    private enum int WAIT_FAILED/*todo: implement initializer*/ = int();
    private enum int ERROR_TOO_MANY_POSTS/*todo: implement initializer*/ = int();
    package(mscorlib) enum OpenExistingResult
    {
        Success,
        NameNotFound,
        PathNotFound,
        NameInvalid,
    }
    //TODO: generate constructor
    //TODO: generate method Init
    //TODO: generate property 'Handle'
    //TODO: generate property 'SafeWaitHandle'
    //TODO: generate method SetHandleInternal
    //TODO: generate method WaitOne
    //TODO: generate method WaitOne
    //TODO: generate method WaitOne
    //TODO: generate method WaitOne
    //TODO: generate method WaitOne
    //TODO: generate method WaitOne
    //TODO: generate method InternalWaitOne
    //TODO: generate method WaitOneWithoutFAS
    //TODO: generate method WaitOneNative
    //TODO: generate method WaitMultiple
    //TODO: generate method WaitAll
    //TODO: generate method WaitAll
    //TODO: generate method WaitAll
    //TODO: generate method WaitAll
    //TODO: generate method WaitAll
    //TODO: generate method WaitAny
    //TODO: generate method WaitAny
    //TODO: generate method WaitAny
    //TODO: generate method WaitAny
    //TODO: generate method WaitAny
    //TODO: generate method SignalAndWaitOne
    //TODO: generate method SignalAndWait
    //TODO: generate method SignalAndWait
    //TODO: generate method SignalAndWait
    //TODO: generate method ThrowAbandonedMutexException
    //TODO: generate method ThrowAbandonedMutexException
    //TODO: generate method Close
    //TODO: generate method Dispose
    //TODO: generate method Dispose
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\WaitHandleCannotBeOpenedException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
public class WaitHandleCannotBeOpenedException : __DotNet__Exception
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Threading\WaitHandleExtensions.cs'
//
public class WaitHandleExtensions : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method GetSafeWaitHandle
    //TODO: generate method SetSafeWaitHandle
}
