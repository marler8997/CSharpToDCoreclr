module mscorlib.System.Runtime.InteropServices.WindowsRuntime;

import mscorlib.System :
    Attribute,
    Type,
    String,
    DotNetObject,
    Tuple2,
    __ComObject,
    Void,
    ApplicationException,
    Guid,
    EventArgs;
import mscorlib.System.Collections.Generic :
    KeyValuePair2,
    IComparer1,
    IEnumerator1,
    ICollection1,
    IDictionary2,
    Dictionary2,
    IEnumerable1,
    IReadOnlyDictionary2,
    List1,
    IEqualityComparer1;
import mscorlib.System.Collections :
    IList,
    IEnumerator,
    IEnumerable;
import mscorlib.System.Reflection :
    PropertyInfo,
    MethodInfo;
import mscorlib.System.Runtime.InteropServices :
    ICustomQueryInterface;
import mscorlib.System.Runtime.CompilerServices :
    ConditionalWeakTable2;
import mscorlib.System.Threading :
    EventWaitHandle;
import mscorlib.System.Collections.ObjectModel :
    Collection1;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\Attributes.cs'
//
//// DefaultInterfaceAttribute marks a WinRT class (or interface group) that has its default interface specified.
//    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Interface, AllowMultiple = false, Inherited = false)]
public final class DefaultInterfaceAttribute : Attribute
{
    private Type m_defaultInterface;
    //TODO: generate constructor
    //TODO: generate property 'DefaultInterface'
}
//// WindowsRuntimeImport is a pseudo custom attribute which causes us to emit the tdWindowsRuntime bit
//    // onto types which are decorated with the attribute.  This is needed to mark Windows Runtime types
//    // which are redefined in mscorlib.dll and System.Runtime.WindowsRuntime.dll, as the C# compiler does
//    // not have a built in syntax to mark tdWindowsRuntime.   These two assemblies are special as they
//    // implement the CLR's support for WinRT, so this type is internal as marking tdWindowsRuntime should
//    // generally be done via winmdexp for user code.
//    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Interface | AttributeTargets.Enum | AttributeTargets.Struct | AttributeTargets.Delegate, Inherited = false)]
//[System.Runtime.CompilerServices.FriendAccessAllowed]
public final class WindowsRuntimeImportAttribute : Attribute
{
    //TODO: generate constructor
}
//// This attribute is applied to class interfaces in a generated projection assembly.  It is used by Visual Studio
//    // and other tools to find out what version of a component (eg. Windows) a WinRT class began to implement
//    // a particular interfaces.
//    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Interface, Inherited = false, AllowMultiple = true)]
public final class InterfaceImplementedInVersionAttribute : Attribute
{
    //TODO: generate constructor
    //TODO: generate property 'InterfaceType'
    //TODO: generate property 'MajorVersion'
    //TODO: generate property 'MinorVersion'
    //TODO: generate property 'BuildVersion'
    //TODO: generate property 'RevisionVersion'
    private Type m_interfaceType;
    private ubyte m_majorVersion;
    private ubyte m_minorVersion;
    private ubyte m_buildVersion;
    private ubyte m_revisionVersion;
}
//// Applies to read-only array parameters
//    [AttributeUsage(AttributeTargets.Parameter, Inherited = false, AllowMultiple = false)]
public final class ReadOnlyArrayAttribute : Attribute
{
    //TODO: generate constructor
}
//// Applies to write-only array parameters
//    [AttributeUsage(AttributeTargets.Parameter, Inherited = false, AllowMultiple = false)]
public final class WriteOnlyArrayAttribute : Attribute
{
    //TODO: generate constructor
}
//// This attribute is applied on the return value to specify the name of the return value. 
//    // In WindowsRuntime all parameters including return value need to have unique names.
//    // This is essential in JS as one of the ways to get at the results of a method in JavaScript is via a Dictionary object keyed by parameter name.
//    [AttributeUsage(AttributeTargets.ReturnValue | AttributeTargets.Delegate, AllowMultiple = false, Inherited = false)]
public final class ReturnValueNameAttribute : Attribute
{
    private String m_Name;
    //TODO: generate constructor
    //TODO: generate property 'Name'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\BindableVectorToCollectionAdapter.cs'
//
public final class BindableVectorToCollectionAdapter : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method Count
    //TODO: generate method IsSynchronized
    //TODO: generate method SyncRoot
    //TODO: generate method CopyTo
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\BindableVectorToListAdapter.cs'
//
public final class BindableVectorToListAdapter : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method Indexer_Get
    //TODO: generate method Indexer_Set
    //TODO: generate method Add
    //TODO: generate method Contains
    //TODO: generate method Clear
    //TODO: generate method IsFixedSize
    //TODO: generate method IsReadOnly
    //TODO: generate method IndexOf
    //TODO: generate method Insert
    //TODO: generate method Remove
    //TODO: generate method RemoveAt
    //TODO: generate method GetAt
    //TODO: generate method SetAt
    //TODO: generate method InsertAtHelper
    //TODO: generate method RemoveAtHelper
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\CLRIKeyValuePairImpl.cs'
//
public final class CLRIKeyValuePairImpl2(K,V) : DotNetObject, IKeyValuePair2!(K,V), IGetProxyTarget
{
    private immutable KeyValuePair2!(K,V) _pair;
    //TODO: generate constructor
    //TODO: generate property 'Key'
    //TODO: generate property 'Value'
    //TODO: generate method BoxHelper
    //TODO: generate method UnboxHelper
    //TODO: generate method ToString
    //TODO: generate method GetTarget
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\CLRIPropertyValueImpl.cs'
//
public class CLRIPropertyValueImpl : DotNetObject, IPropertyValue
{
    private PropertyType _type;
    private DotNetObject _data;
    private static /*todo: volatile*/Tuple2!(Type,PropertyType)[] s_numericScalarTypes;
    //TODO: generate constructor
    //TODO: generate property 'NumericScalarTypes'
    //TODO: generate property 'Type'
    //TODO: generate property 'IsNumericScalar'
    //TODO: generate method ToString
    //TODO: generate method GetUInt8
    //TODO: generate method GetInt16
    //TODO: generate method GetUInt16
    //TODO: generate method GetInt32
    //TODO: generate method GetUInt32
    //TODO: generate method GetInt64
    //TODO: generate method GetUInt64
    //TODO: generate method GetSingle
    //TODO: generate method GetDouble
    //TODO: generate method GetChar16
    //TODO: generate method GetBoolean
    //TODO: generate method GetString
    //TODO: generate method GetInspectable
    //TODO: generate method GetGuid
    //TODO: generate method GetDateTime
    //TODO: generate method GetTimeSpan
    //TODO: generate method GetPoint
    //TODO: generate method GetSize
    //TODO: generate method GetRect
    //TODO: generate method GetUInt8Array
    //TODO: generate method GetInt16Array
    //TODO: generate method GetUInt16Array
    //TODO: generate method GetInt32Array
    //TODO: generate method GetUInt32Array
    //TODO: generate method GetInt64Array
    //TODO: generate method GetUInt64Array
    //TODO: generate method GetSingleArray
    //TODO: generate method GetDoubleArray
    //TODO: generate method GetChar16Array
    //TODO: generate method GetBooleanArray
    //TODO: generate method GetStringArray
    //TODO: generate method GetInspectableArray
    //TODO: generate method GetGuidArray
    //TODO: generate method GetDateTimeArray
    //TODO: generate method GetTimeSpanArray
    //TODO: generate method GetPointArray
    //TODO: generate method GetSizeArray
    //TODO: generate method GetRectArray
    //TODO: generate method CoerceArrayValue
    //TODO: generate method CoerceScalarValue
    //TODO: generate method CoerceScalarValue
    //TODO: generate method IsCoercable
    //TODO: generate method IsNumericScalarImpl
    //TODO: generate method Unbox
    //TODO: generate method UnboxArray
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\CLRIReferenceImpl.cs'
//
public final class CLRIReferenceImpl1(T) : CLRIPropertyValueImpl, IReference1!(T), IGetProxyTarget
{
    private T _value;
    //TODO: generate constructor
    //TODO: generate property 'Value'
    //TODO: generate method ToString
    //TODO: generate method GetTarget
    //TODO: generate method UnboxHelper
}
public final class CLRIReferenceArrayImpl1(T) : CLRIPropertyValueImpl, IGetProxyTarget, IReferenceArray1!(T), IList
{
    private T[] _value;
    private IList _list;
    //TODO: generate constructor
    //TODO: generate property 'Value'
    //TODO: generate method ToString
    //TODO: generate method GetEnumerator
    //TODO: generate indexer
    //TODO: generate method Add
    //TODO: generate method Contains
    //TODO: generate method Clear
    //TODO: generate property 'IsReadOnly'
    //TODO: generate property 'IsFixedSize'
    //TODO: generate method IndexOf
    //TODO: generate method Insert
    //TODO: generate method Remove
    //TODO: generate method RemoveAt
    //TODO: generate method CopyTo
    //TODO: generate property 'Count'
    //TODO: generate property 'SyncRoot'
    //TODO: generate property 'IsSynchronized'
    //TODO: generate method GetTarget
    //TODO: generate method UnboxHelper
}
public class IReferenceFactory : DotNetObject
{
    private this() {} // prevent instantiation
    public static immutable Type s_pointType/*todo: implement initializer*/ = null;
    public static immutable Type s_rectType/*todo: implement initializer*/ = null;
    public static immutable Type s_sizeType/*todo: implement initializer*/ = null;
    //TODO: generate method CreateIReference
    //TODO: generate method CreateIReferenceArray
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\ConstantSplittableMap.cs'
//
///// <summary>
//    /// This is a constant map aimed to efficiently support a Split operation (map decomposition).
//    /// A Split operation returns two non-overlapping, non-empty views of the existing map (or both
//    /// values are set to NULL). The two views returned should contain roughly the same number of elements.
//    /// This map is backed by a sorted array. Thus, split operations are O(1) and enumerations are fast;
//    /// however, look-up in the map are O(log n).
//    /// </summary>
//    /// <typeparam name="TKey">Type of objects that act as keys.</typeparam>    
//    /// <typeparam name="TValue">Type of objects that act as entries / values.</typeparam>
//    [Serializable]
//[DebuggerDisplay("Count = {Count}")]
public final class ConstantSplittableMap2(TKey,TValue) : DotNetObject, IMapView2!(TKey,TValue)
{
    private static class KeyValuePairComparator : DotNetObject, IComparer1!(KeyValuePair2!(TKey,TValue))
    {
        private static immutable IComparer1!(TKey) keyComparator/*todo: implement initializer*/ = null;
        //TODO: generate method Compare
    }
    private static immutable KeyValuePairComparator keyValuePairComparator/*todo: implement initializer*/ = null;
    private immutable KeyValuePair2!(TKey,TValue)[] items;
    private immutable int firstItemIndex;
    private immutable int lastItemIndex;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CreateKeyValueArray
    //TODO: generate method CreateKeyValueArray
    //TODO: generate property 'Count'
    //TODO: generate property 'Size'
    //TODO: generate method Lookup
    //TODO: generate method HasKey
    //TODO: generate method GetEnumerator
    //TODO: generate method First
    //TODO: generate method GetEnumerator
    //TODO: generate method Split
    //TODO: generate method ContainsKey
    //TODO: generate method TryGetValue
    //TODO: generate indexer
    //TODO: generate property 'Keys'
    //TODO: generate property 'Values'
    //#endregion IReadOnlyDictionary members
//
//        #region IKeyValuePair Enumerator
//
//        [Serializable]
    public static struct IKeyValuePairEnumerator
    {
        private KeyValuePair2!(TKey,TValue)[] _array;
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
    public static class __Boxed__IKeyValuePairEnumerator : DotNetObject, IEnumerator1!(IKeyValuePair2!(TKey,TValue))
    {
        IKeyValuePairEnumerator value;
        alias value this;
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\CustomPropertyImpl.cs'
//
public final class CustomPropertyImpl : DotNetObject, ICustomProperty
{
    private PropertyInfo m_property;
    //TODO: generate constructor
    //TODO: generate property 'Name'
    //TODO: generate property 'CanRead'
    //TODO: generate property 'CanWrite'
    //TODO: generate method GetValue
    //TODO: generate method GetValue
    //TODO: generate method SetValue
    //TODO: generate method SetValue
    //TODO: generate method InvokeInternal
    //TODO: generate property 'Type'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\DictionaryKeyCollection.cs'
//
//[Serializable]
//[DebuggerDisplay("Count = {Count}")]
public final class DictionaryKeyCollection2(TKey,TValue) : DotNetObject, ICollection1!(TKey)
{
    private immutable IDictionary2!(TKey,TValue) dictionary;
    //TODO: generate constructor
    //TODO: generate method CopyTo
    //TODO: generate property 'Count'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate method Add
    //TODO: generate method Clear
    //TODO: generate method Contains
    //TODO: generate method Remove
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
}
//[Serializable]
public final class DictionaryKeyEnumerator2(TKey,TValue) : DotNetObject, IEnumerator1!(TKey)
{
    private immutable IDictionary2!(TKey,TValue) dictionary;
    private IEnumerator1!(KeyValuePair2!(TKey,TValue)) enumeration;
    //TODO: generate constructor
    //TODO: generate method Dispose
    //TODO: generate method MoveNext
    //TODO: generate property 'Current'
    //TODO: generate property 'Current'
    //TODO: generate method Reset
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\DictionaryToMapAdapter.cs'
//
public final class DictionaryToMapAdapter : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method Lookup
    //TODO: generate method Size
    //TODO: generate method HasKey
    //TODO: generate method GetView
    //TODO: generate method Insert
    //TODO: generate method Remove
    //TODO: generate method Clear
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\DictionaryValueCollection.cs'
//
//[Serializable]
//[DebuggerDisplay("Count = {Count}")]
public final class DictionaryValueCollection2(TKey,TValue) : DotNetObject, ICollection1!(TValue)
{
    private immutable IDictionary2!(TKey,TValue) dictionary;
    //TODO: generate constructor
    //TODO: generate method CopyTo
    //TODO: generate property 'Count'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate method Add
    //TODO: generate method Clear
    //TODO: generate method Contains
    //TODO: generate method Remove
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
}
//[Serializable]
public final class DictionaryValueEnumerator2(TKey,TValue) : DotNetObject, IEnumerator1!(TValue)
{
    private immutable IDictionary2!(TKey,TValue) dictionary;
    private IEnumerator1!(KeyValuePair2!(TKey,TValue)) enumeration;
    //TODO: generate constructor
    //TODO: generate method Dispose
    //TODO: generate method MoveNext
    //TODO: generate property 'Current'
    //TODO: generate property 'Current'
    //TODO: generate method Reset
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\EnumeratorToIteratorAdapter.cs'
//
public final class EnumerableToIterableAdapter : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method First_Stub
}
public final class EnumerableToBindableIterableAdapter : DotNetObject
{
    //TODO: generate constructor
    public static final class NonGenericToGenericEnumerator : DotNetObject, IEnumerator1!(DotNetObject)
    {
        private IEnumerator enumerator;
        //TODO: generate constructor
        //TODO: generate property 'Current'
        //TODO: generate method MoveNext
        //TODO: generate method Reset
        //TODO: generate method Dispose
    }
    //TODO: generate method First_Stub
}
public final class EnumeratorToIteratorAdapter1(T) : DotNetObject, IIterator1!(T), IBindableIterator
{
    private IEnumerator1!(T) m_enumerator;
    private bool m_firstItem/*todo: implement initializer*/ = bool();
    private bool m_hasCurrent;
    //TODO: generate constructor
    //TODO: generate property 'Current'
    //TODO: generate property 'Current'
    //TODO: generate property 'HasCurrent'
    //TODO: generate method MoveNext
    //TODO: generate method GetMany
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\EventRegistrationToken.cs'
//
public struct EventRegistrationToken
{
    public ulong m_value;
    //TODO: generate constructor
    //TODO: generate property 'Value'
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\EventRegistrationTokenTable.cs'
//
public final class EventRegistrationTokenTable1(T) : DotNetObject/*where T : class*/
{
    private Dictionary2!(EventRegistrationToken,T) m_tokens/*todo: implement initializer*/ = null;
    private /*todo: volatile*/T m_invokeList;
    //TODO: generate constructor
    //TODO: generate property 'InvocationList'
    //TODO: generate method AddEventHandler
    //TODO: generate method AddEventHandlerNoLock
    //TODO: generate method ExtractHandler
    //TODO: generate method GetPreferredToken
    //TODO: generate method RemoveEventHandler
    //TODO: generate method RemoveEventHandler
    //TODO: generate method RemoveEventHandlerNoLock
    //TODO: generate method GetOrCreateEventRegistrationTokenTable
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\IActivationFactory.cs'
//
//[ComImport]
//[Guid("00000035-0000-0000-C000-000000000046")]
//[WindowsRuntimeImport]
public interface IActivationFactory
{
    //TODO: generate method ActivateInstance
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\IClosable.cs'
//
//// Local definition of Windows.Foundation.IClosable
//    [ComImport]
//[Guid("30d5a829-7fa4-4026-83bb-d75bae4ea99e")]
//[WindowsRuntimeImport]
public interface IClosable
{
    //TODO: generate method Close
}
public final class IDisposableToIClosableAdapter : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method Close
}
//// Adapter class which converts IDisposable.Dispose calls into IClosable.Close
//    [SecurityCritical]
public final class IClosableToIDisposableAdapter : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method Dispose
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\ICustomProperty.cs'
//
//[ComImport]
//[Guid("30DA92C0-23E8-42A0-AE7C-734A0E5D2782")]
//[WindowsRuntimeImport]
public interface ICustomProperty
{
    //TODO: generate property 'Type'
    //TODO: generate property 'Name'
    //TODO: generate method GetValue
    //TODO: generate method SetValue
    //TODO: generate method GetValue
    //TODO: generate method SetValue
    //TODO: generate property 'CanWrite'
    //TODO: generate property 'CanRead'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\ICustomPropertyProvider.cs'
//
public class ICustomPropertyProviderImpl : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method CreateProperty
    //TODO: generate method CreateIndexedProperty
    //TODO: generate method CreateIndexedProperty
    //TODO: generate method GetType
}
// Ignored: [Flags]
private enum InterfaceForwardingSupport
{
    None = 0,
    IBindableVector = 0x1,
    IVector = 0x2,
    IBindableVectorView = 0x4,
    IVectorView = 0x8,
    IBindableIterableOrIIterable = 0x10,
}
public interface IGetProxyTarget
{
    //TODO: generate method GetTarget
}
public class ICustomPropertyProviderProxy2(T1,T2) : DotNetObject, IGetProxyTarget, ICustomQueryInterface, IEnumerable, IBindableVector, IBindableVectorView
{
    private DotNetObject _target;
    private InterfaceForwardingSupport _flags;
    //TODO: generate constructor
    //TODO: generate method CreateInstance
    //TODO: generate method ToString
    //TODO: generate method GetTarget
    //TODO: generate method GetInterface
    //TODO: generate method GetEnumerator
    //TODO: generate method GetAt
    //TODO: generate property 'Size'
    //TODO: generate method GetView
    private static final class IVectorViewToIBindableVectorViewAdapter1(T) : DotNetObject, IBindableVectorView
    {
        private IVectorView1!(T) _vectorView;
        //TODO: generate constructor
        //TODO: generate method GetAt
        //TODO: generate property 'Size'
        //TODO: generate method IndexOf
        //TODO: generate method First
    }
    //TODO: generate method IndexOf
    //TODO: generate method SetAt
    //TODO: generate method InsertAt
    //TODO: generate method RemoveAt
    //TODO: generate method Append
    //TODO: generate method RemoveAtEnd
    //TODO: generate method Clear
    //TODO: generate method GetIBindableVectorNoThrow
    //TODO: generate method GetVectorOfT
    //TODO: generate method GetAt
    //TODO: generate property 'Size'
    //TODO: generate method IndexOf
    //TODO: generate method First
    private static final class IteratorOfTToIteratorAdapter1(T) : DotNetObject, IBindableIterator
    {
        private IIterator1!(T) _iterator;
        //TODO: generate constructor
        //TODO: generate property 'HasCurrent'
        //TODO: generate property 'Current'
        //TODO: generate method MoveNext
    }
    //TODO: generate method GetIBindableVectorViewNoThrow
    //TODO: generate method GetVectorViewOfT
    //TODO: generate method ConvertTo
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\IIterable.cs'
//
//[ComImport]
//[Guid("faa585ea-6214-4217-afda-7f46de5869b3")]
//[WindowsRuntimeImport]
public interface IIterable1(T) : IEnumerable1!(T)
{
    //TODO: generate method First
}
//[ComImport]
//[Guid("036d2c08-df29-41af-8aa2-d774be62ba6f")]
//[WindowsRuntimeImport]
public interface IBindableIterable
{
    //TODO: generate method First
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\IIterator.cs'
//
//[ComImport]
//[WindowsRuntimeImport]
//[Guid("6a79e863-4300-459a-9966-cbb660963ee1")]
public interface IIterator1(T)
{
    //TODO: generate property 'Current'
    //TODO: generate property 'HasCurrent'
    //TODO: generate method MoveNext
    //TODO: generate method GetMany
}
//[ComImport]
//[WindowsRuntimeImport]
//[Guid("6a1d6c07-076d-49f2-8314-f52c9c9a8331")]
public interface IBindableIterator
{
    //TODO: generate property 'Current'
    //TODO: generate property 'HasCurrent'
    //TODO: generate method MoveNext
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\IMap.cs'
//
//[ComImport]
//[Guid("3c2925fe-8519-45c1-aa79-197b6718c1c1")]
//[WindowsRuntimeImport]
public interface IMap2(K,V) : IIterable1!(IKeyValuePair2!(K,V))
{
    //TODO: generate method Lookup
    //TODO: generate property 'Size'
    //TODO: generate method HasKey
    //TODO: generate method GetView
    //TODO: generate method Insert
    //TODO: generate method Remove
    //TODO: generate method Clear
}
//[ComImport]
//[Guid("e480ce40-a338-4ada-adcf-272272e48cb9")]
//[WindowsRuntimeImport]
public interface IMapView2(K,V) : IIterable1!(IKeyValuePair2!(K,V))
{
    //TODO: generate method Lookup
    //TODO: generate property 'Size'
    //TODO: generate method HasKey
    //TODO: generate method Split
}
//[ComImport]
//[Guid("02b51929-c1c4-4a7e-8940-0312b5c18500")]
//[WindowsRuntimeImport]
public interface IKeyValuePair2(K,V)
{
    //TODO: generate property 'Key'
    //TODO: generate property 'Value'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\IMapViewToIReadOnlyDictionaryAdapter.cs'
//
//// This is a set of stub methods implementing the support for the IReadOnlyDictionary`2 interface on WinRT
//    // objects that support IMapView`2. Used by the interop mashaling infrastructure.
//    //
//    // The methods on this class must be written VERY carefully to avoid introducing security holes.
//    // That's because they are invoked with special "this"! The "this" object
//    // for all of these methods are not IMapViewToIReadOnlyDictionaryAdapter objects. Rather, they are of type
//    // IMapView<K, V>. No actual IMapViewToIReadOnlyDictionaryAdapter object is ever instantiated. Thus, you will see
//    // a lot of expressions that cast "this" to "IMapView<K, V>".
//    [DebuggerDisplay("Count = {Count}")]
public final class IMapViewToIReadOnlyDictionaryAdapter : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method Indexer_Get
    //TODO: generate method Keys
    //TODO: generate method Values
    //TODO: generate method ContainsKey
    //TODO: generate method TryGetValue
    //TODO: generate method Lookup
}
//// Note: One day we may make these return IReadOnlyCollection<T>
//    [Serializable]
//[DebuggerDisplay("Count = {Count}")]
public final class ReadOnlyDictionaryKeyCollection2(TKey,TValue) : DotNetObject, IEnumerable1!(TKey)
{
    private immutable IReadOnlyDictionary2!(TKey,TValue) dictionary;
    //TODO: generate constructor
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
}
//[Serializable]
public final class ReadOnlyDictionaryKeyEnumerator2(TKey,TValue) : DotNetObject, IEnumerator1!(TKey)
{
    private immutable IReadOnlyDictionary2!(TKey,TValue) dictionary;
    private IEnumerator1!(KeyValuePair2!(TKey,TValue)) enumeration;
    //TODO: generate constructor
    //TODO: generate method Dispose
    //TODO: generate method MoveNext
    //TODO: generate property 'Current'
    //TODO: generate property 'Current'
    //TODO: generate method Reset
}
//[Serializable]
//[DebuggerDisplay("Count = {Count}")]
public final class ReadOnlyDictionaryValueCollection2(TKey,TValue) : DotNetObject, IEnumerable1!(TValue)
{
    private immutable IReadOnlyDictionary2!(TKey,TValue) dictionary;
    //TODO: generate constructor
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
}
//[Serializable]
public final class ReadOnlyDictionaryValueEnumerator2(TKey,TValue) : DotNetObject, IEnumerator1!(TValue)
{
    private immutable IReadOnlyDictionary2!(TKey,TValue) dictionary;
    private IEnumerator1!(KeyValuePair2!(TKey,TValue)) enumeration;
    //TODO: generate constructor
    //TODO: generate method Dispose
    //TODO: generate method MoveNext
    //TODO: generate property 'Current'
    //TODO: generate property 'Current'
    //TODO: generate method Reset
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\IPropertyValue.cs'
//
//[ComImport]
//[Guid("4bd682dd-7554-40e9-9a9b-82654ede7e62")]
//[WindowsRuntimeImport]
public interface IPropertyValue
{
    //TODO: generate property 'Type'
    //TODO: generate property 'IsNumericScalar'
    //TODO: generate method GetUInt8
    //TODO: generate method GetInt16
    //TODO: generate method GetUInt16
    //TODO: generate method GetInt32
    //TODO: generate method GetUInt32
    //TODO: generate method GetInt64
    //TODO: generate method GetUInt64
    //TODO: generate method GetSingle
    //TODO: generate method GetDouble
    //TODO: generate method GetChar16
    //TODO: generate method GetBoolean
    //TODO: generate method GetString
    //TODO: generate method GetGuid
    //TODO: generate method GetDateTime
    //TODO: generate method GetTimeSpan
    //TODO: generate method GetPoint
    //TODO: generate method GetSize
    //TODO: generate method GetRect
    //TODO: generate method GetUInt8Array
    //TODO: generate method GetInt16Array
    //TODO: generate method GetUInt16Array
    //TODO: generate method GetInt32Array
    //TODO: generate method GetUInt32Array
    //TODO: generate method GetInt64Array
    //TODO: generate method GetUInt64Array
    //TODO: generate method GetSingleArray
    //TODO: generate method GetDoubleArray
    //TODO: generate method GetChar16Array
    //TODO: generate method GetBooleanArray
    //TODO: generate method GetStringArray
    //TODO: generate method GetInspectableArray
    //TODO: generate method GetGuidArray
    //TODO: generate method GetDateTimeArray
    //TODO: generate method GetTimeSpanArray
    //TODO: generate method GetPointArray
    //TODO: generate method GetSizeArray
    //TODO: generate method GetRectArray
}
//// Specify size directly instead of fields to avoid warnings
//    [StructLayoutAttribute(LayoutKind.Sequential, Size=8)]
//[WindowsRuntimeImport]
public struct Point
{
}
//// Specify size directly instead of fields to avoid warnings
//    [StructLayoutAttribute(LayoutKind.Sequential, Size=8)]
//[WindowsRuntimeImport]
public struct Size
{
}
//// Specify size directly instead of fields to avoid warnings
//    [StructLayoutAttribute(LayoutKind.Sequential, Size=16)]
//[WindowsRuntimeImport]
public struct Rect
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\IReadOnlyDictionaryToIMapViewAdapter.cs'
//
//// This is a set of stub methods implementing the support for the IMapView`2 interface on managed
//    // objects that implement IReadOnlyDictionary`2. Used by the interop mashaling infrastructure.
//    //
//    // The methods on this class must be written VERY carefully to avoid introducing security holes.
//    // That's because they are invoked with special "this"! The "this" object
//    // for all of these methods are not IReadOnlyDictionaryToIMapViewAdapter objects. Rather, they are of type
//    // IReadOnlyDictionary<K, V>. No actual IReadOnlyDictionaryToIMapViewAdapter object is ever instantiated. Thus, you will
//    // see a lot of expressions that cast "this" to "IReadOnlyDictionary<K, V>". 
//    [DebuggerDisplay("Size = {Size}")]
public final class IReadOnlyDictionaryToIMapViewAdapter : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method Lookup
    //TODO: generate method Size
    //TODO: generate method HasKey
    //TODO: generate method Split
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\IReadOnlyListToIVectorViewAdapter.cs'
//
//// This is a set of stub methods implementing the support for the IVectorView`1 interface on managed
//    // objects that implement IReadOnlyList`1. Used by the interop mashaling infrastructure.
//    //
//    // The methods on this class must be written VERY carefully to avoid introducing security holes.
//    // That's because they are invoked with special "this"! The "this" object
//    // for all of these methods are not IReadOnlyListToIVectorViewAdapter objects. Rather, they are of type
//    // IReadOnlyList<T>. No actual IReadOnlyListToIVectorViewAdapter object is ever instantiated. Thus, you will
//    // see a lot of expressions that cast "this" to "IReadOnlyList<T>". 
//    [DebuggerDisplay("Size = {Size}")]
public final class IReadOnlyListToIVectorViewAdapter : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method GetAt
    //TODO: generate method Size
    //TODO: generate method IndexOf
    //TODO: generate method GetMany
    //TODO: generate method EnsureIndexInt32
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\IReference.cs'
//
//[ComImport]
//[Guid("61c17706-2d65-11e0-9ae8-d48564015472")]
//[WindowsRuntimeImport]
public interface IReference1(T) : IPropertyValue
{
    //TODO: generate property 'Value'
}
//[ComImport]
//[Guid("61c17707-2d65-11e0-9ae8-d48564015472")]
//[WindowsRuntimeImport]
public interface IReferenceArray1(T) : IPropertyValue
{
    //TODO: generate property 'Value'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\IRestrictedErrorInfo.cs'
//
//#if FEATURE_CORECLR
//    [System.Runtime.CompilerServices.FriendAccessAllowed]
//#endif
//    [ComImport]
//[Guid("82BA7092-4C88-427D-A7BC-16DD93FEB67E")]
//[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
public interface IRestrictedErrorInfo
{
    //TODO: generate method GetErrorDetails
    //TODO: generate method GetReference
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\IteratorToEnumeratorAdapter.cs'
//
public template GetEnumerator_Delegate1(T)
{
    alias GetEnumerator_Delegate1 = IEnumerator1!(T) delegate();
}
public final class IterableToEnumerableAdapter : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method GetEnumerator_Stub
    //TODO: generate method GetEnumerator_Variance_Stub
}
public final class BindableIterableToEnumerableAdapter : DotNetObject
{
    //TODO: generate constructor
    private static final class NonGenericToGenericIterator : DotNetObject, IIterator1!(DotNetObject)
    {
        private IBindableIterator iterator;
        //TODO: generate constructor
        //TODO: generate property 'Current'
        //TODO: generate property 'HasCurrent'
        //TODO: generate method MoveNext
        //TODO: generate method GetMany
    }
    //TODO: generate method GetEnumerator_Stub
}
public final class IteratorToEnumeratorAdapter1(T) : DotNetObject, IEnumerator1!(T)
{
    private IIterator1!(T) m_iterator;
    private bool m_hadCurrent;
    private T m_current;
    private bool m_isInitialized;
    //TODO: generate constructor
    //TODO: generate property 'Current'
    //TODO: generate property 'Current'
    //TODO: generate method MoveNext
    //TODO: generate method Reset
    //TODO: generate method Dispose
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\IVector.cs'
//
//[ComImport]
//[Guid("913337e9-11a1-4345-a3a2-4e7f956e222d")]
//[WindowsRuntimeImport]
public interface IVector1(T) : IIterable1!(T)
{
    //TODO: generate method GetAt
    //TODO: generate property 'Size'
    //TODO: generate method GetView
    //TODO: generate method IndexOf
    //TODO: generate method SetAt
    //TODO: generate method InsertAt
    //TODO: generate method RemoveAt
    //TODO: generate method Append
    //TODO: generate method RemoveAtEnd
    //TODO: generate method Clear
    //TODO: generate method GetMany
    //TODO: generate method ReplaceAll
}
//// Same as IVector - the only difference is that GetView returns IVectorView<T>
//    [ComImport]
//[Guid("913337e9-11a1-4345-a3a2-4e7f956e222d")]
//[WindowsRuntimeImport]
public interface IVector_Raw1(T) : IIterable1!(T)
{
    //TODO: generate method GetAt
    //TODO: generate property 'Size'
    //TODO: generate method GetView
    //TODO: generate method IndexOf
    //TODO: generate method SetAt
    //TODO: generate method InsertAt
    //TODO: generate method RemoveAt
    //TODO: generate method Append
    //TODO: generate method RemoveAtEnd
    //TODO: generate method Clear
    //TODO: generate method GetMany
    //TODO: generate method ReplaceAll
}
//[ComImport]
//[Guid("bbe1fa4c-b0e3-4583-baef-1f1b2e483e56")]
//[WindowsRuntimeImport]
public interface IVectorView1(T) : IIterable1!(T)
{
    //TODO: generate method GetAt
    //TODO: generate property 'Size'
    //TODO: generate method IndexOf
    //TODO: generate method GetMany
}
//[ComImport]
//[Guid("393de7de-6fd0-4c0d-bb71-47244a113e93")]
//[WindowsRuntimeImport]
public interface IBindableVector : IBindableIterable
{
    //TODO: generate method GetAt
    //TODO: generate property 'Size'
    //TODO: generate method GetView
    //TODO: generate method IndexOf
    //TODO: generate method SetAt
    //TODO: generate method InsertAt
    //TODO: generate method RemoveAt
    //TODO: generate method Append
    //TODO: generate method RemoveAtEnd
    //TODO: generate method Clear
}
//[ComImport]
//[Guid("346dd6e7-976e-4bc3-815d-ece243bc0f33")]
//[WindowsRuntimeImport]
public interface IBindableVectorView : IBindableIterable
{
    //TODO: generate method GetAt
    //TODO: generate property 'Size'
    //TODO: generate method IndexOf
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\IVectorViewToIReadOnlyListAdapter.cs'
//
public template Indexer_Get_Delegate1(T)
{
    alias Indexer_Get_Delegate1 = T delegate(int index);
}
//// This is a set of stub methods implementing the support for the IReadOnlyList`1 interface on WinRT
//    // objects that support IVectorView`1. Used by the interop mashaling infrastructure.
//    //
//    // The methods on this class must be written VERY carefully to avoid introducing security holes.
//    // That's because they are invoked with special "this"! The "this" object
//    // for all of these methods are not IVectorViewToIReadOnlyListAdapter objects. Rather, they are of type
//    // IVectorView<T>. No actual IVectorViewToIReadOnlyListAdapter object is ever instantiated. Thus, you will see
//    // a lot of expressions that cast "this" to "IVectorView<T>".
//    [DebuggerDisplay("Count = {Count}")]
public final class IVectorViewToIReadOnlyListAdapter : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method Indexer_Get
    //TODO: generate method Indexer_Get_Variance
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\ListToBindableVectorAdapter.cs'
//
public final class ListToBindableVectorAdapter : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method GetAt
    //TODO: generate method Size
    //TODO: generate method GetView
    //TODO: generate method IndexOf
    //TODO: generate method SetAt
    //TODO: generate method InsertAt
    //TODO: generate method RemoveAt
    //TODO: generate method Append
    //TODO: generate method RemoveAtEnd
    //TODO: generate method Clear
    //TODO: generate method EnsureIndexInt32
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\ListToBindableVectorViewAdapter.cs'
//
public final class ListToBindableVectorViewAdapter : DotNetObject, IBindableVectorView
{
    private immutable IList list;
    //TODO: generate constructor
    //TODO: generate method EnsureIndexInt32
    //TODO: generate method First
    //TODO: generate method GetAt
    //TODO: generate property 'Size'
    //TODO: generate method IndexOf
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\ListToVectorAdapter.cs'
//
public final class ListToVectorAdapter : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method GetAt
    //TODO: generate method Size
    //TODO: generate method GetView
    //TODO: generate method IndexOf
    //TODO: generate method SetAt
    //TODO: generate method InsertAt
    //TODO: generate method RemoveAt
    //TODO: generate method Append
    //TODO: generate method RemoveAtEnd
    //TODO: generate method Clear
    //TODO: generate method GetMany
    //TODO: generate method ReplaceAll
    //TODO: generate method EnsureIndexInt32
    //TODO: generate method GetManyHelper
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\ManagedActivationFactory.cs'
//
//[ComImport]
//[Guid("60D27C8D-5F61-4CCE-B751-690FAE66AA53")]
//[WindowsRuntimeImport]
public interface IManagedActivationFactory
{
    //TODO: generate method RunClassConstructor
}
//// A ManangedActivationFactory provides the IActivationFactory implementation for managed types which are
//    // constructable via Windows Runtime. Implementation of specialized factory and static WinRT interfaces is
//    // provided using VM functionality (see Marshal.InitializeWinRTFactoryObject for details).
//    //
//    // In order to be activatable via the ManagedActivationFactory type, the type must be decorated with either
//    // ActivatableAttribute, or StaticAttribute.
//    [ComVisible(true)]
//[ClassInterface(ClassInterfaceType.None)]
public final class ManagedActivationFactory : DotNetObject, IActivationFactory, IManagedActivationFactory
{
    private Type m_type;
    //TODO: generate constructor
    //TODO: generate method ActivateInstance
    //TODO: generate method RunClassConstructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\MapToCollectionAdapter.cs'
//
public final class MapToCollectionAdapter : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method Count
    //TODO: generate method IsReadOnly
    //TODO: generate method Add
    //TODO: generate method Clear
    //TODO: generate method Contains
    //TODO: generate method CopyTo
    //TODO: generate method Remove
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\MapToDictionaryAdapter.cs'
//
public final class MapToDictionaryAdapter : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method Indexer_Get
    //TODO: generate method Indexer_Set
    //TODO: generate method Keys
    //TODO: generate method Values
    //TODO: generate method ContainsKey
    //TODO: generate method Add
    //TODO: generate method Remove
    //TODO: generate method TryGetValue
    //TODO: generate method Lookup
    //TODO: generate method Insert
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\MapViewToReadOnlyCollectionAdapter.cs'
//
public final class MapViewToReadOnlyCollectionAdapter : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method Count
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\NativeMethods.cs'
//
//#if BIT64
//    [StructLayout(LayoutKind.Explicit, Size = 24)]
public struct HSTRING_HEADER
{
}
public class UnsafeNativeMethods : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method GetRestrictedErrorInfo
    //TODO: generate method RoOriginateLanguageException
    //TODO: generate method RoReportUnhandledError
    //TODO: generate method WindowsCreateString
    //TODO: generate method WindowsCreateStringReference
    //TODO: generate method WindowsDeleteString
    //TODO: generate method WindowsGetStringRawBuffer
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\PropertyValue.cs'
//
public enum PropertyType
{
    Empty = 0,
    UInt8 = 1,
    Int16 = 2,
    UInt16 = 3,
    Int32 = 4,
    UInt32 = 5,
    Int64 = 6,
    UInt64 = 7,
    Single = 8,
    Double = 9,
    Char16 = 10,
    Boolean = 11,
    String = 12,
    Inspectable = 13,
    DateTime = 14,
    TimeSpan = 15,
    Guid = 16,
    Point = 17,
    Size = 18,
    Rect = 19,
    Other = 20,
    UInt8Array = UInt8 + 1024,
    Int16Array = Int16 + 1024,
    UInt16Array = UInt16 + 1024,
    Int32Array = Int32 + 1024,
    UInt32Array = UInt32 + 1024,
    Int64Array = Int64 + 1024,
    UInt64Array = UInt64 + 1024,
    SingleArray = Single + 1024,
    DoubleArray = Double + 1024,
    Char16Array = Char16 + 1024,
    BooleanArray = Boolean + 1024,
    StringArray = String + 1024,
    InspectableArray = Inspectable + 1024,
    DateTimeArray = DateTime + 1024,
    TimeSpanArray = TimeSpan + 1024,
    GuidArray = Guid + 1024,
    PointArray = Point + 1024,
    SizeArray = Size + 1024,
    RectArray = Rect + 1024,
    OtherArray = Other + 1024,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\RuntimeClass.cs'
//
//// Local definition of Windows.Foundation.IStringable
//    [ComImport]
//[Guid("96369f54-8eb6-48f0-abce-c1b211e627c3")]
//[WindowsRuntimeImport]
public interface IStringable
{
    //TODO: generate method ToString
}
public class IStringableHelper : DotNetObject
{
    //TODO: generate method ToString
}
public abstract class RuntimeClass : __ComObject
{
    //TODO: generate method GetRedirectedGetHashCodeMD
    //TODO: generate method RedirectGetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method GetRedirectedToStringMD
    //TODO: generate method RedirectToString
    //TODO: generate method ToString
    //TODO: generate method GetRedirectedEqualsMD
    //TODO: generate method RedirectEquals
    //TODO: generate method Equals
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\VectorToCollectionAdapter.cs'
//
public final class VectorToCollectionAdapter : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method Count
    //TODO: generate method IsReadOnly
    //TODO: generate method Add
    //TODO: generate method Clear
    //TODO: generate method Contains
    //TODO: generate method CopyTo
    //TODO: generate method Remove
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\VectorToListAdapter.cs'
//
public final class VectorToListAdapter : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method Indexer_Get
    //TODO: generate method Indexer_Set
    //TODO: generate method IndexOf
    //TODO: generate method Insert
    //TODO: generate method RemoveAt
    //TODO: generate method GetAt
    //TODO: generate method SetAt
    //TODO: generate method InsertAtHelper
    //TODO: generate method RemoveAtHelper
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\VectorViewToReadOnlyCollectionAdapter.cs'
//
public final class VectorViewToReadOnlyCollectionAdapter : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method Count
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\WindowsFoundationEventHandler.cs'
//
//// WindowsFoundationEventHandler<T> a copy of the definition for the Windows.Foundation.EventHandler<T> delegate
//    [Guid("9de1c535-6ae1-11e0-84e1-18a905bcc53f")]
//[WindowsRuntimeImport]
public template WindowsFoundationEventHandler1(T)
{
    alias WindowsFoundationEventHandler1 = void delegate(DotNetObject sender, T args);
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\WindowsRuntimeBufferHelper.cs'
//
///// <summary>
///// Exposes a helper method that allows <code>WindowsRuntimeBuffer : IBuffer, IBufferInternal</code> which is implemented in
///// <code>System.Runtime.WindowsRuntime.dll</code> to call into the VM.
///// </summary>
//[FriendAccessAllowed]
public class WindowsRuntimeBufferHelper : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method StoreOverlappedPtrInCCW
    //TODO: generate method StoreOverlappedInCCW
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\WindowsRuntimeMarshal.cs'
//
public class WindowsRuntimeMarshal : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method AddEventHandler
    //TODO: generate method RemoveEventHandler
    //TODO: generate method RemoveAllEventHandlers
    //TODO: generate method GetRegistrationTokenCacheSize
    public static struct EventRegistrationTokenList
    {
        private EventRegistrationToken firstToken;
        private List1!(EventRegistrationToken) restTokens;
        //TODO: generate constructor
        //TODO: generate constructor
        //TODO: generate method Push
        //TODO: generate method Pop
        //TODO: generate method CopyTo
    }
    public static class ManagedEventRegistrationImpl : DotNetObject
    {
        private this() {} // prevent instantiation
        public static /*todo: volatile*/ConditionalWeakTable2!(DotNetObject,Dictionary2!(MethodInfo,Dictionary2!(DotNetObject,EventRegistrationTokenList))) s_eventRegistrations/*todo: implement initializer*/ = null;
        //TODO: generate method AddEventHandler
        //TODO: generate method GetEventRegistrationTokenTable
        //TODO: generate method RemoveEventHandler
        //TODO: generate method RemoveAllEventHandlers
    }
    public static class NativeOrStaticEventRegistrationImpl : DotNetObject
    {
        private this() {} // prevent instantiation
        public static struct EventCacheKey
        {
            public DotNetObject target;
            public MethodInfo method;
            //TODO: generate method ToString
        }
        public static class EventCacheKeyEqualityComparer : DotNetObject, IEqualityComparer1!(EventCacheKey)
        {
            //TODO: generate method Equals
            //TODO: generate method GetHashCode
        }
        public static class EventRegistrationTokenListWithCount : DotNetObject
        {
            private TokenListCount _tokenListCount;
            private EventRegistrationTokenList _tokenList;
            //TODO: generate constructor
            //TODO: generate destructor
            //TODO: generate method Push
            //TODO: generate method Pop
            //TODO: generate method CopyTo
        }
        public static class TokenListCount : DotNetObject
        {
            private int _count;
            private EventCacheKey _key;
            //TODO: generate constructor
            //TODO: generate property 'Key'
            //TODO: generate method Inc
            //TODO: generate method Dec
            //TODO: generate method CleanupCache
        }
        public static struct EventCacheEntry
        {
            public ConditionalWeakTable2!(DotNetObject,EventRegistrationTokenListWithCount) registrationTable;
            public TokenListCount tokenListCount;
        }
        public static /*todo: volatile*/Dictionary2!(EventCacheKey,EventCacheEntry) s_eventRegistrations/*todo: implement initializer*/ = null;
        private static /*todo: volatile*/MyReaderWriterLock s_eventCacheRWLock/*todo: implement initializer*/ = null;
        //TODO: generate method GetInstanceKey
        //TODO: generate method AddEventHandler
        //TODO: generate method GetEventRegistrationTokenTableNoCreate
        //TODO: generate method GetOrCreateEventRegistrationTokenTable
        //TODO: generate method GetEventRegistrationTokenTableInternal
        //TODO: generate method RemoveEventHandler
        //TODO: generate method RemoveAllEventHandlers
        public static class ReaderWriterLockTimedOutException : ApplicationException
        {
        }
        public static class MyReaderWriterLock : DotNetObject
        {
            private int myLock;
            private int owners;
            private uint numWriteWaiters;
            private uint numReadWaiters;
            private EventWaitHandle writeEvent;
            private EventWaitHandle readEvent;
            //TODO: generate constructor
            //TODO: generate method AcquireReaderLock
            //TODO: generate method AcquireWriterLock
            //TODO: generate method ReleaseReaderLock
            //TODO: generate method ReleaseWriterLock
            //TODO: generate method LazyCreateEvent
            //TODO: generate method WaitOnEvent
            //TODO: generate method ExitAndWakeUpAppropriateWaiters
            //TODO: generate method EnterMyLock
            //TODO: generate method EnterMyLockSpin
            //TODO: generate method ExitMyLock
        }
    }
    //TODO: generate method CallRemoveMethods
    //TODO: generate method HStringToString
    //TODO: generate method GetExceptionForHR
    //TODO: generate method GetExceptionForHR
    private static bool s_haveBlueErrorApis/*todo: implement initializer*/ = bool();
    //TODO: generate method RoOriginateLanguageException
    //TODO: generate method RoReportUnhandledError
    private static Guid s_iidIErrorInfo/*todo: implement initializer*/ = Guid();
    //TODO: generate method ReportUnhandledError
    //TODO: generate method GetActivationFactoryForType
    //TODO: generate method GetManagedActivationFactory
    //TODO: generate method GetActivationFactory
    //TODO: generate method StringToHString
    //TODO: generate method PtrToStringHString
    //TODO: generate method FreeHString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\WindowsRuntime\WindowsRuntimeMetadata.cs'
//
public class WindowsRuntimeMetadata : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method ResolveNamespace
    //TODO: generate method ResolveNamespace
    //TODO: generate method nResolveNamespace
    //TODO: generate event field
    //TODO: generate method OnDesignerNamespaceResolveEvent
}
//#if FEATURE_REFLECTION_ONLY_LOAD
//    [ComVisible(false)]
//    public class NamespaceResolveEventArgs : EventArgs
//    {
//        private string _NamespaceName;
//        private Assembly _RequestingAssembly;
//        private Collection<Assembly> _ResolvedAssemblies;
//
//        public string NamespaceName
//        {
//            get
//            {
//                return _NamespaceName;
//            }
//        }
//
//        public Assembly RequestingAssembly
//        {
//            get
//            {
//                return _RequestingAssembly;
//            }
//        }
//
//        public Collection<Assembly> ResolvedAssemblies
//        {
//            get
//            {
//                return _ResolvedAssemblies;
//            }
//        }
//        
//        public NamespaceResolveEventArgs(string namespaceName, Assembly requestingAssembly)
//        {
//            _NamespaceName = namespaceName;
//            _RequestingAssembly = requestingAssembly;
//            _ResolvedAssemblies = new Collection<Assembly>();
//        }
//    }
//#endif //FEATURE_REFLECTION_ONLY
//
//    [ComVisible(false)]
public class DesignerNamespaceResolveEventArgs : EventArgs
{
    private String _NamespaceName;
    private Collection1!(String) _ResolvedAssemblyFiles;
    //TODO: generate property 'NamespaceName'
    //TODO: generate property 'ResolvedAssemblyFiles'
    //TODO: generate constructor
}
