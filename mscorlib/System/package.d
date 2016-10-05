module mscorlib.System;


//
// Source Included from 'D:\git\CSharpToD\mscorlib\System.d'
//

private struct __DotNet__AttributeStruct
{
    enum Target {
        none,
        assembly,
        module_,
    }
    Target target;
    string stringOfType;
    this(Target target, string stringOfType)
    {
        this.target = target;
        this.stringOfType = stringOfType;
    }
    this(string stringOfType)
    {
        this.target = Target.none;
        this.stringOfType = stringOfType;
    }
}
template __DotNet__Attribute(T...)
{
    static if(is(typeof(T[0]) == string))
    {
        immutable __DotNet__AttributeStruct __DotNet__Attribute =
            __DotNet__AttributeStruct(T[0]);
    }
    else
    {
        immutable __DotNet__AttributeStruct __DotNet__Attribute =
            __DotNet__AttributeStruct(T[0], T[1]);
    }
}
import mscorlib.System.Collections.Concurrent :
    ConcurrentStack1;
import mscorlib.System.Collections.Generic :
    List1,
    Dictionary2,
    IEnumerator1,
    IList1,
    IReadOnlyList1,
    IEnumerable1,
    IComparer1,
    IEqualityComparer1;
import mscorlib.System.Runtime.ConstrainedExecution :
    CriticalFinalizerObject;
import mscorlib.System.Runtime.InteropServices :
    GCHandle,
    ComVisibleAttribute,
    ClassInterfaceAttribute,
    ComDefaultInterfaceAttribute,
    _Activator,
    StructLayoutAttribute,
    _Attribute,
    _Exception,
    GuidAttribute,
    InterfaceTypeAttribute,
    _Type;
import mscorlib.System.Collections :
    Hashtable,
    IList,
    IStructuralComparable,
    IStructuralEquatable,
    IComparer,
    IEnumerator,
    DictionaryEntry,
    IDictionary,
    IEnumerable,
    IEqualityComparer;
import mscorlib.System.Reflection :
    BindingFlags,
    Assembly,
    Binder,
    MethodInfo,
    MethodBase,
    __DotNet__TypeInfo,
    CerHashtable2,
    RuntimeMethodInfo,
    RuntimeConstructorInfo,
    RuntimeFieldInfo,
    RuntimePropertyInfo,
    RuntimeEventInfo,
    INVOCATION_FLAGS,
    MethodAttributes,
    ConstructorInfo,
    RuntimeModule,
    MemberInfo,
    IReflect,
    MemberFilter,
    Missing;
import mscorlib.System.Diagnostics :
    DebuggerDisplayAttribute,
    DebuggerTypeProxyAttribute;
import mscorlib.System.Collections.ObjectModel :
    ReadOnlyCollection1;
import mscorlib.System.Security :
    SecurityCriticalAttribute,
    IEvidenceFactory,
    PermissionSet;
import mscorlib.System.Security.Policy :
    Evidence,
    ApplicationTrust;
import mscorlib.System.Runtime.Serialization :
    OptionalFieldAttribute,
    ISerializable,
    IDeserializationCallback,
    IObjectReference;
import mscorlib.System.Globalization :
    UnicodeCategory,
    CompareInfo,
    Calendar,
    CultureInfo;
import mscorlib.System.Runtime.CompilerServices :
    FriendAccessAllowedAttribute;
import mscorlib.System.Runtime.Versioning :
    NonVersionableAttribute;
import mscorlib.System.Resources :
    ResourceManager;
import mscorlib.Microsoft.Win32 :
    Win32Native;
import mscorlib.System.Security.Permissions :
    HostProtectionAttribute;
import mscorlib.System.Runtime.ExceptionServices :
    ExceptionDispatchInfo;
import mscorlib.System.Diagnostics.Contracts :
    Contract,
    PureAttribute;
import mscorlib.Microsoft.Win32.SafeHandles :
    SafeFileHandle,
    SafeHandleZeroOrMinusOneIsInvalid;
import mscorlib.System.Threading :
    CancellationToken,
    SynchronizationContext,
    SendOrPostCallback;
import mscorlib :
    EmptyArray1;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\Common\PinnableBufferCache.cs'
//
package(mscorlib) final class PinnableBufferCache : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method AllocateBuffer
    //TODO: generate method FreeBuffer
    //TODO: generate constructor
    //TODO: generate method Allocate
    //TODO: generate method Free
    //TODO: generate method Restock
    //TODO: generate method AgePendingBuffers
    //TODO: generate method CreateNewBuffers
    //TODO: generate method Gen2GcCallbackFunc
    //TODO: generate method TrimFreeListIfNeeded
    private enum int DefaultNumberOfBuffers/*todo: implement initializer*/ = int();
    private String m_CacheName;
    private Func1!(__DotNet__Object) m_factory;
    private ConcurrentStack1!(__DotNet__Object) m_FreeList/*todo: implement initializer*/ = null;
    private List1!(__DotNet__Object) m_NotGen2;
    private int m_gen1CountAtLastRestock;
    private int m_msecNoUseBeyondFreeListSinceThisTime;
    private bool m_moreThanFreeListNeeded;
    private int m_buffersUnderManagement;
    private int m_restockSize;
    private bool m_trimmingExperimentInProgress;
    private int m_minBufferCount;
    private int m_numAllocCalls;
}
package(mscorlib) final class Gen2GcCallback : CriticalFinalizerObject
{
    //TODO: generate constructor
    //TODO: generate method Register
    private Func2!(__DotNet__Object,bool) m_callback;
    private GCHandle m_weakTargetObj;
    //TODO: generate method Setup
    //TODO: generate destructor
}
package(mscorlib) final class PinnableBufferCacheEventSource : __DotNet__Object
{
    public static immutable PinnableBufferCacheEventSource Log/*todo: implement initializer*/ = null;
    //TODO: generate method IsEnabled
    //TODO: generate method DebugMessage
    //TODO: generate method DebugMessage1
    //TODO: generate method DebugMessage2
    //TODO: generate method DebugMessage3
    //TODO: generate method Create
    //TODO: generate method AllocateBuffer
    //TODO: generate method AllocateBufferFromNotGen2
    //TODO: generate method AllocateBufferCreatingNewBuffers
    //TODO: generate method AllocateBufferAged
    //TODO: generate method AllocateBufferFreeListEmpty
    //TODO: generate method FreeBuffer
    //TODO: generate method FreeBufferStillTooYoung
    //TODO: generate method TrimCheck
    //TODO: generate method TrimFree
    //TODO: generate method TrimExperiment
    //TODO: generate method TrimFreeSizeOK
    //TODO: generate method TrimFlush
    //TODO: generate method AgePendingBuffersResults
    //TODO: generate method WalkFreeListResult
    //TODO: generate method AddressOf
    //TODO: generate method AddressOfObject
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\__ComObject.cs'
//
package(mscorlib) class __ComObject : MarshalByRefObject
{
    private Hashtable m_ObjectToDataMap;
    //TODO: generate constructor
    //TODO: generate method ToString
    //TODO: generate method GetIUnknown
    //TODO: generate method GetData
    //TODO: generate method SetData
    //TODO: generate method ReleaseAllData
    //TODO: generate method GetEventProvider
    //TODO: generate method ReleaseSelf
    //TODO: generate method FinalReleaseSelf
    //TODO: generate method CreateEventProvider
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\__Filters.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class __Filters : __DotNet__Object
{
    package(mscorlib) static immutable __Filters Instance/*todo: implement initializer*/ = null;
    //TODO: generate method FilterAttribute
    //TODO: generate method FilterName
    //TODO: generate method FilterIgnoreCase
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\__HResults.cs'
//
package(mscorlib) class __HResults : __DotNet__Object
{
    private this() {} // prevent instantiation
    package(mscorlib) enum int RO_E_CLOSED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int E_BOUNDS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int E_CHANGED_STATE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int E_FAIL/*todo: implement initializer*/ = int();
    package(mscorlib) enum int E_POINTER/*todo: implement initializer*/ = int();
    package(mscorlib) enum int E_NOTIMPL/*todo: implement initializer*/ = int();
    package(mscorlib) enum int REGDB_E_CLASSNOTREG/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_AMBIGUOUSMATCH/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_APPDOMAINUNLOADED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_APPLICATION/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_ARGUMENT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_ARGUMENTOUTOFRANGE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_ARITHMETIC/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_ARRAYTYPEMISMATCH/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_BADIMAGEFORMAT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_TYPEUNLOADED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_CANNOTUNLOADAPPDOMAIN/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_COMEMULATE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_CONTEXTMARSHAL/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_DATAMISALIGNED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_TIMEOUT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_CUSTOMATTRIBUTEFORMAT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_DIVIDEBYZERO/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_DUPLICATEWAITOBJECT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_EXCEPTION/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_EXECUTIONENGINE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_FIELDACCESS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_FORMAT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_INDEXOUTOFRANGE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_INSUFFICIENTMEMORY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_INSUFFICIENTEXECUTIONSTACK/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_INVALIDCAST/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_INVALIDCOMOBJECT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_INVALIDFILTERCRITERIA/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_INVALIDOLEVARIANTTYPE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_INVALIDOPERATION/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_INVALIDPROGRAM/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_KEYNOTFOUND/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_MARSHALDIRECTIVE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_MEMBERACCESS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_METHODACCESS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_MISSINGFIELD/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_MISSINGMANIFESTRESOURCE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_MISSINGMEMBER/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_MISSINGMETHOD/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_MISSINGSATELLITEASSEMBLY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_MULTICASTNOTSUPPORTED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_NOTFINITENUMBER/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_PLATFORMNOTSUPPORTED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_NOTSUPPORTED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_NULLREFERENCE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_OBJECTDISPOSED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_OPERATIONCANCELED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_OUTOFMEMORY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_OVERFLOW/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_RANK/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_REFLECTIONTYPELOAD/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_RUNTIMEWRAPPED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_SAFEARRAYRANKMISMATCH/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_SAFEARRAYTYPEMISMATCH/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_SAFEHANDLEMISSINGATTRIBUTE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_SECURITY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_SERIALIZATION/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_SEMAPHOREFULL/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_WAITHANDLECANNOTBEOPENED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_ABANDONEDMUTEX/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_STACKOVERFLOW/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_SYNCHRONIZATIONLOCK/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_SYSTEM/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_TARGET/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_TARGETINVOCATION/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_TARGETPARAMCOUNT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_THREADABORTED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_THREADINTERRUPTED/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_THREADSTATE/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_THREADSTOP/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_THREADSTART/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_TYPEACCESS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_TYPEINITIALIZATION/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_TYPELOAD/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_ENTRYPOINTNOTFOUND/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_DLLNOTFOUND/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_UNAUTHORIZEDACCESS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_UNSUPPORTEDFORMAT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_VERIFICATION/*todo: implement initializer*/ = int();
    package(mscorlib) enum int COR_E_HOSTPROTECTION/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CORSEC_E_MIN_GRANT_FAIL/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CORSEC_E_NO_EXEC_PERM/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CORSEC_E_POLICY_EXCEPTION/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CORSEC_E_XMLSYNTAX/*todo: implement initializer*/ = int();
    package(mscorlib) enum int NTE_FAIL/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CORSEC_E_CRYPTO/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CORSEC_E_CRYPTO_UNEX_OPER/*todo: implement initializer*/ = int();
    package(mscorlib) enum int DISP_E_OVERFLOW/*todo: implement initializer*/ = int();
    package(mscorlib) enum int FUSION_E_REF_DEF_MISMATCH/*todo: implement initializer*/ = int();
    package(mscorlib) enum int FUSION_E_INVALID_NAME/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TYPE_E_TYPEMISMATCH/*todo: implement initializer*/ = int();
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\_LocalDataStore.cs'
//
package(mscorlib) final class LocalDataStoreHolder : __DotNet__Object
{
    private LocalDataStore m_Store;
    //TODO: generate constructor
    //TODO: generate destructor
    //TODO: generate property 'Store'
}
package(mscorlib) final class LocalDataStoreElement : __DotNet__Object
{
    private __DotNet__Object m_value;
    private long m_cookie;
    //TODO: generate constructor
    //TODO: generate property 'Value'
    //TODO: generate property 'Cookie'
}
package(mscorlib) final class LocalDataStore : __DotNet__Object
{
    private LocalDataStoreElement[] m_DataTable;
    private LocalDataStoreMgr m_Manager;
    //TODO: generate constructor
    //TODO: generate method Dispose
    //TODO: generate method GetData
    //TODO: generate method SetData
    //TODO: generate method FreeData
    //TODO: generate method PopulateElement
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\_LocalDataStoreMgr.cs'
//
// This class is an encapsulation of a slot so that it is managed in a secure fashion.
// It is constructed by the LocalDataStoreManager, holds the slot and the manager
// and cleans up when it is finalized.
// This class will not be marked serializable
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class LocalDataStoreSlot : __DotNet__Object
{
    private LocalDataStoreMgr m_mgr;
    private int m_slot;
    private long m_cookie;
    //TODO: generate constructor
    //TODO: generate property 'Manager'
    //TODO: generate property 'Slot'
    //TODO: generate property 'Cookie'
    //TODO: generate destructor
}
package(mscorlib) final class LocalDataStoreMgr : __DotNet__Object
{
    private enum int InitialSlotTableSize/*todo: implement initializer*/ = int();
    private enum int SlotTableDoubleThreshold/*todo: implement initializer*/ = int();
    private enum int LargeSlotTableSizeIncrease/*todo: implement initializer*/ = int();
    //TODO: generate method CreateLocalDataStore
    //TODO: generate method DeleteLocalDataStore
    //TODO: generate method AllocateDataSlot
    //TODO: generate method AllocateNamedDataSlot
    //TODO: generate method GetNamedDataSlot
    //TODO: generate method FreeNamedDataSlot
    //TODO: generate method FreeDataSlot
    //TODO: generate method ValidateSlot
    //TODO: generate method GetSlotTableLength
    private bool[] m_SlotInfoTable/*todo: implement initializer*/ = null;
    private int m_FirstAvailableSlot;
    private List1!(LocalDataStore) m_ManagedLocalDataStores/*todo: implement initializer*/ = null;
    private Dictionary2!(String,LocalDataStoreSlot) m_KeyToSlotMap/*todo: implement initializer*/ = null;
    private long m_CookieGenerator;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\AccessViolationException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class AccessViolationException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    private IntPtr _ip;
    private IntPtr _target;
    private int _accessType;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Action.cs'
//
public template Action1(T)
{
    alias Action1 = void delegate(T obj);
}
public alias Action = void delegate();
public template Action2(T1,T2)
{
    alias Action2 = void delegate(T1 arg1, T2 arg2);
}
public template Action3(T1,T2,T3)
{
    alias Action3 = void delegate(T1 arg1, T2 arg2, T3 arg3);
}
public template Action4(T1,T2,T3,T4)
{
    alias Action4 = void delegate(T1 arg1, T2 arg2, T3 arg3, T4 arg4);
}
public template Func1(TResult)
{
    alias Func1 = TResult delegate();
}
public template Func2(T,TResult)
{
    alias Func2 = TResult delegate(T arg);
}
public template Func3(T1,T2,TResult)
{
    alias Func3 = TResult delegate(T1 arg1, T2 arg2);
}
public template Func4(T1,T2,T3,TResult)
{
    alias Func4 = TResult delegate(T1 arg1, T2 arg2, T3 arg3);
}
public template Func5(T1,T2,T3,T4,TResult)
{
    alias Func5 = TResult delegate(T1 arg1, T2 arg2, T3 arg3, T4 arg4);
}
public template Action5(T1,T2,T3,T4,T5)
{
    alias Action5 = void delegate(T1 arg1, T2 arg2, T3 arg3, T4 arg4, T5 arg5);
}
public template Action6(T1,T2,T3,T4,T5,T6)
{
    alias Action6 = void delegate(T1 arg1, T2 arg2, T3 arg3, T4 arg4, T5 arg5, T6 arg6);
}
public template Action7(T1,T2,T3,T4,T5,T6,T7)
{
    alias Action7 = void delegate(T1 arg1, T2 arg2, T3 arg3, T4 arg4, T5 arg5, T6 arg6, T7 arg7);
}
public template Action8(T1,T2,T3,T4,T5,T6,T7,T8)
{
    alias Action8 = void delegate(T1 arg1, T2 arg2, T3 arg3, T4 arg4, T5 arg5, T6 arg6, T7 arg7, T8 arg8);
}
public template Func6(T1,T2,T3,T4,T5,TResult)
{
    alias Func6 = TResult delegate(T1 arg1, T2 arg2, T3 arg3, T4 arg4, T5 arg5);
}
public template Func7(T1,T2,T3,T4,T5,T6,TResult)
{
    alias Func7 = TResult delegate(T1 arg1, T2 arg2, T3 arg3, T4 arg4, T5 arg5, T6 arg6);
}
public template Func8(T1,T2,T3,T4,T5,T6,T7,TResult)
{
    alias Func8 = TResult delegate(T1 arg1, T2 arg2, T3 arg3, T4 arg4, T5 arg5, T6 arg6, T7 arg7);
}
public template Func9(T1,T2,T3,T4,T5,T6,T7,T8,TResult)
{
    alias Func9 = TResult delegate(T1 arg1, T2 arg2, T3 arg3, T4 arg4, T5 arg5, T6 arg6, T7 arg7, T8 arg8);
}
public template Comparison1(T)
{
    alias Comparison1 = int delegate(T x, T y);
}
public template Converter2(TInput,TOutput)
{
    alias Converter2 = TOutput delegate(TInput input);
}
public template Predicate1(T)
{
    alias Predicate1 = bool delegate(T obj);
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Activator.cs'
//
// Only statics, does not need to be marked with the serializable attribute
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_Activator)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class Activator : __DotNet__Object, _Activator
{
    package(mscorlib) enum int LookupMask/*todo: implement initializer*/ = int();
    package(mscorlib) enum BindingFlags ConLookup/*todo: implement initializer*/ = (cast(BindingFlags)0);
    package(mscorlib) enum BindingFlags ConstructorDefault/*todo: implement initializer*/ = (cast(BindingFlags)0);
    //TODO: generate constructor
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstanceFrom
    //TODO: generate method CreateInstanceFrom
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstanceFrom
    //TODO: generate method CreateInstanceFrom
    //TODO: generate method CreateInstanceFromInternal
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstanceFrom
    //TODO: generate method CreateInstanceFrom
    //TODO: generate method CreateInstanceFrom
    //TODO: generate method CreateComInstanceFrom
    //TODO: generate method CreateComInstanceFrom
    //TODO: generate method Log
    //TODO: generate method GetTypeInfoCount
    //TODO: generate method GetTypeInfo
    //TODO: generate method GetIDsOfNames
    //TODO: generate method Invoke
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\AggregateException.cs'
//
/// <summary>Represents one or more errors that occur during application execution.</summary>
/// <remarks>
/// <see cref="AggregateException"/> is used to consolidate multiple failures into a single, throwable
/// exception object.
/// </remarks>
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Count = {InnerExceptionCount}"*/)
public class AggregateException : __DotNet__Exception
{
    private ReadOnlyCollection1!(__DotNet__Exception) m_innerExceptions;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetObjectData
    //TODO: generate method GetBaseException
    //TODO: generate property 'InnerExceptions'
    //TODO: generate method Handle
    //TODO: generate method Flatten
    //TODO: generate property 'Message'
    //TODO: generate method ToString
    //TODO: generate property 'InnerExceptionCount'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\AppContext\AppContext.cs'
//
public class AppContext : __DotNet__Object
{
    private this() {} // prevent instantiation
    @__DotNet__Attribute!(FlagsAttribute.stringof)
    private enum SwitchValueState
    {
        HasFalseValue = 0x1,
        HasTrueValue = 0x2,
        HasLookedForOverride = 0x4,
        UnknownValue = 0x8,
    }
    private static immutable Dictionary2!(String,SwitchValueState) s_switchMap/*todo: implement initializer*/ = null;
    //TODO: generate property 'BaseDirectory'
    //TODO: generate property 'TargetFrameworkName'
    //TODO: generate method GetData
    //TODO: generate event 'UnhandledException'
    //TODO: generate constructor
    //TODO: generate method TryGetSwitch
    //TODO: generate method SetSwitch
    //TODO: generate method DefineSwitchDefault
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\AppContext\AppContextDefaultValues.CoreClrOverrides.cs'
//
package(mscorlib) class AppContextDefaultValues : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method TryGetSwitchOverridePartial
    //TODO: generate method PopulateDefaultValues
    //TODO: generate method ParseTargetFrameworkName
    //TODO: generate method TryParseFrameworkName
    //TODO: generate method TryGetSwitchOverridePartial
    //TODO: generate method PopulateDefaultValuesPartial
    //TODO: generate method TryGetSwitchOverride
    //TODO: generate method PopulateOverrideValuesPartial
    //TODO: generate method PopulateDefaultValuesPartial
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\AppContext\AppContextDefaultValues.cs'
//
// partial class 'AppContextDefaultValues' moved

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\AppContext\AppContextDefaultValues.Defaults.Central.cs'
//
// partial class 'AppContextDefaultValues' moved

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\AppContext\AppContextDefaultValues.Defaults.cs'
//
// partial class 'AppContextDefaultValues' moved

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\AppContext\AppContextSwitches.cs'
//
package(mscorlib) class AppContextSwitches : __DotNet__Object
{
    private this() {} // prevent instantiation
    private static int _noAsyncCurrentCulture;
    //TODO: generate property 'NoAsyncCurrentCulture'
    private static int _throwExceptionIfDisposedCancellationTokenSource;
    //TODO: generate property 'ThrowExceptionIfDisposedCancellationTokenSource'
    private static int _preserveEventListnerObjectIdentity;
    //TODO: generate property 'PreserveEventListnerObjectIdentity'
    //TODO: generate property 'DisableCaching'
    //TODO: generate constructor
    //TODO: generate method GetCachedSwitchValue
    //TODO: generate method GetCachedSwitchValueInternal
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\AppDomain.cs'
//
// #if FEATURE_EXCEPTION_NOTIFICATIONS
// using System.Runtime.ExceptionServices;
// #endif // FEATURE_EXCEPTION_NOTIFICATIONS
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class ResolveEventArgs : EventArgs
{
    private String _Name;
    private Assembly _RequestingAssembly;
    //TODO: generate property 'Name'
    //TODO: generate property 'RequestingAssembly'
    //TODO: generate constructor
    //TODO: generate constructor
}
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class AssemblyLoadEventArgs : EventArgs
{
    private Assembly _LoadedAssembly;
    //TODO: generate property 'LoadedAssembly'
    //TODO: generate constructor
}
// #if FEATURE_CORECLR
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
// #endif
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public alias ResolveEventHandler = Assembly delegate(__DotNet__Object sender, ResolveEventArgs args);
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public alias AssemblyLoadEventHandler = void delegate(__DotNet__Object sender, AssemblyLoadEventArgs args);
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public alias AppDomainInitializer = void delegate(String[] args);
package(mscorlib) class AppDomainInitializerInfo : __DotNet__Object
{
    package(mscorlib) static class ItemInfo : __DotNet__Object
    {
        public String TargetTypeAssembly;
        public String TargetTypeName;
        public String MethodName;
    }
    package(mscorlib) ItemInfo[] Info;
    //TODO: generate constructor
    //TODO: generate method Unwrap
}
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(System._AppDomain)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AppDomain : __DotNet__Object, _AppDomain, IEvidenceFactory
{
    // Domain security information
    // These fields initialized from the other side only. (NOTE: order 
    // of these fields cannot be changed without changing the layout in 
    // the EE)
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private AppDomainManager _domainManager;
    private Dictionary2!(String,__DotNet__Object[]) _LocalStore;
    private AppDomainSetup _FusionStore;
    private Evidence _SecurityIdentity;
    private __DotNet__Object[] _Policies;
    //TODO: generate event field
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private ResolveEventHandler _TypeResolve;
    //TODO: generate event 'TypeResolve'
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private ResolveEventHandler _ResourceResolve;
    //TODO: generate event 'ResourceResolve'
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private ResolveEventHandler _AssemblyResolve;
    //TODO: generate event 'AssemblyResolve'
    private ApplicationTrust _applicationTrust;
    private EventHandler _processExit;
    // #if FEATURE_CORECLR
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private EventHandler _domainUnload;
    // #if FEATURE_CORECLR
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private UnhandledExceptionEventHandler _unhandledException;
    private Dictionary2!(String,__DotNet__Object) _compatFlags;
    private IntPtr _pDomain;
    private bool _HasSetPolicy;
    private bool _IsFastFullTrustDomain;
    private bool _compatFlagsInitialized;
    package(mscorlib) enum String TargetFrameworkNameAppCompatSetting/*todo: implement initializer*/ = null;
    private static APPX_FLAGS s_flags;
    //
    // Keep in async with vm\appdomainnative.cpp
    //
    @__DotNet__Attribute!(FlagsAttribute.stringof)
    private enum APPX_FLAGS
    {
        APPX_FLAGS_INITIALIZED = 0x01,
        APPX_FLAGS_APPX_MODEL = 0x02,
        APPX_FLAGS_APPX_DESIGN_MODE = 0x04,
        APPX_FLAGS_APPX_NGEN = 0x08,
        APPX_FLAGS_APPX_MASK = APPX_FLAGS_APPX_MODEL | APPX_FLAGS_APPX_DESIGN_MODE | APPX_FLAGS_APPX_NGEN,
        APPX_FLAGS_API_CHECK = 0x10,
    }
    //TODO: generate property 'Flags'
    //TODO: generate property 'ProfileAPICheck'
    //TODO: generate property 'IsAppXNGen'
    //TODO: generate method DisableFusionUpdatesFromADManager
    //TODO: generate method nGetAppXFlags
    //TODO: generate method GetAppDomainManagerType
    //TODO: generate method SetAppDomainManagerType
    //TODO: generate method nSetHostSecurityManagerFlags
    //TODO: generate method SetSecurityHomogeneousFlag
    //TODO: generate method GetNativeHandle
    //TODO: generate method CreateAppDomainManager
    //TODO: generate method InitializeCompatibilityFlags
    //TODO: generate method GetTargetFrameworkName
    //TODO: generate method DisableFusionUpdatesFromADManager
    //TODO: generate method IsAppXModel
    //TODO: generate method IsAppXDesignMode
    //TODO: generate method CheckLoadFromSupported
    //TODO: generate method CheckLoadFileSupported
    //TODO: generate method CheckReflectionOnlyLoadSupported
    //TODO: generate method CheckLoadWithPartialNameSupported
    //TODO: generate method CheckDefinePInvokeSupported
    //TODO: generate method CheckLoadByteArraySupported
    //TODO: generate method CheckCreateDomainSupported
    //TODO: generate method GetAppDomainManagerType
    //TODO: generate method SetAppDomainManagerType
    //TODO: generate method InitializeDomainSecurity
    //TODO: generate method SetupDomainSecurityForHomogeneousDomain
    //TODO: generate property 'DomainManager'
    //TODO: generate method DefineDynamicAssembly
    //TODO: generate method DefineDynamicAssembly
    //TODO: generate method DefineDynamicAssembly
    //TODO: generate method DefineDynamicAssembly
    //TODO: generate method DefineDynamicAssembly
    //TODO: generate method DefineDynamicAssembly
    //TODO: generate method DefineDynamicAssembly
    //TODO: generate method DefineDynamicAssembly
    //TODO: generate method DefineDynamicAssembly
    //TODO: generate method DefineDynamicAssembly
    //TODO: generate method DefineDynamicAssembly
    //TODO: generate method DefineDynamicAssembly
    //TODO: generate method DefineDynamicAssembly
    //TODO: generate method InternalDefineDynamicAssembly
    //TODO: generate method nApplyPolicy
    //TODO: generate method ApplyPolicy
    //TODO: generate method CreateInstance
    //TODO: generate method InternalCreateInstanceWithNoSecurity
    //TODO: generate method CreateInstanceFrom
    //TODO: generate method InternalCreateInstanceFromWithNoSecurity
    //TODO: generate method CreateComInstanceFrom
    //TODO: generate method CreateComInstanceFrom
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstanceFrom
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate method InternalCreateInstanceWithNoSecurity
    //TODO: generate method CreateInstanceFrom
    //TODO: generate method CreateInstanceFrom
    //TODO: generate method InternalCreateInstanceFromWithNoSecurity
    //TODO: generate method Load
    //TODO: generate method Load
    //TODO: generate method Load
    //TODO: generate method Load
    //TODO: generate method Load
    //TODO: generate method Load
    //TODO: generate method Load
    //TODO: generate method ExecuteAssembly
    //TODO: generate method ExecuteAssembly
    //TODO: generate method ExecuteAssembly
    //TODO: generate method ExecuteAssembly
    //TODO: generate method ExecuteAssembly
    //TODO: generate method ExecuteAssembly
    //TODO: generate method ExecuteAssemblyByName
    //TODO: generate method ExecuteAssemblyByName
    //TODO: generate method ExecuteAssemblyByName
    //TODO: generate method ExecuteAssemblyByName
    //TODO: generate method ExecuteAssemblyByName
    //TODO: generate method ExecuteAssemblyByName
    //TODO: generate property 'CurrentDomain'
    //TODO: generate property 'FriendlyName'
    //TODO: generate property 'BaseDirectory'
    //TODO: generate method ToString
    //TODO: generate method GetAssemblies
    //TODO: generate method ReflectionOnlyGetAssemblies
    //TODO: generate method nGetAssemblies
    //TODO: generate method IsUnloadingForcedFinalize
    //TODO: generate method IsFinalizingForUnload
    //TODO: generate method PublishAnonymouslyHostedDynamicMethodsAssembly
    //TODO: generate method SetData
    //TODO: generate method SetData
    //TODO: generate method SetDataHelper
    //TODO: generate method GetData
    //TODO: generate method IsCompatibilitySwitchSet
    //TODO: generate method GetCurrentThreadId
    //TODO: generate property 'ApplicationTrust'
    //TODO: generate property 'DynamicDirectory'
    //TODO: generate method GetDynamicDir
    //TODO: generate constructor
    //TODO: generate method _nExecuteAssembly
    //TODO: generate method nExecuteAssembly
    //TODO: generate method nCreateContext
    //TODO: generate method nSetupBindingPaths
    //TODO: generate method SetupBindingPaths
    //TODO: generate method nGetFriendlyName
    //TODO: generate method nIsDefaultAppDomainForEvidence
    //TODO: generate event 'ProcessExit'
    //TODO: generate event 'DomainUnload'
    //TODO: generate event 'UnhandledException'
    //TODO: generate method OnAssemblyLoadEvent
    //TODO: generate method OnResourceResolveEvent
    //TODO: generate method OnTypeResolveEvent
    //TODO: generate method OnAssemblyResolveEvent
    //TODO: generate method OnDesignerNamespaceResolveEvent
    //TODO: generate property 'FusionStore'
    //TODO: generate method GetRuntimeAssembly
    //TODO: generate property 'LocalStore'
    //TODO: generate method IsDomainIdValid
    //TODO: generate method nSetNativeDllSearchDirectories
    //TODO: generate method SetupFusionStore
    // used to package up evidence, so it can be serialized
    //   for the call to InternalRemotelySetupRemoteDomain
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class EvidenceCollection : __DotNet__Object
    {
        public Evidence ProvidedSecurityInfo;
        public Evidence CreatorsSecurityInfo;
    }
    //TODO: generate method RunInitializer
    //TODO: generate method PrepareDataForSetup
    //TODO: generate method Setup
    //TODO: generate method NormalizePath
    //TODO: generate method SetupDomain
    //TODO: generate method SetupLoaderOptimization
    //TODO: generate method GetSecurityDescriptor
    //TODO: generate method SetupDomainSecurity
    //TODO: generate method SetupDomainSecurity
    //TODO: generate method nSetupFriendlyName
    //TODO: generate method nSetDisableInterfaceCache
    //TODO: generate method UpdateLoaderOptimization
    //TODO: generate property 'SetupInformation'
    //TODO: generate method IsStringInterned
    //TODO: generate method GetOrInternString
    //TODO: generate method GetGrantSet
    //TODO: generate property 'PermissionSet'
    //TODO: generate property 'IsFullyTrusted'
    //TODO: generate property 'IsHomogenous'
    //TODO: generate method nChangeSecurityPolicy
    //TODO: generate method nUnload
    //TODO: generate method CreateInstanceAndUnwrap
    //TODO: generate method CreateInstanceAndUnwrap
    //TODO: generate method CreateInstanceAndUnwrap
    //TODO: generate method CreateInstanceAndUnwrap
    //TODO: generate method CreateInstanceFromAndUnwrap
    //TODO: generate method CreateInstanceFromAndUnwrap
    //TODO: generate method CreateInstanceFromAndUnwrap
    //TODO: generate method CreateInstanceFromAndUnwrap
    //TODO: generate property 'Id'
    //TODO: generate method GetId
    package(mscorlib) enum int DefaultADID/*todo: implement initializer*/ = int();
    //TODO: generate method IsDefaultAppDomain
    //TODO: generate method nEnableMonitoring
    //TODO: generate method nMonitoringIsEnabled
    //TODO: generate method nGetTotalProcessorTime
    //TODO: generate method nGetTotalAllocatedMemorySize
    //TODO: generate method nGetLastSurvivedMemorySize
    //TODO: generate method nGetLastSurvivedProcessMemorySize
    //TODO: generate property 'MonitoringIsEnabled'
    //TODO: generate property 'MonitoringTotalProcessorTime'
    //TODO: generate property 'MonitoringTotalAllocatedMemorySize'
    //TODO: generate property 'MonitoringSurvivedMemorySize'
    //TODO: generate property 'MonitoringSurvivedProcessMemorySize'
}
package(mscorlib) struct AppDomainHandle
{
    private IntPtr m_appDomainHandle;
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\AppDomainAttributes.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum LoaderOptimization
{
    NotSpecified = 0,
    SingleDomain = 1,
    MultiDomain = 2,
    MultiDomainHost = 3,
    DomainMask = 3,
    DisallowBindings = 4,
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class LoaderOptimizationAttribute : Attribute
{
    package(mscorlib) ubyte _val;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Value'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\AppDomainManager.cs'
//
// #if FEATURE_APPDOMAINMANAGER_INITOPTIONS
// [Flags]
// [System.Runtime.InteropServices.ComVisible(true)]
// public enum AppDomainManagerInitializationOptions {
// None             = 0x0000,
// RegisterWithHost = 0x0001
// }
// #endif // FEATURE_APPDOMAINMANAGER_INITOPTIONS
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class AppDomainManager : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method InitializeNewDomain
    //TODO: generate method GetEntryAssembly
    private Assembly m_entryAssembly/*todo: implement initializer*/ = null;
    //TODO: generate property 'EntryAssembly'
    //TODO: generate property 'CurrentAppDomainManager'
    //TODO: generate method CheckSecuritySettings
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\AppDomainSetup.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AppDomainSetup : __DotNet__Object, IAppDomainSetup
{
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    package(mscorlib) enum LoaderInformation
    {
        // If you add a new value, add the corresponding property
        // to AppDomain.GetData() and SetData()'s switch statements,
        // as well as fusionsetup.h.
        ApplicationBaseValue = 0,
        ConfigurationFileValue = 1,
        DynamicBaseValue = 2,
        DevPathValue = 3,
        ApplicationNameValue = 4,
        PrivateBinPathValue = 5,
        PrivateBinPathProbeValue = 6,
        ShadowCopyDirectoriesValue = 7,
        ShadowCopyFilesValue = 8,
        CachePathValue = 9,
        LicenseFileValue = 10,
        DisallowPublisherPolicyValue = 11,
        DisallowCodeDownloadValue = 12,
        DisallowBindingRedirectsValue = 13,
        DisallowAppBaseProbingValue = 14,
        ConfigurationBytesValue = 15,
        LoaderMaximum = 18,
    }
    private enum String LOADER_OPTIMIZATION/*todo: implement initializer*/ = null;
    private enum String CONFIGURATION_EXTENSION/*todo: implement initializer*/ = null;
    private enum String APPENV_RELATIVEPATH/*todo: implement initializer*/ = null;
    private enum String MACHINE_CONFIGURATION_FILE/*todo: implement initializer*/ = null;
    private enum String ACTAG_HOST_CONFIG_FILE/*todo: implement initializer*/ = null;
    private enum String ACTAG_APP_CONFIG_FILE/*todo: implement initializer*/ = null;
    private enum String ACTAG_MACHINE_CONFIG/*todo: implement initializer*/ = null;
    private enum String ACTAG_APP_BASE_URL/*todo: implement initializer*/ = null;
    private enum String ACTAG_APP_NAME/*todo: implement initializer*/ = null;
    private enum String ACTAG_BINPATH_PROBE_ONLY/*todo: implement initializer*/ = null;
    private enum String ACTAG_APP_CACHE_BASE/*todo: implement initializer*/ = null;
    private enum String ACTAG_DEV_PATH/*todo: implement initializer*/ = null;
    private enum String ACTAG_APP_DYNAMIC_BASE/*todo: implement initializer*/ = null;
    private enum String ACTAG_FORCE_CACHE_INSTALL/*todo: implement initializer*/ = null;
    private enum String ACTAG_APP_PRIVATE_BINPATH/*todo: implement initializer*/ = null;
    private enum String ACTAG_APP_SHADOW_COPY_DIRS/*todo: implement initializer*/ = null;
    private enum String ACTAG_DISALLOW_APPLYPUBLISHERPOLICY/*todo: implement initializer*/ = null;
    private enum String ACTAG_CODE_DOWNLOAD_DISABLED/*todo: implement initializer*/ = null;
    private enum String ACTAG_DISALLOW_APP_BINDING_REDIRECTS/*todo: implement initializer*/ = null;
    private enum String ACTAG_DISALLOW_APP_BASE_PROBING/*todo: implement initializer*/ = null;
    private enum String ACTAG_APP_CONFIG_BLOB/*todo: implement initializer*/ = null;
    private String[] _Entries;
    private LoaderOptimization _LoaderOptimization;
    private String _AppBase;
    // #pragma warning restore 169
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    private AppDomainInitializer _AppDomainInitializer;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    private String[] _AppDomainInitializerArguments;
    // #if FEATURE_CLICKONCE
    // [OptionalField(VersionAdded = 2)]
    // private ActivationArguments _ActivationArguments;
    // #endif
    // #if FEATURE_CORECLR
    // On the CoreCLR, this contains just the name of the permission set that we install in the new appdomain.
    // Not the ToXml().ToString() of an ApplicationTrust object.
    // #endif
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    private String _ApplicationTrust;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    private ubyte[] _ConfigurationBytes;
    // #if FEATURE_COMINTEROP
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 3*/)
    private bool _DisableInterfaceCache/*todo: implement initializer*/ = bool();
    // #endif // FEATURE_COMINTEROP
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 4*/)
    private String _AppDomainManagerAssembly;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 4*/)
    private String _AppDomainManagerType;
    // #if FEATURE_APTCA
    // [OptionalField(VersionAdded = 4)]
    // private string[] _AptcaVisibleAssemblies;
    // #endif
    // A collection of strings used to indicate which breaking changes shouldn't be applied
    // to an AppDomain. We only use the keys, the values are ignored.
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 4*/)
    private Dictionary2!(String,__DotNet__Object) _CompatFlags;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 5*/)
    private String _TargetFrameworkName;
    // #if !FEATURE_CORECLR
    // [NonSerialized]
    // internal AppDomainSortingSetupInfo _AppDomainSortingSetupInfo;
    // #endif
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 5*/)
    private bool _CheckedForTargetFrameworkName;
    // #if FEATURE_RANDOMIZED_STRING_HASHING
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 5*/)
    private bool _UseRandomizedStringHashing;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method SetupDefaults
    //TODO: generate property 'Value'
    //TODO: generate method GetUnsecureApplicationBase
    //TODO: generate property 'AppDomainManagerAssembly'
    //TODO: generate property 'AppDomainManagerType'
    //TODO: generate property 'ApplicationBase'
    //TODO: generate method NormalizePath
    //TODO: generate method IsFilePath
    //TODO: generate property 'ApplicationBaseKey'
    //TODO: generate property 'ConfigurationFile'
    //TODO: generate property 'ConfigurationFileInternal'
    //TODO: generate property 'ConfigurationFileKey'
    //TODO: generate method GetConfigurationBytes
    //TODO: generate method SetConfigurationBytes
    //TODO: generate property 'ConfigurationBytesKey'
    //TODO: generate method GetCompatibilityFlags
    //TODO: generate method SetCompatibilitySwitches
    //TODO: generate property 'TargetFrameworkName'
    //TODO: generate property 'CheckedForTargetFrameworkName'
    //TODO: generate property 'DynamicBase'
    //TODO: generate property 'DynamicBaseKey'
    //TODO: generate property 'DisallowPublisherPolicy'
    //TODO: generate property 'DisallowBindingRedirects'
    //TODO: generate property 'DisallowCodeDownload'
    //TODO: generate property 'DisallowApplicationBaseProbing'
    //TODO: generate method VerifyDir
    //TODO: generate method VerifyDirList
    //TODO: generate property 'DeveloperPath'
    //TODO: generate property 'DisallowPublisherPolicyKey'
    //TODO: generate property 'DisallowCodeDownloadKey'
    //TODO: generate property 'DisallowBindingRedirectsKey'
    //TODO: generate property 'DeveloperPathKey'
    //TODO: generate property 'DisallowAppBaseProbingKey'
    //TODO: generate property 'ApplicationName'
    //TODO: generate property 'ApplicationNameKey'
    //TODO: generate property 'AppDomainInitializer'
    //TODO: generate property 'AppDomainInitializerArguments'
    //TODO: generate method InternalGetApplicationTrust
    //TODO: generate method InternalSetApplicationTrust
    //TODO: generate property 'ApplicationTrust'
    //TODO: generate property 'PrivateBinPath'
    //TODO: generate property 'PrivateBinPathKey'
    //TODO: generate property 'PrivateBinPathProbe'
    //TODO: generate property 'PrivateBinPathProbeKey'
    //TODO: generate property 'ShadowCopyDirectories'
    //TODO: generate property 'ShadowCopyDirectoriesKey'
    //TODO: generate property 'ShadowCopyFiles'
    //TODO: generate property 'ShadowCopyFilesKey'
    //TODO: generate property 'CachePath'
    //TODO: generate property 'CachePathKey'
    //TODO: generate property 'LicenseFile'
    //TODO: generate property 'LoaderOptimization'
    //TODO: generate property 'LoaderOptimizationKey'
    //TODO: generate property 'ConfigurationExtension'
    //TODO: generate property 'PrivateBinPathEnvironmentVariable'
    //TODO: generate property 'RuntimeConfigurationFile'
    //TODO: generate property 'MachineConfigKey'
    //TODO: generate property 'HostBindingKey'
    //TODO: generate method Locate
    //TODO: generate property 'SandboxInterop'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\AppDomainUnloadedException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class AppDomainUnloadedException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ApplicationException.cs'
//
// The ApplicationException is the base class for nonfatal, 
// application errors that occur.  These exceptions are generated 
// (i.e., thrown) by an application, not the Runtime. Applications that need 
// to create their own exceptions do so by extending this class. 
// ApplicationException extends but adds no new functionality to 
// RecoverableException.
// 
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class ApplicationException : __DotNet__Exception
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ApplicationId.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ApplicationId : __DotNet__Object
{
    private String m_name;
    private Version m_version;
    private String m_processorArchitecture;
    private String m_culture;
    package(mscorlib) ubyte[] m_publicKeyToken;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'PublicKeyToken'
    //TODO: generate property 'Name'
    //TODO: generate property 'Version'
    //TODO: generate property 'ProcessorArchitecture'
    //TODO: generate property 'Culture'
    //TODO: generate method Copy
    //TODO: generate method ToString
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ArgIterator.cs'
//
// This class will not be marked serializable
// Note: This type must have the same layout as the CLR's VARARGS type in CLRVarArgs.h.
// It also contains an inline SigPointer data structure - must keep those fields in sync.
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
public struct ArgIterator
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetNextArg
    //TODO: generate method FCallGetNextArg
    //TODO: generate method GetNextArg
    //TODO: generate method InternalGetNextArg
    //TODO: generate method End
    //TODO: generate method GetRemainingCount
    //TODO: generate method _GetNextArgType
    //TODO: generate method GetNextArgType
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    private IntPtr ArgCookie;
    private IntPtr sigPtr;
    private IntPtr sigPtrLen;
    private IntPtr ArgPtr;
    private int RemainingArgs;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ArgumentException.cs'
//
// The ArgumentException is thrown when an argument does not meet 
// the contract of the method.  Ideally it should give a meaningful error
// message describing what was wrong and which parameter is incorrect.
// 
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class ArgumentException : SystemException, ISerializable
{
    private String m_paramName;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Message'
    //TODO: generate property 'ParamName'
    //TODO: generate method GetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ArgumentNullException.cs'
//
// The ArgumentException is thrown when an argument 
// is null when it shouldn't be.
// 
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class ArgumentNullException : ArgumentException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ArgumentOutOfRangeException.cs'
//
// The ArgumentOutOfRangeException is thrown when an argument 
// is outside the legal range for that argument.  
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class ArgumentOutOfRangeException : ArgumentException, ISerializable
{
    private static /*todo: volatile*/ String _rangeMessage;
    private __DotNet__Object m_actualValue;
    //TODO: generate property 'RangeMessage'
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Message'
    //TODO: generate property 'ActualValue'
    //TODO: generate method GetObjectData
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ArithmeticException.cs'
//
// The ArithmeticException is thrown when overflow or underflow
// occurs.
// 
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class ArithmeticException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Array.cs'
//
// Note that we make a T[] (single-dimensional w/ zero as the lower bound) implement both 
// IList<U> and IReadOnlyList<U>, where T : U dynamically.  See the SZArrayHelper class for details.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class Array : __DotNet__Object, ICloneable, IList, IStructuralComparable, IStructuralEquatable
{
    //TODO: generate constructor
    //TODO: generate method AsReadOnly
    //TODO: generate method Resize
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate method InternalCreate
    //TODO: generate method UnsafeCreateInstance
    //TODO: generate method UnsafeCreateInstance
    //TODO: generate method UnsafeCreateInstance
    //TODO: generate method UnsafeCreateInstance
    //TODO: generate method Copy
    //TODO: generate method Copy
    //TODO: generate method Copy
    //TODO: generate method ConstrainedCopy
    //TODO: generate method Copy
    //TODO: generate method Copy
    //TODO: generate method Clear
    //TODO: generate method GetValue
    //TODO: generate method GetValue
    //TODO: generate method GetValue
    //TODO: generate method GetValue
    //TODO: generate method GetValue
    //TODO: generate method GetValue
    //TODO: generate method GetValue
    //TODO: generate method GetValue
    //TODO: generate method SetValue
    //TODO: generate method SetValue
    //TODO: generate method SetValue
    //TODO: generate method SetValue
    //TODO: generate method SetValue
    //TODO: generate method SetValue
    //TODO: generate method SetValue
    //TODO: generate method SetValue
    //TODO: generate method InternalGetReference
    //TODO: generate method InternalSetValue
    //TODO: generate property 'Length'
    //TODO: generate method GetMedian
    package(mscorlib) enum int MaxArrayLength/*todo: implement initializer*/ = int();
    package(mscorlib) enum int MaxByteArrayLength/*todo: implement initializer*/ = int();
    //TODO: generate property 'LongLength'
    //TODO: generate method GetLength
    //TODO: generate method GetLongLength
    //TODO: generate property 'Rank'
    //TODO: generate method GetUpperBound
    //TODO: generate method GetLowerBound
    //TODO: generate method GetDataPtrOffsetInternal
    //TODO: generate property 'Count'
    //TODO: generate property 'SyncRoot'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate property 'IsFixedSize'
    //TODO: generate property 'IsSynchronized'
    //TODO: generate indexer
    //TODO: generate method Add
    //TODO: generate method Contains
    //TODO: generate method Clear
    //TODO: generate method IndexOf
    //TODO: generate method Insert
    //TODO: generate method Remove
    //TODO: generate method RemoveAt
    //TODO: generate method Clone
    //TODO: generate method CompareTo
    //TODO: generate method Equals
    //TODO: generate method CombineHashCodes
    //TODO: generate method GetHashCode
    //TODO: generate method BinarySearch
    //TODO: generate method BinarySearch
    //TODO: generate method BinarySearch
    //TODO: generate method BinarySearch
    //TODO: generate method TrySZBinarySearch
    //TODO: generate method BinarySearch
    //TODO: generate method BinarySearch
    //TODO: generate method BinarySearch
    //TODO: generate method BinarySearch
    //TODO: generate method ConvertAll
    //TODO: generate method CopyTo
    //TODO: generate method CopyTo
    //TODO: generate method Empty
    //TODO: generate method Exists
    //TODO: generate method Find
    //TODO: generate method FindAll
    //TODO: generate method FindIndex
    //TODO: generate method FindIndex
    //TODO: generate method FindIndex
    //TODO: generate method FindLast
    //TODO: generate method FindLastIndex
    //TODO: generate method FindLastIndex
    //TODO: generate method FindLastIndex
    //TODO: generate method ForEach
    //TODO: generate method GetEnumerator
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method TrySZIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method TrySZLastIndexOf
    //TODO: generate method Reverse
    //TODO: generate method Reverse
    //TODO: generate method TrySZReverse
    //TODO: generate method Reverse
    //TODO: generate method Reverse
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method TrySZSort
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method TrueForAll
    private static struct SorterObjectArray
    {
        private __DotNet__Object[] keys;
        private __DotNet__Object[] items;
        private IComparer comparer;
        //TODO: generate constructor
        //TODO: generate method SwapIfGreaterWithItems
        //TODO: generate method Swap
        //TODO: generate method Sort
        //TODO: generate method IntrospectiveSort
        //TODO: generate method IntroSort
        //TODO: generate method PickPivotAndPartition
        //TODO: generate method Heapsort
        //TODO: generate method DownHeap
        //TODO: generate method InsertionSort
    }
    private static struct SorterGenericArray
    {
        private Array keys;
        private Array items;
        private IComparer comparer;
        //TODO: generate constructor
        //TODO: generate method SwapIfGreaterWithItems
        //TODO: generate method Swap
        //TODO: generate method Sort
        //TODO: generate method IntrospectiveSort
        //TODO: generate method IntroSort
        //TODO: generate method PickPivotAndPartition
        //TODO: generate method Heapsort
        //TODO: generate method DownHeap
        //TODO: generate method InsertionSort
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static final class SZArrayEnumerator : __DotNet__Object, IEnumerator, ICloneable
    {
        private Array _array;
        private int _index;
        private int _endIndex;
        //TODO: generate constructor
        //TODO: generate method Clone
        //TODO: generate method MoveNext
        //TODO: generate property 'Current'
        //TODO: generate method Reset
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static final class ArrayEnumerator : __DotNet__Object, IEnumerator, ICloneable
    {
        private Array array;
        private int index;
        private int endIndex;
        private int startIndex;
        private int[] _indices;
        private bool _complete;
        //TODO: generate constructor
        //TODO: generate method IncArray
        //TODO: generate method Clone
        //TODO: generate method MoveNext
        //TODO: generate property 'Current'
        //TODO: generate method Reset
    }
    //TODO: generate method Initialize
}
private final class SZArrayHelper : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method GetEnumerator
    //TODO: generate method CopyTo
    //TODO: generate method get_Count
    //TODO: generate method get_Item
    //TODO: generate method set_Item
    //TODO: generate method Add
    //TODO: generate method Contains
    //TODO: generate method get_IsReadOnly
    //TODO: generate method Clear
    //TODO: generate method IndexOf
    //TODO: generate method Insert
    //TODO: generate method Remove
    //TODO: generate method RemoveAt
    // This is a normal generic Enumerator for SZ arrays. It doesn't have any of the "this" stuff
    // that SZArrayHelper does.
    //
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static final class SZGenericArrayEnumerator1(T) : __DotNet__Object, IEnumerator1!(T)
    {
        private T[] _array;
        private int _index;
        private int _endIndex;
        package(mscorlib) static immutable SZGenericArrayEnumerator1!(T) Empty/*todo: implement initializer*/ = null;
        //TODO: generate constructor
        //TODO: generate method MoveNext
        //TODO: generate property 'Current'
        //TODO: generate property 'Current'
        //TODO: generate method Reset
        //TODO: generate method Dispose
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ArraySegment.cs'
//
// Note: users should make sure they copy the fields out of an ArraySegment onto their stack
// then validate that the fields describe valid bounds within the array.  This must be done
// because assignments to value types are not atomic, and also because one thread reading 
// three fields from an ArraySegment may not see the same ArraySegment from one call to another
// (ie, users could assign a new value to the old location).  
@__DotNet__Attribute!(SerializableAttribute.stringof)
public struct ArraySegment1(T)
{
    private T[] _array;
    private int _offset;
    private int _count;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Array'
    //TODO: generate property 'Offset'
    //TODO: generate property 'Count'
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate indexer
    //TODO: generate method IndexOf
    //TODO: generate method Insert
    //TODO: generate method RemoveAt
    //TODO: generate indexer
    //TODO: generate property 'IsReadOnly'
    //TODO: generate method Add
    //TODO: generate method Clear
    //TODO: generate method Contains
    //TODO: generate method CopyTo
    //TODO: generate method Remove
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    // #endregion
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static final class ArraySegmentEnumerator : __DotNet__Object, IEnumerator1!(T)
    {
        private T[] _array;
        private int _start;
        private int _end;
        private int _current;
        //TODO: generate constructor
        //TODO: generate method MoveNext
        //TODO: generate property 'Current'
        //TODO: generate property 'Current'
        //TODO: generate method Reset
        //TODO: generate method Dispose
    }
}
public class __Boxed__ArraySegment1(T) : __DotNet__Object, IList1!(T), IReadOnlyList1!(T)
{
    ArraySegment1!(T) value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ArrayTypeMismatchException.cs'
//
// The ArrayMismatchException is thrown when an attempt to store
// an object of the wrong type within an array occurs.
// 
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class ArrayTypeMismatchException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\AsyncCallback.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public alias AsyncCallback = void delegate(IAsyncResult ar);

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Attribute.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.All, Inherited = true, AllowMultiple=false*/)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_Attribute)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class Attribute : __DotNet__Object, _Attribute
{
    //TODO: generate method InternalGetCustomAttributes
    //TODO: generate method InternalIsDefined
    //TODO: generate method GetParentDefinition
    //TODO: generate method InternalGetCustomAttributes
    //TODO: generate method GetParentDefinition
    //TODO: generate method InternalIsDefined
    //TODO: generate method GetParentDefinition
    //TODO: generate method InternalParamGetCustomAttributes
    //TODO: generate method InternalParamIsDefined
    //TODO: generate method CopyToArrayList
    //TODO: generate method GetIndexParameterTypes
    //TODO: generate method AddAttributesToList
    //TODO: generate method InternalGetAttributeUsage
    //TODO: generate method CreateAttributeArrayHelper
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttribute
    //TODO: generate constructor
    //TODO: generate method Equals
    //TODO: generate method AreFieldValuesEqual
    //TODO: generate method GetHashCode
    //TODO: generate property 'TypeId'
    //TODO: generate method Match
    //TODO: generate method IsDefaultAttribute
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\AttributeTargets.cs'
//
// Enum used to indicate all the elements of the
// VOS it is valid to attach this element to.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum AttributeTargets
{
    Assembly = 0x0001,
    Module = 0x0002,
    Class = 0x0004,
    Struct = 0x0008,
    Enum = 0x0010,
    Constructor = 0x0020,
    Method = 0x0040,
    Property = 0x0080,
    Field = 0x0100,
    Event = 0x0200,
    Interface = 0x0400,
    Parameter = 0x0800,
    Delegate = 0x1000,
    ReturnValue = 0x2000,
    //@todo GENERICS: document GenericParameter
    GenericParameter = 0x4000,
    All = Assembly | Module | Class | Struct | Enum | Constructor | Method | Property | Field | Event | Interface | Parameter | Delegate | ReturnValue | GenericParameter,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\AttributeUsageAttribute.cs'
//
//  By default, attributes are inherited and multiple attributes are not allowed 
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class, Inherited = true*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AttributeUsageAttribute : Attribute
{
    package(mscorlib) AttributeTargets m_attributeTarget/*todo: implement initializer*/ = (cast(AttributeTargets)0);
    package(mscorlib) bool m_allowMultiple/*todo: implement initializer*/ = bool();
    package(mscorlib) bool m_inherited/*todo: implement initializer*/ = bool();
    package(mscorlib) static AttributeUsageAttribute Default/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'ValidOn'
    //TODO: generate property 'AllowMultiple'
    //TODO: generate property 'Inherited'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\BadImageFormatException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class BadImageFormatException : SystemException
{
    private String _fileName;
    private String _fusionLog;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Message'
    //TODO: generate method SetMessageField
    //TODO: generate property 'FileName'
    //TODO: generate method ToString
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'FusionLog'
    //TODO: generate method GetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\BCLDebug.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) enum LogLevel
{
    Trace = 0,
    Status = 20,
    Warning = 40,
    Error = 50,
    Panic = 100,
}
package(mscorlib) struct SwitchStructure
{
    package(mscorlib) String name;
    package(mscorlib) int value;
    //TODO: generate constructor
}
package(mscorlib) class BCLDebug : __DotNet__Object
{
    private this() {} // prevent instantiation
    package(mscorlib) static /*todo: volatile*/ bool m_registryChecked/*todo: implement initializer*/ = bool();
    package(mscorlib) static /*todo: volatile*/ bool m_loggingNotEnabled/*todo: implement initializer*/ = bool();
    package(mscorlib) static bool m_perfWarnings;
    package(mscorlib) static bool m_correctnessWarnings;
    package(mscorlib) static bool m_safeHandleStackTraces;
    package(mscorlib) static /*todo: volatile*/ bool m_domainUnloadAdded;
    package(mscorlib) static /*todo: volatile*/ PermissionSet m_MakeConsoleErrorLoggingWork;
    private static immutable SwitchStructure[] switches/*todo: implement initializer*/ = null;
    private static immutable LogLevel[] levelConversions/*todo: implement initializer*/ = null;
    //TODO: generate method WaitForFinalizers
    //TODO: generate method Assert
    //TODO: generate method Assert
    //TODO: generate method Log
    //TODO: generate method Log
    //TODO: generate method GetRegistryLoggingValues
    //TODO: generate method CheckRegistry
    //TODO: generate method CheckEnabled
    //TODO: generate method CheckEnabled
    //TODO: generate method Log
    //TODO: generate method Trace
    //TODO: generate method Trace
    //TODO: generate method DumpStack
    //TODO: generate method ConsoleError
    //TODO: generate method Perf
    //TODO: generate method Correctness
    //TODO: generate method CorrectnessEnabled
    //TODO: generate property 'SafeHandleStackTracesEnabled'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\BitConverter.cs'
//
public class BitConverter : __DotNet__Object
{
    private this() {} // prevent instantiation
    public static immutable bool IsLittleEndian/*todo: implement initializer*/ = bool();
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method ToChar
    //TODO: generate method ToInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt16
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method ToDouble
    //TODO: generate method GetHexValue
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToBoolean
    //TODO: generate method DoubleToInt64Bits
    //TODO: generate method Int64BitsToDouble
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Boolean.cs'
//
//Type 'Boolean' was removed by configuration

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Buffer.cs'
//
// #else // BIT64
// using nuint = System.UInt32;
// #endif // BIT64
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class Buffer : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method BlockCopy
    //TODO: generate method InternalBlockCopy
    //TODO: generate method IndexOfByte
    //TODO: generate method IsPrimitiveTypeArray
    //TODO: generate method _GetByte
    //TODO: generate method GetByte
    //TODO: generate method _SetByte
    //TODO: generate method SetByte
    //TODO: generate method _ByteLength
    //TODO: generate method ByteLength
    //TODO: generate method ZeroMemory
    //TODO: generate method Memcpy
    //TODO: generate method Memcpy
    //TODO: generate method Memcpy
    //TODO: generate method Memmove
    //TODO: generate method _Memmove
    //TODO: generate method __Memmove
    //TODO: generate method MemoryCopy
    //TODO: generate method MemoryCopy
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Byte.cs'
//
// The Byte class extends the Value class and 
// provides object representation of the byte primitive type. 
// 
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
public struct Byte
{
    private ubyte m_value;
    public enum ubyte MaxValue/*todo: implement initializer*/ = ubyte();
    public enum ubyte MinValue/*todo: implement initializer*/ = ubyte();
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method GetTypeCode
    //TODO: generate method ToBoolean
    //TODO: generate method ToChar
    //TODO: generate method ToSByte
    //TODO: generate method ToByte
    //TODO: generate method ToInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method ToDouble
    //TODO: generate method ToDecimal
    //TODO: generate method ToDateTime
    //TODO: generate method ToType
}
public class __Boxed__Byte : __DotNet__Object, IComparable, IFormattable, IConvertible, IComparable1!(ubyte), IEquatable1!(ubyte)
{
    ubyte value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\CannotUnloadAppDomainException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class CannotUnloadAppDomainException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\CfgParser.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) enum ConfigEvents
{
    StartDocument = 0,
    StartDTD = StartDocument + 1,
    EndDTD = StartDTD + 1,
    StartDTDSubset = EndDTD + 1,
    EndDTDSubset = StartDTDSubset + 1,
    EndProlog = EndDTDSubset + 1,
    StartEntity = EndProlog + 1,
    EndEntity = StartEntity + 1,
    EndDocument = EndEntity + 1,
    DataAvailable = EndDocument + 1,
    LastEvent = DataAvailable,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) enum ConfigNodeType
{
    Element = 1,
    Attribute = Element + 1,
    Pi = Attribute + 1,
    XmlDecl = Pi + 1,
    DocType = XmlDecl + 1,
    DTDAttribute = DocType + 1,
    EntityDecl = DTDAttribute + 1,
    ElementDecl = EntityDecl + 1,
    AttlistDecl = ElementDecl + 1,
    Notation = AttlistDecl + 1,
    Group = Notation + 1,
    IncludeSect = Group + 1,
    PCData = IncludeSect + 1,
    CData = PCData + 1,
    IgnoreSect = CData + 1,
    Comment = IgnoreSect + 1,
    EntityRef = Comment + 1,
    Whitespace = EntityRef + 1,
    Name = Whitespace + 1,
    NMToken = Name + 1,
    String = NMToken + 1,
    Peref = String + 1,
    Model = Peref + 1,
    ATTDef = Model + 1,
    ATTType = ATTDef + 1,
    ATTPresence = ATTType + 1,
    DTDSubset = ATTPresence + 1,
    LastNodeType = DTDSubset + 1,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) enum ConfigNodeSubType
{
    Version = cast(int)/*MemberExpression:Type*/ConfigNodeType.LastNodeType,
    Encoding = Version + 1,
    Standalone = Encoding + 1,
    NS = Standalone + 1,
    XMLSpace = NS + 1,
    XMLLang = XMLSpace + 1,
    System = XMLLang + 1,
    Public = System + 1,
    NData = Public + 1,
    AtCData = NData + 1,
    AtId = AtCData + 1,
    AtIdref = AtId + 1,
    AtIdrefs = AtIdref + 1,
    AtEntity = AtIdrefs + 1,
    AtEntities = AtEntity + 1,
    AtNmToken = AtEntities + 1,
    AtNmTokens = AtNmToken + 1,
    AtNotation = AtNmTokens + 1,
    AtRequired = AtNotation + 1,
    AtImplied = AtRequired + 1,
    AtFixed = AtImplied + 1,
    PentityDecl = AtFixed + 1,
    Empty = PentityDecl + 1,
    Any = Empty + 1,
    Mixed = Any + 1,
    Sequence = Mixed + 1,
    Choice = Sequence + 1,
    Star = Choice + 1,
    Plus = Star + 1,
    Questionmark = Plus + 1,
    LastSubNodeType = Questionmark + 1,
}
package(mscorlib) abstract class BaseConfigHandler : __DotNet__Object
{
    protected Delegate[] eventCallbacks;
    //TODO: generate constructor
    //TODO: generate method InitializeCallbacks
    private alias NotifyEventCallback = void delegate(ConfigEvents nEvent);
    //TODO: generate method NotifyEvent
    private alias BeginChildrenCallback = void delegate(int size, ConfigNodeSubType subType, ConfigNodeType nType, int terminal, /*todo: param attributes*/String text, int textLength, int prefixLength);
    //TODO: generate method BeginChildren
    private alias EndChildrenCallback = void delegate(int fEmpty, int size, ConfigNodeSubType subType, ConfigNodeType nType, int terminal, /*todo: param attributes*/String text, int textLength, int prefixLength);
    //TODO: generate method EndChildren
    private alias ErrorCallback = void delegate(int size, ConfigNodeSubType subType, ConfigNodeType nType, int terminal, /*todo: param attributes*/String text, int textLength, int prefixLength);
    //TODO: generate method Error
    private alias CreateNodeCallback = void delegate(int size, ConfigNodeSubType subType, ConfigNodeType nType, int terminal, /*todo: param attributes*/String text, int textLength, int prefixLength);
    //TODO: generate method CreateNode
    private alias CreateAttributeCallback = void delegate(int size, ConfigNodeSubType subType, ConfigNodeType nType, int terminal, /*todo: param attributes*/String text, int textLength, int prefixLength);
    //TODO: generate method CreateAttribute
    //TODO: generate method RunParser
}
package(mscorlib) class ConfigTreeParser : BaseConfigHandler
{
    private ConfigNode rootNode/*todo: implement initializer*/ = null;
    private ConfigNode currentNode/*todo: implement initializer*/ = null;
    private String fileName/*todo: implement initializer*/ = null;
    private int attributeEntry;
    private String key/*todo: implement initializer*/ = null;
    private String[] treeRootPath/*todo: implement initializer*/ = null;
    private bool parsing/*todo: implement initializer*/ = bool();
    private int depth/*todo: implement initializer*/ = int();
    private int pathDepth/*todo: implement initializer*/ = int();
    private int searchDepth/*todo: implement initializer*/ = int();
    private bool bNoSearchPath/*todo: implement initializer*/ = bool();
    private String lastProcessed/*todo: implement initializer*/ = null;
    private bool lastProcessedEndElement;
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method NotifyEvent
    //TODO: generate method BeginChildren
    //TODO: generate method EndChildren
    //TODO: generate method Error
    //TODO: generate method CreateNode
    //TODO: generate method CreateAttribute
    //TODO: generate method Trace
    //TODO: generate method GetInvalidSyntaxMessage
}
package(mscorlib) class ConfigNode : __DotNet__Object
{
    private String m_name/*todo: implement initializer*/ = null;
    private String m_value/*todo: implement initializer*/ = null;
    private ConfigNode m_parent/*todo: implement initializer*/ = null;
    private List1!(ConfigNode) m_children/*todo: implement initializer*/ = null;
    private List1!(DictionaryEntry) m_attributes/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate property 'Name'
    //TODO: generate property 'Value'
    //TODO: generate property 'Parent'
    //TODO: generate property 'Children'
    //TODO: generate property 'Attributes'
    //TODO: generate method AddChild
    //TODO: generate method AddAttribute
    //TODO: generate method ReplaceAttribute
    //TODO: generate method Trace
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Char.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
public struct Char
{
    package(mscorlib) wchar m_value;
    public enum wchar MaxValue/*todo: implement initializer*/ = wchar();
    public enum wchar MinValue/*todo: implement initializer*/ = wchar();
    private static immutable ubyte[] categoryForLatin1/*todo: implement initializer*/ = null;
    //TODO: generate method IsLatin1
    //TODO: generate method IsAscii
    //TODO: generate method GetLatin1UnicodeCategory
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method Parse
    //TODO: generate method TryParse
    //TODO: generate method IsDigit
    //TODO: generate method CheckLetter
    //TODO: generate method IsLetter
    //TODO: generate method IsWhiteSpaceLatin1
    //TODO: generate method IsWhiteSpace
    //TODO: generate method IsUpper
    //TODO: generate method IsLower
    //TODO: generate method CheckPunctuation
    //TODO: generate method IsPunctuation
    //TODO: generate method CheckLetterOrDigit
    //TODO: generate method IsLetterOrDigit
    //TODO: generate method ToUpper
    //TODO: generate method ToUpper
    //TODO: generate method ToUpperInvariant
    //TODO: generate method ToLower
    //TODO: generate method ToLower
    //TODO: generate method ToLowerInvariant
    //TODO: generate method GetTypeCode
    //TODO: generate method ToBoolean
    //TODO: generate method ToChar
    //TODO: generate method ToSByte
    //TODO: generate method ToByte
    //TODO: generate method ToInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method ToDouble
    //TODO: generate method ToDecimal
    //TODO: generate method ToDateTime
    //TODO: generate method ToType
    //TODO: generate method IsControl
    //TODO: generate method IsControl
    //TODO: generate method IsDigit
    //TODO: generate method IsLetter
    //TODO: generate method IsLetterOrDigit
    //TODO: generate method IsLower
    //TODO: generate method CheckNumber
    //TODO: generate method IsNumber
    //TODO: generate method IsNumber
    //TODO: generate method IsPunctuation
    //TODO: generate method CheckSeparator
    //TODO: generate method IsSeparatorLatin1
    //TODO: generate method IsSeparator
    //TODO: generate method IsSeparator
    //TODO: generate method IsSurrogate
    //TODO: generate method IsSurrogate
    //TODO: generate method CheckSymbol
    //TODO: generate method IsSymbol
    //TODO: generate method IsSymbol
    //TODO: generate method IsUpper
    //TODO: generate method IsWhiteSpace
    //TODO: generate method GetUnicodeCategory
    //TODO: generate method GetUnicodeCategory
    //TODO: generate method GetNumericValue
    //TODO: generate method GetNumericValue
    //TODO: generate method IsHighSurrogate
    //TODO: generate method IsHighSurrogate
    //TODO: generate method IsLowSurrogate
    //TODO: generate method IsLowSurrogate
    //TODO: generate method IsSurrogatePair
    //TODO: generate method IsSurrogatePair
    package(mscorlib) enum int UNICODE_PLANE00_END/*todo: implement initializer*/ = int();
    package(mscorlib) enum int UNICODE_PLANE01_START/*todo: implement initializer*/ = int();
    package(mscorlib) enum int UNICODE_PLANE16_END/*todo: implement initializer*/ = int();
    package(mscorlib) enum int HIGH_SURROGATE_START/*todo: implement initializer*/ = int();
    package(mscorlib) enum int LOW_SURROGATE_END/*todo: implement initializer*/ = int();
    //TODO: generate method ConvertFromUtf32
    //TODO: generate method ConvertToUtf32
    //TODO: generate method ConvertToUtf32
}
public class __Boxed__Char : __DotNet__Object, IComparable, IConvertible, IComparable1!(wchar), IEquatable1!(wchar)
{
    wchar value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\CharEnumerator.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class CharEnumerator : __DotNet__Object, IEnumerator, ICloneable, IEnumerator1!(wchar), IDisposable
{
    private String str;
    private int index;
    private wchar currentElement;
    //TODO: generate constructor
    //TODO: generate method Clone
    //TODO: generate method MoveNext
    //TODO: generate method Dispose
    //TODO: generate property 'Current'
    //TODO: generate property 'Current'
    //TODO: generate method Reset
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\CLRConfig.cs'
//
/// <summary>
/// For now, this class should be the central point to collect all managed declarations
/// of native functions designed to expose config switches.
/// In Dev11 M2.2 we will redesign this class to expose CLRConfig from within the CLR
/// and refactor managed Fx code to access all compat switches through here.
/// </summary>
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
package(mscorlib) class CLRConfig : __DotNet__Object
{
    //TODO: generate method CheckLegacyManagedDeflateStream
    //TODO: generate method CheckThrowUnobservedTaskExceptions
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\CLSCompliantAttribute.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.All, Inherited=true, AllowMultiple=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class CLSCompliantAttribute : Attribute
{
    private bool m_compliant;
    //TODO: generate constructor
    //TODO: generate property 'IsCompliant'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\CompatibilitySwitches.cs'
//
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
package(mscorlib) class CompatibilitySwitches : __DotNet__Object
{
    private this() {} // prevent instantiation
    private static bool s_AreSwitchesSet;
    private static bool s_useLatestBehaviorWhenTFMNotSpecified;
    //TODO: generate property 'IsCompatibilityBehaviorDefined'
    //TODO: generate method IsCompatibilitySwitchSet
    //TODO: generate method InitializeSwitches
    //TODO: generate property 'UseLatestBehaviorWhenTFMNotSpecified'
    //TODO: generate property 'IsNetFx40TimeSpanLegacyFormatMode'
    //TODO: generate property 'IsNetFx40LegacySecurityPolicy'
    //TODO: generate property 'IsNetFx45LegacyManagedDeflateStream'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ContextBoundObject.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class ContextBoundObject : __DotNet__Object
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ContextMarshalException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class ContextMarshalException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ContextStaticAttribute.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Field, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
// #if FEATURE_CORECLR
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "ContextStaticAttribute is not supported in this release. It has been left in so that legacy tools can be used with this release, but it cannot be used in your code.", true*/)
public class ContextStaticAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Convert.cs'
//
@__DotNet__Attribute!(FlagsAttribute.stringof)
public enum Base64FormattingOptions
{
    None = 0,
    InsertLineBreaks = 1,
}
public class Convert : __DotNet__Object
{
    private this() {} // prevent instantiation
    package(mscorlib) static immutable RuntimeType[] ConvertTypes/*todo: implement initializer*/ = null;
    private static immutable RuntimeType EnumType/*todo: implement initializer*/ = null;
    package(mscorlib) static immutable wchar[] base64Table/*todo: implement initializer*/ = null;
    private enum int base64LineBreakPosition/*todo: implement initializer*/ = int();
    private static bool TriggerAsserts/*todo: implement initializer*/ = bool();
    //TODO: generate method DoAsserts
    public static immutable __DotNet__Object DBNull/*todo: implement initializer*/ = null;
    //TODO: generate method GetTypeCode
    //TODO: generate method IsDBNull
    //TODO: generate method ChangeType
    //TODO: generate method ChangeType
    //TODO: generate method DefaultToType
    //TODO: generate method ChangeType
    //TODO: generate method ChangeType
    //TODO: generate method ThrowCharOverflowException
    //TODO: generate method ThrowByteOverflowException
    //TODO: generate method ThrowSByteOverflowException
    //TODO: generate method ThrowInt16OverflowException
    //TODO: generate method ThrowUInt16OverflowException
    //TODO: generate method ThrowInt32OverflowException
    //TODO: generate method ThrowUInt32OverflowException
    //TODO: generate method ThrowInt64OverflowException
    //TODO: generate method ThrowUInt64OverflowException
    //TODO: generate method ToBoolean
    //TODO: generate method ToBoolean
    //TODO: generate method ToBoolean
    //TODO: generate method ToBoolean
    //TODO: generate method ToBoolean
    //TODO: generate method ToBoolean
    //TODO: generate method ToBoolean
    //TODO: generate method ToBoolean
    //TODO: generate method ToBoolean
    //TODO: generate method ToBoolean
    //TODO: generate method ToBoolean
    //TODO: generate method ToBoolean
    //TODO: generate method ToBoolean
    //TODO: generate method ToBoolean
    //TODO: generate method ToBoolean
    //TODO: generate method ToBoolean
    //TODO: generate method ToBoolean
    //TODO: generate method ToBoolean
    //TODO: generate method ToChar
    //TODO: generate method ToChar
    //TODO: generate method ToChar
    //TODO: generate method ToChar
    //TODO: generate method ToChar
    //TODO: generate method ToChar
    //TODO: generate method ToChar
    //TODO: generate method ToChar
    //TODO: generate method ToChar
    //TODO: generate method ToChar
    //TODO: generate method ToChar
    //TODO: generate method ToChar
    //TODO: generate method ToChar
    //TODO: generate method ToChar
    //TODO: generate method ToChar
    //TODO: generate method ToChar
    //TODO: generate method ToChar
    //TODO: generate method ToChar
    //TODO: generate method ToSByte
    //TODO: generate method ToSByte
    //TODO: generate method ToSByte
    //TODO: generate method ToSByte
    //TODO: generate method ToSByte
    //TODO: generate method ToSByte
    //TODO: generate method ToSByte
    //TODO: generate method ToSByte
    //TODO: generate method ToSByte
    //TODO: generate method ToSByte
    //TODO: generate method ToSByte
    //TODO: generate method ToSByte
    //TODO: generate method ToSByte
    //TODO: generate method ToSByte
    //TODO: generate method ToSByte
    //TODO: generate method ToSByte
    //TODO: generate method ToSByte
    //TODO: generate method ToSByte
    //TODO: generate method ToByte
    //TODO: generate method ToByte
    //TODO: generate method ToByte
    //TODO: generate method ToByte
    //TODO: generate method ToByte
    //TODO: generate method ToByte
    //TODO: generate method ToByte
    //TODO: generate method ToByte
    //TODO: generate method ToByte
    //TODO: generate method ToByte
    //TODO: generate method ToByte
    //TODO: generate method ToByte
    //TODO: generate method ToByte
    //TODO: generate method ToByte
    //TODO: generate method ToByte
    //TODO: generate method ToByte
    //TODO: generate method ToByte
    //TODO: generate method ToByte
    //TODO: generate method ToInt16
    //TODO: generate method ToInt16
    //TODO: generate method ToInt16
    //TODO: generate method ToInt16
    //TODO: generate method ToInt16
    //TODO: generate method ToInt16
    //TODO: generate method ToInt16
    //TODO: generate method ToInt16
    //TODO: generate method ToInt16
    //TODO: generate method ToInt16
    //TODO: generate method ToInt16
    //TODO: generate method ToInt16
    //TODO: generate method ToInt16
    //TODO: generate method ToInt16
    //TODO: generate method ToInt16
    //TODO: generate method ToInt16
    //TODO: generate method ToInt16
    //TODO: generate method ToInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToInt32
    //TODO: generate method ToInt32
    //TODO: generate method ToInt32
    //TODO: generate method ToInt32
    //TODO: generate method ToInt32
    //TODO: generate method ToInt32
    //TODO: generate method ToInt32
    //TODO: generate method ToInt32
    //TODO: generate method ToInt32
    //TODO: generate method ToInt32
    //TODO: generate method ToInt32
    //TODO: generate method ToInt32
    //TODO: generate method ToInt32
    //TODO: generate method ToInt32
    //TODO: generate method ToInt32
    //TODO: generate method ToInt32
    //TODO: generate method ToInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToInt64
    //TODO: generate method ToInt64
    //TODO: generate method ToInt64
    //TODO: generate method ToInt64
    //TODO: generate method ToInt64
    //TODO: generate method ToInt64
    //TODO: generate method ToInt64
    //TODO: generate method ToInt64
    //TODO: generate method ToInt64
    //TODO: generate method ToInt64
    //TODO: generate method ToInt64
    //TODO: generate method ToInt64
    //TODO: generate method ToInt64
    //TODO: generate method ToInt64
    //TODO: generate method ToInt64
    //TODO: generate method ToInt64
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method ToSingle
    //TODO: generate method ToSingle
    //TODO: generate method ToSingle
    //TODO: generate method ToSingle
    //TODO: generate method ToSingle
    //TODO: generate method ToSingle
    //TODO: generate method ToSingle
    //TODO: generate method ToSingle
    //TODO: generate method ToSingle
    //TODO: generate method ToSingle
    //TODO: generate method ToSingle
    //TODO: generate method ToSingle
    //TODO: generate method ToSingle
    //TODO: generate method ToSingle
    //TODO: generate method ToSingle
    //TODO: generate method ToSingle
    //TODO: generate method ToSingle
    //TODO: generate method ToDouble
    //TODO: generate method ToDouble
    //TODO: generate method ToDouble
    //TODO: generate method ToDouble
    //TODO: generate method ToDouble
    //TODO: generate method ToDouble
    //TODO: generate method ToDouble
    //TODO: generate method ToDouble
    //TODO: generate method ToDouble
    //TODO: generate method ToDouble
    //TODO: generate method ToDouble
    //TODO: generate method ToDouble
    //TODO: generate method ToDouble
    //TODO: generate method ToDouble
    //TODO: generate method ToDouble
    //TODO: generate method ToDouble
    //TODO: generate method ToDouble
    //TODO: generate method ToDouble
    //TODO: generate method ToDecimal
    //TODO: generate method ToDecimal
    //TODO: generate method ToDecimal
    //TODO: generate method ToDecimal
    //TODO: generate method ToDecimal
    //TODO: generate method ToDecimal
    //TODO: generate method ToDecimal
    //TODO: generate method ToDecimal
    //TODO: generate method ToDecimal
    //TODO: generate method ToDecimal
    //TODO: generate method ToDecimal
    //TODO: generate method ToDecimal
    //TODO: generate method ToDecimal
    //TODO: generate method ToDecimal
    //TODO: generate method ToDecimal
    //TODO: generate method ToDecimal
    //TODO: generate method ToDecimal
    //TODO: generate method ToDecimal
    //TODO: generate method ToDateTime
    //TODO: generate method ToDateTime
    //TODO: generate method ToDateTime
    //TODO: generate method ToDateTime
    //TODO: generate method ToDateTime
    //TODO: generate method ToDateTime
    //TODO: generate method ToDateTime
    //TODO: generate method ToDateTime
    //TODO: generate method ToDateTime
    //TODO: generate method ToDateTime
    //TODO: generate method ToDateTime
    //TODO: generate method ToDateTime
    //TODO: generate method ToDateTime
    //TODO: generate method ToDateTime
    //TODO: generate method ToDateTime
    //TODO: generate method ToDateTime
    //TODO: generate method ToDateTime
    //TODO: generate method ToDateTime
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToByte
    //TODO: generate method ToSByte
    //TODO: generate method ToInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToBase64String
    //TODO: generate method ToBase64String
    //TODO: generate method ToBase64String
    //TODO: generate method ToBase64String
    //TODO: generate method ToBase64CharArray
    //TODO: generate method ToBase64CharArray
    //TODO: generate method ConvertToBase64Array
    //TODO: generate method ToBase64_CalculateAndValidateOutputLength
    //TODO: generate method FromBase64String
    //TODO: generate method FromBase64CharArray
    //TODO: generate method FromBase64CharPtr
    //TODO: generate method FromBase64_Decode
    //TODO: generate method FromBase64_ComputeResultLength
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Currency.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) struct Currency
{
    package(mscorlib) long m_value;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method FromOACurrency
    //TODO: generate method ToOACurrency
    //TODO: generate method ToDecimal
    //TODO: generate method FCallToDecimal
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\CurrentTimeZone.cs'
//
//
// Currently, this is the only supported timezone.
// The values of the timezone is from the current system timezone setting in the
// control panel.
//
// #if FEATURE_CORECLR
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "System.CurrentSystemTimeZone has been deprecated.  Please investigate the use of System.TimeZoneInfo.Local instead."*/)
// #endif
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class CurrentSystemTimeZone : TimeZone
{
    private enum long TicksPerMillisecond/*todo: implement initializer*/ = long();
    private enum long TicksPerSecond/*todo: implement initializer*/ = long();
    private enum long TicksPerMinute/*todo: implement initializer*/ = long();
    private Hashtable m_CachedDaylightChanges/*todo: implement initializer*/ = null;
    private long m_ticksOffset;
    private String m_standardName;
    private String m_daylightName;
    //TODO: generate constructor
    //TODO: generate property 'StandardName'
    //TODO: generate property 'DaylightName'
    //TODO: generate method GetUtcOffsetFromUniversalTime
    //TODO: generate method ToLocalTime
    private static __DotNet__Object s_InternalSyncObject;
    //TODO: generate property 'InternalSyncObject'
    //TODO: generate method GetDaylightChanges
    //TODO: generate method GetUtcOffset
    //TODO: generate method GetDayOfWeek
    //TODO: generate method nativeGetTimeZoneMinuteOffset
    //TODO: generate method nativeGetDaylightName
    //TODO: generate method nativeGetStandardName
    //TODO: generate method nativeGetDaylightChanges
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\DataMisalignedException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class DataMisalignedException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\DateTime.cs'
//
// This value type represents a date and time.  Every DateTime 
// object has a private field (Ticks) of type Int64 that stores the 
// date and time as the number of 100 nanosecond intervals since 
// 12:00 AM January 1, year 1 A.D. in the proleptic Gregorian Calendar.
//
// Starting from V2.0, DateTime also stored some context about its time
// zone in the form of a 3-state value representing Unspecified, Utc or
// Local. This is stored in the two top bits of the 64-bit numeric value
// with the remainder of the bits storing the tick count. This information 
// is only used during time zone conversions and is not part of the 
// identity of the DateTime. Thus, operations like Compare and Equals
// ignore this state. This is to stay compatible with earlier behavior
// and performance characteristics and to avoid forcing  people into dealing 
// with the effects of daylight savings. Note, that this has little effect
// on how the DateTime works except in a context where its specific time
// zone is needed, such as during conversions and some parsing and formatting
// cases.
//
// There is also 4th state stored that is a special type of Local value that
// is used to avoid data loss when round-tripping between local and UTC time.
// See below for more information on this 4th state, although it is 
// effectively hidden from most users, who just see the 3-state DateTimeKind
// enumeration.
//
// For compatibility, DateTime does not serialize the Kind data when used in
// binary serialization.
// 
// For a description of various calendar issues, look at
// 
// Calendar Studies web site, at 
// http://serendipity.nofadz.com/hermetic/cal_stud.htm.
// 
// 
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Auto*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public struct DateTime
{
    private enum long TicksPerMillisecond/*todo: implement initializer*/ = long();
    private enum long TicksPerSecond/*todo: implement initializer*/ = long();
    private enum long TicksPerMinute/*todo: implement initializer*/ = long();
    private enum long TicksPerHour/*todo: implement initializer*/ = long();
    private enum long TicksPerDay/*todo: implement initializer*/ = long();
    private enum int MillisPerSecond/*todo: implement initializer*/ = int();
    private enum int MillisPerMinute/*todo: implement initializer*/ = int();
    private enum int MillisPerHour/*todo: implement initializer*/ = int();
    private enum int MillisPerDay/*todo: implement initializer*/ = int();
    private enum int DaysPerYear/*todo: implement initializer*/ = int();
    private enum int DaysPer4Years/*todo: implement initializer*/ = int();
    private enum int DaysPer100Years/*todo: implement initializer*/ = int();
    private enum int DaysPer400Years/*todo: implement initializer*/ = int();
    private enum int DaysTo1601/*todo: implement initializer*/ = int();
    private enum int DaysTo1899/*todo: implement initializer*/ = int();
    package(mscorlib) enum int DaysTo1970/*todo: implement initializer*/ = int();
    private enum int DaysTo10000/*todo: implement initializer*/ = int();
    package(mscorlib) enum long MinTicks/*todo: implement initializer*/ = long();
    package(mscorlib) enum long MaxTicks/*todo: implement initializer*/ = long();
    private enum long MaxMillis/*todo: implement initializer*/ = long();
    private enum long FileTimeOffset/*todo: implement initializer*/ = long();
    private enum long DoubleDateOffset/*todo: implement initializer*/ = long();
    private enum long OADateMinAsTicks/*todo: implement initializer*/ = long();
    private enum double OADateMinAsDouble/*todo: implement initializer*/ = double();
    private enum double OADateMaxAsDouble/*todo: implement initializer*/ = double();
    private enum int DatePartYear/*todo: implement initializer*/ = int();
    private enum int DatePartDayOfYear/*todo: implement initializer*/ = int();
    private enum int DatePartMonth/*todo: implement initializer*/ = int();
    private enum int DatePartDay/*todo: implement initializer*/ = int();
    private static immutable int[] DaysToMonth365/*todo: implement initializer*/ = null;
    private static immutable int[] DaysToMonth366/*todo: implement initializer*/ = null;
    public static immutable DateTime MinValue/*todo: implement initializer*/ = DateTime();
    public static immutable DateTime MaxValue/*todo: implement initializer*/ = DateTime();
    private enum ulong TicksMask/*todo: implement initializer*/ = ulong();
    private enum ulong FlagsMask/*todo: implement initializer*/ = ulong();
    private enum ulong LocalMask/*todo: implement initializer*/ = ulong();
    private enum long TicksCeiling/*todo: implement initializer*/ = long();
    private enum ulong KindUnspecified/*todo: implement initializer*/ = ulong();
    private enum ulong KindUtc/*todo: implement initializer*/ = ulong();
    private enum ulong KindLocal/*todo: implement initializer*/ = ulong();
    private enum ulong KindLocalAmbiguousDst/*todo: implement initializer*/ = ulong();
    private enum int KindShift/*todo: implement initializer*/ = int();
    private enum String TicksField/*todo: implement initializer*/ = null;
    private enum String DateDataField/*todo: implement initializer*/ = null;
    private ulong dateData;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'InternalTicks'
    //TODO: generate property 'InternalKind'
    //TODO: generate method Add
    //TODO: generate method Add
    //TODO: generate method AddDays
    //TODO: generate method AddHours
    //TODO: generate method AddMilliseconds
    //TODO: generate method AddMinutes
    //TODO: generate method AddMonths
    //TODO: generate method AddSeconds
    //TODO: generate method AddTicks
    //TODO: generate method AddYears
    //TODO: generate method Compare
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method DateToTicks
    //TODO: generate method TimeToTicks
    //TODO: generate method DaysInMonth
    //TODO: generate method DoubleDateToTicks
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method FromBinary
    //TODO: generate method FromBinaryRaw
    //TODO: generate method FromFileTime
    //TODO: generate method FromFileTimeUtc
    //TODO: generate method FromOADate
    //TODO: generate method GetObjectData
    //TODO: generate method IsDaylightSavingTime
    //TODO: generate method SpecifyKind
    //TODO: generate method ToBinary
    //TODO: generate method ToBinaryRaw
    //TODO: generate property 'Date'
    //TODO: generate method GetDatePart
    //TODO: generate property 'Day'
    //TODO: generate property 'DayOfWeek'
    //TODO: generate property 'DayOfYear'
    //TODO: generate method GetHashCode
    //TODO: generate property 'Hour'
    //TODO: generate method IsAmbiguousDaylightSavingTime
    //TODO: generate property 'Kind'
    //TODO: generate property 'Millisecond'
    //TODO: generate property 'Minute'
    //TODO: generate property 'Month'
    //TODO: generate property 'Now'
    //TODO: generate property 'UtcNow'
    //TODO: generate method GetSystemTimeAsFileTime
    //TODO: generate property 'Second'
    //TODO: generate property 'Ticks'
    //TODO: generate property 'TimeOfDay'
    //TODO: generate property 'Today'
    //TODO: generate property 'Year'
    //TODO: generate method IsLeapYear
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method ParseExact
    //TODO: generate method ParseExact
    //TODO: generate method ParseExact
    //TODO: generate method Subtract
    //TODO: generate method Subtract
    //TODO: generate method TicksToOADate
    //TODO: generate method ToOADate
    //TODO: generate method ToFileTime
    //TODO: generate method ToFileTimeUtc
    //TODO: generate method ToLocalTime
    //TODO: generate method ToLocalTime
    //TODO: generate method ToLongDateString
    //TODO: generate method ToLongTimeString
    //TODO: generate method ToShortDateString
    //TODO: generate method ToShortTimeString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToUniversalTime
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method TryParseExact
    //TODO: generate method TryParseExact
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method GetDateTimeFormats
    //TODO: generate method GetDateTimeFormats
    //TODO: generate method GetDateTimeFormats
    //TODO: generate method GetDateTimeFormats
    //TODO: generate method GetTypeCode
    //TODO: generate method ToBoolean
    //TODO: generate method ToChar
    //TODO: generate method ToSByte
    //TODO: generate method ToByte
    //TODO: generate method ToInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method ToDouble
    //TODO: generate method ToDecimal
    //TODO: generate method ToDateTime
    //TODO: generate method ToType
    //TODO: generate method TryCreate
}
public class __Boxed__DateTime : __DotNet__Object, IComparable, IFormattable, IConvertible, IComparable1!(DateTime), IEquatable1!(DateTime), ISerializable
{
    DateTime value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\DateTimeKind.cs'
//
// This enum is used to indentify DateTime instances in cases when they are known to be in local time, 
// UTC time or if this information has not been specified or is not applicable.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum DateTimeKind
{
    Unspecified = 0,
    Utc = 1,
    Local = 2,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\DateTimeOffset.cs'
//
// DateTimeOffset is a value type that consists of a DateTime and a time zone offset, 
// ie. how far away the time is from GMT. The DateTime is stored whole, and the offset
// is stored as an Int16 internally to save space, but presented as a TimeSpan. 
//
// The range is constrained so that both the represented clock time and the represented
// UTC time fit within the boundaries of MaxValue. This gives it the same range as DateTime
// for actual UTC times, and a slightly constrained range on one end when an offset is
// present. 
//
// This class should be substitutable for date time in most cases; so most operations
// effectively work on the clock time. However, the underlying UTC time is what counts
// for the purposes of identity, sorting and subtracting two instances.
//
//
// There are theoretically two date times stored, the UTC and the relative local representation
// or the 'clock' time. It actually does not matter which is stored in m_dateTime, so it is desirable
// for most methods to go through the helpers UtcDateTime and ClockDateTime both to abstract this
// out and for internal readability.
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Auto*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public struct DateTimeOffset
{
    package(mscorlib) enum long MaxOffset/*todo: implement initializer*/ = long();
    package(mscorlib) enum long MinOffset/*todo: implement initializer*/ = long();
    private enum long UnixEpochTicks/*todo: implement initializer*/ = long();
    private enum long UnixEpochSeconds/*todo: implement initializer*/ = long();
    private enum long UnixEpochMilliseconds/*todo: implement initializer*/ = long();
    package(mscorlib) enum long UnixMinSeconds/*todo: implement initializer*/ = long();
    package(mscorlib) enum long UnixMaxSeconds/*todo: implement initializer*/ = long();
    public static immutable DateTimeOffset MinValue/*todo: implement initializer*/ = DateTimeOffset();
    public static immutable DateTimeOffset MaxValue/*todo: implement initializer*/ = DateTimeOffset();
    private DateTime m_dateTime;
    private short m_offsetMinutes;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Now'
    //TODO: generate property 'UtcNow'
    //TODO: generate property 'DateTime'
    //TODO: generate property 'UtcDateTime'
    //TODO: generate property 'LocalDateTime'
    //TODO: generate method ToOffset
    //TODO: generate property 'ClockDateTime'
    //TODO: generate property 'Date'
    //TODO: generate property 'Day'
    //TODO: generate property 'DayOfWeek'
    //TODO: generate property 'DayOfYear'
    //TODO: generate property 'Hour'
    //TODO: generate property 'Millisecond'
    //TODO: generate property 'Minute'
    //TODO: generate property 'Month'
    //TODO: generate property 'Offset'
    //TODO: generate property 'Second'
    //TODO: generate property 'Ticks'
    //TODO: generate property 'UtcTicks'
    //TODO: generate property 'TimeOfDay'
    //TODO: generate property 'Year'
    //TODO: generate method Add
    //TODO: generate method AddDays
    //TODO: generate method AddHours
    //TODO: generate method AddMilliseconds
    //TODO: generate method AddMinutes
    //TODO: generate method AddMonths
    //TODO: generate method AddSeconds
    //TODO: generate method AddTicks
    //TODO: generate method AddYears
    //TODO: generate method Compare
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method EqualsExact
    //TODO: generate method Equals
    //TODO: generate method FromFileTime
    //TODO: generate method FromUnixTimeSeconds
    //TODO: generate method FromUnixTimeMilliseconds
    //TODO: generate method OnDeserialization
    //TODO: generate method GetObjectData
    //TODO: generate constructor
    //TODO: generate method GetHashCode
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method ParseExact
    //TODO: generate method ParseExact
    //TODO: generate method ParseExact
    //TODO: generate method Subtract
    //TODO: generate method Subtract
    //TODO: generate method ToFileTime
    //TODO: generate method ToUnixTimeSeconds
    //TODO: generate method ToUnixTimeMilliseconds
    //TODO: generate method ToLocalTime
    //TODO: generate method ToLocalTime
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToUniversalTime
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method TryParseExact
    //TODO: generate method TryParseExact
    //TODO: generate method ValidateOffset
    //TODO: generate method ValidateDate
    //TODO: generate method ValidateStyles
    //TODO: generate conversion operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
}
public class __Boxed__DateTimeOffset : __DotNet__Object, IComparable, IFormattable, IComparable1!(DateTimeOffset), IEquatable1!(DateTimeOffset), ISerializable, IDeserializationCallback
{
    DateTimeOffset value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\DayOfWeek.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum DayOfWeek
{
    Sunday = 0,
    Monday = 1,
    Tuesday = 2,
    Wednesday = 3,
    Thursday = 4,
    Friday = 5,
    Saturday = 6,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\DBNull.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class DBNull : __DotNet__Object, ISerializable, IConvertible
{
    //TODO: generate constructor
    //TODO: generate constructor
    public static immutable DBNull Value/*todo: implement initializer*/ = null;
    //TODO: generate method GetObjectData
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method GetTypeCode
    //TODO: generate method ToBoolean
    //TODO: generate method ToChar
    //TODO: generate method ToSByte
    //TODO: generate method ToByte
    //TODO: generate method ToInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method ToDouble
    //TODO: generate method ToDecimal
    //TODO: generate method ToDateTime
    //TODO: generate method ToType
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Decimal.cs'
//
// Implements the Decimal data type. The Decimal data type can
// represent values ranging from -79,228,162,514,264,337,593,543,950,335 to
// 79,228,162,514,264,337,593,543,950,335 with 28 significant digits. The
// Decimal data type is ideally suited to financial calculations that
// require a large number of significant digits and no round-off errors.
//
// The finite set of values of type Decimal are of the form m
// / 10e, where m is an integer such that
// -296 <; m <; 296, and e is an integer
// between 0 and 28 inclusive.
//
// Contrary to the float and double data types, decimal
// fractional numbers such as 0.1 can be represented exactly in the
// Decimal representation. In the float and double
// representations, such numbers are often infinite fractions, making those
// representations more prone to round-off errors.
//
// The Decimal class implements widening conversions from the
// ubyte, char, short, int, and long types
// to Decimal. These widening conversions never loose any information
// and never throw exceptions. The Decimal class also implements
// narrowing conversions from Decimal to ubyte, char,
// short, int, and long. These narrowing conversions round
// the Decimal value towards zero to the nearest integer, and then
// converts that integer to the destination type. An OverflowException
// is thrown if the result is not within the range of the destination type.
//
// The Decimal class provides a widening conversion from
// Currency to Decimal. This widening conversion never loses any
// information and never throws exceptions. The Currency class provides
// a narrowing conversion from Decimal to Currency. This
// narrowing conversion rounds the Decimal to four decimals and then
// converts that number to a Currency. An OverflowException
// is thrown if the result is not within the range of the Currency type.
//
// The Decimal class provides narrowing conversions to and from the
// float and double types. A conversion from Decimal to
// float or double may loose precision, but will not loose
// information about the overall magnitude of the numeric value, and will never
// throw an exception. A conversion from float or double to
// Decimal throws an OverflowException if the value is not within
// the range of the Decimal type.
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(NonVersionableAttribute.stringof)
public struct Decimal
{
    private enum int SignMask/*todo: implement initializer*/ = int();
    private enum ubyte DECIMAL_NEG/*todo: implement initializer*/ = ubyte();
    private enum ubyte DECIMAL_ADD/*todo: implement initializer*/ = ubyte();
    private enum int ScaleMask/*todo: implement initializer*/ = int();
    private enum int ScaleShift/*todo: implement initializer*/ = int();
    private enum int MaxInt32Scale/*todo: implement initializer*/ = int();
    private static uint[] Powers10/*todo: implement initializer*/ = null;
    public enum Decimal Zero/*todo: implement initializer*/ = Decimal();
    public enum Decimal One/*todo: implement initializer*/ = Decimal();
    public enum Decimal MinusOne/*todo: implement initializer*/ = Decimal();
    public enum Decimal MaxValue/*todo: implement initializer*/ = Decimal();
    public enum Decimal MinValue/*todo: implement initializer*/ = Decimal();
    private enum Decimal NearNegativeZero/*todo: implement initializer*/ = Decimal();
    private enum Decimal NearPositiveZero/*todo: implement initializer*/ = Decimal();
    private int flags;
    private int hi;
    private int lo;
    private int mid;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method ToOACurrency
    //TODO: generate method FromOACurrency
    //TODO: generate constructor
    //TODO: generate method SetBits
    //TODO: generate constructor
    //TODO: generate method OnSerializing
    //TODO: generate method OnDeserialization
    //TODO: generate constructor
    //TODO: generate method Abs
    //TODO: generate method Add
    //TODO: generate method FCallAddSub
    //TODO: generate method FCallAddSubOverflowed
    //TODO: generate method Ceiling
    //TODO: generate method Compare
    //TODO: generate method FCallCompare
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method Divide
    //TODO: generate method FCallDivide
    //TODO: generate method FCallDivideOverflowed
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Floor
    //TODO: generate method FCallFloor
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method GetBits
    //TODO: generate method GetBytes
    //TODO: generate method ToDecimal
    //TODO: generate method InternalAddUInt32RawUnchecked
    //TODO: generate method InternalDivRemUInt32
    //TODO: generate method InternalRoundFromZero
    //TODO: generate method Max
    //TODO: generate method Min
    //TODO: generate method Remainder
    //TODO: generate method Multiply
    //TODO: generate method FCallMultiply
    //TODO: generate method FCallMultiplyOverflowed
    //TODO: generate method Negate
    //TODO: generate method Round
    //TODO: generate method Round
    //TODO: generate method Round
    //TODO: generate method Round
    //TODO: generate method FCallRound
    //TODO: generate method Subtract
    //TODO: generate method ToByte
    //TODO: generate method ToSByte
    //TODO: generate method ToInt16
    //TODO: generate method ToCurrency
    //TODO: generate method FCallToCurrency
    //TODO: generate method ToDouble
    //TODO: generate method FCallToInt32
    //TODO: generate method ToInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt16
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method Truncate
    //TODO: generate method FCallTruncate
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method GetTypeCode
    //TODO: generate method ToBoolean
    //TODO: generate method ToChar
    //TODO: generate method ToSByte
    //TODO: generate method ToByte
    //TODO: generate method ToInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method ToDouble
    //TODO: generate method ToDecimal
    //TODO: generate method ToDateTime
    //TODO: generate method ToType
}
public class __Boxed__Decimal : __DotNet__Object, IFormattable, IComparable, IConvertible, IComparable1!(Decimal), IEquatable1!(Decimal), IDeserializationCallback
{
    Decimal value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\DefaultBinder.cs'
//
//Marked serializable even though it has no state.
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class DefaultBinder : Binder
{
    //TODO: generate method BindToMethod
    //TODO: generate method BindToField
    //TODO: generate method SelectMethod
    //TODO: generate method SelectProperty
    //TODO: generate method ChangeType
    //TODO: generate method ReorderArgumentArray
    //TODO: generate method ExactBinding
    //TODO: generate method ExactPropertyBinding
    //TODO: generate method FindMostSpecific
    //TODO: generate method FindMostSpecificType
    //TODO: generate method FindMostSpecificMethod
    //TODO: generate method FindMostSpecificField
    //TODO: generate method FindMostSpecificProperty
    //TODO: generate method CompareMethodSigAndName
    //TODO: generate method GetHierarchyDepth
    //TODO: generate method FindMostDerivedNewSlotMeth
    //TODO: generate method CanConvertPrimitive
    //TODO: generate method CanConvertPrimitiveObjectToType
    //TODO: generate method ReorderParams
    //TODO: generate method CreateParamOrder
    package(mscorlib) static class BinderState : __DotNet__Object
    {
        package(mscorlib) int[] m_argsMap;
        package(mscorlib) int m_originalSize;
        package(mscorlib) bool m_isParamArray;
        //TODO: generate constructor
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Delegate.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.AutoDual*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class Delegate : __DotNet__Object, ICloneable, ISerializable
{
    // _target is the object we will invoke on
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    package(mscorlib) __DotNet__Object _target;
    // MethodBase, either cached after first request or assigned from a DynamicMethod
    // For open delegates to collectible types, this may be a LoaderAllocator object
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    package(mscorlib) __DotNet__Object _methodBase;
    // _methodPtr is a pointer to the method we will invoke
    // It could be a small thunk if this is a static or UM call
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    package(mscorlib) IntPtr _methodPtr;
    // In the case of a static method passed to a delegate, this field stores
    // whatever _methodPtr would have stored: and _methodPtr points to a
    // small thunk which removes the "this" pointer before going on
    // to _methodPtrAux.
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    package(mscorlib) IntPtr _methodPtrAux;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method DynamicInvoke
    //TODO: generate method DynamicInvokeImpl
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method Combine
    //TODO: generate method Combine
    //TODO: generate method GetInvocationList
    //TODO: generate property 'Method'
    //TODO: generate method GetMethodImpl
    //TODO: generate property 'Target'
    //TODO: generate method Remove
    //TODO: generate method RemoveAll
    //TODO: generate method CombineImpl
    //TODO: generate method RemoveImpl
    //TODO: generate method Clone
    //TODO: generate method CreateDelegate
    //TODO: generate method CreateDelegate
    //TODO: generate method CreateDelegate
    //TODO: generate method CreateDelegate
    //TODO: generate method CreateDelegate
    //TODO: generate method CreateDelegate
    //TODO: generate method CreateDelegate
    //TODO: generate method CreateDelegate
    //TODO: generate method CreateDelegate
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method GetObjectData
    //TODO: generate method CreateDelegateNoSecurityCheck
    //TODO: generate method CreateDelegateNoSecurityCheck
    //TODO: generate method CreateDelegate
    //TODO: generate method CreateDelegateInternal
    //TODO: generate method UnsafeCreateDelegate
    //TODO: generate method BindToMethodName
    //TODO: generate method BindToMethodInfo
    //TODO: generate method InternalAlloc
    //TODO: generate method InternalAllocLike
    //TODO: generate method InternalEqualTypes
    //TODO: generate method DelegateConstruct
    //TODO: generate method GetMulticastInvoke
    //TODO: generate method GetInvokeMethod
    //TODO: generate method FindMethodHandle
    //TODO: generate method InternalEqualMethodHandles
    //TODO: generate method AdjustTarget
    //TODO: generate method GetCallStub
    //TODO: generate method GetTarget
    //TODO: generate method CompareUnmanagedFunctionPtrs
}
package(mscorlib) enum DelegateBindingFlags
{
    StaticMethodOnly = 0x00000001,
    InstanceMethodOnly = 0x00000002,
    OpenDelegateOnly = 0x00000004,
    ClosedDelegateOnly = 0x00000008,
    NeverCloseOverNull = 0x00000010,
    CaselessMatching = 0x00000020,
    SkipSecurityChecks = 0x00000040,
    RelaxedSignature = 0x00000080,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\DelegateSerializationHolder.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class DelegateSerializationHolder : __DotNet__Object, IObjectReference, ISerializable
{
    //TODO: generate method GetDelegateSerializationInfo
    // #endregion
    // #region Definitions
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    package(mscorlib) static class DelegateEntry : __DotNet__Object
    {
        package(mscorlib) String type;
        package(mscorlib) String assembly;
        package(mscorlib) __DotNet__Object target;
        package(mscorlib) String targetTypeAssembly;
        package(mscorlib) String targetTypeName;
        package(mscorlib) String methodName;
        package(mscorlib) DelegateEntry delegateEntry;
        //TODO: generate constructor
        //TODO: generate property 'Entry'
    }
    private DelegateEntry m_delegateEntry;
    private MethodInfo[] m_methods;
    //TODO: generate constructor
    //TODO: generate method ThrowInsufficientState
    //TODO: generate method OldDelegateWireFormat
    //TODO: generate method GetDelegate
    //TODO: generate method GetRealObject
    //TODO: generate method GetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\DivideByZeroException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class DivideByZeroException : ArithmeticException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\DllNotFoundException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class DllNotFoundException : TypeLoadException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Double.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct Double
{
    package(mscorlib) double m_value;
    public enum double MinValue/*todo: implement initializer*/ = double();
    public enum double MaxValue/*todo: implement initializer*/ = double();
    public enum double Epsilon/*todo: implement initializer*/ = double();
    public enum double NegativeInfinity/*todo: implement initializer*/ = double();
    public enum double PositiveInfinity/*todo: implement initializer*/ = double();
    public enum double NaN/*todo: implement initializer*/ = double();
    package(mscorlib) static double NegativeZero/*todo: implement initializer*/ = double();
    //TODO: generate method IsInfinity
    //TODO: generate method IsPositiveInfinity
    //TODO: generate method IsNegativeInfinity
    //TODO: generate method IsNegative
    //TODO: generate method IsNaN
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method GetTypeCode
    //TODO: generate method ToBoolean
    //TODO: generate method ToChar
    //TODO: generate method ToSByte
    //TODO: generate method ToByte
    //TODO: generate method ToInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method ToDouble
    //TODO: generate method ToDecimal
    //TODO: generate method ToDateTime
    //TODO: generate method ToType
}
public class __Boxed__Double : __DotNet__Object, IComparable, IFormattable, IConvertible, IComparable1!(double), IEquatable1!(double)
{
    double value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\DuplicateWaitObjectException.cs'
//
// The DuplicateWaitObjectException is thrown when an object 
// appears more than once in the list of objects to WaitAll or WaitAny.
// 
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class DuplicateWaitObjectException : ArgumentException
{
    private static /*todo: volatile*/ String _duplicateWaitObjectMessage/*todo: implement initializer*/ = null;
    //TODO: generate property 'DuplicateWaitObjectMessage'
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Empty.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class Empty : __DotNet__Object, ISerializable
{
    //TODO: generate constructor
    public static immutable Empty Value/*todo: implement initializer*/ = null;
    //TODO: generate method ToString
    //TODO: generate method GetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\EntryPointNotFoundException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class EntryPointNotFoundException : TypeLoadException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Enum.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class Enum : ValueType, IComparable, IFormattable, IConvertible
{
    private enum wchar enumSeparatorChar/*todo: implement initializer*/ = wchar();
    private enum String enumSeparatorString/*todo: implement initializer*/ = null;
    //TODO: generate method GetCachedValuesAndNames
    //TODO: generate method InternalFormattedHexString
    //TODO: generate method InternalFormattedHexString
    //TODO: generate method GetEnumName
    //TODO: generate method InternalFormat
    //TODO: generate method InternalFlagsFormat
    //TODO: generate method InternalFlagsFormat
    //TODO: generate method ToUInt64
    //TODO: generate method InternalCompareTo
    //TODO: generate method InternalGetUnderlyingType
    //TODO: generate method GetEnumValuesAndNames
    //TODO: generate method InternalBoxEnum
    private enum ParseFailureKind
    {
        None = 0,
        Argument = 1,
        ArgumentNull = 2,
        ArgumentWithParameter = 3,
        UnhandledException = 4,
    }
    private static struct EnumResult
    {
        package(mscorlib) __DotNet__Object parsedEnum;
        package(mscorlib) bool canThrow;
        package(mscorlib) ParseFailureKind m_failure;
        package(mscorlib) String m_failureMessageID;
        package(mscorlib) String m_failureParameter;
        package(mscorlib) __DotNet__Object m_failureMessageFormatArgument;
        package(mscorlib) __DotNet__Exception m_innerException;
        //TODO: generate method SetFailure
        //TODO: generate method SetFailure
        //TODO: generate method SetFailure
        //TODO: generate method GetEnumParseException
    }
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method TryParseEnum
    //TODO: generate method GetUnderlyingType
    //TODO: generate method GetValues
    //TODO: generate method InternalGetValues
    //TODO: generate method GetName
    //TODO: generate method GetNames
    //TODO: generate method InternalGetNames
    //TODO: generate method ToObject
    //TODO: generate method IsDefined
    //TODO: generate method Format
    private static class TypeValuesAndNames : __DotNet__Object
    {
        //TODO: generate constructor
        public bool IsFlag;
        public ulong[] Values;
        public String[] Names;
    }
    //TODO: generate method GetValue
    //TODO: generate method ToUInt64
    //TODO: generate method InternalHasFlag
    //TODO: generate method InternalGetCorElementType
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method CompareTo
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method HasFlag
    //TODO: generate method GetTypeCode
    //TODO: generate method ToBoolean
    //TODO: generate method ToChar
    //TODO: generate method ToSByte
    //TODO: generate method ToByte
    //TODO: generate method ToInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method ToDouble
    //TODO: generate method ToDecimal
    //TODO: generate method ToDateTime
    //TODO: generate method ToType
    //TODO: generate method ToObject
    //TODO: generate method ToObject
    //TODO: generate method ToObject
    //TODO: generate method ToObject
    //TODO: generate method ToObject
    //TODO: generate method ToObject
    //TODO: generate method ToObject
    //TODO: generate method ToObject
    //TODO: generate method ToObject
    //TODO: generate method ToObject
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Environment.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum EnvironmentVariableTarget
{
    Process = 0,
    // #if FEATURE_WIN32_REGISTRY            
    User = 1,
    Machine = 2,
}
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class Environment : __DotNet__Object
{
    private this() {} // prevent instantiation
    private enum int MaxEnvVariableValueLength/*todo: implement initializer*/ = int();
    private enum int MaxSystemEnvVariableLength/*todo: implement initializer*/ = int();
    private enum int MaxUserEnvVariableLength/*todo: implement initializer*/ = int();
    package(mscorlib) static final class ResourceHelper : __DotNet__Object
    {
        //TODO: generate constructor
        private String m_name;
        private ResourceManager SystemResMgr;
        private List1!(String) currentlyLoading;
        package(mscorlib) bool resourceManagerInited/*todo: implement initializer*/ = bool();
        private int infinitelyRecursingCount;
        package(mscorlib) static class GetResourceStringUserData : __DotNet__Object
        {
            public ResourceHelper m_resourceHelper;
            public String m_key;
            public String m_retVal;
            public bool m_lockWasTaken;
            //TODO: generate constructor
        }
        //TODO: generate method GetResourceString
        //TODO: generate method GetResourceStringCode
        //TODO: generate method GetResourceStringBackoutCode
    }
    private static /*todo: volatile*/ ResourceHelper m_resHelper;
    private enum int MaxMachineNameLength/*todo: implement initializer*/ = int();
    private static __DotNet__Object s_InternalSyncObject;
    //TODO: generate property 'InternalSyncObject'
    private static /*todo: volatile*/ OperatingSystem m_os;
    //TODO: generate property 'TickCount'
    //TODO: generate method _Exit
    //TODO: generate method Exit
    //TODO: generate property 'ExitCode'
    //TODO: generate method FailFast
    //TODO: generate method FailFast
    //TODO: generate method FailFast
    //TODO: generate property 'CurrentDirectory'
    //TODO: generate property 'SystemDirectory'
    //TODO: generate property 'InternalWindowsDirectory'
    //TODO: generate method ExpandEnvironmentVariables
    //TODO: generate property 'MachineName'
    //TODO: generate method GetProcessorCount
    //TODO: generate property 'ProcessorCount'
    //TODO: generate property 'SystemPageSize'
    //TODO: generate method GetCommandLineArgs
    //TODO: generate method GetCommandLineArgsNative
    private static String[] s_CommandLineArgs/*todo: implement initializer*/ = null;
    //TODO: generate method SetCommandLineArgs
    //TODO: generate method GetEnvironmentVariable
    //TODO: generate method GetEnvironmentVariable
    //TODO: generate method GetEnvironmentCharArray
    //TODO: generate method GetEnvironmentVariables
    //TODO: generate method GetRegistryKeyNameValuePairs
    //TODO: generate method GetEnvironmentVariables
    //TODO: generate method SetEnvironmentVariable
    //TODO: generate method CheckEnvironmentVariableName
    //TODO: generate method SetEnvironmentVariable
    //TODO: generate method GetLogicalDrives
    //TODO: generate property 'NewLine'
    //TODO: generate property 'Version'
    //TODO: generate method GetWorkingSet
    //TODO: generate property 'WorkingSet'
    //TODO: generate property 'OSVersion'
    //TODO: generate property 'IsWindows8OrAbove'
    //TODO: generate property 'IsWinRTSupported'
    //TODO: generate method GetVersion
    //TODO: generate method GetVersionEx
    //TODO: generate property 'StackTrace'
    //TODO: generate method GetStackTrace
    //TODO: generate method InitResourceHelper
    //TODO: generate method GetResourceStringLocal
    //TODO: generate method GetResourceString
    //TODO: generate method GetResourceString
    //TODO: generate method GetResourceString
    //TODO: generate method GetResourceString
    //TODO: generate method GetResourceString
    //TODO: generate method GetResourceString
    //TODO: generate method GetResourceString
    //TODO: generate method GetResourceString
    //TODO: generate method GetResourceStringFormatted
    //TODO: generate method GetRuntimeResourceString
    //TODO: generate method GetRuntimeResourceString
    //TODO: generate property 'Is64BitProcess'
    //TODO: generate property 'Is64BitOperatingSystem'
    //TODO: generate property 'HasShutdownStarted'
    //TODO: generate property 'UserName'
    //TODO: generate property 'UserInteractive'
    //TODO: generate method GetFolderPath
    //TODO: generate method GetFolderPath
    //TODO: generate method UnsafeGetFolderPath
    //TODO: generate method InternalGetFolderPath
    //TODO: generate property 'UserDomainName'
    public enum SpecialFolderOption
    {
        None = 0,
        Create = /*MemberExpression:Type*/Win32Native.CSIDL_FLAG_CREATE,
        DoNotVerify = /*MemberExpression:Type*/Win32Native.CSIDL_FLAG_DONT_VERIFY,
    }
    //////!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!////////
    //////!!!!!! Keep the following locations synchronized            !!!!!!////////
    //////!!!!!! 1) ndp\clr\src\BCL\Microsoft\Win32\Win32Native.cs    !!!!!!////////
    //////!!!!!! 2) ndp\clr\src\BCL\System\Environment.cs             !!!!!!////////
    //////!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!////////
    @__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
    public enum SpecialFolder
    {
        //  
        //      Represents the file system directory that serves as a common repository for
        //       application-specific data for the current, roaming user. 
        //     A roaming user works on more than one computer on a network. A roaming user's 
        //       profile is kept on a server on the network and is loaded onto a system when the
        //       user logs on. 
        //  
        ApplicationData = /*MemberExpression:Type*/Win32Native.CSIDL_APPDATA,
        //  
        //      Represents the file system directory that serves as a common repository for application-specific data that
        //       is used by all users. 
        //  
        CommonApplicationData = /*MemberExpression:Type*/Win32Native.CSIDL_COMMON_APPDATA,
        //  
        //     Represents the file system directory that serves as a common repository for application specific data that
        //       is used by the current, non-roaming user. 
        //  
        LocalApplicationData = /*MemberExpression:Type*/Win32Native.CSIDL_LOCAL_APPDATA,
        //  
        //     Represents the file system directory that serves as a common repository for Internet
        //       cookies. 
        //  
        Cookies = /*MemberExpression:Type*/Win32Native.CSIDL_COOKIES,
        Desktop = /*MemberExpression:Type*/Win32Native.CSIDL_DESKTOP,
        //  
        //     Represents the file system directory that serves as a common repository for the user's
        //       favorite items. 
        //  
        Favorites = /*MemberExpression:Type*/Win32Native.CSIDL_FAVORITES,
        //  
        //     Represents the file system directory that serves as a common repository for Internet
        //       history items. 
        //  
        History = /*MemberExpression:Type*/Win32Native.CSIDL_HISTORY,
        //  
        //     Represents the file system directory that serves as a common repository for temporary 
        //       Internet files. 
        //  
        InternetCache = /*MemberExpression:Type*/Win32Native.CSIDL_INTERNET_CACHE,
        //  
        //      Represents the file system directory that contains
        //       the user's program groups. 
        //  
        Programs = /*MemberExpression:Type*/Win32Native.CSIDL_PROGRAMS,
        MyComputer = /*MemberExpression:Type*/Win32Native.CSIDL_DRIVES,
        MyMusic = /*MemberExpression:Type*/Win32Native.CSIDL_MYMUSIC,
        MyPictures = /*MemberExpression:Type*/Win32Native.CSIDL_MYPICTURES,
        //      "My Videos" folder
        MyVideos = /*MemberExpression:Type*/Win32Native.CSIDL_MYVIDEO,
        //  
        //     Represents the file system directory that contains the user's most recently used
        //       documents. 
        //  
        Recent = /*MemberExpression:Type*/Win32Native.CSIDL_RECENT,
        //  
        //     Represents the file system directory that contains Send To menu items. 
        //  
        SendTo = /*MemberExpression:Type*/Win32Native.CSIDL_SENDTO,
        //  
        //     Represents the file system directory that contains the Start menu items. 
        //  
        StartMenu = /*MemberExpression:Type*/Win32Native.CSIDL_STARTMENU,
        //  
        //     Represents the file system directory that corresponds to the user's Startup program group. The system
        //       starts these programs whenever any user logs on to Windows NT, or
        //       starts Windows 95 or Windows 98. 
        //  
        Startup = /*MemberExpression:Type*/Win32Native.CSIDL_STARTUP,
        //  
        //     System directory.
        //  
        System = /*MemberExpression:Type*/Win32Native.CSIDL_SYSTEM,
        //  
        //     Represents the file system directory that serves as a common repository for document
        //       templates. 
        //  
        Templates = /*MemberExpression:Type*/Win32Native.CSIDL_TEMPLATES,
        //  
        //     Represents the file system directory used to physically store file objects on the desktop.
        //       This should not be confused with the desktop folder itself, which is
        //       a virtual folder. 
        //  
        DesktopDirectory = /*MemberExpression:Type*/Win32Native.CSIDL_DESKTOPDIRECTORY,
        //  
        //     Represents the file system directory that serves as a common repository for documents. 
        //  
        Personal = /*MemberExpression:Type*/Win32Native.CSIDL_PERSONAL,
        //          
        // "MyDocuments" is a better name than "Personal"
        //
        MyDocuments = /*MemberExpression:Type*/Win32Native.CSIDL_PERSONAL,
        //  
        //     Represents the program files folder. 
        //  
        ProgramFiles = /*MemberExpression:Type*/Win32Native.CSIDL_PROGRAM_FILES,
        //  
        //     Represents the folder for components that are shared across applications. 
        //  
        CommonProgramFiles = /*MemberExpression:Type*/Win32Native.CSIDL_PROGRAM_FILES_COMMON,
    }
    //TODO: generate property 'CurrentManagedThreadId'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\EventArgs.cs'
//
// The base class for all event classes.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class EventArgs : __DotNet__Object
{
    public static immutable EventArgs Empty/*todo: implement initializer*/ = null;
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\EventHandler.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public alias EventHandler = void delegate(__DotNet__Object sender, EventArgs e);
@__DotNet__Attribute!(SerializableAttribute.stringof)
public template EventHandler1(TEventArgs)
{
    alias EventHandler1 = void delegate(__DotNet__Object sender, TEventArgs e);
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Exception.cs'
//
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_Exception)*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class __DotNet__Exception : __DotNet__Object, ISerializable, _Exception
{
    //TODO: generate method Init
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Message'
    //TODO: generate property 'Data'
    //TODO: generate method IsImmutableAgileException
    // #if FEATURE_COMINTEROP
    //
    // Exception requires anything to be added into Data dictionary is serializable
    // This wrapper is made serializable to satisfy this requirement but does NOT serialize 
    // the object and simply ignores it during serialization, because we only need 
    // the exception instance in the app to hold the error object alive.
    // Once the exception is serialized to debugger, debugger only needs the error reference string
    //
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    package(mscorlib) static class __RestrictedErrorObject : __DotNet__Object
    {
        // Hold the error object instance but don't serialize/deserialize it
        @__DotNet__Attribute!(NonSerializedAttribute.stringof)
        private __DotNet__Object _realErrorObject;
        //TODO: generate constructor
        //TODO: generate property 'RealErrorObject'
    }
    //TODO: generate method AddExceptionDataForRestrictedErrorInfo
    //TODO: generate method TryGetRestrictedLanguageErrorObject
    //TODO: generate method GetClassName
    //TODO: generate method GetBaseException
    //TODO: generate property 'InnerException'
    //TODO: generate method GetMethodFromStackTrace
    //TODO: generate method GetExceptionMethodFromStackTrace
    //TODO: generate property 'TargetSite'
    //TODO: generate method GetTargetSiteInternal
    //TODO: generate property 'StackTrace'
    //TODO: generate method GetStackTrace
    //TODO: generate method SetErrorCode
    //TODO: generate property 'HelpLink'
    //TODO: generate property 'Source'
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method GetExceptionMethodString
    //TODO: generate method GetExceptionMethodFromString
    //TODO: generate method GetObjectData
    //TODO: generate method PrepForRemoting
    //TODO: generate method OnDeserialized
    //TODO: generate method InternalPreserveStackTrace
    // #if FEATURE_EXCEPTIONDISPATCHINFO
    // This is the object against which a lock will be taken
    // when attempt to restore the EDI. Since its static, its possible
    // that unrelated exception object restorations could get blocked
    // for a small duration but that sounds reasonable considering
    // such scenarios are going to be extremely rare, where timing
    // matches precisely.
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof)
    private static __DotNet__Object s_EDILock/*todo: implement initializer*/ = null;
    //TODO: generate property 'IPForWatsonBuckets'
    //TODO: generate property 'WatsonBuckets'
    //TODO: generate property 'RemoteStackTrace'
    //TODO: generate method PrepareForForeignExceptionRaise
    //TODO: generate method GetStackTracesDeepCopy
    //TODO: generate method SaveStackTracesFromDeepCopy
    //TODO: generate method CopyStackTrace
    //TODO: generate method CopyDynamicMethods
    //TODO: generate method DeepCopyStackTrace
    //TODO: generate method DeepCopyDynamicMethods
    //TODO: generate method GetStackTracesDeepCopy
    //TODO: generate method RestoreExceptionDispatchInfo
    private String _className;
    private MethodBase _exceptionMethod;
    private String _exceptionMethodString;
    package(mscorlib) String _message;
    private IDictionary _data;
    private __DotNet__Exception _innerException;
    private String _helpURL;
    private __DotNet__Object _stackTrace;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof)
    private __DotNet__Object _watsonBuckets;
    private String _stackTraceString;
    private String _remoteStackTraceString;
    private int _remoteStackIndex;
    private __DotNet__Object _dynamicMethods;
    package(mscorlib) int _HResult;
    //TODO: generate property 'HResult'
    private String _source;
    private IntPtr _xptrs;
    private int _xcode;
    // #pragma warning restore 414
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof)
    private UIntPtr _ipForWatsonBuckets;
    private enum int _COMPlusExceptionCode/*todo: implement initializer*/ = int();
    //TODO: generate method InternalToString
    //TODO: generate method GetType
    //TODO: generate property 'IsTransient'
    //TODO: generate method nIsTransient
    package(mscorlib) enum ExceptionMessageKind
    {
        ThreadAbort = 1,
        ThreadInterrupted = 2,
        OutOfMemory = 3,
    }
    //TODO: generate method GetMessageFromNativeResources
    //TODO: generate method GetMessageFromNativeResources
}
package(mscorlib) final class CrossAppDomainMarshaledException : SystemException
{
    //TODO: generate constructor
    //TODO: generate method InternalToString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ExecutionEngineException.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "This type previously indicated an unspecified fatal error in the runtime. The runtime no longer raises this exception so this type is obsolete."*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class ExecutionEngineException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\FieldAccessException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class FieldAccessException : MemberAccessException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\FlagsAttribute.cs'
//
// Custom attribute to indicate that the enum
// should be treated as a bitfield (or set of flags).
// An IDE may use this information to provide a richer
// development experience.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Enum, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class FlagsAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\FormatException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class FormatException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\FormattableString.cs'
//
public abstract class FormattableString : __DotNet__Object, IFormattable
{
    //TODO: generate property 'Format'
    //TODO: generate method GetArguments
    //TODO: generate property 'ArgumentCount'
    //TODO: generate method GetArgument
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method Invariant
    //TODO: generate method ToString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\GC.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum GCCollectionMode
{
    Default = 0,
    Forced = 1,
    Optimized = 2,
}
// !!!!!!!!!!!!!!!!!!!!!!!
// make sure you change the def in vm\gc.h 
// if you change this!
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) enum InternalGCCollectionMode
{
    NonBlocking = 0x00000001,
    Blocking = 0x00000002,
    Optimized = 0x00000004,
    Compacting = 0x00000008,
}
// !!!!!!!!!!!!!!!!!!!!!!!
// make sure you change the def in vm\gc.h 
// if you change this!
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum GCNotificationStatus
{
    Succeeded = 0,
    Failed = 1,
    Canceled = 2,
    Timeout = 3,
    NotApplicable = 4,
}
public class GC : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method GetGCLatencyMode
    //TODO: generate method SetGCLatencyMode
    //TODO: generate method _StartNoGCRegion
    //TODO: generate method _EndNoGCRegion
    //TODO: generate method GetLOHCompactionMode
    //TODO: generate method SetLOHCompactionMode
    //TODO: generate method GetGenerationWR
    //TODO: generate method GetTotalMemory
    //TODO: generate method _Collect
    //TODO: generate method GetMaxGeneration
    //TODO: generate method _CollectionCount
    //TODO: generate method IsServerGC
    //TODO: generate method _AddMemoryPressure
    //TODO: generate method _RemoveMemoryPressure
    //TODO: generate method AddMemoryPressure
    //TODO: generate method RemoveMemoryPressure
    //TODO: generate method GetGeneration
    //TODO: generate method Collect
    //TODO: generate method Collect
    //TODO: generate method Collect
    //TODO: generate method Collect
    //TODO: generate method Collect
    //TODO: generate method CollectionCount
    //TODO: generate method CollectionCount
    //TODO: generate method KeepAlive
    //TODO: generate method GetGeneration
    //TODO: generate property 'MaxGeneration'
    //TODO: generate method _WaitForPendingFinalizers
    //TODO: generate method WaitForPendingFinalizers
    //TODO: generate method _SuppressFinalize
    //TODO: generate method SuppressFinalize
    //TODO: generate method _ReRegisterForFinalize
    //TODO: generate method ReRegisterForFinalize
    //TODO: generate method GetTotalMemory
    //TODO: generate method _GetAllocatedBytesForCurrentThread
    //TODO: generate method GetAllocatedBytesForCurrentThread
    //TODO: generate method _RegisterForFullGCNotification
    //TODO: generate method _CancelFullGCNotification
    //TODO: generate method _WaitForFullGCApproach
    //TODO: generate method _WaitForFullGCComplete
    //TODO: generate method RegisterForFullGCNotification
    //TODO: generate method CancelFullGCNotification
    //TODO: generate method WaitForFullGCApproach
    //TODO: generate method WaitForFullGCApproach
    //TODO: generate method WaitForFullGCComplete
    //TODO: generate method WaitForFullGCComplete
    private enum StartNoGCRegionStatus
    {
        Succeeded = 0,
        NotEnoughMemory = 1,
        AmountTooLarge = 2,
        AlreadyInProgress = 3,
    }
    private enum EndNoGCRegionStatus
    {
        Succeeded = 0,
        NotInProgress = 1,
        GCInduced = 2,
        AllocationExceeded = 3,
    }
    //TODO: generate method StartNoGCRegionWorker
    //TODO: generate method TryStartNoGCRegion
    //TODO: generate method TryStartNoGCRegion
    //TODO: generate method TryStartNoGCRegion
    //TODO: generate method TryStartNoGCRegion
    //TODO: generate method EndNoGCRegionWorker
    //TODO: generate method EndNoGCRegion
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\DateTimeFormat.cs'
//
package(mscorlib) class DateTimeFormat : __DotNet__Object
{
    private this() {} // prevent instantiation
    package(mscorlib) enum int MaxSecondsFractionDigits/*todo: implement initializer*/ = int();
    package(mscorlib) static immutable TimeSpan NullOffset/*todo: implement initializer*/ = TimeSpan();
    package(mscorlib) static wchar[] allStandardFormats/*todo: implement initializer*/ = null;
    package(mscorlib) enum String RoundtripFormat/*todo: implement initializer*/ = null;
    package(mscorlib) enum String RoundtripDateTimeUnfixed/*todo: implement initializer*/ = null;
    private enum int DEFAULT_ALL_DATETIMES_SIZE/*todo: implement initializer*/ = int();
    package(mscorlib) static String[] fixedNumberFormats/*todo: implement initializer*/ = null;
    //TODO: generate method FormatDigits
    //TODO: generate method FormatDigits
    //TODO: generate method HebrewFormatDigits
    //TODO: generate method ParseRepeatPattern
    //TODO: generate method FormatDayOfWeek
    //TODO: generate method FormatMonth
    //TODO: generate method FormatHebrewMonthName
    //TODO: generate method ParseQuoteString
    //TODO: generate method ParseNextChar
    //TODO: generate method IsUseGenitiveForm
    //TODO: generate method FormatCustomized
    //TODO: generate method FormatCustomizedTimeZone
    //TODO: generate method FormatCustomizedRoundripTimeZone
    //TODO: generate method GetRealFormat
    //TODO: generate method ExpandPredefinedFormat
    //TODO: generate method Format
    //TODO: generate method Format
    //TODO: generate method GetAllDateTimes
    //TODO: generate method GetAllDateTimes
    //TODO: generate method InvalidFormatForLocal
    //TODO: generate method InvalidFormatForUtc
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Globalization\DateTimeParse.cs'
//
package(mscorlib) class DateTimeParse : __DotNet__Object
{
    private this() {} // prevent instantiation
    package(mscorlib) enum int MaxDateTimeNumberDigits/*todo: implement initializer*/ = int();
    package(mscorlib) alias MatchNumberDelegate = bool delegate(ref __DTString str, int digitLen, out int result);
    package(mscorlib) static MatchNumberDelegate m_hebrewNumberParser/*todo: implement initializer*/ = null;
    //TODO: generate method ParseExact
    //TODO: generate method ParseExact
    //TODO: generate method TryParseExact
    //TODO: generate method TryParseExact
    //TODO: generate method TryParseExact
    //TODO: generate method ParseExactMultiple
    //TODO: generate method ParseExactMultiple
    //TODO: generate method TryParseExactMultiple
    //TODO: generate method TryParseExactMultiple
    //TODO: generate method TryParseExactMultiple
    package(mscorlib) enum DTT : int
    {
        End = 0,
        NumEnd = 1,
        NumAmpm = 2,
        NumSpace = 3,
        NumDatesep = 4,
        NumTimesep = 5,
        MonthEnd = 6,
        MonthSpace = 7,
        MonthDatesep = 8,
        NumDatesuff = 9,
        NumTimesuff = 10,
        DayOfWeek = 11,
        YearSpace = 12,
        YearDateSep = 13,
        YearEnd = 14,
        TimeZone = 15,
        Era = 16,
        NumUTCTimeMark = 17,
        // When you add a new token which will be in the
        // state table, add it after NumLocalTimeMark.
        Unk = 18,
        NumLocalTimeMark = 19,
        Max = 20,
    }
    package(mscorlib) enum TM
    {
        NotSet = -1,
        AM = 0,
        PM = 1,
    }
    package(mscorlib) enum DS
    {
        BEGIN = 0,
        N = 1,
        NN = 2,
        // The following are known to be part of a date
        D_Nd = 3,
        D_NN = 4,
        D_NNd = 5,
        D_M = 6,
        D_MN = 7,
        D_NM = 8,
        D_MNd = 9,
        D_NDS = 10,
        D_Y = 11,
        D_YN = 12,
        D_YNd = 13,
        D_YM = 14,
        D_YMd = 15,
        D_S = 16,
        T_S = 17,
        // The following are known to be part of a time
        T_Nt = 18,
        T_NNt = 19,
        ERROR = 20,
        // The following are terminal states. These all have an action
        // associated with them; and transition back to BEGIN.
        DX_NN = 21,
        DX_NNN = 22,
        DX_MN = 23,
        DX_NM = 24,
        DX_MNN = 25,
        DX_DS = 26,
        DX_DSN = 27,
        DX_NDS = 28,
        DX_NNDS = 29,
        DX_YNN = 30,
        DX_YMN = 31,
        DX_YN = 32,
        DX_YM = 33,
        TX_N = 34,
        TX_NN = 35,
        TX_NNN = 36,
        TX_TS = 37,
        DX_NNY = 38,
    }
    private static DS[][] dateParsingStates/*todo: implement initializer*/ = null;
    package(mscorlib) enum String GMTName/*todo: implement initializer*/ = null;
    package(mscorlib) enum String ZuluName/*todo: implement initializer*/ = null;
    //TODO: generate method MatchWord
    //TODO: generate method GetTimeZoneName
    //TODO: generate method IsDigit
    //TODO: generate method ParseFraction
    //TODO: generate method ParseTimeZone
    //TODO: generate method HandleTimeZone
    //TODO: generate method Lex
    //TODO: generate method VerifyValidPunctuation
    private enum int ORDER_YMD/*todo: implement initializer*/ = int();
    private enum int ORDER_MDY/*todo: implement initializer*/ = int();
    private enum int ORDER_DMY/*todo: implement initializer*/ = int();
    private enum int ORDER_YDM/*todo: implement initializer*/ = int();
    private enum int ORDER_YM/*todo: implement initializer*/ = int();
    private enum int ORDER_MY/*todo: implement initializer*/ = int();
    private enum int ORDER_MD/*todo: implement initializer*/ = int();
    private enum int ORDER_DM/*todo: implement initializer*/ = int();
    //TODO: generate method GetYearMonthDayOrder
    //TODO: generate method GetYearMonthOrder
    //TODO: generate method GetMonthDayOrder
    //TODO: generate method TryAdjustYear
    //TODO: generate method SetDateYMD
    //TODO: generate method SetDateMDY
    //TODO: generate method SetDateDMY
    //TODO: generate method SetDateYDM
    //TODO: generate method GetDefaultYear
    //TODO: generate method GetDayOfNN
    //TODO: generate method GetDayOfNNN
    //TODO: generate method GetDayOfMN
    //TODO: generate method GetHebrewDayOfNM
    //TODO: generate method GetDayOfNM
    //TODO: generate method GetDayOfMNN
    //TODO: generate method GetDayOfYNN
    //TODO: generate method GetDayOfNNY
    //TODO: generate method GetDayOfYMN
    //TODO: generate method GetDayOfYN
    //TODO: generate method GetDayOfYM
    //TODO: generate method AdjustTimeMark
    //TODO: generate method AdjustHour
    //TODO: generate method GetTimeOfN
    //TODO: generate method GetTimeOfNN
    //TODO: generate method GetTimeOfNNN
    //TODO: generate method GetDateOfDSN
    //TODO: generate method GetDateOfNDS
    //TODO: generate method GetDateOfNNDS
    //TODO: generate method ProcessDateTimeSuffix
    //TODO: generate method ProcessHebrewTerminalState
    //TODO: generate method ProcessTerminaltState
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method DetermineTimeZoneAdjustments
    //TODO: generate method DateTimeOffsetTimeZonePostProcessing
    //TODO: generate method AdjustTimeZoneToUniversal
    //TODO: generate method AdjustTimeZoneToLocal
    //TODO: generate method ParseISO8601
    //TODO: generate method MatchHebrewDigits
    //TODO: generate method ParseDigits
    //TODO: generate method ParseDigits
    //TODO: generate method ParseFractionExact
    //TODO: generate method ParseSign
    //TODO: generate method ParseTimeZoneOffset
    //TODO: generate method MatchAbbreviatedMonthName
    //TODO: generate method MatchMonthName
    //TODO: generate method MatchAbbreviatedDayName
    //TODO: generate method MatchDayName
    //TODO: generate method MatchEraName
    //TODO: generate method MatchTimeMark
    //TODO: generate method MatchAbbreviatedTimeMark
    //TODO: generate method CheckNewValue
    //TODO: generate method GetDateTimeNow
    //TODO: generate method CheckDefaultDateTime
    //TODO: generate method ExpandPredefinedFormat
    //TODO: generate method ParseByFormat
    //TODO: generate method TryParseQuoteString
    //TODO: generate method DoStrictParse
    //TODO: generate method GetDateTimeParseException
    //TODO: generate method LexTraceExit
    //TODO: generate method PTSTraceExit
    //TODO: generate method TPTraceExit
    //TODO: generate method DTFITrace
    //TODO: generate method Hex
    //TODO: generate method Hex
    //TODO: generate method Hex
    package(mscorlib) static bool _tracingEnabled/*todo: implement initializer*/ = bool();
}
package(mscorlib) struct __DTString
{
    package(mscorlib) String Value;
    package(mscorlib) int Index;
    package(mscorlib) int len;
    package(mscorlib) wchar m_current;
    private CompareInfo m_info;
    private bool m_checkDigitToken;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'CompareInfo'
    //TODO: generate method GetNext
    //TODO: generate method AtEnd
    //TODO: generate method Advance
    //TODO: generate method GetRegularToken
    //TODO: generate method GetSeparatorToken
    //TODO: generate method MatchSpecifiedWord
    //TODO: generate method MatchSpecifiedWord
    private static wchar[] WhiteSpaceChecks/*todo: implement initializer*/ = null;
    //TODO: generate method MatchSpecifiedWords
    //TODO: generate method Match
    //TODO: generate method Match
    //TODO: generate method MatchLongestWords
    //TODO: generate method GetRepeatCount
    //TODO: generate method GetNextDigit
    //TODO: generate method GetChar
    //TODO: generate method GetDigit
    //TODO: generate method SkipWhiteSpaces
    //TODO: generate method SkipWhiteSpaceCurrent
    //TODO: generate method TrimTail
    //TODO: generate method RemoveTrailingInQuoteSpaces
    //TODO: generate method RemoveLeadingInQuoteSpaces
    //TODO: generate method GetSubString
    //TODO: generate method ConsumeSubString
}
package(mscorlib) enum DTSubStringType
{
    Unknown = 0,
    Invalid = 1,
    Number = 2,
    End = 3,
    Other = 4,
}
package(mscorlib) struct DTSubString
{
    package(mscorlib) String s;
    package(mscorlib) int index;
    package(mscorlib) int length;
    package(mscorlib) DTSubStringType type;
    package(mscorlib) int value;
    //TODO: generate indexer
}
package(mscorlib) struct DateTimeToken
{
    package(mscorlib) DateTimeParse.DTT dtt;
    package(mscorlib) TokenType suffix;
    package(mscorlib) int num;
}
package(mscorlib) struct DateTimeRawInfo
{
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private int* num;
    package(mscorlib) int numCount;
    package(mscorlib) int month;
    package(mscorlib) int year;
    package(mscorlib) int dayOfWeek;
    package(mscorlib) int era;
    package(mscorlib) DateTimeParse.TM timeMark;
    package(mscorlib) double fraction;
    package(mscorlib) bool hasSameDateAndTimeSeparators;
    package(mscorlib) bool timeZone;
    //TODO: generate method Init
    //TODO: generate method AddNumber
    //TODO: generate method GetNumber
}
package(mscorlib) enum ParseFailureKind
{
    None = 0,
    ArgumentNull = 1,
    Format = 2,
    FormatWithParameter = 3,
    FormatBadDateTimeCalendar = 4,
}
@__DotNet__Attribute!(FlagsAttribute.stringof)
package(mscorlib) enum ParseFlags
{
    HaveYear = 0x00000001,
    HaveMonth = 0x00000002,
    HaveDay = 0x00000004,
    HaveHour = 0x00000008,
    HaveMinute = 0x00000010,
    HaveSecond = 0x00000020,
    HaveTime = 0x00000040,
    HaveDate = 0x00000080,
    TimeZoneUsed = 0x00000100,
    TimeZoneUtc = 0x00000200,
    ParsedMonthName = 0x00000400,
    CaptureOffset = 0x00000800,
    YearDefault = 0x00001000,
    Rfc1123Pattern = 0x00002000,
    UtcSortPattern = 0x00004000,
}
package(mscorlib) struct DateTimeResult
{
    package(mscorlib) int Year;
    package(mscorlib) int Month;
    package(mscorlib) int Day;
    package(mscorlib) int Hour;
    package(mscorlib) int Minute;
    package(mscorlib) int Second;
    package(mscorlib) double fraction;
    package(mscorlib) int era;
    package(mscorlib) ParseFlags flags;
    package(mscorlib) TimeSpan timeZoneOffset;
    package(mscorlib) Calendar calendar;
    package(mscorlib) DateTime parsedDate;
    package(mscorlib) mscorlib.System.ParseFailureKind failure;
    package(mscorlib) String failureMessageID;
    package(mscorlib) __DotNet__Object failureMessageFormatArgument;
    package(mscorlib) String failureArgumentName;
    //TODO: generate method Init
    //TODO: generate method SetDate
    //TODO: generate method SetFailure
    //TODO: generate method SetFailure
}
package(mscorlib) struct ParsingInfo
{
    package(mscorlib) Calendar calendar;
    package(mscorlib) int dayOfWeek;
    package(mscorlib) DateTimeParse.TM timeMark;
    package(mscorlib) bool fUseHour12;
    package(mscorlib) bool fUseTwoDigitYear;
    package(mscorlib) bool fAllowInnerWhite;
    package(mscorlib) bool fAllowTrailingWhite;
    package(mscorlib) bool fCustomNumberParser;
    package(mscorlib) DateTimeParse.MatchNumberDelegate parseNumberDelegate;
    //TODO: generate method Init
}
package(mscorlib) enum TokenType
{
    // The valid token should start from 1.
    // Regular tokens. The range is from 0x00 ~ 0xff.
    NumberToken = 1,
    YearNumberToken = 2,
    Am = 3,
    Pm = 4,
    MonthToken = 5,
    EndOfString = 6,
    DayOfWeekToken = 7,
    TimeZoneToken = 8,
    EraToken = 9,
    DateWordToken = 10,
    UnknownToken = 11,
    HebrewNumber = 12,
    JapaneseEraToken = 13,
    TEraToken = 14,
    IgnorableSymbol = 15,
    // Separator tokens.
    SEP_Unk = 0x100,
    SEP_End = 0x200,
    SEP_Space = 0x300,
    SEP_Am = 0x400,
    SEP_Pm = 0x500,
    SEP_Date = 0x600,
    SEP_Time = 0x700,
    SEP_YearSuff = 0x800,
    SEP_MonthSuff = 0x900,
    SEP_DaySuff = 0xa00,
    SEP_HourSuff = 0xb00,
    SEP_MinuteSuff = 0xc00,
    SEP_SecondSuff = 0xd00,
    SEP_LocalTimeMark = 0xe00,
    SEP_DateOrOffset = 0xf00,
    RegularTokenMask = 0x00ff,
    SeparatorTokenMask = 0xff00,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Guid.cs'
//
// Represents a Globally Unique Identifier.
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(NonVersionableAttribute.stringof)
public struct Guid
{
    public static immutable Guid Empty/*todo: implement initializer*/ = Guid();
    private int _a;
    private short _b;
    private short _c;
    private ubyte _d;
    private ubyte _e;
    private ubyte _f;
    private ubyte _g;
    private ubyte _h;
    private ubyte _i;
    private ubyte _j;
    private ubyte _k;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    @__DotNet__Attribute!(FlagsAttribute.stringof)
    private enum GuidStyles
    {
        None = 0x00000000,
        AllowParenthesis = 0x00000001,
        AllowBraces = 0x00000002,
        AllowDashes = 0x00000004,
        AllowHexPrefix = 0x00000008,
        RequireParenthesis = 0x00000010,
        RequireBraces = 0x00000020,
        RequireDashes = 0x00000040,
        RequireHexPrefix = 0x00000080,
        HexFormat = RequireBraces | RequireHexPrefix,
        NumberFormat = None,
        DigitFormat = RequireDashes,
        BraceFormat = RequireBraces | RequireDashes,
        ParenthesisFormat = RequireParenthesis | RequireDashes,
        Any = AllowParenthesis | AllowBraces | AllowDashes | AllowHexPrefix,
    }
    private enum GuidParseThrowStyle
    {
        None = 0,
        All = 1,
        AllButOverflow = 2,
    }
    private enum ParseFailureKind
    {
        None = 0,
        ArgumentNull = 1,
        Format = 2,
        FormatWithParameter = 3,
        NativeException = 4,
        FormatWithInnerException = 5,
    }
    private static struct GuidResult
    {
        package(mscorlib) Guid parsedGuid;
        package(mscorlib) GuidParseThrowStyle throwStyle;
        package(mscorlib) ParseFailureKind m_failure;
        package(mscorlib) String m_failureMessageID;
        package(mscorlib) __DotNet__Object m_failureMessageFormatArgument;
        package(mscorlib) String m_failureArgumentName;
        package(mscorlib) __DotNet__Exception m_innerException;
        //TODO: generate method Init
        //TODO: generate method SetFailure
        //TODO: generate method SetFailure
        //TODO: generate method SetFailure
        //TODO: generate method SetFailure
        //TODO: generate method GetGuidParseException
    }
    //TODO: generate constructor
    //TODO: generate method Parse
    //TODO: generate method TryParse
    //TODO: generate method ParseExact
    //TODO: generate method TryParseExact
    //TODO: generate method TryParseGuid
    //TODO: generate method TryParseGuidWithHexPrefix
    //TODO: generate method TryParseGuidWithNoStyle
    //TODO: generate method TryParseGuidWithDashes
    //TODO: generate method StringToShort
    //TODO: generate method StringToShort
    //TODO: generate method StringToShort
    //TODO: generate method StringToInt
    //TODO: generate method StringToInt
    //TODO: generate method StringToInt
    //TODO: generate method StringToLong
    //TODO: generate method StringToLong
    //TODO: generate method StringToLong
    //TODO: generate method EatAllWhitespace
    //TODO: generate method IsHexPrefix
    //TODO: generate method ToByteArray
    //TODO: generate method ToString
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetResult
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method NewGuid
    //TODO: generate method ToString
    //TODO: generate method HexToChar
    //TODO: generate method HexsToChars
    //TODO: generate method HexsToChars
    //TODO: generate method ToString
}
public class __Boxed__Guid : __DotNet__Object, IFormattable, IComparable, IComparable1!(Guid), IEquatable1!(Guid)
{
    Guid value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IAppDomain.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "05F696DC-2B29-3663-AD8B-C4389CF2A713"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _AppDomain
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IAppDomainPauseManager.cs'
//
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
package(mscorlib) class AppDomainPauseManager : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate constructor
    private static immutable AppDomainPauseManager instance/*todo: implement initializer*/ = null;
    //TODO: generate property 'Instance'
    //TODO: generate method Pausing
    //TODO: generate method Paused
    //TODO: generate method Resuming
    //TODO: generate method Resumed
    private static /*todo: volatile*/ bool isPaused;
    //TODO: generate property 'IsPaused'
    //TODO: generate property 'ResumeEvent'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IAppDomainSetup.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "27FFF232-A7A8-40dd-8D4A-734AD59FCD41"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IAppDomainSetup
{
    //TODO: generate property 'ApplicationBase'
    //TODO: generate property 'ApplicationName'
    //TODO: generate property 'CachePath'
    //TODO: generate property 'ConfigurationFile'
    //TODO: generate property 'DynamicBase'
    //TODO: generate property 'LicenseFile'
    //TODO: generate property 'PrivateBinPath'
    //TODO: generate property 'PrivateBinPathProbe'
    //TODO: generate property 'ShadowCopyDirectories'
    //TODO: generate property 'ShadowCopyFiles'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IAsyncResult.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IAsyncResult
{
    //TODO: generate property 'IsCompleted'
    //TODO: generate property 'AsyncWaitHandle'
    //TODO: generate property 'AsyncState'
    //TODO: generate property 'CompletedSynchronously'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ICloneable.cs'
//
// Defines an interface indicating that an object may be cloned.  Only objects 
// that implement ICloneable may be cloned. The interface defines a single 
// method which is called to create a clone of the object.   Object defines a method
// MemberwiseClone to support default clone operations.
// 
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface ICloneable
{
    //TODO: generate method Clone
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IComparable.cs'
//
// The IComparable interface is implemented by classes that support an
// ordering of instances of the class. The ordering represented by
// IComparable can be used to sort arrays and collections of objects
// that implement the interface.
// 
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IComparable
{
    //TODO: generate method CompareTo
}
public interface IComparable1(T)
{
    //TODO: generate method CompareTo
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IConvertible.cs'
//
// The IConvertible interface represents an object that contains a value. This
// interface is implemented by the following types in the System namespace:
// Boolean, Char, SByte, Byte, Int16, UInt16, Int32, UInt32, Int64, UInt64,
// Single, Double, Decimal, DateTime, TimeSpan, and String. The interface may
// be implemented by other types that are to be considered values. For example,
// a library of nullable database types could implement IConvertible.
//
// Note: The interface was originally proposed as IValue.
//
// The implementations of IConvertible provided by the System.XXX value classes
// simply forward to the appropriate Value.ToXXX(YYY) methods (a description of
// the Value class follows below). In cases where a Value.ToXXX(YYY) method
// does not exist (because the particular conversion is not supported), the
// IConvertible implementation should simply throw an InvalidCastException.
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IConvertible
{
    //TODO: generate method GetTypeCode
    //TODO: generate method ToBoolean
    //TODO: generate method ToChar
    //TODO: generate method ToSByte
    //TODO: generate method ToByte
    //TODO: generate method ToInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method ToDouble
    //TODO: generate method ToDecimal
    //TODO: generate method ToDateTime
    //TODO: generate method ToString
    //TODO: generate method ToType
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ICustomFormatter.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface ICustomFormatter
{
    //TODO: generate method Format
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IDisposable.cs'
//
// IDisposable is an attempt at helping to solve problems with deterministic
// finalization.  The GC of course doesn't leave any way to deterministically
// know when a finalizer will run.  This forces classes that hold onto OS
// resources or some sort of important state (such as a FileStream or a 
// network connection) to provide a Close or Dispose method so users can 
// run clean up code deterministically.  We have formalized this into an 
// interface with one method.  Classes may privately implement IDisposable and
// provide a Close method instead, if that name is by far the expected name
// for objects in that domain (ie, you don't Dispose of a FileStream, you Close
// it).
//
// This interface could be theoretically used as a marker by a compiler to 
// ensure a disposable object has been cleaned up along all code paths if it's 
// been allocated in that method, though in practice any compiler that 
// draconian may tick off any number of people.  Perhaps an external tool (like
// like Purify or BoundsChecker) could do this.  Instead, C# has added a using 
// clause, which will generate a try/finally statement where the resource 
// passed into the using clause will always have it's Dispose method called.  
// Syntax is using(FileStream fs = ...) { .. };
//
// Dispose should meet the following conditions:
// 1) Be safely callable multiple times
// 2) Release any resources associated with the instance
// 3) Call the base class's Dispose method, if necessary
// 4) Suppress finalization of this class to help the GC by reducing the
//    number of objects on the finalization queue.
// 5) Dispose shouldn't generally throw exceptions, except for very serious 
//    errors that are particularly unexpected. (ie, OutOfMemoryException)  
//    Ideally, nothing should go wrong with your object by calling Dispose.
//
// If possible, a class should define a finalizer that calls Dispose.
// However, in many situations, this is impractical.  For instance, take the
// classic example of a Stream and a StreamWriter (which has an internal 
// buffer of data to write to the Stream).  If both objects are collected 
// before Close or Dispose has been called on either, then the GC may run the
// finalizer for the Stream first, before the StreamWriter.  At that point, any
// data buffered by the StreamWriter cannot be written to the Stream.  In this
// case, it doesn't make much sense to provide a finalizer on the StreamWriter
// since you cannot solve this problem correctly.  
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IDisposable
{
    //TODO: generate method Dispose
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IEquatable.cs'
//
public interface IEquatable1(T)
{
    //TODO: generate method Equals
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IFormatProvider.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IFormatProvider
{
    //TODO: generate method GetFormat
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IFormattable.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IFormattable
{
    //TODO: generate method ToString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IndexOutOfRangeException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class IndexOutOfRangeException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\InsufficientExecutionStackException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class InsufficientExecutionStackException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\InsufficientMemoryException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class InsufficientMemoryException : OutOfMemoryException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Int16.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
public struct Int16
{
    package(mscorlib) short m_value;
    public enum short MaxValue/*todo: implement initializer*/ = short();
    public enum short MinValue/*todo: implement initializer*/ = short();
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method GetTypeCode
    //TODO: generate method ToBoolean
    //TODO: generate method ToChar
    //TODO: generate method ToSByte
    //TODO: generate method ToByte
    //TODO: generate method ToInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method ToDouble
    //TODO: generate method ToDecimal
    //TODO: generate method ToDateTime
    //TODO: generate method ToType
}
public class __Boxed__Int16 : __DotNet__Object, IComparable, IFormattable, IConvertible, IComparable1!(short), IEquatable1!(short)
{
    short value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Int32.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct Int32
{
    package(mscorlib) int m_value;
    public enum int MaxValue/*todo: implement initializer*/ = int();
    public enum int MinValue/*todo: implement initializer*/ = int();
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method GetTypeCode
    //TODO: generate method ToBoolean
    //TODO: generate method ToChar
    //TODO: generate method ToSByte
    //TODO: generate method ToByte
    //TODO: generate method ToInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method ToDouble
    //TODO: generate method ToDecimal
    //TODO: generate method ToDateTime
    //TODO: generate method ToType
}
public class __Boxed__Int32 : __DotNet__Object, IComparable, IFormattable, IConvertible, IComparable1!(int), IEquatable1!(int)
{
    int value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Int64.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct Int64
{
    package(mscorlib) long m_value;
    public enum long MaxValue/*todo: implement initializer*/ = long();
    public enum long MinValue/*todo: implement initializer*/ = long();
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method GetTypeCode
    //TODO: generate method ToBoolean
    //TODO: generate method ToChar
    //TODO: generate method ToSByte
    //TODO: generate method ToByte
    //TODO: generate method ToInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method ToDouble
    //TODO: generate method ToDecimal
    //TODO: generate method ToDateTime
    //TODO: generate method ToType
}
public class __Boxed__Int64 : __DotNet__Object, IComparable, IFormattable, IConvertible, IComparable1!(long), IEquatable1!(long)
{
    long value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Internal.cs'
//
private class Internal : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method CommonlyUsedGenericInstantiations
    //TODO: generate method NullableHelper
    //TODO: generate method SZArrayHelper
    //TODO: generate method AsyncHelper
    //TODO: generate method AsyncHelper2
    //TODO: generate method AsyncHelper3
    //TODO: generate method CommonlyUsedWinRTRedirectedInterfaceStubs
    //TODO: generate method WinRT_IEnumerable
    //TODO: generate method WinRT_IList
    //TODO: generate method WinRT_IReadOnlyCollection
    //TODO: generate method WinRT_IReadOnlyList
    //TODO: generate method WinRT_IDictionary
    //TODO: generate method WinRT_IReadOnlyDictionary
    //TODO: generate method WinRT_Nullable
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IntPtr.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct IntPtr
{
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private Void* m_value;
    public static immutable IntPtr Zero;
    //TODO: generate method IsNull
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetObjectData
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method Add
    //TODO: generate operator
    //TODO: generate method Subtract
    //TODO: generate operator
    //TODO: generate property 'Size'
    //TODO: generate method ToPointer
}
public class __Boxed__IntPtr : __DotNet__Object, IEquatable1!(IntPtr), ISerializable
{
    IntPtr value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\InvalidCastException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class InvalidCastException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\InvalidOperationException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class InvalidOperationException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\InvalidProgramException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class InvalidProgramException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\InvalidTimeZoneException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
public class InvalidTimeZoneException : __DotNet__Exception
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IObservable.cs'
//
public interface IObservable1(T)
{
    //TODO: generate method Subscribe
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IObserver.cs'
//
public interface IObserver1(T)
{
    //TODO: generate method OnNext
    //TODO: generate method OnError
    //TODO: generate method OnCompleted
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IProgress.cs'
//
public interface IProgress1(T)
{
    //TODO: generate method Report
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IServiceObjectProvider.cs'
//
public interface IServiceProvider
{
    //TODO: generate method GetService
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Lazy.cs'
//
package(mscorlib) class LazyHelpers : __DotNet__Object
{
    private this() {} // prevent instantiation
    package(mscorlib) static immutable __DotNet__Object PUBLICATION_ONLY_SENTINEL/*todo: implement initializer*/ = null;
}
/// <summary>
/// Provides support for lazy initialization.
/// </summary>
/// <typeparam name="T">Specifies the type of element being lazily initialized.</typeparam>
/// <remarks>
/// <para>
/// By default, all public and protected members of <see cref="Lazy{T}"/> are thread-safe and may be used
/// concurrently from multiple threads.  These thread-safety guarantees may be removed optionally and per instance
/// using parameters to the type's constructors.
/// </para>
/// </remarks>
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
// #if !FEATURE_CORECLR
// [HostProtection(Synchronization = true, ExternalThreading = true)]
// #endif
@__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(System_LazyDebugView<>)*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "ThreadSafetyMode={Mode}, IsValueCreated={IsValueCreated}, IsValueFaulted={IsValueFaulted}, Value={ValueForDebugDisplay}"*/)
public class Lazy1(T) : __DotNet__Object
{
    // #region Inner classes
    /// <summary>
    /// wrapper class to box the initialized value, this is mainly created to avoid boxing/unboxing the value each time the value is called in case T is 
    /// a value type
    /// </summary>
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class Boxed : __DotNet__Object
    {
        //TODO: generate constructor
        package(mscorlib) T m_value;
    }
    private static class LazyInternalExceptionHolder : __DotNet__Object
    {
        package(mscorlib) ExceptionDispatchInfo m_edi;
        //TODO: generate constructor
    }
    private static immutable Func1!(T) ALREADY_INVOKED_SENTINEL/*todo: implement initializer*/ = null;
    private __DotNet__Object m_boxed;
    // The factory delegate that returns the value.
    // In None and ExecutionAndPublication modes, this will be set to ALREADY_INVOKED_SENTINEL as a flag to avoid recursive calls
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private Func1!(T) m_valueFactory;
    // null if it is not thread safe mode
    // LazyHelpers.PUBLICATION_ONLY_SENTINEL if PublicationOnly mode
    // object if ExecutionAndPublication mode (may be ALREADY_INVOKED_SENTINEL if the value is already initialized)
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private __DotNet__Object m_threadSafeObj;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetObjectFromMode
    //TODO: generate method OnSerializing
    //TODO: generate method ToString
    //TODO: generate property 'ValueForDebugDisplay'
    //TODO: generate property 'Mode'
    //TODO: generate property 'IsValueFaulted'
    //TODO: generate property 'IsValueCreated'
    //TODO: generate property 'Value'
    //TODO: generate method LazyInitValue
    //TODO: generate method CreateValue
}
package(mscorlib) final class System_LazyDebugView1(T) : __DotNet__Object
{
    private immutable Lazy1!(T) m_lazy;
    //TODO: generate constructor
    //TODO: generate property 'IsValueCreated'
    //TODO: generate property 'Value'
    //TODO: generate property 'Mode'
    //TODO: generate property 'IsValueFaulted'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\LowLevelConsole.cs'
//
public class Console : __DotNet__Object
{
    private this() {} // prevent instantiation
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private static SafeFileHandle _outputHandle;
    //TODO: generate constructor
    //TODO: generate method Write
    //TODO: generate method WriteLine
    //TODO: generate method WriteLine
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\MarshalByRefObject.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class MarshalByRefObject : __DotNet__Object
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Math.cs'
//
public class Math : __DotNet__Object
{
    private this() {} // prevent instantiation
    private static double doubleRoundLimit/*todo: implement initializer*/ = double();
    private enum int maxRoundingDigits/*todo: implement initializer*/ = int();
    private static double[] roundPower10Double/*todo: implement initializer*/ = null;
    public enum double PI/*todo: implement initializer*/ = double();
    public enum double E/*todo: implement initializer*/ = double();
    //TODO: generate method Acos
    //TODO: generate method Asin
    //TODO: generate method Atan
    //TODO: generate method Atan2
    //TODO: generate method Ceiling
    //TODO: generate method Ceiling
    //TODO: generate method Cos
    //TODO: generate method Cosh
    //TODO: generate method Floor
    //TODO: generate method Floor
    //TODO: generate method InternalRound
    //TODO: generate method InternalTruncate
    //TODO: generate method Sin
    //TODO: generate method Tan
    //TODO: generate method Sinh
    //TODO: generate method Tanh
    //TODO: generate method Round
    //TODO: generate method Round
    //TODO: generate method Round
    //TODO: generate method Round
    //TODO: generate method Round
    //TODO: generate method Round
    //TODO: generate method Round
    //TODO: generate method Round
    //TODO: generate method SplitFractionDouble
    //TODO: generate method Truncate
    //TODO: generate method Truncate
    //TODO: generate method Sqrt
    //TODO: generate method Log
    //TODO: generate method Log10
    //TODO: generate method Exp
    //TODO: generate method Pow
    //TODO: generate method IEEERemainder
    //TODO: generate method Abs
    //TODO: generate method AbsHelper
    //TODO: generate method Abs
    //TODO: generate method AbsHelper
    //TODO: generate method Abs
    //TODO: generate method AbsHelper
    //TODO: generate method Abs
    //TODO: generate method AbsHelper
    //TODO: generate method Abs
    //TODO: generate method Abs
    //TODO: generate method Abs
    //TODO: generate method Max
    //TODO: generate method Max
    //TODO: generate method Max
    //TODO: generate method Max
    //TODO: generate method Max
    //TODO: generate method Max
    //TODO: generate method Max
    //TODO: generate method Max
    //TODO: generate method Max
    //TODO: generate method Max
    //TODO: generate method Max
    //TODO: generate method Min
    //TODO: generate method Min
    //TODO: generate method Min
    //TODO: generate method Min
    //TODO: generate method Min
    //TODO: generate method Min
    //TODO: generate method Min
    //TODO: generate method Min
    //TODO: generate method Min
    //TODO: generate method Min
    //TODO: generate method Min
    //TODO: generate method Log
    //TODO: generate method Sign
    //TODO: generate method Sign
    //TODO: generate method Sign
    //TODO: generate method Sign
    //TODO: generate method Sign
    //TODO: generate method Sign
    //TODO: generate method Sign
    //TODO: generate method BigMul
    //TODO: generate method DivRem
    //TODO: generate method DivRem
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\mda.cs'
//

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\MemberAccessException.cs'
//
// The MemberAccessException is thrown when trying to access a class
// member fails.
// 
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class MemberAccessException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\MethodAccessException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class MethodAccessException : MemberAccessException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\MidpointRounding.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum MidpointRounding
{
    ToEven = 0,
    AwayFromZero = 1,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\MissingFieldException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class MissingFieldException : MissingMemberException, ISerializable
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Message'
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\MissingMemberException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class MissingMemberException : MemberAccessException, ISerializable
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Message'
    //TODO: generate method FormatSignature
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetObjectData
    protected String ClassName;
    protected String MemberName;
    protected ubyte[] Signature;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\MissingMethodException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class MissingMethodException : MissingMemberException, ISerializable
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Message'
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\MulticastDelegate.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class MulticastDelegate : Delegate
{
    // This is set under 3 circumstances
    // 1. Multicast delegate
    // 2. Secure/Wrapper delegate
    // 3. Inner delegate of secure delegate where the secure delegate security context is a collectible method
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private __DotNet__Object _invocationList;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private IntPtr _invocationCount;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method IsUnmanagedFunctionPtr
    //TODO: generate method InvocationListLogicallyNull
    //TODO: generate method GetObjectData
    //TODO: generate method Equals
    //TODO: generate method InvocationListEquals
    //TODO: generate method TrySetSlot
    //TODO: generate method NewMulticastDelegate
    //TODO: generate method NewMulticastDelegate
    //TODO: generate method StoreDynamicMethod
    //TODO: generate method CombineImpl
    //TODO: generate method DeleteFromInvocationList
    //TODO: generate method EqualInvocationLists
    //TODO: generate method RemoveImpl
    //TODO: generate method GetInvocationList
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method GetHashCode
    //TODO: generate method GetTarget
    //TODO: generate method GetMethodImpl
    //TODO: generate method ThrowNullThisInDelegateToInstance
    //TODO: generate method CtorClosed
    //TODO: generate method CtorClosedStatic
    //TODO: generate method CtorRTClosed
    //TODO: generate method CtorOpened
    //TODO: generate method CtorSecureClosed
    //TODO: generate method CtorSecureClosedStatic
    //TODO: generate method CtorSecureRTClosed
    //TODO: generate method CtorSecureOpened
    //TODO: generate method CtorVirtualDispatch
    //TODO: generate method CtorSecureVirtualDispatch
    //TODO: generate method CtorCollectibleClosedStatic
    //TODO: generate method CtorCollectibleOpened
    //TODO: generate method CtorCollectibleVirtualDispatch
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\MulticastNotSupportedException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class MulticastNotSupportedException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\NonSerializedAttribute.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Field, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class NonSerializedAttribute : Attribute
{
    //TODO: generate method GetCustomAttribute
    //TODO: generate method IsDefined
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\NotFiniteNumberException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class NotFiniteNumberException : ArithmeticException
{
    private double _offendingNumber;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'OffendingNumber'
    //TODO: generate method GetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\NotImplementedException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class NotImplementedException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\NotSupportedException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class NotSupportedException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Nullable.cs'
//
// Warning, don't put System.Runtime.Serialization.On*Serializ*Attribute
// on this class without first fixing ObjectClone::InvokeVtsCallbacks
// Also, because we have special type system support that says a a boxed Nullable<T>
// can be used where a boxed<T> is use, Nullable<T> can not implement any intefaces
// at all (since T may not).   Do NOT add any interfaces to Nullable!
// 
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(NonVersionableAttribute.stringof)
public struct Nullable1(T)
{
    private bool hasValue;
    package(mscorlib) T value;
    //TODO: generate constructor
    //TODO: generate property 'HasValue'
    //TODO: generate property 'Value'
    //TODO: generate method GetValueOrDefault
    //TODO: generate method GetValueOrDefault
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate conversion operator
    //TODO: generate conversion operator
}
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class Nullable : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method Compare
    //TODO: generate method Equals
    //TODO: generate method GetUnderlyingType
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\NullReferenceException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class NullReferenceException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Number.cs'
//
// The Number class implements methods for formatting and parsing
// numeric values. To format and parse numeric values, applications should
// use the Format and Parse methods provided by the numeric
// classes (Byte, Int16, Int32, Int64,
// Single, Double, Currency, and Decimal). Those
// Format and Parse methods share a common implementation
// provided by this class, and are thus documented in detail here.
//
// Formatting
//
// The Format methods provided by the numeric classes are all of the
// form
//
//  public static String Format(XXX value, String format);
//  public static String Format(XXX value, String format, NumberFormatInfo info);
//
// where XXX is the name of the particular numeric class. The methods convert
// the numeric value to a string using the format string given by the
// format parameter. If the format parameter is null or
// an empty string, the number is formatted as if the string "G" (general
// format) was specified. The info parameter specifies the
// NumberFormatInfo instance to use when formatting the number. If the
// info parameter is null or omitted, the numeric formatting information
// is obtained from the current culture. The NumberFormatInfo supplies
// such information as the characters to use for decimal and thousand
// separators, and the spelling and placement of currency symbols in monetary
// values.
//
// Format strings fall into two categories: Standard format strings and
// user-defined format strings. A format string consisting of a single
// alphabetic character (A-Z or a-z), optionally followed by a sequence of
// digits (0-9), is a standard format string. All other format strings are
// used-defined format strings.
//
// A standard format string takes the form Axx, where A is an
// alphabetic character called the format specifier and xx is a
// sequence of digits called the precision specifier. The format
// specifier controls the type of formatting applied to the number and the
// precision specifier controls the number of significant digits or decimal
// places of the formatting operation. The following table describes the
// supported standard formats.
//
// C c - Currency format. The number is
// converted to a string that represents a currency amount. The conversion is
// controlled by the currency format information of the NumberFormatInfo
// used to format the number. The precision specifier indicates the desired
// number of decimal places. If the precision specifier is omitted, the default
// currency precision given by the NumberFormatInfo is used.
//
// D d - Decimal format. This format is
// supported for integral types only. The number is converted to a string of
// decimal digits, prefixed by a minus sign if the number is negative. The
// precision specifier indicates the minimum number of digits desired in the
// resulting string. If required, the number will be left-padded with zeros to
// produce the number of digits given by the precision specifier.
//
// E e Engineering (scientific) format.
// The number is converted to a string of the form
// "-d.ddd...E+ddd" or "-d.ddd...e+ddd", where each
// 'd' indicates a digit (0-9). The string starts with a minus sign if the
// number is negative, and one digit always precedes the decimal point. The
// precision specifier indicates the desired number of digits after the decimal
// point. If the precision specifier is omitted, a default of 6 digits after
// the decimal point is used. The format specifier indicates whether to prefix
// the exponent with an 'E' or an 'e'. The exponent is always consists of a
// plus or minus sign and three digits.
//
// F f Fixed point format. The number is
// converted to a string of the form "-ddd.ddd....", where each
// 'd' indicates a digit (0-9). The string starts with a minus sign if the
// number is negative. The precision specifier indicates the desired number of
// decimal places. If the precision specifier is omitted, the default numeric
// precision given by the NumberFormatInfo is used.
//
// G g - General format. The number is
// converted to the shortest possible decimal representation using fixed point
// or scientific format. The precision specifier determines the number of
// significant digits in the resulting string. If the precision specifier is
// omitted, the number of significant digits is determined by the type of the
// number being converted (10 for int, 19 for long, 7 for
// float, 15 for double, 19 for Currency, and 29 for
// Decimal). Trailing zeros after the decimal point are removed, and the
// resulting string contains a decimal point only if required. The resulting
// string uses fixed point format if the exponent of the number is less than
// the number of significant digits and greater than or equal to -4. Otherwise,
// the resulting string uses scientific format, and the case of the format
// specifier controls whether the exponent is prefixed with an 'E' or an
// 'e'.
//
// N n Number format. The number is
// converted to a string of the form "-d,ddd,ddd.ddd....", where
// each 'd' indicates a digit (0-9). The string starts with a minus sign if the
// number is negative. Thousand separators are inserted between each group of
// three digits to the left of the decimal point. The precision specifier
// indicates the desired number of decimal places. If the precision specifier
// is omitted, the default numeric precision given by the
// NumberFormatInfo is used.
//
// X x - Hexadecimal format. This format is
// supported for integral types only. The number is converted to a string of
// hexadecimal digits. The format specifier indicates whether to use upper or
// lower case characters for the hexadecimal digits above 9 ('X' for 'ABCDEF',
// and 'x' for 'abcdef'). The precision specifier indicates the minimum number
// of digits desired in the resulting string. If required, the number will be
// left-padded with zeros to produce the number of digits given by the
// precision specifier.
//
// Some examples of standard format strings and their results are shown in the
// table below. (The examples all assume a default NumberFormatInfo.)
//
// Value        Format  Result
// 12345.6789   C       $12,345.68
// -12345.6789  C       ($12,345.68)
// 12345        D       12345
// 12345        D8      00012345
// 12345.6789   E       1.234568E+004
// 12345.6789   E10     1.2345678900E+004
// 12345.6789   e4      1.2346e+004
// 12345.6789   F       12345.68
// 12345.6789   F0      12346
// 12345.6789   F6      12345.678900
// 12345.6789   G       12345.6789
// 12345.6789   G7      12345.68
// 123456789    G7      1.234568E8
// 12345.6789   N       12,345.68
// 123456789    N4      123,456,789.0000
// 0x2c45e      x       2c45e
// 0x2c45e      X       2C45E
// 0x2c45e      X8      0002C45E
//
// Format strings that do not start with an alphabetic character, or that start
// with an alphabetic character followed by a non-digit, are called
// user-defined format strings. The following table describes the formatting
// characters that are supported in user defined format strings.
//
// 
// 0 - Digit placeholder. If the value being
// formatted has a digit in the position where the '0' appears in the format
// string, then that digit is copied to the output string. Otherwise, a '0' is
// stored in that position in the output string. The position of the leftmost
// '0' before the decimal point and the rightmost '0' after the decimal point
// determines the range of digits that are always present in the output
// string.
//
// # - Digit placeholder. If the value being
// formatted has a digit in the position where the '#' appears in the format
// string, then that digit is copied to the output string. Otherwise, nothing
// is stored in that position in the output string.
//
// . - Decimal point. The first '.' character
// in the format string determines the location of the decimal separator in the
// formatted value; any additional '.' characters are ignored. The actual
// character used as a the decimal separator in the output string is given by
// the NumberFormatInfo used to format the number.
//
// , - Thousand separator and number scaling.
// The ',' character serves two purposes. First, if the format string contains
// a ',' character between two digit placeholders (0 or #) and to the left of
// the decimal point if one is present, then the output will have thousand
// separators inserted between each group of three digits to the left of the
// decimal separator. The actual character used as a the decimal separator in
// the output string is given by the NumberFormatInfo used to format the
// number. Second, if the format string contains one or more ',' characters
// immediately to the left of the decimal point, or after the last digit
// placeholder if there is no decimal point, then the number will be divided by
// 1000 times the number of ',' characters before it is formatted. For example,
// the format string '0,,' will represent 100 million as just 100. Use of the
// ',' character to indicate scaling does not also cause the formatted number
// to have thousand separators. Thus, to scale a number by 1 million and insert
// thousand separators you would use the format string '#,##0,,'.
//
// % - Percentage placeholder. The presence of
// a '%' character in the format string causes the number to be multiplied by
// 100 before it is formatted. The '%' character itself is inserted in the
// output string where it appears in the format string.
//
// E+ E- e+ e-   - Scientific notation.
// If any of the strings 'E+', 'E-', 'e+', or 'e-' are present in the format
// string and are immediately followed by at least one '0' character, then the
// number is formatted using scientific notation with an 'E' or 'e' inserted
// between the number and the exponent. The number of '0' characters following
// the scientific notation indicator determines the minimum number of digits to
// output for the exponent. The 'E+' and 'e+' formats indicate that a sign
// character (plus or minus) should always precede the exponent. The 'E-' and
// 'e-' formats indicate that a sign character should only precede negative
// exponents.
//
// \ - Literal character. A backslash character
// causes the next character in the format string to be copied to the output
// string as-is. The backslash itself isn't copied, so to place a backslash
// character in the output string, use two backslashes (\\) in the format
// string.
//
// 'ABC' "ABC" - Literal string. Characters
// enclosed in single or double quotation marks are copied to the output string
// as-is and do not affect formatting.
//
// ; - Section separator. The ';' character is
// used to separate sections for positive, negative, and zero numbers in the
// format string.
//
// Other - All other characters are copied to
// the output string in the position they appear.
//
// For fixed point formats (formats not containing an 'E+', 'E-', 'e+', or
// 'e-'), the number is rounded to as many decimal places as there are digit
// placeholders to the right of the decimal point. If the format string does
// not contain a decimal point, the number is rounded to the nearest
// integer. If the number has more digits than there are digit placeholders to
// the left of the decimal point, the extra digits are copied to the output
// string immediately before the first digit placeholder.
//
// For scientific formats, the number is rounded to as many significant digits
// as there are digit placeholders in the format string.
//
// To allow for different formatting of positive, negative, and zero values, a
// user-defined format string may contain up to three sections separated by
// semicolons. The results of having one, two, or three sections in the format
// string are described in the table below.
//
// Sections:
//
// One - The format string applies to all values.
//
// Two - The first section applies to positive values
// and zeros, and the second section applies to negative values. If the number
// to be formatted is negative, but becomes zero after rounding according to
// the format in the second section, then the resulting zero is formatted
// according to the first section.
//
// Three - The first section applies to positive
// values, the second section applies to negative values, and the third section
// applies to zeros. The second section may be left empty (by having no
// characters between the semicolons), in which case the first section applies
// to all non-zero values. If the number to be formatted is non-zero, but
// becomes zero after rounding according to the format in the first or second
// section, then the resulting zero is formatted according to the third
// section.
//
// For both standard and user-defined formatting operations on values of type
// float and double, if the value being formatted is a NaN (Not
// a Number) or a positive or negative infinity, then regardless of the format
// string, the resulting string is given by the NaNSymbol,
// PositiveInfinitySymbol, or NegativeInfinitySymbol property of
// the NumberFormatInfo used to format the number.
//
// Parsing
//
// The Parse methods provided by the numeric classes are all of the form
//
//  public static XXX Parse(String s);
//  public static XXX Parse(String s, int style);
//  public static XXX Parse(String s, int style, NumberFormatInfo info);
//
// where XXX is the name of the particular numeric class. The methods convert a
// string to a numeric value. The optional style parameter specifies the
// permitted style of the numeric string. It must be a combination of bit flags
// from the NumberStyles enumeration. The optional info parameter
// specifies the NumberFormatInfo instance to use when parsing the
// string. If the info parameter is null or omitted, the numeric
// formatting information is obtained from the current culture.
//
// Numeric strings produced by the Format methods using the Currency,
// Decimal, Engineering, Fixed point, General, or Number standard formats
// (the C, D, E, F, G, and N format specifiers) are guaranteed to be parseable
// by the Parse methods if the NumberStyles.Any style is
// specified. Note, however, that the Parse methods do not accept
// NaNs or Infinities.
//
//This class contains only static members and does not need to be serializable 
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
package(mscorlib) class Number : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method FormatDecimal
    //TODO: generate method FormatDouble
    //TODO: generate method FormatInt32
    //TODO: generate method FormatUInt32
    //TODO: generate method FormatInt64
    //TODO: generate method FormatUInt64
    //TODO: generate method FormatSingle
    //TODO: generate method NumberBufferToDecimal
    //TODO: generate method NumberBufferToDouble
    //TODO: generate method FormatNumberBuffer
    private enum int NumberMaxDigits/*todo: implement initializer*/ = int();
    private enum int Int32Precision/*todo: implement initializer*/ = int();
    private enum int UInt32Precision/*todo: implement initializer*/ = int();
    private enum int Int64Precision/*todo: implement initializer*/ = int();
    private enum int UInt64Precision/*todo: implement initializer*/ = int();
    // NumberBuffer is a partial wrapper around a stack pointer that maps on to
    // the native NUMBER struct so that it can be passed to native directly. It 
    // must be initialized with a stack Byte * of size NumberBufferBytes.
    // For performance, this structure should attempt to be completely inlined.
    // 
    // It should always be initialized like so:
    //
    // Byte * numberBufferBytes = stackalloc Byte[NumberBuffer.NumberBufferBytes];
    // NumberBuffer number = new NumberBuffer(numberBufferBytes);
    //
    // For performance, when working on the buffer in managed we use the values in this
    // structure, except for the digits, and pack those values into the byte buffer
    // if called out to managed.
    @__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
    package(mscorlib) static struct NumberBuffer
    {
        public static immutable int NumberBufferBytes/*todo: implement initializer*/ = int();
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private ubyte* baseAddress;
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        public wchar* digits;
        public int precision;
        public int scale;
        public bool sign;
        //TODO: generate constructor
        //TODO: generate method PackForNative
    }
    //TODO: generate method HexNumberToInt32
    //TODO: generate method HexNumberToInt64
    //TODO: generate method HexNumberToUInt32
    //TODO: generate method HexNumberToUInt64
    //TODO: generate method IsWhite
    //TODO: generate method NumberToInt32
    //TODO: generate method NumberToInt64
    //TODO: generate method NumberToUInt32
    //TODO: generate method NumberToUInt64
    //TODO: generate method MatchChars
    //TODO: generate method MatchChars
    //TODO: generate method ParseDecimal
    //TODO: generate method ParseDouble
    //TODO: generate method ParseInt32
    //TODO: generate method ParseInt64
    //TODO: generate method ParseNumber
    //TODO: generate method ParseSingle
    //TODO: generate method ParseUInt32
    //TODO: generate method ParseUInt64
    //TODO: generate method StringToNumber
    //TODO: generate method TrailingZeros
    //TODO: generate method TryParseDecimal
    //TODO: generate method TryParseDouble
    //TODO: generate method TryParseInt32
    //TODO: generate method TryParseInt64
    //TODO: generate method TryParseSingle
    //TODO: generate method TryParseUInt32
    //TODO: generate method TryParseUInt64
    //TODO: generate method TryStringToNumber
    //TODO: generate method TryStringToNumber
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Object.cs'
//
// #if FEATURE_REMOTING        
// using RemotingException = System.Runtime.Remoting.RemotingException;    
// #endif
// The Object is the root class for all object in the CLR System. Object 
// is the super class for all other CLR objects and provide a set of methods and low level
// services to subclasses.  These services include object synchronization and support for clone
// operations.
// 
//This class contains no data and does not need to be serializable 
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.AutoDual*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method ToString
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method ReferenceEquals
    //TODO: generate method GetHashCode
    //TODO: generate method GetType
    //TODO: generate destructor
    //TODO: generate method MemberwiseClone
    //TODO: generate method FieldSetter
    //TODO: generate method FieldGetter
    //TODO: generate method GetFieldInfo
}
// Internal methodtable used to instantiate the "canonical" methodtable for generic instantiations.
// The name "__Canon" will never been seen by users but it will appear a lot in debugger stack traces
// involving generics so it is kept deliberately short as to avoid being a nuisance.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.AutoDual*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
package(mscorlib) class __Canon : __DotNet__Object
{
}
package(mscorlib) class CoreLib : __DotNet__Object
{
    public enum String Name/*todo: implement initializer*/ = null;
    //TODO: generate method FixupCoreLibName
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ObjectDisposedException.cs'
//
/// <devdoc>
///    <para> The exception that is thrown when accessing an object that was
///       disposed.</para>
/// </devdoc>
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class ObjectDisposedException : InvalidOperationException
{
    private String objectName;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Message'
    //TODO: generate property 'ObjectName'
    //TODO: generate constructor
    //TODO: generate method GetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ObsoleteAttribute.cs'
//
// This attribute is attached to members that are not to be used any longer.
// Message is some human readable explanation of what to use
// Error indicates if the compiler should treat usage of such a method as an
//   error. (this would be used if the actual implementation of the obsolete 
//   method's implementation had changed).
// 
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Enum |
        AttributeTargets.Interface | AttributeTargets.Constructor | AttributeTargets.Method| AttributeTargets.Property  | AttributeTargets.Field | AttributeTargets.Event | AttributeTargets.Delegate, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ObsoleteAttribute : Attribute
{
    private String _message;
    private bool _error;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Message'
    //TODO: generate property 'IsError'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\OleAutBinder.cs'
//
// Made serializable in anticipation of this class eventually having state.
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class OleAutBinder : DefaultBinder
{
    //TODO: generate method ChangeType
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\OperatingSystem.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class OperatingSystem : __DotNet__Object, ICloneable, ISerializable
{
    private Version _version;
    private PlatformID _platform;
    private String _servicePack;
    private String _versionString;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetObjectData
    //TODO: generate property 'Platform'
    //TODO: generate property 'ServicePack'
    //TODO: generate property 'Version'
    //TODO: generate method Clone
    //TODO: generate method ToString
    //TODO: generate property 'VersionString'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\OperationCanceledException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class OperationCanceledException : SystemException
{
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private CancellationToken _cancellationToken;
    //TODO: generate property 'CancellationToken'
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\OutOfMemoryException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class OutOfMemoryException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\OverflowException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class OverflowException : ArithmeticException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ParamArrayAttribute.cs'
//
//This class contains only static members and does not need to be serializable 
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Parameter, Inherited=true, AllowMultiple=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ParamArrayAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ParamsArray.cs'
//
package(mscorlib) struct ParamsArray
{
    private static immutable __DotNet__Object[] oneArgArray/*todo: implement initializer*/ = null;
    private static immutable __DotNet__Object[] twoArgArray/*todo: implement initializer*/ = null;
    private static immutable __DotNet__Object[] threeArgArray/*todo: implement initializer*/ = null;
    private immutable __DotNet__Object arg0;
    private immutable __DotNet__Object arg1;
    private immutable __DotNet__Object arg2;
    private immutable __DotNet__Object[] args;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Length'
    //TODO: generate indexer
    //TODO: generate method GetAtSlow
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ParseNumbers.cs'
//
package(mscorlib) class ParseNumbers : __DotNet__Object
{
    private this() {} // prevent instantiation
    package(mscorlib) enum int PrintAsI1/*todo: implement initializer*/ = int();
    package(mscorlib) enum int PrintAsI2/*todo: implement initializer*/ = int();
    package(mscorlib) enum int PrintAsI4/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TreatAsUnsigned/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TreatAsI1/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TreatAsI2/*todo: implement initializer*/ = int();
    package(mscorlib) enum int IsTight/*todo: implement initializer*/ = int();
    package(mscorlib) enum int NoSpace/*todo: implement initializer*/ = int();
    //TODO: generate method StringToLong
    //TODO: generate method StringToLong
    //TODO: generate method StringToLong
    //TODO: generate method StringToInt
    //TODO: generate method StringToInt
    //TODO: generate method StringToInt
    //TODO: generate method IntToString
    //TODO: generate method LongToString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\PlatformID.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum PlatformID
{
    Win32S = 0,
    Win32Windows = 1,
    Win32NT = 2,
    WinCE = 3,
    Unix = 4,
    Xbox = 5,
    MacOSX = 6,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\PlatformNotSupportedException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class PlatformNotSupportedException : NotSupportedException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Progress.cs'
//
public class Progress1(T) : __DotNet__Object, IProgress1!(T)
{
    private immutable SynchronizationContext m_synchronizationContext;
    private immutable Action1!(T) m_handler;
    private immutable SendOrPostCallback m_invokeHandlers;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate event field
    //TODO: generate method OnReport
    //TODO: generate method Report
    //TODO: generate method InvokeHandlers
}
package(mscorlib) class ProgressStatics : __DotNet__Object
{
    private this() {} // prevent instantiation
    package(mscorlib) static immutable SynchronizationContext DefaultContext/*todo: implement initializer*/ = null;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Random.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class Random : __DotNet__Object
{
    private enum int MBIG/*todo: implement initializer*/ = int();
    private enum int MSEED/*todo: implement initializer*/ = int();
    private enum int MZ/*todo: implement initializer*/ = int();
    private int inext;
    private int inextp;
    private int[] SeedArray/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Sample
    //TODO: generate method InternalSample
    //TODO: generate method Next
    //TODO: generate method GetSampleForLargeRange
    //TODO: generate method Next
    //TODO: generate method Next
    //TODO: generate method NextDouble
    //TODO: generate method NextBytes
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\RankException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class RankException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ResId.cs'
//
package(mscorlib) class ResId : __DotNet__Object
{
    private this() {} // prevent instantiation
    package(mscorlib) enum String Arg_ArrayLengthsDiffer/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Argument_InvalidNumberOfMembers/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Argument_UnequalMembers/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Argument_SpecifyValueSize/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Argument_UnmatchingSymScope/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Argument_NotInExceptionBlock/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Argument_NotExceptionType/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Argument_InvalidLabel/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Argument_UnclosedExceptionBlock/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Argument_MissingDefaultConstructor/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Argument_TooManyFinallyClause/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Argument_NotInTheSameModuleBuilder/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Argument_BadCurrentLocalVariable/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Argument_DuplicateModuleName/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Argument_BadPersistableModuleInTransientAssembly/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Argument_HasToBeArrayClass/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Argument_InvalidDirectory/*todo: implement initializer*/ = null;
    package(mscorlib) enum String MissingType/*todo: implement initializer*/ = null;
    package(mscorlib) enum String MissingModule/*todo: implement initializer*/ = null;
    package(mscorlib) enum String ArgumentOutOfRange_Index/*todo: implement initializer*/ = null;
    package(mscorlib) enum String ArgumentOutOfRange_Range/*todo: implement initializer*/ = null;
    package(mscorlib) enum String ExecutionEngine_YoureHosed/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Format_NeedSingleChar/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Format_StringZeroLength/*todo: implement initializer*/ = null;
    package(mscorlib) enum String InvalidOperation_EnumEnded/*todo: implement initializer*/ = null;
    package(mscorlib) enum String InvalidOperation_EnumFailedVersion/*todo: implement initializer*/ = null;
    package(mscorlib) enum String InvalidOperation_EnumNotStarted/*todo: implement initializer*/ = null;
    package(mscorlib) enum String InvalidOperation_EnumOpCantHappen/*todo: implement initializer*/ = null;
    package(mscorlib) enum String InvalidOperation_InternalState/*todo: implement initializer*/ = null;
    package(mscorlib) enum String InvalidOperation_ModifyRONumFmtInfo/*todo: implement initializer*/ = null;
    package(mscorlib) enum String InvalidOperation_MethodBaked/*todo: implement initializer*/ = null;
    package(mscorlib) enum String InvalidOperation_NotADebugModule/*todo: implement initializer*/ = null;
    package(mscorlib) enum String InvalidOperation_MethodHasBody/*todo: implement initializer*/ = null;
    package(mscorlib) enum String InvalidOperation_OpenLocalVariableScope/*todo: implement initializer*/ = null;
    package(mscorlib) enum String InvalidOperation_TypeHasBeenCreated/*todo: implement initializer*/ = null;
    package(mscorlib) enum String InvalidOperation_RefedAssemblyNotSaved/*todo: implement initializer*/ = null;
    package(mscorlib) enum String InvalidOperation_AssemblyHasBeenSaved/*todo: implement initializer*/ = null;
    package(mscorlib) enum String InvalidOperation_ModuleHasBeenSaved/*todo: implement initializer*/ = null;
    package(mscorlib) enum String InvalidOperation_CannotAlterAssembly/*todo: implement initializer*/ = null;
    package(mscorlib) enum String NotSupported_CannotSaveModuleIndividually/*todo: implement initializer*/ = null;
    package(mscorlib) enum String NotSupported_Constructor/*todo: implement initializer*/ = null;
    package(mscorlib) enum String NotSupported_Method/*todo: implement initializer*/ = null;
    package(mscorlib) enum String NotSupported_NYI/*todo: implement initializer*/ = null;
    package(mscorlib) enum String NotSupported_DynamicModule/*todo: implement initializer*/ = null;
    package(mscorlib) enum String NotSupported_NotDynamicModule/*todo: implement initializer*/ = null;
    package(mscorlib) enum String NotSupported_NotAllTypesAreBaked/*todo: implement initializer*/ = null;
    package(mscorlib) enum String NotSupported_SortedListNestedWrite/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Serialization_ArrayInvalidLength/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Serialization_ArrayNoLength/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Serialization_CannotGetType/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Serialization_InsufficientState/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Serialization_InvalidID/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Serialization_MalformedArray/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Serialization_MultipleMembers/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Serialization_NoID/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Serialization_NoType/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Serialization_NoBaseType/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Serialization_NullSignature/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Serialization_UnknownMember/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Serialization_BadParameterInfo/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Serialization_NoParameterInfo/*todo: implement initializer*/ = null;
    package(mscorlib) enum String WeakReference_NoLongerValid/*todo: implement initializer*/ = null;
    package(mscorlib) enum String Loader_InvalidPath/*todo: implement initializer*/ = null;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\RtType.cs'
//
package(mscorlib) alias CtorDelegate = void delegate(__DotNet__Object instance);
package(mscorlib) enum TypeNameFormatFlags
{
    FormatBasic = 0x00000000,
    FormatNamespace = 0x00000001,
    FormatFullInst = 0x00000002,
    FormatAssembly = 0x00000004,
    FormatSignature = 0x00000008,
    FormatNoVersion = 0x00000010,
    // #if _DEBUG
    FormatDebug = 0x00000020,
    // #endif
    FormatAngleBrackets = 0x00000040,
    FormatStubInfo = 0x00000080,
    FormatGenericParam = 0x00000100,
    // If we want to be able to distinguish between overloads whose parameter types have the same name but come from different assemblies,
    // we can add FormatAssembly | FormatNoVersion to FormatSerialization. But we are omitting it because it is not a useful scenario
    // and including the assembly name will normally increase the size of the serialized data and also decrease the performance.
    FormatSerialization = FormatNamespace | FormatGenericParam | FormatFullInst,
}
package(mscorlib) enum TypeNameKind
{
    Name,
    ToString,
    SerializationName,
    FullName,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class RuntimeType : __DotNet__TypeInfo, ISerializable, ICloneable
{
    package(mscorlib) enum MemberListType
    {
        All,
        CaseSensitive,
        CaseInsensitive,
        HandleToInfo,
    }
    private static struct ListBuilder1(T)
    {
        private T[] _items;
        private T _item;
        private int _count;
        private int _capacity;
        //TODO: generate constructor
        //TODO: generate indexer
        //TODO: generate method ToArray
        //TODO: generate method CopyTo
        //TODO: generate property 'Count'
        //TODO: generate method Add
    }
    package(mscorlib) static class RuntimeTypeCache : __DotNet__Object
    {
        private enum int MAXNAMELEN/*todo: implement initializer*/ = int();
        package(mscorlib) enum CacheType
        {
            Method,
            Constructor,
            Field,
            Property,
            Event,
            Interface,
            NestedType,
        }
        private static struct Filter
        {
            private Utf8String m_name;
            private MemberListType m_listType;
            private uint m_nameHash;
            //TODO: generate constructor
            //TODO: generate method Match
            //TODO: generate method RequiresStringComparison
            //TODO: generate method CaseSensitive
            //TODO: generate method GetHashToMatch
        }
        private static class MemberInfoCache1(T) : __DotNet__Object/*where T : MemberInfo*/
        {
            private CerHashtable2!(String,T[]) m_csMemberInfos;
            private CerHashtable2!(String,T[]) m_cisMemberInfos;
            private T[] m_allMembers;
            private bool m_cacheComplete;
            private RuntimeTypeCache m_runtimeTypeCache;
            //TODO: generate constructor
            //TODO: generate method AddMethod
            //TODO: generate method AddField
            //TODO: generate method Populate
            //TODO: generate method GetListByName
            //TODO: generate method Insert
            //TODO: generate method MergeWithGlobalList
            //TODO: generate method PopulateMethods
            //TODO: generate method PopulateConstructors
            //TODO: generate method PopulateFields
            //TODO: generate method PopulateRtFields
            //TODO: generate method PopulateRtFields
            //TODO: generate method PopulateLiteralFields
            //TODO: generate method AddElementTypes
            //TODO: generate method AddSpecialInterface
            //TODO: generate method PopulateInterfaces
            //TODO: generate method PopulateNestedClasses
            //TODO: generate method PopulateEvents
            //TODO: generate method PopulateEvents
            //TODO: generate method PopulateProperties
            //TODO: generate method PopulateProperties
            //TODO: generate method GetMemberList
            //TODO: generate property 'ReflectedType'
        }
        private RuntimeType m_runtimeType;
        private RuntimeType m_enclosingType;
        private TypeCode m_typeCode;
        private String m_name;
        private String m_fullname;
        private String m_toString;
        private String m_namespace;
        private String m_serializationname;
        private bool m_isGlobal;
        private bool m_bIsDomainInitialized;
        private MemberInfoCache1!(RuntimeMethodInfo) m_methodInfoCache;
        private MemberInfoCache1!(RuntimeConstructorInfo) m_constructorInfoCache;
        private MemberInfoCache1!(RuntimeFieldInfo) m_fieldInfoCache;
        private MemberInfoCache1!(RuntimeType) m_interfaceCache;
        private MemberInfoCache1!(RuntimeType) m_nestedClassesCache;
        private MemberInfoCache1!(RuntimePropertyInfo) m_propertyInfoCache;
        private MemberInfoCache1!(RuntimeEventInfo) m_eventInfoCache;
        private static CerHashtable2!(RuntimeMethodInfo,RuntimeMethodInfo) s_methodInstantiations;
        private static __DotNet__Object s_methodInstantiationsLock;
        private String m_defaultMemberName;
        private __DotNet__Object m_genericCache;
        //TODO: generate constructor
        //TODO: generate method ConstructName
        //TODO: generate method GetMemberList
        //TODO: generate method GetMemberCache
        //TODO: generate property 'GenericCache'
        //TODO: generate property 'DomainInitialized'
        //TODO: generate method GetName
        //TODO: generate method GetNameSpace
        //TODO: generate property 'TypeCode'
        //TODO: generate method GetEnclosingType
        //TODO: generate method GetRuntimeType
        //TODO: generate property 'IsGlobal'
        //TODO: generate method InvalidateCachedNestedType
        //TODO: generate method GetDefaultMemberName
        //TODO: generate method GetGenericMethodInfo
        //TODO: generate method GetMethodList
        //TODO: generate method GetConstructorList
        //TODO: generate method GetPropertyList
        //TODO: generate method GetEventList
        //TODO: generate method GetFieldList
        //TODO: generate method GetInterfaceList
        //TODO: generate method GetNestedTypeList
        //TODO: generate method GetMethod
        //TODO: generate method GetConstructor
        //TODO: generate method GetField
    }
    //TODO: generate method GetType
    //TODO: generate method GetMethodBase
    //TODO: generate method GetMethodBase
    //TODO: generate method GetMethodBase
    //TODO: generate method GetMethodBase
    //TODO: generate property 'GenericCache'
    //TODO: generate property 'DomainInitialized'
    //TODO: generate method GetFieldInfo
    //TODO: generate method GetFieldInfo
    //TODO: generate method GetPropertyInfo
    //TODO: generate method ThrowIfTypeNeverValidGenericArgument
    //TODO: generate method SanityCheckGenericArguments
    //TODO: generate method ValidateGenericArguments
    //TODO: generate method SplitName
    //TODO: generate method FilterPreCalculate
    //TODO: generate method FilterHelper
    //TODO: generate method FilterHelper
    //TODO: generate method FilterApplyPrefixLookup
    //TODO: generate method FilterApplyBase
    //TODO: generate method FilterApplyType
    //TODO: generate method FilterApplyMethodInfo
    //TODO: generate method FilterApplyConstructorInfo
    //TODO: generate method FilterApplyMethodBase
    private __DotNet__Object m_keepalive;
    private IntPtr m_cache;
    package(mscorlib) IntPtr m_handle;
    private INVOCATION_FLAGS m_invocationFlags;
    //TODO: generate method IsNonW8PFrameworkAPI
    //TODO: generate method IsSimpleTypeNonW8PFrameworkAPI
    //TODO: generate property 'InvocationFlags'
    package(mscorlib) static immutable RuntimeType ValueType/*todo: implement initializer*/ = null;
    package(mscorlib) static immutable RuntimeType EnumType/*todo: implement initializer*/ = null;
    private static immutable RuntimeType ObjectType/*todo: implement initializer*/ = null;
    private static immutable RuntimeType StringType/*todo: implement initializer*/ = null;
    private static immutable RuntimeType DelegateType/*todo: implement initializer*/ = null;
    private static Type[] s_SICtorParamTypes;
    //TODO: generate constructor
    //TODO: generate method CacheEquals
    //TODO: generate property 'Cache'
    //TODO: generate method IsSpecialSerializableType
    //TODO: generate method GetDefaultMemberName
    //TODO: generate method GetMethodCandidates
    //TODO: generate method GetConstructorCandidates
    //TODO: generate method GetPropertyCandidates
    //TODO: generate method GetEventCandidates
    //TODO: generate method GetFieldCandidates
    //TODO: generate method GetNestedTypeCandidates
    //TODO: generate method GetMethods
    //TODO: generate method GetConstructors
    //TODO: generate method GetProperties
    //TODO: generate method GetEvents
    //TODO: generate method GetFields
    //TODO: generate method GetInterfaces
    //TODO: generate method GetNestedTypes
    //TODO: generate method GetMembers
    //TODO: generate method GetInterfaceMap
    //TODO: generate method GetMethodImpl
    //TODO: generate method GetConstructorImpl
    //TODO: generate method GetPropertyImpl
    //TODO: generate method GetEvent
    //TODO: generate method GetField
    //TODO: generate method GetInterface
    //TODO: generate method GetNestedType
    //TODO: generate method GetMember
    //TODO: generate property 'Module'
    //TODO: generate method GetRuntimeModule
    //TODO: generate property 'Assembly'
    //TODO: generate method GetRuntimeAssembly
    //TODO: generate property 'TypeHandle'
    //TODO: generate method GetTypeHandleInternal
    //TODO: generate method IsCollectible
    //TODO: generate method GetTypeCodeImpl
    //TODO: generate property 'DeclaringMethod'
    //TODO: generate method IsInstanceOfType
    //TODO: generate method IsSubclassOf
    //TODO: generate method IsAssignableFrom
    //TODO: generate method IsAssignableFrom
    //TODO: generate property 'BaseType'
    //TODO: generate method GetBaseType
    //TODO: generate property 'UnderlyingSystemType'
    //TODO: generate property 'FullName'
    //TODO: generate property 'AssemblyQualifiedName'
    //TODO: generate property 'Namespace'
    //TODO: generate method GetAttributeFlagsImpl
    //TODO: generate property 'GUID'
    //TODO: generate method GetGUID
    //TODO: generate method IsContextfulImpl
    //TODO: generate method IsByRefImpl
    //TODO: generate method IsPrimitiveImpl
    //TODO: generate method IsPointerImpl
    //TODO: generate method IsCOMObjectImpl
    //TODO: generate method IsWindowsRuntimeObjectImpl
    //TODO: generate method IsExportedToWindowsRuntimeImpl
    //TODO: generate method IsWindowsRuntimeObjectType
    //TODO: generate method IsTypeExportedToWindowsRuntime
    //TODO: generate method HasProxyAttributeImpl
    //TODO: generate method IsDelegate
    //TODO: generate method IsValueTypeImpl
    //TODO: generate method HasElementTypeImpl
    //TODO: generate property 'GenericParameterAttributes'
    //TODO: generate property 'IsSecurityCritical'
    //TODO: generate property 'IsSecuritySafeCritical'
    //TODO: generate property 'IsSecurityTransparent'
    //TODO: generate property 'IsSzArray'
    //TODO: generate method IsArrayImpl
    //TODO: generate method GetArrayRank
    //TODO: generate method GetElementType
    //TODO: generate method GetEnumNames
    //TODO: generate method GetEnumValues
    //TODO: generate method GetEnumUnderlyingType
    //TODO: generate method IsEnumDefined
    //TODO: generate method GetEnumName
    //TODO: generate method GetGenericArgumentsInternal
    //TODO: generate method GetGenericArguments
    //TODO: generate method MakeGenericType
    //TODO: generate property 'IsGenericTypeDefinition'
    //TODO: generate property 'IsGenericParameter'
    //TODO: generate property 'GenericParameterPosition'
    //TODO: generate method GetGenericTypeDefinition
    //TODO: generate property 'IsGenericType'
    //TODO: generate property 'IsConstructedGenericType'
    //TODO: generate property 'ContainsGenericParameters'
    //TODO: generate method GetGenericParameterConstraints
    //TODO: generate method MakePointerType
    //TODO: generate method MakeByRefType
    //TODO: generate method MakeArrayType
    //TODO: generate method MakeArrayType
    //TODO: generate property 'StructLayoutAttribute'
    private enum BindingFlags MemberBindingMask/*todo: implement initializer*/ = (cast(BindingFlags)0);
    private enum BindingFlags InvocationMask/*todo: implement initializer*/ = (cast(BindingFlags)0);
    private enum BindingFlags BinderNonCreateInstance/*todo: implement initializer*/ = (cast(BindingFlags)0);
    private enum BindingFlags BinderGetSetProperty/*todo: implement initializer*/ = (cast(BindingFlags)0);
    private enum BindingFlags BinderSetInvokeProperty/*todo: implement initializer*/ = (cast(BindingFlags)0);
    private enum BindingFlags BinderGetSetField/*todo: implement initializer*/ = (cast(BindingFlags)0);
    private enum BindingFlags BinderSetInvokeField/*todo: implement initializer*/ = (cast(BindingFlags)0);
    private enum BindingFlags BinderNonFieldGetSet/*todo: implement initializer*/ = (cast(BindingFlags)0);
    private enum BindingFlags ClassicBindingMask/*todo: implement initializer*/ = (cast(BindingFlags)0);
    private static RuntimeType s_typedRef/*todo: implement initializer*/ = null;
    //TODO: generate method CanValueSpecialCast
    //TODO: generate method AllocateValueType
    //TODO: generate method CheckValue
    //TODO: generate method TryChangeType
    //TODO: generate method GetDefaultMembers
    //TODO: generate method InvokeMember
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method Clone
    //TODO: generate method GetObjectData
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributesData
    //TODO: generate property 'Name'
    //TODO: generate method FormatTypeName
    //TODO: generate method GetCachedName
    //TODO: generate property 'MemberType'
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'ReflectedType'
    //TODO: generate property 'MetadataToken'
    //TODO: generate method CreateInstanceCheckThis
    //TODO: generate method CreateInstanceImpl
    private static class ActivatorCacheEntry : __DotNet__Object
    {
        package(mscorlib) immutable RuntimeType m_type;
        package(mscorlib) /*todo: volatile*/ CtorDelegate m_ctor;
        package(mscorlib) immutable RuntimeMethodHandleInternal m_hCtorMethodHandle;
        package(mscorlib) immutable MethodAttributes m_ctorAttributes;
        package(mscorlib) immutable bool m_bNeedSecurityCheck;
        package(mscorlib) /*todo: volatile*/ bool m_bFullyInitialized;
        //TODO: generate constructor
    }
    private static class ActivatorCache : __DotNet__Object
    {
        private enum int CACHE_SIZE/*todo: implement initializer*/ = int();
        private /*todo: volatile*/ int hash_counter;
        private immutable ActivatorCacheEntry[] cache/*todo: implement initializer*/ = null;
        private /*todo: volatile*/ ConstructorInfo delegateCtorInfo;
        private /*todo: volatile*/ PermissionSet delegateCreatePermissions;
        //TODO: generate method InitializeDelegateCreator
        //TODO: generate method InitializeCacheEntry
        //TODO: generate method GetEntry
        //TODO: generate method SetEntry
    }
    private static /*todo: volatile*/ ActivatorCache s_ActivatorCache;
    //TODO: generate method CreateInstanceSlow
    //TODO: generate method CreateInstanceDefaultCtor
    //TODO: generate method InvalidateCachedNestedType
    //TODO: generate method IsGenericCOMObjectImpl
    //TODO: generate method _CreateEnum
    //TODO: generate method CreateEnum
    //TODO: generate method InvokeDispMethod
    //TODO: generate method GetTypeFromProgIDImpl
    //TODO: generate method GetTypeFromCLSIDImpl
}
// this is the introspection only type. This type overrides all the functions with runtime semantics
// and throws an exception.
// The idea behind this type is that it relieves RuntimeType from doing honerous checks about ReflectionOnly
// context.
// This type should not derive from RuntimeType but it's doing so for convinience.
// That should not present a security threat though it is risky as a direct call to one of the base method
// method (RuntimeType) and an instance of this type will work around the reason to have this type in the 
// first place. However given RuntimeType is not public all its methods are protected and require full trust
// to be accessed
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class ReflectionOnlyType : RuntimeType
{
    //TODO: generate constructor
    //TODO: generate property 'TypeHandle'
}
package(mscorlib) struct Utf8String
{
    //TODO: generate method EqualsCaseSensitive
    //TODO: generate method EqualsCaseInsensitive
    //TODO: generate method HashCaseInsensitive
    //TODO: generate method GetUtf8StringByteLength
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private Void* m_pStringHeap;
    private int m_StringHeapByteLength;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Equals
    //TODO: generate method EqualsCaseInsensitive
    //TODO: generate method HashCaseInsensitive
    //TODO: generate method ToString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\RuntimeArgumentHandle.cs'
//
//  This value type is used for constructing System.ArgIterator. 
// 
//  SECURITY : m_ptr cannot be set to anything other than null by untrusted
//  code.  
// 
//  This corresponds to EE VARARGS cookie.
// Cannot be serialized
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct RuntimeArgumentHandle
{
    private IntPtr m_ptr;
    //TODO: generate property 'Value'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\RuntimeHandles.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct RuntimeTypeHandle
{
    //TODO: generate method GetNativeHandle
    //TODO: generate method GetTypeChecked
    //TODO: generate method IsInstanceOfType
    //TODO: generate method GetTypeHelper
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate property 'EmptyHandle'
    private RuntimeType m_type;
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate property 'Value'
    //TODO: generate method GetValueInternal
    //TODO: generate constructor
    //TODO: generate method IsNullHandle
    //TODO: generate method IsPrimitive
    //TODO: generate method IsByRef
    //TODO: generate method IsPointer
    //TODO: generate method IsArray
    //TODO: generate method IsSzArray
    //TODO: generate method HasElementType
    //TODO: generate method CopyRuntimeTypeHandles
    //TODO: generate method CopyRuntimeTypeHandles
    //TODO: generate method CreateInstance
    //TODO: generate method CreateCaInstance
    //TODO: generate method Allocate
    //TODO: generate method CreateInstanceForAnotherGenericParameter
    //TODO: generate method GetRuntimeType
    //TODO: generate method GetCorElementType
    //TODO: generate method GetAssembly
    //TODO: generate method GetModule
    //TODO: generate method GetModuleHandle
    //TODO: generate method GetBaseType
    //TODO: generate method GetAttributes
    //TODO: generate method GetElementType
    //TODO: generate method CompareCanonicalHandles
    //TODO: generate method GetArrayRank
    //TODO: generate method GetToken
    //TODO: generate method GetMethodAt
    package(mscorlib) static struct IntroducedMethodEnumerator
    {
        private bool _firstCall;
        private RuntimeMethodHandleInternal _handle;
        //TODO: generate constructor
        //TODO: generate method MoveNext
        //TODO: generate property 'Current'
        //TODO: generate method GetEnumerator
    }
    //TODO: generate method GetIntroducedMethods
    //TODO: generate method GetFirstIntroducedMethod
    //TODO: generate method GetNextIntroducedMethod
    //TODO: generate method GetFields
    //TODO: generate method GetInterfaces
    //TODO: generate method GetConstraints
    //TODO: generate method GetConstraints
    //TODO: generate method GetGCHandle
    //TODO: generate method GetGCHandle
    //TODO: generate method GetNumVirtuals
    //TODO: generate method VerifyInterfaceIsImplemented
    //TODO: generate method VerifyInterfaceIsImplemented
    //TODO: generate method GetInterfaceMethodImplementationSlot
    //TODO: generate method GetInterfaceMethodImplementationSlot
    //TODO: generate method IsComObject
    //TODO: generate method IsContextful
    //TODO: generate method IsInterface
    //TODO: generate method _IsVisible
    //TODO: generate method IsVisible
    //TODO: generate method IsSecurityCritical
    //TODO: generate method IsSecurityCritical
    //TODO: generate method IsSecuritySafeCritical
    //TODO: generate method IsSecuritySafeCritical
    //TODO: generate method IsSecurityTransparent
    //TODO: generate method IsSecurityTransparent
    //TODO: generate method HasProxyAttribute
    //TODO: generate method IsValueType
    //TODO: generate method ConstructName
    //TODO: generate method ConstructName
    //TODO: generate method _GetUtf8Name
    //TODO: generate method GetUtf8Name
    //TODO: generate method CanCastTo
    //TODO: generate method GetDeclaringType
    //TODO: generate method GetDeclaringMethod
    //TODO: generate method GetDefaultConstructor
    //TODO: generate method GetDefaultConstructor
    //TODO: generate method GetTypeByName
    //TODO: generate method GetTypeByName
    //TODO: generate method GetTypeByName
    //TODO: generate method GetTypeByName
    //TODO: generate method GetTypeByNameUsingCARules
    //TODO: generate method GetTypeByNameUsingCARules
    //TODO: generate method GetInstantiation
    //TODO: generate method GetInstantiationInternal
    //TODO: generate method GetInstantiationPublic
    //TODO: generate method Instantiate
    //TODO: generate method Instantiate
    //TODO: generate method MakeArray
    //TODO: generate method MakeArray
    //TODO: generate method MakeSZArray
    //TODO: generate method MakeSZArray
    //TODO: generate method MakeByRef
    //TODO: generate method MakeByRef
    //TODO: generate method MakePointer
    //TODO: generate method MakePointer
    //TODO: generate method IsCollectible
    //TODO: generate method HasInstantiation
    //TODO: generate method HasInstantiation
    //TODO: generate method GetGenericTypeDefinition
    //TODO: generate method GetGenericTypeDefinition
    //TODO: generate method IsGenericTypeDefinition
    //TODO: generate method IsGenericVariable
    //TODO: generate method IsGenericVariable
    //TODO: generate method GetGenericVariableIndex
    //TODO: generate method GetGenericVariableIndex
    //TODO: generate method ContainsGenericVariables
    //TODO: generate method ContainsGenericVariables
    //TODO: generate method SatisfiesConstraints
    //TODO: generate method SatisfiesConstraints
    //TODO: generate method _GetMetadataImport
    //TODO: generate method GetMetadataImport
    //TODO: generate constructor
    //TODO: generate method GetObjectData
}
public class __Boxed__RuntimeTypeHandle : __DotNet__Object, ISerializable
{
    RuntimeTypeHandle value;
    alias value this;
}
package(mscorlib) struct RuntimeMethodHandleInternal
{
    //TODO: generate property 'EmptyHandle'
    //TODO: generate method IsNullHandle
    //TODO: generate property 'Value'
    //TODO: generate constructor
    package(mscorlib) IntPtr m_handle;
}
package(mscorlib) class RuntimeMethodInfoStub : __DotNet__Object, IRuntimeMethodInfo
{
    //TODO: generate constructor
    //TODO: generate constructor
    private __DotNet__Object m_keepalive;
    private __DotNet__Object m_a;
    private __DotNet__Object m_b;
    private __DotNet__Object m_c;
    private __DotNet__Object m_d;
    private __DotNet__Object m_e;
    private __DotNet__Object m_f;
    private __DotNet__Object m_g;
    public RuntimeMethodHandleInternal m_value;
    //TODO: generate property 'Value'
}
package(mscorlib) interface IRuntimeMethodInfo
{
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct RuntimeMethodHandle
{
    //TODO: generate method EnsureNonNullMethodInfo
    //TODO: generate property 'EmptyHandle'
    private IRuntimeMethodInfo m_value;
    //TODO: generate constructor
    //TODO: generate method GetMethodInfo
    //TODO: generate method GetValueInternal
    //TODO: generate constructor
    //TODO: generate method GetObjectData
    //TODO: generate property 'Value'
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method Equals
    //TODO: generate method IsNullHandle
    //TODO: generate method GetFunctionPointer
    //TODO: generate method GetFunctionPointer
    //TODO: generate method CheckLinktimeDemands
    //TODO: generate method IsCAVisibleFromDecoratedType
    //TODO: generate method _GetCurrentMethod
    //TODO: generate method GetCurrentMethod
    //TODO: generate method GetAttributes
    //TODO: generate method GetAttributes
    //TODO: generate method GetImplAttributes
    //TODO: generate method ConstructInstantiation
    //TODO: generate method ConstructInstantiation
    //TODO: generate method GetDeclaringType
    //TODO: generate method GetDeclaringType
    //TODO: generate method GetSlot
    //TODO: generate method GetSlot
    //TODO: generate method GetMethodDef
    //TODO: generate method GetName
    //TODO: generate method GetName
    //TODO: generate method _GetUtf8Name
    //TODO: generate method GetUtf8Name
    //TODO: generate method MatchesNameHash
    //TODO: generate method InvokeMethod
    //TODO: generate method GetSecurityFlags
    //TODO: generate method GetSpecialSecurityFlags
    //TODO: generate method SerializationInvoke
    //TODO: generate method _IsTokenSecurityTransparent
    //TODO: generate method IsTokenSecurityTransparent
    //TODO: generate method _IsSecurityCritical
    //TODO: generate method IsSecurityCritical
    //TODO: generate method _IsSecuritySafeCritical
    //TODO: generate method IsSecuritySafeCritical
    //TODO: generate method _IsSecurityTransparent
    //TODO: generate method IsSecurityTransparent
    //TODO: generate method GetMethodInstantiation
    //TODO: generate method GetMethodInstantiationInternal
    //TODO: generate method GetMethodInstantiationInternal
    //TODO: generate method GetMethodInstantiationPublic
    //TODO: generate method HasMethodInstantiation
    //TODO: generate method HasMethodInstantiation
    //TODO: generate method GetStubIfNeeded
    //TODO: generate method GetMethodFromCanonical
    //TODO: generate method IsGenericMethodDefinition
    //TODO: generate method IsGenericMethodDefinition
    //TODO: generate method IsTypicalMethodDefinition
    //TODO: generate method GetTypicalMethodDefinition
    //TODO: generate method GetTypicalMethodDefinition
    //TODO: generate method StripMethodInstantiation
    //TODO: generate method StripMethodInstantiation
    //TODO: generate method IsDynamicMethod
    //TODO: generate method Destroy
    //TODO: generate method GetResolver
    //TODO: generate method GetCallerType
    //TODO: generate method GetCallerType
    //TODO: generate method GetMethodBody
    //TODO: generate method IsConstructor
    //TODO: generate method GetLoaderAllocator
}
public class __Boxed__RuntimeMethodHandle : __DotNet__Object, ISerializable
{
    RuntimeMethodHandle value;
    alias value this;
}
package(mscorlib) struct RuntimeFieldHandleInternal
{
    //TODO: generate property 'EmptyHandle'
    //TODO: generate method IsNullHandle
    //TODO: generate property 'Value'
    //TODO: generate constructor
    package(mscorlib) IntPtr m_handle;
}
package(mscorlib) interface IRuntimeFieldInfo
{
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
package(mscorlib) class RuntimeFieldInfoStub : __DotNet__Object, IRuntimeFieldInfo
{
    //TODO: generate constructor
    private __DotNet__Object m_keepalive;
    private __DotNet__Object m_c;
    private __DotNet__Object m_d;
    private int m_b;
    private __DotNet__Object m_e;
    private RuntimeFieldHandleInternal m_fieldHandle;
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct RuntimeFieldHandle
{
    //TODO: generate method GetNativeHandle
    private IRuntimeFieldInfo m_ptr;
    //TODO: generate constructor
    //TODO: generate method GetRuntimeFieldInfo
    //TODO: generate property 'Value'
    //TODO: generate method IsNullHandle
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method GetName
    //TODO: generate method _GetUtf8Name
    //TODO: generate method GetUtf8Name
    //TODO: generate method MatchesNameHash
    //TODO: generate method GetAttributes
    //TODO: generate method GetApproxDeclaringType
    //TODO: generate method GetApproxDeclaringType
    //TODO: generate method GetToken
    //TODO: generate method GetValue
    //TODO: generate method GetValueDirect
    //TODO: generate method SetValue
    //TODO: generate method SetValueDirect
    //TODO: generate method GetStaticFieldForGenericType
    //TODO: generate method AcquiresContextFromThis
    //TODO: generate method IsSecurityCritical
    //TODO: generate method IsSecurityCritical
    //TODO: generate method IsSecuritySafeCritical
    //TODO: generate method IsSecuritySafeCritical
    //TODO: generate method IsSecurityTransparent
    //TODO: generate method IsSecurityTransparent
    //TODO: generate method CheckAttributeAccess
    //TODO: generate constructor
    //TODO: generate method GetObjectData
}
public class __Boxed__RuntimeFieldHandle : __DotNet__Object, ISerializable
{
    RuntimeFieldHandle value;
    alias value this;
}
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct ModuleHandle
{
    public static immutable ModuleHandle EmptyHandle/*todo: implement initializer*/ = ModuleHandle();
    //TODO: generate method GetEmptyMH
    private RuntimeModule m_ptr;
    //TODO: generate constructor
    //TODO: generate method GetRuntimeModule
    //TODO: generate method IsNullHandle
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method GetDynamicMethod
    //TODO: generate method GetToken
    //TODO: generate method ValidateModulePointer
    //TODO: generate method GetRuntimeTypeHandleFromMetadataToken
    //TODO: generate method ResolveTypeHandle
    //TODO: generate method ResolveTypeHandle
    //TODO: generate method ResolveTypeHandleInternal
    //TODO: generate method ResolveType
    //TODO: generate method GetRuntimeMethodHandleFromMetadataToken
    //TODO: generate method ResolveMethodHandle
    //TODO: generate method ResolveMethodHandleInternal
    //TODO: generate method ResolveMethodHandle
    //TODO: generate method ResolveMethodHandleInternal
    //TODO: generate method ResolveMethodHandleInternalCore
    //TODO: generate method ResolveMethod
    //TODO: generate method GetRuntimeFieldHandleFromMetadataToken
    //TODO: generate method ResolveFieldHandle
    //TODO: generate method ResolveFieldHandle
    //TODO: generate method ResolveFieldHandleInternal
    //TODO: generate method ResolveField
    //TODO: generate method _ContainsPropertyMatchingHash
    //TODO: generate method ContainsPropertyMatchingHash
    //TODO: generate method GetAssembly
    //TODO: generate method GetAssembly
    //TODO: generate method GetModuleType
    //TODO: generate method GetModuleType
    //TODO: generate method GetPEKind
    //TODO: generate method GetPEKind
    //TODO: generate method GetMDStreamVersion
    //TODO: generate property 'MDStreamVersion'
    //TODO: generate method _GetMetadataImport
    //TODO: generate method GetMetadataImport
}
package(mscorlib) class Signature : __DotNet__Object
{
    package(mscorlib) enum MdSigCallingConvention : ubyte
    {
        Generics = 0x10,
        HasThis = 0x20,
        ExplicitThis = 0x40,
        CallConvMask = 0x0F,
        Default = 0x00,
        C = 0x01,
        StdCall = 0x02,
        ThisCall = 0x03,
        FastCall = 0x04,
        Vararg = 0x05,
        Field = 0x06,
        LocalSig = 0x07,
        Property = 0x08,
        Unmgd = 0x09,
        GenericInst = 0x0A,
        Max = 0x0B,
    }
    //TODO: generate method GetSignature
    package(mscorlib) RuntimeType[] m_arguments;
    package(mscorlib) RuntimeType m_declaringType;
    package(mscorlib) RuntimeType m_returnTypeORfieldType;
    package(mscorlib) __DotNet__Object m_keepalive;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    package(mscorlib) Void* m_sig;
    package(mscorlib) int m_managedCallingConventionAndArgIteratorFlags;
    package(mscorlib) int m_nSizeOfArgStack;
    package(mscorlib) int m_csig;
    package(mscorlib) RuntimeMethodHandleInternal m_pMethod;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'CallingConvention'
    //TODO: generate property 'Arguments'
    //TODO: generate property 'ReturnType'
    //TODO: generate property 'FieldType'
    //TODO: generate method CompareSig
    //TODO: generate method GetCustomModifiers
}
package(mscorlib) abstract class Resolver : __DotNet__Object
{
    package(mscorlib) static struct CORINFO_EH_CLAUSE
    {
        package(mscorlib) int Flags;
        package(mscorlib) int TryOffset;
        package(mscorlib) int TryLength;
        package(mscorlib) int HandlerOffset;
        package(mscorlib) int HandlerLength;
        package(mscorlib) int ClassTokenOrFilterOffset;
    }
    //TODO: generate method GetJitContext
    //TODO: generate method GetCodeInfo
    //TODO: generate method GetLocalsSignature
    //TODO: generate method GetEHInfo
    //TODO: generate method GetRawEHInfo
    //TODO: generate method GetStringLiteral
    //TODO: generate method ResolveToken
    //TODO: generate method ResolveSignature
    //TODO: generate method GetDynamicMethod
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\SByte.cs'
//
// A place holder class for signed bytes.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct SByte
{
    private byte m_value;
    public enum byte MaxValue/*todo: implement initializer*/ = byte();
    public enum byte MinValue/*todo: implement initializer*/ = byte();
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method GetTypeCode
    //TODO: generate method ToBoolean
    //TODO: generate method ToChar
    //TODO: generate method ToSByte
    //TODO: generate method ToByte
    //TODO: generate method ToInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method ToDouble
    //TODO: generate method ToDecimal
    //TODO: generate method ToDateTime
    //TODO: generate method ToType
}
public class __Boxed__SByte : __DotNet__Object, IComparable, IFormattable, IConvertible, IComparable1!(byte), IEquatable1!(byte)
{
    byte value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\SerializableAttribute.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Enum | AttributeTargets.Delegate, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class SerializableAttribute : Attribute
{
    //TODO: generate method GetCustomAttribute
    //TODO: generate method IsDefined
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\SharedStatics.cs'
//
package(mscorlib) final class SharedStatics : __DotNet__Object
{
    private static SharedStatics _sharedStatics;
    //TODO: generate constructor
    private /*todo: volatile*/ String _Remoting_Identity_IDGuid;
    //TODO: generate property 'Remoting_Identity_IDGuid'
    private int _Remoting_Identity_IDSeqNum;
    //TODO: generate method Remoting_Identity_GetNextSeqNum
    private long _memFailPointReservedMemory;
    //TODO: generate method AddMemoryFailPointReservation
    //TODO: generate property 'MemoryFailPointReservedMemory'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Single.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct Single
{
    package(mscorlib) float m_value;
    public enum float MinValue/*todo: implement initializer*/ = float();
    public enum float Epsilon/*todo: implement initializer*/ = float();
    public enum float MaxValue/*todo: implement initializer*/ = float();
    public enum float PositiveInfinity/*todo: implement initializer*/ = float();
    public enum float NegativeInfinity/*todo: implement initializer*/ = float();
    public enum float NaN/*todo: implement initializer*/ = float();
    //TODO: generate method IsInfinity
    //TODO: generate method IsPositiveInfinity
    //TODO: generate method IsNegativeInfinity
    //TODO: generate method IsNaN
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method GetTypeCode
    //TODO: generate method ToBoolean
    //TODO: generate method ToChar
    //TODO: generate method ToSByte
    //TODO: generate method ToByte
    //TODO: generate method ToInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method ToDouble
    //TODO: generate method ToDecimal
    //TODO: generate method ToDateTime
    //TODO: generate method ToType
}
public class __Boxed__Single : __DotNet__Object, IComparable, IFormattable, IConvertible, IComparable1!(float), IEquatable1!(float)
{
    float value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\StackOverflowException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class StackOverflowException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\String.Comparison.cs'
//
//
// For Information on these methods, please see COMString.cpp
//
// The String class represents a static string of characters.  Many of
// the String methods perform some type of transformation on the current
// instance and return the result as a new String. All comparison methods are
// implemented as a part of String.  As with arrays, character positions
// (indices) are zero-based.
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class String : __DotNet__Object
{
    //TODO: generate method CompareOrdinalIgnoreCaseHelper
    //TODO: generate method CompareOrdinalHelper
    //TODO: generate method nativeCompareOrdinalIgnoreCaseWC
    //TODO: generate method EqualsHelper
    //TODO: generate method StartsWithOrdinalHelper
    //TODO: generate method CompareOrdinalHelper
    //TODO: generate method Compare
    //TODO: generate method Compare
    //TODO: generate method Compare
    //TODO: generate method Compare
    //TODO: generate method Compare
    //TODO: generate method Compare
    //TODO: generate method Compare
    //TODO: generate method Compare
    //TODO: generate method Compare
    //TODO: generate method Compare
    //TODO: generate method CompareOrdinal
    //TODO: generate method CompareOrdinal
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method EndsWith
    //TODO: generate method EndsWith
    //TODO: generate method EndsWith
    //TODO: generate method EndsWith
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method InternalMarvin32HashString
    //TODO: generate method UseRandomizedHashing
    //TODO: generate method InternalUseRandomizedHashing
    //TODO: generate method GetHashCode
    //TODO: generate method GetLegacyNonRandomizedHashCode
    //TODO: generate method StartsWith
    //TODO: generate method StartsWith
    //TODO: generate method StartsWith
    //
    //NOTE NOTE NOTE NOTE
    //These fields map directly onto the fields in an EE StringObject.  See object.h for the layout.
    //
    //[NonSerialized] private int m_stringLength;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private int m_stringLength;
    // For empty strings, this will be '\0' since
    // strings are both null-terminated and length prefixed
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private wchar m_firstChar;
    public static immutable String Empty;
    //TODO: generate property 'FirstChar'
    //TODO: generate method SmallCharToUpper
    //TODO: generate indexer
    //TODO: generate method CopyTo
    //TODO: generate method ToCharArray
    //TODO: generate method ToCharArray
    //TODO: generate method IsNullOrEmpty
    //TODO: generate method IsNullOrWhiteSpace
    //TODO: generate property 'Length'
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CreateString
    //TODO: generate method CreateStringFromEncoding
    //TODO: generate method CreateFromChar
    //TODO: generate method GetBytesFromEncoding
    //TODO: generate method ConvertToAnsi
    //TODO: generate method IsNormalized
    //TODO: generate method IsNormalized
    //TODO: generate method Normalize
    //TODO: generate method Normalize
    //TODO: generate method FastAllocateString
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method wstrcpy
    //TODO: generate method CtorCharArray
    //TODO: generate method CtorCharArrayStartLength
    //TODO: generate method CtorCharCount
    //TODO: generate method wcslen
    //TODO: generate method CtorCharPtr
    //TODO: generate method CtorCharPtrStartLength
    //TODO: generate constructor
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method Clone
    //TODO: generate method Copy
    //TODO: generate method Intern
    //TODO: generate method IsInterned
    //TODO: generate method GetTypeCode
    //TODO: generate method ToBoolean
    //TODO: generate method ToChar
    //TODO: generate method ToSByte
    //TODO: generate method ToByte
    //TODO: generate method ToInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method ToDouble
    //TODO: generate method ToDecimal
    //TODO: generate method ToDateTime
    //TODO: generate method ToType
    //TODO: generate method IsFastSort
    //TODO: generate method IsAscii
    //TODO: generate method SetTrailByte
    //TODO: generate method TryGetTrailByte
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    //TODO: generate method InternalCopy
    private enum int TrimHead/*todo: implement initializer*/ = int();
    private enum int TrimTail/*todo: implement initializer*/ = int();
    private enum int TrimBoth/*todo: implement initializer*/ = int();
    //TODO: generate method FillStringChecked
    //TODO: generate method Concat
    //TODO: generate method Concat
    //TODO: generate method Concat
    //TODO: generate method Concat
    //TODO: generate method Concat
    //TODO: generate method Concat
    //TODO: generate method Concat
    //TODO: generate method Concat
    //TODO: generate method Concat
    //TODO: generate method Concat
    //TODO: generate method Concat
    //TODO: generate method Format
    //TODO: generate method Format
    //TODO: generate method Format
    //TODO: generate method Format
    //TODO: generate method Format
    //TODO: generate method Format
    //TODO: generate method Format
    //TODO: generate method Format
    //TODO: generate method FormatHelper
    //TODO: generate method Insert
    //TODO: generate method Join
    //TODO: generate method Join
    //TODO: generate method Join
    //TODO: generate method Join
    //TODO: generate method Join
    //TODO: generate method PadLeft
    //TODO: generate method PadLeft
    //TODO: generate method PadRight
    //TODO: generate method PadRight
    //TODO: generate method Remove
    //TODO: generate method Remove
    //TODO: generate method Replace
    //TODO: generate method ReplaceInternal
    //TODO: generate method Replace
    //TODO: generate method Split
    //TODO: generate method Split
    //TODO: generate method Split
    //TODO: generate method Split
    //TODO: generate method Split
    //TODO: generate method Split
    //TODO: generate method SplitInternal
    //TODO: generate method SplitInternal
    //TODO: generate method SplitInternal
    //TODO: generate method Split
    //TODO: generate method Split
    //TODO: generate method Split
    //TODO: generate method Split
    //TODO: generate method SplitInternal
    //TODO: generate method SplitKeepEmptyEntries
    //TODO: generate method SplitOmitEmptyEntries
    //TODO: generate method MakeSeparatorList
    //TODO: generate method MakeSeparatorList
    //TODO: generate method MakeSeparatorList
    //TODO: generate method Substring
    //TODO: generate method Substring
    //TODO: generate method InternalSubString
    //TODO: generate method ToLower
    //TODO: generate method ToLower
    //TODO: generate method ToLowerInvariant
    //TODO: generate method ToUpper
    //TODO: generate method ToUpper
    //TODO: generate method ToUpperInvariant
    //TODO: generate method Trim
    //TODO: generate method TrimStart
    //TODO: generate method TrimEnd
    //TODO: generate method Trim
    //TODO: generate method TrimHelper
    //TODO: generate method TrimHelper
    //TODO: generate method CreateTrimmedString
    //TODO: generate method Contains
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOfAny
    //TODO: generate method IndexOfAny
    //TODO: generate method IndexOfAny
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOfAny
    //TODO: generate method LastIndexOfAny
    //TODO: generate method LastIndexOfAny
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\String.cs'
//
// partial class 'String' moved

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\String.Manipulation.cs'
//
// partial class 'String' moved

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\String.Searching.cs'
//
// partial class 'String' moved

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\StringComparer.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class StringComparer : __DotNet__Object, IComparer, IEqualityComparer, IComparer1!(String), IEqualityComparer1!(String)
{
    private static immutable StringComparer _invariantCulture/*todo: implement initializer*/ = null;
    private static immutable StringComparer _invariantCultureIgnoreCase/*todo: implement initializer*/ = null;
    private static immutable StringComparer _ordinal/*todo: implement initializer*/ = null;
    private static immutable StringComparer _ordinalIgnoreCase/*todo: implement initializer*/ = null;
    //TODO: generate property 'InvariantCulture'
    //TODO: generate property 'InvariantCultureIgnoreCase'
    //TODO: generate property 'CurrentCulture'
    //TODO: generate property 'CurrentCultureIgnoreCase'
    //TODO: generate property 'Ordinal'
    //TODO: generate property 'OrdinalIgnoreCase'
    //TODO: generate method Create
    //TODO: generate method Compare
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method Compare
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class CultureAwareComparer : StringComparer, IWellKnownStringEqualityComparer
{
    private CompareInfo _compareInfo;
    private bool _ignoreCase;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Compare
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetRandomizedEqualityComparer
    //TODO: generate method GetEqualityComparerForSerialization
}
package(mscorlib) final class CultureAwareRandomizedComparer : StringComparer, IWellKnownStringEqualityComparer
{
    private CompareInfo _compareInfo;
    private bool _ignoreCase;
    private long _entropy;
    //TODO: generate constructor
    //TODO: generate method Compare
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetRandomizedEqualityComparer
    //TODO: generate method GetEqualityComparerForSerialization
}
// #endif
// Provide x more optimal implementation of ordinal comparison.
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class OrdinalComparer : StringComparer, IWellKnownStringEqualityComparer
{
    private bool _ignoreCase;
    //TODO: generate constructor
    //TODO: generate method Compare
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetRandomizedEqualityComparer
    //TODO: generate method GetEqualityComparerForSerialization
}
package(mscorlib) final class OrdinalRandomizedComparer : StringComparer, IWellKnownStringEqualityComparer
{
    private bool _ignoreCase;
    private long _entropy;
    //TODO: generate constructor
    //TODO: generate method Compare
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetRandomizedEqualityComparer
    //TODO: generate method GetEqualityComparerForSerialization
}
package(mscorlib) interface IWellKnownStringEqualityComparer
{
    //TODO: generate method GetRandomizedEqualityComparer
    //TODO: generate method GetEqualityComparerForSerialization
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\StringComparison.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum StringComparison
{
    CurrentCulture = 0,
    CurrentCultureIgnoreCase = 1,
    InvariantCulture = 2,
    InvariantCultureIgnoreCase = 3,
    Ordinal = 4,
    OrdinalIgnoreCase = 5,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\StringSplitOptions.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
@__DotNet__Attribute!(FlagsAttribute.stringof)
public enum StringSplitOptions
{
    None = 0,
    RemoveEmptyEntries = 1,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\SystemException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class SystemException : __DotNet__Exception
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ThreadAttributes.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class STAThreadAttribute : Attribute
{
    //TODO: generate constructor
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class MTAThreadAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ThreadStaticAttribute.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Field, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class ThreadStaticAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ThrowHelper.cs'
//
@__DotNet__Attribute!(PureAttribute.stringof)
package(mscorlib) class ThrowHelper : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method ThrowArgumentOutOfRange_IndexException
    //TODO: generate method ThrowIndexArgumentOutOfRange_NeedNonNegNumException
    //TODO: generate method ThrowWrongKeyTypeArgumentException
    //TODO: generate method ThrowWrongValueTypeArgumentException
    //TODO: generate method ThrowAddingDuplicateWithKeyArgumentException
    //TODO: generate method ThrowKeyNotFoundException
    //TODO: generate method ThrowArgumentException
    //TODO: generate method ThrowArgumentException
    //TODO: generate method ThrowArgumentNullException
    //TODO: generate method ThrowArgumentNullException
    //TODO: generate method ThrowArgumentOutOfRangeException
    //TODO: generate method ThrowArgumentOutOfRangeException
    //TODO: generate method ThrowArgumentOutOfRangeException
    //TODO: generate method ThrowInvalidOperationException
    //TODO: generate method ThrowInvalidOperationException
    //TODO: generate method ThrowSerializationException
    //TODO: generate method ThrowSecurityException
    //TODO: generate method ThrowRankException
    //TODO: generate method ThrowNotSupportedException
    //TODO: generate method ThrowUnauthorizedAccessException
    //TODO: generate method ThrowObjectDisposedException
    //TODO: generate method ThrowObjectDisposedException
    //TODO: generate method ThrowNotSupportedException
    //TODO: generate method ThrowAggregateException
    //TODO: generate method IfNullAndNullsAreIllegalThenThrow
    //TODO: generate method GetArgumentName
    //TODO: generate method GetResourceName
}
package(mscorlib) enum ExceptionArgument
{
    obj,
    dictionary,
    dictionaryCreationThreshold,
    array,
    info,
    key,
    collection,
    list,
    match,
    converter,
    queue,
    stack,
    capacity,
    index,
    startIndex,
    value,
    count,
    arrayIndex,
    name,
    mode,
    item,
    options,
    view,
    sourceBytesToCopy,
    action,
    comparison,
    offset,
    newSize,
    elementType,
    length,
    length1,
    length2,
    length3,
    lengths,
    len,
    lowerBounds,
    sourceArray,
    destinationArray,
    sourceIndex,
    destinationIndex,
    indices,
    index1,
    index2,
    index3,
    other,
    comparer,
    endIndex,
    keys,
    creationOptions,
    timeout,
    tasks,
    scheduler,
    continuationFunction,
    millisecondsTimeout,
    millisecondsDelay,
    function_,
    exceptions,
    exception,
    cancellationToken,
    delay,
    asyncResult,
    endMethod,
    endFunction,
    beginMethod,
    continuationOptions,
    continuationAction,
    valueFactory,
    addValueFactory,
    updateValueFactory,
    concurrencyLevel,
}
package(mscorlib) enum ExceptionResource
{
    Argument_ImplementIComparable,
    Argument_InvalidType,
    Argument_InvalidArgumentForComparison,
    Argument_InvalidRegistryKeyPermissionCheck,
    ArgumentOutOfRange_NeedNonNegNum,
    Arg_ArrayPlusOffTooSmall,
    Arg_NonZeroLowerBound,
    Arg_RankMultiDimNotSupported,
    Arg_RegKeyDelHive,
    Arg_RegKeyStrLenBug,
    Arg_RegSetStrArrNull,
    Arg_RegSetMismatchedKind,
    Arg_RegSubKeyAbsent,
    Arg_RegSubKeyValueAbsent,
    Argument_AddingDuplicate,
    Serialization_InvalidOnDeser,
    Serialization_MissingKeys,
    Serialization_NullKey,
    Argument_InvalidArrayType,
    NotSupported_KeyCollectionSet,
    NotSupported_ValueCollectionSet,
    ArgumentOutOfRange_SmallCapacity,
    ArgumentOutOfRange_Index,
    Argument_InvalidOffLen,
    Argument_ItemNotExist,
    ArgumentOutOfRange_Count,
    ArgumentOutOfRange_InvalidThreshold,
    ArgumentOutOfRange_ListInsert,
    NotSupported_ReadOnlyCollection,
    InvalidOperation_CannotRemoveFromStackOrQueue,
    InvalidOperation_EmptyQueue,
    InvalidOperation_EnumOpCantHappen,
    InvalidOperation_EnumFailedVersion,
    InvalidOperation_EmptyStack,
    ArgumentOutOfRange_BiggerThanCollection,
    InvalidOperation_EnumNotStarted,
    InvalidOperation_EnumEnded,
    NotSupported_SortedListNestedWrite,
    InvalidOperation_NoValue,
    InvalidOperation_RegRemoveSubKey,
    Security_RegistryPermission,
    UnauthorizedAccess_RegistryNoWrite,
    ObjectDisposed_RegKeyClosed,
    NotSupported_InComparableType,
    Argument_InvalidRegistryOptionsCheck,
    Argument_InvalidRegistryViewCheck,
    InvalidOperation_NullArray,
    Arg_MustBeType,
    Arg_NeedAtLeast1Rank,
    ArgumentOutOfRange_HugeArrayNotSupported,
    Arg_RanksAndBounds,
    Arg_RankIndices,
    Arg_Need1DArray,
    Arg_Need2DArray,
    Arg_Need3DArray,
    NotSupported_FixedSizeCollection,
    ArgumentException_OtherNotArrayOfCorrectLength,
    Rank_MultiDimNotSupported,
    InvalidOperation_IComparerFailed,
    ArgumentOutOfRange_EndIndexStartIndex,
    Arg_LowerBoundsMustMatch,
    Arg_BogusIComparer,
    Task_WaitMulti_NullTask,
    Task_ThrowIfDisposed,
    Task_Start_TaskCompleted,
    Task_Start_Promise,
    Task_Start_ContinuationTask,
    Task_Start_AlreadyStarted,
    Task_RunSynchronously_TaskCompleted,
    Task_RunSynchronously_Continuation,
    Task_RunSynchronously_Promise,
    Task_RunSynchronously_AlreadyStarted,
    Task_MultiTaskContinuation_NullTask,
    Task_MultiTaskContinuation_EmptyTaskList,
    Task_Dispose_NotCompleted,
    Task_Delay_InvalidMillisecondsDelay,
    Task_Delay_InvalidDelay,
    Task_ctor_LRandSR,
    Task_ContinueWith_NotOnAnything,
    Task_ContinueWith_ESandLR,
    TaskT_TransitionToFinal_AlreadyCompleted,
    TaskT_ctor_SelfReplicating,
    TaskCompletionSourceT_TrySetException_NullException,
    TaskCompletionSourceT_TrySetException_NoExceptions,
    InvalidOperation_WrongAsyncResultOrEndCalledMultiple,
    ConcurrentDictionary_ConcurrencyLevelMustBePositive,
    ConcurrentDictionary_CapacityMustNotBeNegative,
    ConcurrentDictionary_TypeOfValueIncorrect,
    ConcurrentDictionary_TypeOfKeyIncorrect,
    ConcurrentDictionary_SourceContainsDuplicateKeys,
    ConcurrentDictionary_KeyAlreadyExisted,
    ConcurrentDictionary_ItemKeyIsNull,
    ConcurrentDictionary_IndexIsNegative,
    ConcurrentDictionary_ArrayNotLargeEnough,
    ConcurrentDictionary_ArrayIncorrectType,
    ConcurrentCollection_SyncRoot_NotSupported,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\TimeoutException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class TimeoutException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\TimeSpan.cs'
//
// TimeSpan represents a duration of time.  A TimeSpan can be negative
// or positive.
//
// TimeSpan is internally represented as a number of milliseconds.  While
// this maps well into units of time such as hours and days, any
// periods longer than that aren't representable in a nice fashion.
// For instance, a month can be between 28 and 31 days, while a year
// can contain 365 or 364 days.  A decade can have between 1 and 3 leapyears,
// depending on when you map the TimeSpan into the calendar.  This is why
// we do not provide Years() or Months().
//
// Note: System.TimeSpan needs to interop with the WinRT structure
// type Windows::Foundation:TimeSpan. These types are currently binary-compatible in
// memory so no custom marshalling is required. If at any point the implementation
// details of this type should change, or new fields added, we need to remember to add
// an appropriate custom ILMarshaler to keep WInRT interop scenarios enabled.
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public struct TimeSpan
{
    public enum long TicksPerMillisecond/*todo: implement initializer*/ = long();
    private enum double MillisecondsPerTick/*todo: implement initializer*/ = double();
    public enum long TicksPerSecond/*todo: implement initializer*/ = long();
    private enum double SecondsPerTick/*todo: implement initializer*/ = double();
    public enum long TicksPerMinute/*todo: implement initializer*/ = long();
    private enum double MinutesPerTick/*todo: implement initializer*/ = double();
    public enum long TicksPerHour/*todo: implement initializer*/ = long();
    private enum double HoursPerTick/*todo: implement initializer*/ = double();
    public enum long TicksPerDay/*todo: implement initializer*/ = long();
    private enum double DaysPerTick/*todo: implement initializer*/ = double();
    private enum int MillisPerSecond/*todo: implement initializer*/ = int();
    private enum int MillisPerMinute/*todo: implement initializer*/ = int();
    private enum int MillisPerHour/*todo: implement initializer*/ = int();
    private enum int MillisPerDay/*todo: implement initializer*/ = int();
    package(mscorlib) enum long MaxSeconds/*todo: implement initializer*/ = long();
    package(mscorlib) enum long MinSeconds/*todo: implement initializer*/ = long();
    package(mscorlib) enum long MaxMilliSeconds/*todo: implement initializer*/ = long();
    package(mscorlib) enum long MinMilliSeconds/*todo: implement initializer*/ = long();
    package(mscorlib) enum long TicksPerTenthSecond/*todo: implement initializer*/ = long();
    public static immutable TimeSpan Zero/*todo: implement initializer*/ = TimeSpan();
    public static immutable TimeSpan MaxValue/*todo: implement initializer*/ = TimeSpan();
    public static immutable TimeSpan MinValue/*todo: implement initializer*/ = TimeSpan();
    package(mscorlib) long _ticks;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Ticks'
    //TODO: generate property 'Days'
    //TODO: generate property 'Hours'
    //TODO: generate property 'Milliseconds'
    //TODO: generate property 'Minutes'
    //TODO: generate property 'Seconds'
    //TODO: generate property 'TotalDays'
    //TODO: generate property 'TotalHours'
    //TODO: generate property 'TotalMilliseconds'
    //TODO: generate property 'TotalMinutes'
    //TODO: generate property 'TotalSeconds'
    //TODO: generate method Add
    //TODO: generate method Compare
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method FromDays
    //TODO: generate method Duration
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method FromHours
    //TODO: generate method Interval
    //TODO: generate method FromMilliseconds
    //TODO: generate method FromMinutes
    //TODO: generate method Negate
    //TODO: generate method FromSeconds
    //TODO: generate method Subtract
    //TODO: generate method FromTicks
    //TODO: generate method TimeToTicks
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method ParseExact
    //TODO: generate method ParseExact
    //TODO: generate method ParseExact
    //TODO: generate method ParseExact
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method TryParseExact
    //TODO: generate method TryParseExact
    //TODO: generate method TryParseExact
    //TODO: generate method TryParseExact
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method GetLegacyFormatMode
    private static /*todo: volatile*/ bool _legacyConfigChecked;
    private static /*todo: volatile*/ bool _legacyMode;
    //TODO: generate property 'LegacyMode'
}
public class __Boxed__TimeSpan : __DotNet__Object, IComparable, IComparable1!(TimeSpan), IEquatable1!(TimeSpan), IFormattable
{
    TimeSpan value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\TimeZone.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
// #if FEATURE_CORECLR
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "System.TimeZone has been deprecated.  Please investigate the use of System.TimeZoneInfo instead."*/)
public abstract class TimeZone : __DotNet__Object
{
    private static /*todo: volatile*/ TimeZone currentTimeZone/*todo: implement initializer*/ = null;
    private static __DotNet__Object s_InternalSyncObject;
    //TODO: generate property 'InternalSyncObject'
    //TODO: generate constructor
    //TODO: generate property 'CurrentTimeZone'
    //TODO: generate method ResetTimeZone
    //TODO: generate property 'StandardName'
    //TODO: generate property 'DaylightName'
    //TODO: generate method GetUtcOffset
    //TODO: generate method ToUniversalTime
    //TODO: generate method ToLocalTime
    //TODO: generate method GetDaylightChanges
    //TODO: generate method IsDaylightSavingTime
    //TODO: generate method IsDaylightSavingTime
    //TODO: generate method CalculateUtcOffset
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\TimeZoneInfo.cs'
//
//
// DateTime uses TimeZoneInfo under the hood for IsDaylightSavingTime, IsAmbiguousTime, and GetUtcOffset.
// These TimeZoneInfo APIs can throw ArgumentException when an Invalid-Time is passed in.  To avoid this
// unwanted behavior in DateTime public APIs, DateTime internally passes the
// TimeZoneInfoOptions.NoThrowOnInvalidTime flag to internal TimeZoneInfo APIs.
//
// In the future we can consider exposing similar options on the public TimeZoneInfo APIs if there is enough
// demand for this alternate behavior.
//
@__DotNet__Attribute!(FlagsAttribute.stringof)
package(mscorlib) enum TimeZoneInfoOptions
{
    None = 1,
    NoThrowOnInvalidTime = 2,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
public final class TimeZoneInfo : __DotNet__Object, IEquatable1!(TimeZoneInfo), ISerializable, IDeserializationCallback
{
    private String m_id;
    private String m_displayName;
    private String m_standardDisplayName;
    private String m_daylightDisplayName;
    private TimeSpan m_baseUtcOffset;
    private bool m_supportsDaylightSavingTime;
    private AdjustmentRule[] m_adjustmentRules;
    private enum TimeZoneInfoResult
    {
        Success = 0,
        TimeZoneNotFoundException = 1,
        InvalidTimeZoneException = 2,
        SecurityException = 3,
    }
    private enum String c_timeZonesRegistryHive/*todo: implement initializer*/ = null;
    private enum String c_timeZonesRegistryHivePermissionList/*todo: implement initializer*/ = null;
    private enum String c_displayValue/*todo: implement initializer*/ = null;
    private enum String c_daylightValue/*todo: implement initializer*/ = null;
    private enum String c_standardValue/*todo: implement initializer*/ = null;
    private enum String c_muiDisplayValue/*todo: implement initializer*/ = null;
    private enum String c_muiDaylightValue/*todo: implement initializer*/ = null;
    private enum String c_muiStandardValue/*todo: implement initializer*/ = null;
    private enum String c_timeZoneInfoValue/*todo: implement initializer*/ = null;
    private enum String c_firstEntryValue/*todo: implement initializer*/ = null;
    private enum String c_lastEntryValue/*todo: implement initializer*/ = null;
    private enum String c_utcId/*todo: implement initializer*/ = null;
    private enum String c_localId/*todo: implement initializer*/ = null;
    private enum int c_maxKeyLength/*todo: implement initializer*/ = int();
    private enum int c_regByteLength/*todo: implement initializer*/ = int();
    private enum long c_ticksPerMillisecond/*todo: implement initializer*/ = long();
    private enum long c_ticksPerSecond/*todo: implement initializer*/ = long();
    private enum long c_ticksPerMinute/*todo: implement initializer*/ = long();
    private enum long c_ticksPerHour/*todo: implement initializer*/ = long();
    private enum long c_ticksPerDay/*todo: implement initializer*/ = long();
    private enum long c_ticksPerDayRange/*todo: implement initializer*/ = long();
    private static class CachedData : __DotNet__Object
    {
        private /*todo: volatile*/ TimeZoneInfo m_localTimeZone;
        private /*todo: volatile*/ TimeZoneInfo m_utcTimeZone;
        //TODO: generate method CreateLocal
        //TODO: generate property 'Local'
        //TODO: generate method CreateUtc
        //TODO: generate property 'Utc'
        //TODO: generate method GetCorrespondingKind
        public Dictionary2!(String,TimeZoneInfo) m_systemTimeZones;
        public ReadOnlyCollection1!(TimeZoneInfo) m_readOnlySystemTimeZones;
        public bool m_allSystemTimeZonesRead;
        //TODO: generate method GetCurrentOneYearLocal
        private /*todo: volatile*/ OffsetAndRule m_oneYearLocalFromUtc;
        //TODO: generate method GetOneYearLocalFromUtc
    }
    private static CachedData s_cachedData/*todo: implement initializer*/ = null;
    private static class OffsetAndRule : __DotNet__Object
    {
        public int year;
        public TimeSpan offset;
        public AdjustmentRule rule;
        //TODO: generate constructor
    }
    private static DateTime s_maxDateOnly/*todo: implement initializer*/ = DateTime();
    private static DateTime s_minDateOnly/*todo: implement initializer*/ = DateTime();
    //TODO: generate property 'Id'
    //TODO: generate property 'DisplayName'
    //TODO: generate property 'StandardName'
    //TODO: generate property 'DaylightName'
    //TODO: generate property 'BaseUtcOffset'
    //TODO: generate property 'SupportsDaylightSavingTime'
    //TODO: generate method GetAdjustmentRules
    //TODO: generate method GetAmbiguousTimeOffsets
    //TODO: generate method GetAmbiguousTimeOffsets
    //TODO: generate method GetAdjustmentRuleForAmbiguousOffsets
    //TODO: generate method GetPreviousAdjustmentRule
    //TODO: generate method GetUtcOffset
    //TODO: generate method GetUtcOffset
    //TODO: generate method GetLocalUtcOffset
    //TODO: generate method GetUtcOffset
    //TODO: generate method GetUtcOffset
    //TODO: generate method IsAmbiguousTime
    //TODO: generate method IsAmbiguousTime
    //TODO: generate method IsAmbiguousTime
    //TODO: generate method IsDaylightSavingTime
    //TODO: generate method IsDaylightSavingTime
    //TODO: generate method IsDaylightSavingTime
    //TODO: generate method IsDaylightSavingTime
    //TODO: generate method IsInvalidTime
    //TODO: generate method ClearCachedData
    //TODO: generate method ConvertTimeBySystemTimeZoneId
    //TODO: generate method ConvertTimeBySystemTimeZoneId
    //TODO: generate method ConvertTimeBySystemTimeZoneId
    //TODO: generate method ConvertTime
    //TODO: generate method ConvertTime
    //TODO: generate method ConvertTime
    //TODO: generate method ConvertTime
    //TODO: generate method ConvertTime
    //TODO: generate method ConvertTimeFromUtc
    //TODO: generate method ConvertTimeToUtc
    //TODO: generate method ConvertTimeToUtc
    //TODO: generate method ConvertTimeToUtc
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method FromSerializedString
    //TODO: generate method GetHashCode
    //TODO: generate method GetSystemTimeZones
    //TODO: generate method PopulateAllSystemTimeZones
    //TODO: generate method HasSameRules
    //TODO: generate property 'Local'
    //TODO: generate method ToSerializedString
    //TODO: generate method ToString
    //TODO: generate property 'Utc'
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CreateCustomTimeZone
    //TODO: generate method CreateCustomTimeZone
    //TODO: generate method CreateCustomTimeZone
    //TODO: generate method OnDeserialization
    //TODO: generate method GetObjectData
    //TODO: generate constructor
    //TODO: generate method GetAdjustmentRuleForTime
    //TODO: generate method IsAdjustmentRuleValid
    //TODO: generate method ConvertToUtc
    //TODO: generate method ConvertFromUtc
    //TODO: generate method ConvertToFromUtc
    //TODO: generate method CheckDaylightSavingTimeNotSupported
    //TODO: generate method ConvertUtcToTimeZone
    //TODO: generate method CreateAdjustmentRuleFromTimeZoneInformation
    //TODO: generate method FindIdFromTimeZoneInformation
    //TODO: generate method GetDaylightTime
    //TODO: generate method GetIsDaylightSavings
    //TODO: generate method GetDaylightSavingsStartOffsetFromUtc
    //TODO: generate method GetDaylightSavingsEndOffsetFromUtc
    //TODO: generate method GetIsDaylightSavingsFromUtc
    //TODO: generate method CheckIsDst
    //TODO: generate method GetIsAmbiguousTime
    //TODO: generate method GetIsInvalidTime
    //TODO: generate method GetLocalTimeZone
    //TODO: generate method GetLocalTimeZoneFromWin32Data
    //TODO: generate method FindSystemTimeZoneById
    //TODO: generate method IsValidSystemTimeZoneId
    //TODO: generate method GetUtcOffset
    //TODO: generate method GetUtcOffsetFromUtc
    //TODO: generate method GetUtcOffsetFromUtc
    //TODO: generate method GetDateTimeNowUtcOffsetFromUtc
    //TODO: generate method GetUtcOffsetFromUtc
    //TODO: generate method TransitionTimeFromTimeZoneInformation
    //TODO: generate method TransitionTimeToDateTime
    //TODO: generate method TryCreateAdjustmentRules
    //TODO: generate method TryCompareStandardDate
    //TODO: generate method TryCompareTimeZoneInformationToRegistry
    //TODO: generate method TryGetLocalizedNameByMuiNativeResource
    //TODO: generate method TryGetLocalizedNameByNativeResource
    //TODO: generate method TryGetLocalizedNamesByRegistryKey
    //TODO: generate method TryGetTimeZoneByRegistryKey
    //TODO: generate method TryGetTimeZone
    //TODO: generate method TryGetTimeZoneFromLocalMachine
    //TODO: generate method UtcOffsetOutOfRange
    //TODO: generate method ValidateTimeZoneInfo
    // ============================================================
    // **
    // ** Class: TimeZoneInfo.AdjustmentRule
    // **
    // **
    // ** Purpose: 
    // ** This class is used to represent a Dynamic TimeZone.  It
    // ** has methods for converting a DateTime to UTC from local time
    // ** and to local time from UTC and methods for getting the 
    // ** standard name and daylight name of the time zone.  
    // **
    // **
    // ============================================================
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    @__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
    public static final class AdjustmentRule : __DotNet__Object, IEquatable1!(AdjustmentRule), ISerializable, IDeserializationCallback
    {
        private DateTime m_dateStart;
        private DateTime m_dateEnd;
        private TimeSpan m_daylightDelta;
        private TransitionTime m_daylightTransitionStart;
        private TransitionTime m_daylightTransitionEnd;
        private TimeSpan m_baseUtcOffsetDelta;
        private bool m_noDaylightTransitions;
        //TODO: generate property 'DateStart'
        //TODO: generate property 'DateEnd'
        //TODO: generate property 'DaylightDelta'
        //TODO: generate property 'DaylightTransitionStart'
        //TODO: generate property 'DaylightTransitionEnd'
        //TODO: generate property 'BaseUtcOffsetDelta'
        //TODO: generate property 'NoDaylightTransitions'
        //TODO: generate property 'HasDaylightSaving'
        //TODO: generate method Equals
        //TODO: generate method GetHashCode
        //TODO: generate constructor
        //TODO: generate method CreateAdjustmentRule
        //TODO: generate method CreateAdjustmentRule
        //TODO: generate method CreateAdjustmentRule
        //TODO: generate method IsStartDateMarkerForBeginningOfYear
        //TODO: generate method IsEndDateMarkerForEndOfYear
        //TODO: generate method ValidateAdjustmentRule
        //TODO: generate method OnDeserialization
        //TODO: generate method GetObjectData
        //TODO: generate constructor
    }
    // ============================================================
    // **
    // ** Class: TimeZoneInfo.TransitionTime
    // **
    // **
    // ** Purpose: 
    // ** This class is used to represent a Dynamic TimeZone.  It
    // ** has methods for converting a DateTime to UTC from local time
    // ** and to local time from UTC and methods for getting the 
    // ** standard name and daylight name of the time zone.  
    // **
    // **
    // ============================================================
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    @__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
    public static struct TransitionTime
    {
        private DateTime m_timeOfDay;
        private ubyte m_month;
        private ubyte m_week;
        private ubyte m_day;
        private DayOfWeek m_dayOfWeek;
        private bool m_isFixedDateRule;
        //TODO: generate property 'TimeOfDay'
        //TODO: generate property 'Month'
        //TODO: generate property 'Week'
        //TODO: generate property 'Day'
        //TODO: generate property 'DayOfWeek'
        //TODO: generate property 'IsFixedDateRule'
        //TODO: generate method Equals
        //TODO: generate operator
        //TODO: generate operator
        //TODO: generate method Equals
        //TODO: generate method GetHashCode
        //TODO: generate method CreateFixedDateRule
        //TODO: generate method CreateFloatingDateRule
        //TODO: generate method CreateTransitionTime
        //TODO: generate method ValidateTransitionTime
        //TODO: generate method OnDeserialization
        //TODO: generate method GetObjectData
        //TODO: generate constructor
    }
    public static class __Boxed__TransitionTime : __DotNet__Object, IEquatable1!(TransitionTime), ISerializable, IDeserializationCallback
    {
        TransitionTime value;
        alias value this;
    }
    private static final class StringSerializer : __DotNet__Object
    {
        private enum State
        {
            Escaped = 0,
            NotEscaped = 1,
            StartOfToken = 2,
            EndOfLine = 3,
        }
        private String m_serializedText;
        private int m_currentTokenStartIndex;
        private State m_state;
        private enum int initialCapacityForString/*todo: implement initializer*/ = int();
        private enum wchar esc/*todo: implement initializer*/ = wchar();
        private enum wchar sep/*todo: implement initializer*/ = wchar();
        private enum wchar lhs/*todo: implement initializer*/ = wchar();
        private enum wchar rhs/*todo: implement initializer*/ = wchar();
        private enum String escString/*todo: implement initializer*/ = null;
        private enum String sepString/*todo: implement initializer*/ = null;
        private enum String lhsString/*todo: implement initializer*/ = null;
        private enum String rhsString/*todo: implement initializer*/ = null;
        private enum String escapedEsc/*todo: implement initializer*/ = null;
        private enum String escapedSep/*todo: implement initializer*/ = null;
        private enum String escapedLhs/*todo: implement initializer*/ = null;
        private enum String escapedRhs/*todo: implement initializer*/ = null;
        private enum String dateTimeFormat/*todo: implement initializer*/ = null;
        private enum String timeOfDayFormat/*todo: implement initializer*/ = null;
        //TODO: generate method GetSerializedString
        //TODO: generate method GetDeserializedTimeZoneInfo
        //TODO: generate constructor
        //TODO: generate method SerializeSubstitute
        //TODO: generate method SerializeTransitionTime
        //TODO: generate method VerifyIsEscapableCharacter
        //TODO: generate method SkipVersionNextDataFields
        //TODO: generate method GetNextStringValue
        //TODO: generate method GetNextDateTimeValue
        //TODO: generate method GetNextTimeSpanValue
        //TODO: generate method GetNextInt32Value
        //TODO: generate method GetNextAdjustmentRuleArrayValue
        //TODO: generate method GetNextAdjustmentRuleValue
        //TODO: generate method GetNextTransitionTimeValue
    }
    private static class TimeZoneInfoComparer : __DotNet__Object, IComparer1!(TimeZoneInfo)
    {
        //TODO: generate method Compare
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\TimeZoneNotFoundException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
// #if !FEATURE_CORECLR
// [TypeForwardedFrom("System.Core, Version=3.5.0.0, Culture=Neutral, PublicKeyToken=b77a5c561934e089")]
// #endif
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
public class TimeZoneNotFoundException : __DotNet__Exception
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Tuple.cs'
//
package(mscorlib) interface ITuple
{
    //TODO: generate method ToString
    //TODO: generate method GetHashCode
    //TODO: generate property 'Size'
}
public class Tuple : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method Create
    //TODO: generate method Create
    //TODO: generate method Create
    //TODO: generate method Create
    //TODO: generate method Create
    //TODO: generate method Create
    //TODO: generate method Create
    //TODO: generate method Create
    //TODO: generate method CombineHashCodes
    //TODO: generate method CombineHashCodes
    //TODO: generate method CombineHashCodes
    //TODO: generate method CombineHashCodes
    //TODO: generate method CombineHashCodes
    //TODO: generate method CombineHashCodes
    //TODO: generate method CombineHashCodes
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class Tuple1(T1) : __DotNet__Object, IStructuralEquatable, IStructuralComparable, IComparable, ITuple
{
    private immutable T1 m_Item1;
    //TODO: generate property 'Item1'
    //TODO: generate constructor
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate property 'Size'
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class Tuple2(T1,T2) : __DotNet__Object, IStructuralEquatable, IStructuralComparable, IComparable, ITuple
{
    private immutable T1 m_Item1;
    private immutable T2 m_Item2;
    //TODO: generate property 'Item1'
    //TODO: generate property 'Item2'
    //TODO: generate constructor
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate property 'Size'
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class Tuple3(T1,T2,T3) : __DotNet__Object, IStructuralEquatable, IStructuralComparable, IComparable, ITuple
{
    private immutable T1 m_Item1;
    private immutable T2 m_Item2;
    private immutable T3 m_Item3;
    //TODO: generate property 'Item1'
    //TODO: generate property 'Item2'
    //TODO: generate property 'Item3'
    //TODO: generate constructor
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate property 'Size'
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class Tuple4(T1,T2,T3,T4) : __DotNet__Object, IStructuralEquatable, IStructuralComparable, IComparable, ITuple
{
    private immutable T1 m_Item1;
    private immutable T2 m_Item2;
    private immutable T3 m_Item3;
    private immutable T4 m_Item4;
    //TODO: generate property 'Item1'
    //TODO: generate property 'Item2'
    //TODO: generate property 'Item3'
    //TODO: generate property 'Item4'
    //TODO: generate constructor
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate property 'Size'
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class Tuple5(T1,T2,T3,T4,T5) : __DotNet__Object, IStructuralEquatable, IStructuralComparable, IComparable, ITuple
{
    private immutable T1 m_Item1;
    private immutable T2 m_Item2;
    private immutable T3 m_Item3;
    private immutable T4 m_Item4;
    private immutable T5 m_Item5;
    //TODO: generate property 'Item1'
    //TODO: generate property 'Item2'
    //TODO: generate property 'Item3'
    //TODO: generate property 'Item4'
    //TODO: generate property 'Item5'
    //TODO: generate constructor
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate property 'Size'
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class Tuple6(T1,T2,T3,T4,T5,T6) : __DotNet__Object, IStructuralEquatable, IStructuralComparable, IComparable, ITuple
{
    private immutable T1 m_Item1;
    private immutable T2 m_Item2;
    private immutable T3 m_Item3;
    private immutable T4 m_Item4;
    private immutable T5 m_Item5;
    private immutable T6 m_Item6;
    //TODO: generate property 'Item1'
    //TODO: generate property 'Item2'
    //TODO: generate property 'Item3'
    //TODO: generate property 'Item4'
    //TODO: generate property 'Item5'
    //TODO: generate property 'Item6'
    //TODO: generate constructor
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate property 'Size'
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class Tuple7(T1,T2,T3,T4,T5,T6,T7) : __DotNet__Object, IStructuralEquatable, IStructuralComparable, IComparable, ITuple
{
    private immutable T1 m_Item1;
    private immutable T2 m_Item2;
    private immutable T3 m_Item3;
    private immutable T4 m_Item4;
    private immutable T5 m_Item5;
    private immutable T6 m_Item6;
    private immutable T7 m_Item7;
    //TODO: generate property 'Item1'
    //TODO: generate property 'Item2'
    //TODO: generate property 'Item3'
    //TODO: generate property 'Item4'
    //TODO: generate property 'Item5'
    //TODO: generate property 'Item6'
    //TODO: generate property 'Item7'
    //TODO: generate constructor
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate property 'Size'
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class Tuple8(T1,T2,T3,T4,T5,T6,T7,TRest) : __DotNet__Object, IStructuralEquatable, IStructuralComparable, IComparable, ITuple
{
    private immutable T1 m_Item1;
    private immutable T2 m_Item2;
    private immutable T3 m_Item3;
    private immutable T4 m_Item4;
    private immutable T5 m_Item5;
    private immutable T6 m_Item6;
    private immutable T7 m_Item7;
    private immutable TRest m_Rest;
    //TODO: generate property 'Item1'
    //TODO: generate property 'Item2'
    //TODO: generate property 'Item3'
    //TODO: generate property 'Item4'
    //TODO: generate property 'Item5'
    //TODO: generate property 'Item6'
    //TODO: generate property 'Item7'
    //TODO: generate property 'Rest'
    //TODO: generate constructor
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate property 'Size'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Type.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_Type)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class Type : MemberInfo, _Type, IReflect
{
    public static immutable MemberFilter FilterAttribute/*todo: implement initializer*/ = null;
    public static immutable MemberFilter FilterName/*todo: implement initializer*/ = null;
    public static immutable MemberFilter FilterNameIgnoreCase/*todo: implement initializer*/ = null;
    public static immutable __DotNet__Object Missing/*todo: implement initializer*/ = null;
    public static immutable wchar Delimiter/*todo: implement initializer*/ = wchar();
    public static immutable Type[] EmptyTypes/*todo: implement initializer*/ = null;
    private static Binder defaultBinder;
    //TODO: generate constructor
    //TODO: generate property 'MemberType'
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'DeclaringMethod'
    //TODO: generate property 'ReflectedType'
    //TODO: generate method GetType
    //TODO: generate method GetType
    //TODO: generate method GetType
    //TODO: generate method GetType
    //TODO: generate method GetType
    //TODO: generate method GetType
    //TODO: generate method ReflectionOnlyGetType
    //TODO: generate method MakePointerType
    //TODO: generate property 'StructLayoutAttribute'
    //TODO: generate method MakeByRefType
    //TODO: generate method MakeArrayType
    //TODO: generate method MakeArrayType
    //TODO: generate method GetTypeFromProgID
    //TODO: generate method GetTypeFromProgID
    //TODO: generate method GetTypeFromProgID
    //TODO: generate method GetTypeFromProgID
    //TODO: generate method GetTypeFromCLSID
    //TODO: generate method GetTypeFromCLSID
    //TODO: generate method GetTypeFromCLSID
    //TODO: generate method GetTypeFromCLSID
    //TODO: generate method GetTypeCode
    //TODO: generate method GetTypeCodeImpl
    //TODO: generate property 'GUID'
    //TODO: generate property 'DefaultBinder'
    //TODO: generate method CreateBinder
    //TODO: generate method InvokeMember
    //TODO: generate method InvokeMember
    //TODO: generate method InvokeMember
    //TODO: generate property 'Module'
    //TODO: generate property 'Assembly'
    //TODO: generate property 'TypeHandle'
    //TODO: generate method GetTypeHandleInternal
    //TODO: generate method GetTypeHandle
    //TODO: generate method GetTypeFromHandleUnsafe
    //TODO: generate method GetTypeFromHandle
    //TODO: generate property 'FullName'
    //TODO: generate property 'Namespace'
    //TODO: generate property 'AssemblyQualifiedName'
    //TODO: generate method GetArrayRank
    //TODO: generate property 'BaseType'
    //TODO: generate method GetConstructor
    //TODO: generate method GetConstructor
    //TODO: generate method GetConstructor
    //TODO: generate method GetConstructorImpl
    //TODO: generate method GetConstructors
    //TODO: generate method GetConstructors
    //TODO: generate property 'TypeInitializer'
    //TODO: generate method GetMethod
    //TODO: generate method GetMethod
    //TODO: generate method GetMethod
    //TODO: generate method GetMethod
    //TODO: generate method GetMethod
    //TODO: generate method GetMethod
    //TODO: generate method GetMethodImpl
    //TODO: generate method GetMethods
    //TODO: generate method GetMethods
    //TODO: generate method GetField
    //TODO: generate method GetField
    //TODO: generate method GetFields
    //TODO: generate method GetFields
    //TODO: generate method GetInterface
    //TODO: generate method GetInterface
    //TODO: generate method GetInterfaces
    //TODO: generate method FindInterfaces
    //TODO: generate method GetEvent
    //TODO: generate method GetEvent
    //TODO: generate method GetEvents
    //TODO: generate method GetEvents
    //TODO: generate method GetProperty
    //TODO: generate method GetProperty
    //TODO: generate method GetProperty
    //TODO: generate method GetProperty
    //TODO: generate method GetProperty
    //TODO: generate method GetProperty
    //TODO: generate method GetProperty
    //TODO: generate method GetProperty
    //TODO: generate method GetPropertyImpl
    //TODO: generate method GetProperties
    //TODO: generate method GetProperties
    //TODO: generate method GetNestedTypes
    //TODO: generate method GetNestedTypes
    //TODO: generate method GetNestedType
    //TODO: generate method GetNestedType
    //TODO: generate method GetMember
    //TODO: generate method GetMember
    //TODO: generate method GetMember
    //TODO: generate method GetMembers
    //TODO: generate method GetMembers
    //TODO: generate method GetDefaultMembers
    //TODO: generate method FindMembers
    //TODO: generate property 'IsNested'
    //TODO: generate property 'Attributes'
    //TODO: generate property 'GenericParameterAttributes'
    //TODO: generate property 'IsVisible'
    //TODO: generate property 'IsNotPublic'
    //TODO: generate property 'IsPublic'
    //TODO: generate property 'IsNestedPublic'
    //TODO: generate property 'IsNestedPrivate'
    //TODO: generate property 'IsNestedFamily'
    //TODO: generate property 'IsNestedAssembly'
    //TODO: generate property 'IsNestedFamANDAssem'
    //TODO: generate property 'IsNestedFamORAssem'
    //TODO: generate property 'IsAutoLayout'
    //TODO: generate property 'IsLayoutSequential'
    //TODO: generate property 'IsExplicitLayout'
    //TODO: generate property 'IsClass'
    //TODO: generate property 'IsInterface'
    //TODO: generate property 'IsValueType'
    //TODO: generate property 'IsAbstract'
    //TODO: generate property 'IsSealed'
    //TODO: generate property 'IsEnum'
    //TODO: generate property 'IsSpecialName'
    //TODO: generate property 'IsImport'
    //TODO: generate property 'IsSerializable'
    //TODO: generate property 'IsAnsiClass'
    //TODO: generate property 'IsUnicodeClass'
    //TODO: generate property 'IsAutoClass'
    //TODO: generate property 'IsArray'
    //TODO: generate property 'IsSzArray'
    //TODO: generate property 'IsGenericType'
    //TODO: generate property 'IsGenericTypeDefinition'
    //TODO: generate property 'IsConstructedGenericType'
    //TODO: generate property 'IsGenericParameter'
    //TODO: generate property 'GenericParameterPosition'
    //TODO: generate property 'ContainsGenericParameters'
    //TODO: generate method GetGenericParameterConstraints
    //TODO: generate property 'IsByRef'
    //TODO: generate property 'IsPointer'
    //TODO: generate property 'IsPrimitive'
    //TODO: generate property 'IsCOMObject'
    //TODO: generate property 'IsWindowsRuntimeObject'
    //TODO: generate property 'IsExportedToWindowsRuntime'
    //TODO: generate property 'HasElementType'
    //TODO: generate property 'IsContextful'
    //TODO: generate property 'IsMarshalByRef'
    //TODO: generate property 'HasProxyAttribute'
    //TODO: generate method IsValueTypeImpl
    //TODO: generate method GetAttributeFlagsImpl
    //TODO: generate method IsArrayImpl
    //TODO: generate method IsByRefImpl
    //TODO: generate method IsPointerImpl
    //TODO: generate method IsPrimitiveImpl
    //TODO: generate method IsCOMObjectImpl
    //TODO: generate method IsWindowsRuntimeObjectImpl
    //TODO: generate method IsExportedToWindowsRuntimeImpl
    //TODO: generate method MakeGenericType
    //TODO: generate method IsContextfulImpl
    //TODO: generate method IsMarshalByRefImpl
    //TODO: generate method HasProxyAttributeImpl
    //TODO: generate method GetElementType
    //TODO: generate method GetGenericArguments
    //TODO: generate property 'GenericTypeArguments'
    //TODO: generate method GetGenericTypeDefinition
    //TODO: generate method HasElementTypeImpl
    //TODO: generate method GetRootElementType
    //TODO: generate method GetEnumNames
    //TODO: generate method GetEnumValues
    //TODO: generate method GetEnumRawConstantValues
    //TODO: generate method GetEnumData
    //TODO: generate method GetEnumUnderlyingType
    //TODO: generate method IsEnumDefined
    //TODO: generate method GetEnumName
    //TODO: generate method BinarySearch
    //TODO: generate method IsIntegerType
    //TODO: generate property 'IsSecurityCritical'
    //TODO: generate property 'IsSecuritySafeCritical'
    //TODO: generate property 'IsSecurityTransparent'
    //TODO: generate property 'NeedsReflectionSecurityCheck'
    //TODO: generate property 'UnderlyingSystemType'
    //TODO: generate method IsSubclassOf
    //TODO: generate method IsInstanceOfType
    //TODO: generate method IsAssignableFrom
    //TODO: generate method IsEquivalentTo
    //TODO: generate method ImplementInterface
    //TODO: generate method FormatTypeName
    //TODO: generate method FormatTypeName
    //TODO: generate method ToString
    //TODO: generate method GetTypeArray
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method GetHashCode
    //TODO: generate method GetInterfaceMap
    //TODO: generate method GetType
    private enum BindingFlags DefaultLookup/*todo: implement initializer*/ = (cast(BindingFlags)0);
    package(mscorlib) enum BindingFlags DeclaredOnlyLookup/*todo: implement initializer*/ = (cast(BindingFlags)0);
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\TypeAccessException.cs'
//
// TypeAccessException derives from TypeLoadException rather than MemberAccessException because in
// pre-v4 releases of the runtime TypeLoadException was used in lieu of a TypeAccessException.
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class TypeAccessException : TypeLoadException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\TypeCode.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum TypeCode
{
    Empty = 0,
    Object = 1,
    DBNull = 2,
    Boolean = 3,
    Char = 4,
    SByte = 5,
    Byte = 6,
    Int16 = 7,
    UInt16 = 8,
    Int32 = 9,
    UInt32 = 10,
    Int64 = 11,
    UInt64 = 12,
    Single = 13,
    Double = 14,
    Decimal = 15,
    DateTime = 16,
    String = 18,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\TypedReference.cs'
//
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(NonVersionableAttribute.stringof)
public struct TypedReference
{
    private IntPtr Value;
    private IntPtr Type;
    //TODO: generate method MakeTypedReference
    //TODO: generate method InternalMakeTypedReference
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method ToObject
    //TODO: generate method InternalToObject
    //TODO: generate property 'IsNull'
    //TODO: generate method GetTargetType
    //TODO: generate method TargetTypeToken
    //TODO: generate method SetTypedReference
    //TODO: generate method InternalSetTypedReference
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\TypeInitializationException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class TypeInitializationException : SystemException
{
    private String _typeName;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'TypeName'
    //TODO: generate method GetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\TypeLoadException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class TypeLoadException : SystemException, ISerializable
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Message'
    //TODO: generate method SetMessageField
    //TODO: generate property 'TypeName'
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetTypeLoadExceptionMessage
    //TODO: generate method GetObjectData
    private String ClassName;
    private String AssemblyName;
    private String MessageArg;
    package(mscorlib) int ResourceId;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\TypeNameParser.cs'
//
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
package(mscorlib) class SafeTypeNameParserHandle : SafeHandleZeroOrMinusOneIsInvalid
{
    //TODO: generate method _ReleaseTypeNameParser
    //TODO: generate constructor
    //TODO: generate method ReleaseHandle
}
package(mscorlib) final class TypeNameParser : __DotNet__Object, IDisposable
{
    //TODO: generate method _CreateTypeNameParser
    //TODO: generate method _GetNames
    //TODO: generate method _GetTypeArguments
    //TODO: generate method _GetModifiers
    //TODO: generate method _GetAssemblyName
    //TODO: generate method GetType
    // #endregion
    // #region Private Data Members
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private SafeTypeNameParserHandle m_NativeParser;
    private static immutable wchar[] SPECIAL_CHARS/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method Dispose
    //TODO: generate method ConstructType
    //TODO: generate method ResolveAssembly
    //TODO: generate method ResolveType
    //TODO: generate method EscapeTypeName
    //TODO: generate method CreateTypeNameParser
    //TODO: generate method GetNames
    //TODO: generate method GetTypeArguments
    //TODO: generate method GetModifiers
    //TODO: generate method GetAssemblyName
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\TypeUnloadedException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class TypeUnloadedException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\UInt16.cs'
//
// Wrapper for unsigned 16 bit integers.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct UInt16
{
    private ushort m_value;
    public enum ushort MaxValue/*todo: implement initializer*/ = ushort();
    public enum ushort MinValue/*todo: implement initializer*/ = ushort();
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method GetTypeCode
    //TODO: generate method ToBoolean
    //TODO: generate method ToChar
    //TODO: generate method ToSByte
    //TODO: generate method ToByte
    //TODO: generate method ToInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method ToDouble
    //TODO: generate method ToDecimal
    //TODO: generate method ToDateTime
    //TODO: generate method ToType
}
public class __Boxed__UInt16 : __DotNet__Object, IComparable, IFormattable, IConvertible, IComparable1!(ushort), IEquatable1!(ushort)
{
    ushort value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\UInt32.cs'
//
// * Wrapper for unsigned 32 bit integers.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct UInt32
{
    private uint m_value;
    public enum uint MaxValue/*todo: implement initializer*/ = uint();
    public enum uint MinValue/*todo: implement initializer*/ = uint();
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method GetTypeCode
    //TODO: generate method ToBoolean
    //TODO: generate method ToChar
    //TODO: generate method ToSByte
    //TODO: generate method ToByte
    //TODO: generate method ToInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method ToDouble
    //TODO: generate method ToDecimal
    //TODO: generate method ToDateTime
    //TODO: generate method ToType
}
public class __Boxed__UInt32 : __DotNet__Object, IComparable, IFormattable, IConvertible, IComparable1!(uint), IEquatable1!(uint)
{
    uint value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\UInt64.cs'
//
// Wrapper for unsigned 64 bit integers.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct UInt64
{
    private ulong m_value;
    public enum ulong MaxValue/*todo: implement initializer*/ = ulong();
    public enum ulong MinValue/*todo: implement initializer*/ = ulong();
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method Parse
    //TODO: generate method TryParse
    //TODO: generate method TryParse
    //TODO: generate method GetTypeCode
    //TODO: generate method ToBoolean
    //TODO: generate method ToChar
    //TODO: generate method ToSByte
    //TODO: generate method ToByte
    //TODO: generate method ToInt16
    //TODO: generate method ToUInt16
    //TODO: generate method ToInt32
    //TODO: generate method ToUInt32
    //TODO: generate method ToInt64
    //TODO: generate method ToUInt64
    //TODO: generate method ToSingle
    //TODO: generate method ToDouble
    //TODO: generate method ToDecimal
    //TODO: generate method ToDateTime
    //TODO: generate method ToType
}
public class __Boxed__UInt64 : __DotNet__Object, IComparable, IFormattable, IConvertible, IComparable1!(ulong), IEquatable1!(ulong)
{
    ulong value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\UIntPtr.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct UIntPtr
{
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private Void* m_value;
    public static immutable UIntPtr Zero;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetObjectData
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToUInt32
    //TODO: generate method ToUInt64
    //TODO: generate method ToString
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method Add
    //TODO: generate operator
    //TODO: generate method Subtract
    //TODO: generate operator
    //TODO: generate property 'Size'
    //TODO: generate method ToPointer
}
public class __Boxed__UIntPtr : __DotNet__Object, IEquatable1!(UIntPtr), ISerializable
{
    UIntPtr value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\UnauthorizedAccessException.cs'
//
// The UnauthorizedAccessException is thrown when access errors 
// occur from IO or other OS methods.  
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class UnauthorizedAccessException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\UnhandledExceptionEventArgs.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class UnhandledExceptionEventArgs : EventArgs
{
    private __DotNet__Object _Exception;
    private bool _IsTerminating;
    //TODO: generate constructor
    //TODO: generate property 'ExceptionObject'
    //TODO: generate property 'IsTerminating'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\UnhandledExceptionEventHandler.cs'
//
// #if FEATURE_CORECLR
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
// #endif
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public alias UnhandledExceptionEventHandler = void delegate(__DotNet__Object sender, UnhandledExceptionEventArgs e);

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\UnitySerializationHolder.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class UnitySerializationHolder : __DotNet__Object, ISerializable, IObjectReference
{
    package(mscorlib) enum int EmptyUnity/*todo: implement initializer*/ = int();
    package(mscorlib) enum int NullUnity/*todo: implement initializer*/ = int();
    package(mscorlib) enum int MissingUnity/*todo: implement initializer*/ = int();
    package(mscorlib) enum int RuntimeTypeUnity/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ModuleUnity/*todo: implement initializer*/ = int();
    package(mscorlib) enum int AssemblyUnity/*todo: implement initializer*/ = int();
    package(mscorlib) enum int GenericParameterTypeUnity/*todo: implement initializer*/ = int();
    package(mscorlib) enum int PartialInstantiationTypeUnity/*todo: implement initializer*/ = int();
    package(mscorlib) enum int Pointer/*todo: implement initializer*/ = int();
    package(mscorlib) enum int Array/*todo: implement initializer*/ = int();
    package(mscorlib) enum int SzArray/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ByRef/*todo: implement initializer*/ = int();
    //TODO: generate method GetUnitySerializationInfo
    //TODO: generate method AddElementTypes
    //TODO: generate method MakeElementTypes
    //TODO: generate method GetUnitySerializationInfo
    //TODO: generate method GetUnitySerializationInfo
    private Type[] m_instantiation;
    private int[] m_elementTypes;
    private int m_genericParameterPosition;
    private Type m_declaringType;
    private MethodBase m_declaringMethod;
    private String m_data;
    private String m_assemblyName;
    private int m_unityType;
    //TODO: generate constructor
    //TODO: generate method ThrowInsufficientInformation
    //TODO: generate method GetObjectData
    //TODO: generate method GetRealObject
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\UnSafeCharBuffer.cs'
//
package(mscorlib) struct UnSafeCharBuffer
{
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private wchar* m_buffer;
    private int m_totalSize;
    private int m_length;
    //TODO: generate constructor
    //TODO: generate method AppendString
    //TODO: generate property 'Length'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\ValueType.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class ValueType : __DotNet__Object
{
    //TODO: generate method Equals
    //TODO: generate method CanCompareBits
    //TODO: generate method FastEqualsCheck
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCodeOfPtr
    //TODO: generate method ToString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Variant.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
package(mscorlib) struct Variant
{
    private __DotNet__Object m_objref;
    private int m_data1;
    private int m_data2;
    private int m_flags;
    package(mscorlib) enum int CV_EMPTY/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_VOID/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_BOOLEAN/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_CHAR/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_I1/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_U1/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_I2/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_U2/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_I4/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_U4/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_I8/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_U8/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_R4/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_R8/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_STRING/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_PTR/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_DATETIME/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_TIMESPAN/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_OBJECT/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_DECIMAL/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_ENUM/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_MISSING/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_NULL/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CV_LAST/*todo: implement initializer*/ = int();
    package(mscorlib) enum int TypeCodeBitMask/*todo: implement initializer*/ = int();
    package(mscorlib) enum int VTBitMask/*todo: implement initializer*/ = int();
    package(mscorlib) enum int VTBitShift/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ArrayBitMask/*todo: implement initializer*/ = int();
    package(mscorlib) enum int EnumI1/*todo: implement initializer*/ = int();
    package(mscorlib) enum int EnumU1/*todo: implement initializer*/ = int();
    package(mscorlib) enum int EnumI2/*todo: implement initializer*/ = int();
    package(mscorlib) enum int EnumU2/*todo: implement initializer*/ = int();
    package(mscorlib) enum int EnumI4/*todo: implement initializer*/ = int();
    package(mscorlib) enum int EnumU4/*todo: implement initializer*/ = int();
    package(mscorlib) enum int EnumI8/*todo: implement initializer*/ = int();
    package(mscorlib) enum int EnumU8/*todo: implement initializer*/ = int();
    package(mscorlib) enum int EnumMask/*todo: implement initializer*/ = int();
    package(mscorlib) static immutable Type[] ClassTypes/*todo: implement initializer*/ = null;
    package(mscorlib) static immutable Variant Empty/*todo: implement initializer*/ = Variant();
    package(mscorlib) static immutable Variant Missing/*todo: implement initializer*/ = Variant();
    package(mscorlib) static immutable Variant DBNull/*todo: implement initializer*/ = Variant();
    //TODO: generate method GetR8FromVar
    //TODO: generate method GetR4FromVar
    //TODO: generate method SetFieldsR4
    //TODO: generate method SetFieldsR8
    //TODO: generate method SetFieldsObject
    //TODO: generate method GetI8FromVar
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'CVType'
    //TODO: generate method ToObject
    //TODO: generate method BoxEnum
    //TODO: generate method MarshalHelperConvertObjectToVariant
    //TODO: generate method MarshalHelperConvertVariantToObject
    //TODO: generate method MarshalHelperCastVariant
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Version.cs'
//
// A Version object contains four hierarchical numeric components: major, minor,
// build and revision.  Build and revision may be unspecified, which is represented 
// internally as a -1.  By definition, an unspecified component matches anything 
// (both unspecified and specified), and an unspecified component is "less than" any
// specified component.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class Version : __DotNet__Object, ICloneable, IComparable, IComparable1!(Version), IEquatable1!(Version)
{
    private immutable int _Major;
    private immutable int _Minor;
    private immutable int _Build/*todo: implement initializer*/ = int();
    private immutable int _Revision/*todo: implement initializer*/ = int();
    private static immutable wchar[] SeparatorsArray/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Major'
    //TODO: generate property 'Minor'
    //TODO: generate property 'Build'
    //TODO: generate property 'Revision'
    //TODO: generate property 'MajorRevision'
    //TODO: generate property 'MinorRevision'
    //TODO: generate method Clone
    //TODO: generate method CompareTo
    //TODO: generate method CompareTo
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate method ToString
    private enum int ZERO_CHAR_VALUE/*todo: implement initializer*/ = int();
    //TODO: generate method AppendPositiveNumber
    //TODO: generate method Parse
    //TODO: generate method TryParse
    //TODO: generate method TryParseVersion
    //TODO: generate method TryParseComponent
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate operator
    package(mscorlib) enum ParseFailureKind
    {
        ArgumentNullException,
        ArgumentException,
        ArgumentOutOfRangeException,
        FormatException,
    }
    package(mscorlib) static struct VersionResult
    {
        package(mscorlib) Version m_parsedVersion;
        package(mscorlib) ParseFailureKind m_failure;
        package(mscorlib) String m_exceptionArgument;
        package(mscorlib) String m_argumentName;
        package(mscorlib) bool m_canThrow;
        //TODO: generate method Init
        //TODO: generate method SetFailure
        //TODO: generate method SetFailure
        //TODO: generate method GetVersionParseException
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Void.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct Void
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\WeakReference.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
// #if !FEATURE_CORECLR
// [SecurityPermissionAttribute(SecurityAction.InheritanceDemand, Flags=SecurityPermissionFlag.UnmanagedCode)] // Don't call Object::MemberwiseClone.
// #endif
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class WeakReference : __DotNet__Object, ISerializable
{
    package(mscorlib) IntPtr m_handle;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'IsAlive'
    //TODO: generate property 'TrackResurrection'
    //TODO: generate property 'Target'
    //TODO: generate destructor
    //TODO: generate method GetObjectData
    //TODO: generate method Create
    //TODO: generate method IsTrackResurrection
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\WeakReferenceOfT.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class WeakReference1(T) : __DotNet__Object, ISerializable/*where T : class*/
{
    package(mscorlib) IntPtr m_handle;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method TryGetTarget
    //TODO: generate method SetTarget
    //TODO: generate property 'Target'
    //TODO: generate destructor
    //TODO: generate method GetObjectData
    //TODO: generate method Create
    //TODO: generate method IsTrackResurrection
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\XmlIgnoreMemberAttribute.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Property|AttributeTargets.Field*/)
package(mscorlib) final class XmlIgnoreMemberAttribute : Attribute
{
}
