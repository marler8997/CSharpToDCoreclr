module mscorlib.System.Collections.Generic;

import mscorlib.System :
    DotNetObject,
    Nullable1,
    Comparison1,
    String,
    IWellKnownStringEqualityComparer,
    IDisposable,
    SystemException;
import mscorlib.System.Collections :
    IComparer,
    IDictionary,
    IDictionaryEnumerator,
    ICollection,
    IEnumerator,
    IEqualityComparer,
    IEnumerable,
    IList;
import mscorlib.System.Runtime.Serialization :
    ISerializable,
    IDeserializationCallback;
import mscorlib.System.Collections.ObjectModel :
    KeyedCollection2;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Generic\ArraySortHelper.cs'
//
public interface IArraySortHelper1(TKey)
{
    //TODO: generate method Sort
    //TODO: generate method BinarySearch
}
public class IntrospectiveSortUtilities : DotNetObject
{
    private this() {} // prevent instantiation
    public enum int IntrosortSizeThreshold/*todo: implement initializer*/ = int();
    public enum int QuickSortDepthThreshold/*todo: implement initializer*/ = int();
    //TODO: generate method FloorLog2
    //TODO: generate method ThrowOrIgnoreBadComparer
}
//[TypeDependencyAttribute("System.Collections.Generic.GenericArraySortHelper`1")]
public class ArraySortHelper1(T) : DotNetObject, IArraySortHelper1!(T)
{
    private static /*todo: volatile*/IArraySortHelper1!(T) defaultArraySortHelper;
    //TODO: generate property 'Default'
    //TODO: generate method CreateArraySortHelper
    //TODO: generate method Sort
    //TODO: generate method BinarySearch
    //TODO: generate method InternalBinarySearch
    //TODO: generate method SwapIfGreater
    //TODO: generate method Swap
    //TODO: generate method DepthLimitedQuickSort
    //TODO: generate method IntrospectiveSort
    //TODO: generate method IntroSort
    //TODO: generate method PickPivotAndPartition
    //TODO: generate method Heapsort
    //TODO: generate method DownHeap
    //TODO: generate method InsertionSort
}
//[Serializable()]
public class GenericArraySortHelper1(T) : DotNetObject, IArraySortHelper1!(T)/*where T : IComparable<T>*/
{
    //TODO: generate method Sort
    //TODO: generate method BinarySearch
    //TODO: generate method BinarySearch
    //TODO: generate method SwapIfGreaterWithItems
    //TODO: generate method Swap
    //TODO: generate method DepthLimitedQuickSort
    //TODO: generate method IntrospectiveSort
    //TODO: generate method IntroSort
    //TODO: generate method PickPivotAndPartition
    //TODO: generate method Heapsort
    //TODO: generate method DownHeap
    //TODO: generate method InsertionSort
}
public interface IArraySortHelper2(TKey,TValue)
{
    //TODO: generate method Sort
}
//[TypeDependencyAttribute("System.Collections.Generic.GenericArraySortHelper`2")]
public class ArraySortHelper2(TKey,TValue) : DotNetObject, IArraySortHelper2!(TKey,TValue)
{
    private static /*todo: volatile*/IArraySortHelper2!(TKey,TValue) defaultArraySortHelper;
    //TODO: generate property 'Default'
    //TODO: generate method CreateArraySortHelper
    //TODO: generate method Sort
    //TODO: generate method SwapIfGreaterWithItems
    //TODO: generate method Swap
    //TODO: generate method DepthLimitedQuickSort
    //TODO: generate method IntrospectiveSort
    //TODO: generate method IntroSort
    //TODO: generate method PickPivotAndPartition
    //TODO: generate method Heapsort
    //TODO: generate method DownHeap
    //TODO: generate method InsertionSort
}
public class GenericArraySortHelper2(TKey,TValue) : DotNetObject, IArraySortHelper2!(TKey,TValue)/*where TKey : IComparable<TKey>*/
{
    //TODO: generate method Sort
    //TODO: generate method SwapIfGreaterWithItems
    //TODO: generate method Swap
    //TODO: generate method DepthLimitedQuickSort
    //TODO: generate method IntrospectiveSort
    //TODO: generate method IntroSort
    //TODO: generate method PickPivotAndPartition
    //TODO: generate method Heapsort
    //TODO: generate method DownHeap
    //TODO: generate method InsertionSort
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Generic\Comparer.cs'
//
//[Serializable]
//[TypeDependencyAttribute("System.Collections.Generic.ObjectComparer`1")]
public abstract class Comparer1(T) : DotNetObject, IComparer, IComparer1!(T)
{
    private static immutable Comparer1!(T) defaultComparer/*todo: implement initializer*/ = null;
    //TODO: generate property 'Default'
    //TODO: generate method Create
    //TODO: generate method CreateComparer
    //TODO: generate method Compare
    //TODO: generate method Compare
}
//// Note: although there is a lot of shared code in the following
//    // comparers, we do not incorporate it into a base class for perf
//    // reasons. Adding another base class (even one with no fields)
//    // means another generic instantiation, which can be costly esp.
//    // for value types.
//    
//    [Serializable]
public final class GenericComparer1(T) : Comparer1!(T)/*where T : IComparable<T>*/
{
    //TODO: generate method Compare
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
//[Serializable]
public final class NullableComparer1(T) : Comparer1!(Nullable1!(T))/*where T : struct, IComparable<T>*/
{
    //TODO: generate method Compare
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
//[Serializable]
public final class ObjectComparer1(T) : Comparer1!(T)
{
    //TODO: generate method Compare
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
//[Serializable]
public final class ComparisonComparer1(T) : Comparer1!(T)
{
    private immutable Comparison1!(T) _comparison;
    //TODO: generate constructor
    //TODO: generate method Compare
}
//// Enum comparers (specialized to avoid boxing)
//    // NOTE: Each of these needs to implement ISerializable
//    // and have a SerializationInfo/StreamingContext ctor,
//    // since we want to serialize as ObjectComparer for
//    // back-compat reasons (see below).
//
//    [Serializable]
public final class Int32EnumComparer1(T) : Comparer1!(T), ISerializable/*where T : struct*/
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Compare
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetObjectData
}
//[Serializable]
public final class UInt32EnumComparer1(T) : Comparer1!(T), ISerializable/*where T : struct*/
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Compare
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetObjectData
}
//[Serializable]
public final class Int64EnumComparer1(T) : Comparer1!(T), ISerializable/*where T : struct*/
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Compare
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetObjectData
}
//[Serializable]
public final class UInt64EnumComparer1(T) : Comparer1!(T), ISerializable/*where T : struct*/
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Compare
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Generic\DebugView.cs'
//
public final class Mscorlib_CollectionDebugView1(T) : DotNetObject
{
    private ICollection1!(T) collection;
    //TODO: generate constructor
    //TODO: generate property 'Items'
}
public final class Mscorlib_DictionaryKeyCollectionDebugView2(TKey,TValue) : DotNetObject
{
    private ICollection1!(TKey) collection;
    //TODO: generate constructor
    //TODO: generate property 'Items'
}
public final class Mscorlib_DictionaryValueCollectionDebugView2(TKey,TValue) : DotNetObject
{
    private ICollection1!(TValue) collection;
    //TODO: generate constructor
    //TODO: generate property 'Items'
}
public final class Mscorlib_DictionaryDebugView2(K,V) : DotNetObject
{
    private IDictionary2!(K,V) dict;
    //TODO: generate constructor
    //TODO: generate property 'Items'
}
public final class Mscorlib_KeyedCollectionDebugView2(K,T) : DotNetObject
{
    private KeyedCollection2!(K,T) kc;
    //TODO: generate constructor
    //TODO: generate property 'Items'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Generic\Dictionary.cs'
//
//[DebuggerTypeProxy(typeof(Mscorlib_DictionaryDebugView<,>))]
//[DebuggerDisplay("Count = {Count}")]
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(false)]
public class Dictionary2(TKey,TValue) : DotNetObject, IDictionary2!(TKey,TValue), IDictionary, IReadOnlyDictionary2!(TKey,TValue), ISerializable, IDeserializationCallback
{
    private static struct Entry
    {
        public int hashCode;
        public int next;
        public TKey key;
        public TValue value;
    }
    private int[] buckets;
    private Entry[] entries;
    private int count;
    private int version_;
    private int freeList;
    private int freeCount;
    private IEqualityComparer1!(TKey) comparer;
    private KeyCollection keys;
    private ValueCollection values;
    private DotNetObject _syncRoot;
    private enum String VersionName/*todo: implement initializer*/ = null;
    private enum String HashSizeName/*todo: implement initializer*/ = null;
    private enum String KeyValuePairsName/*todo: implement initializer*/ = null;
    private enum String ComparerName/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Comparer'
    //TODO: generate property 'Count'
    //TODO: generate property 'Keys'
    //TODO: generate property 'Keys'
    //TODO: generate property 'Keys'
    //TODO: generate property 'Values'
    //TODO: generate property 'Values'
    //TODO: generate property 'Values'
    //TODO: generate indexer
    //TODO: generate method Add
    //TODO: generate method Add
    //TODO: generate method Contains
    //TODO: generate method Remove
    //TODO: generate method Clear
    //TODO: generate method ContainsKey
    //TODO: generate method ContainsValue
    //TODO: generate method CopyTo
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    //TODO: generate method GetObjectData
    //TODO: generate method FindEntry
    //TODO: generate method Initialize
    //TODO: generate method Insert
    //TODO: generate method OnDeserialization
    //TODO: generate method Resize
    //TODO: generate method Resize
    //TODO: generate method Remove
    //TODO: generate method TryGetValue
    //TODO: generate method GetValueOrDefault
    //TODO: generate property 'IsReadOnly'
    //TODO: generate method CopyTo
    //TODO: generate method CopyTo
    //TODO: generate method GetEnumerator
    //TODO: generate property 'IsSynchronized'
    //TODO: generate property 'SyncRoot'
    //TODO: generate property 'IsFixedSize'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate property 'Keys'
    //TODO: generate property 'Values'
    //TODO: generate indexer
    //TODO: generate method IsCompatibleKey
    //TODO: generate method Add
    //TODO: generate method Contains
    //TODO: generate method GetEnumerator
    //TODO: generate method Remove
    //[Serializable]
    public static struct Enumerator
    {
        private Dictionary2!(TKey,TValue) dictionary;
        private int version_;
        private int index;
        private KeyValuePair2!(TKey,TValue) current;
        private int getEnumeratorRetType;
        public enum int DictEntry/*todo: implement initializer*/ = int();
        public enum int KeyValuePair/*todo: implement initializer*/ = int();
        //TODO: generate constructor
        //TODO: generate method MoveNext
        //TODO: generate property 'Current'
        //TODO: generate method Dispose
        //TODO: generate property 'Current'
        //TODO: generate method Reset
        //TODO: generate property 'Entry'
        //TODO: generate property 'Key'
        //TODO: generate property 'Value'
    }
    public static class __Boxed__Enumerator : DotNetObject, IEnumerator1!(KeyValuePair2!(TKey,TValue)), IDictionaryEnumerator
    {
        Enumerator value;
        alias value this;
    }
    //[DebuggerTypeProxy(typeof(Mscorlib_DictionaryKeyCollectionDebugView<,>))]
    //[DebuggerDisplay("Count = {Count}")]
    //[Serializable]
    public static final class KeyCollection : DotNetObject, ICollection1!(TKey), ICollection, IReadOnlyCollection1!(TKey)
    {
        private Dictionary2!(TKey,TValue) dictionary;
        //TODO: generate constructor
        //TODO: generate method GetEnumerator
        //TODO: generate method CopyTo
        //TODO: generate property 'Count'
        //TODO: generate property 'IsReadOnly'
        //TODO: generate method Add
        //TODO: generate method Clear
        //TODO: generate method Contains
        //TODO: generate method Remove
        //TODO: generate method GetEnumerator
        //TODO: generate method GetEnumerator
        //TODO: generate method CopyTo
        //TODO: generate property 'IsSynchronized'
        //TODO: generate property 'SyncRoot'
        //[Serializable]
        public static struct Enumerator
        {
            private Dictionary2!(TKey,TValue) dictionary;
            private int index;
            private int version_;
            private TKey currentKey;
            //TODO: generate constructor
            //TODO: generate method Dispose
            //TODO: generate method MoveNext
            //TODO: generate property 'Current'
            //TODO: generate property 'Current'
            //TODO: generate method Reset
        }
        public static class __Boxed__Enumerator : DotNetObject, IEnumerator1!(TKey), IEnumerator
        {
            Enumerator value;
            alias value this;
        }
    }
    //[DebuggerTypeProxy(typeof(Mscorlib_DictionaryValueCollectionDebugView<,>))]
    //[DebuggerDisplay("Count = {Count}")]
    //[Serializable]
    public static final class ValueCollection : DotNetObject, ICollection1!(TValue), ICollection, IReadOnlyCollection1!(TValue)
    {
        private Dictionary2!(TKey,TValue) dictionary;
        //TODO: generate constructor
        //TODO: generate method GetEnumerator
        //TODO: generate method CopyTo
        //TODO: generate property 'Count'
        //TODO: generate property 'IsReadOnly'
        //TODO: generate method Add
        //TODO: generate method Remove
        //TODO: generate method Clear
        //TODO: generate method Contains
        //TODO: generate method GetEnumerator
        //TODO: generate method GetEnumerator
        //TODO: generate method CopyTo
        //TODO: generate property 'IsSynchronized'
        //TODO: generate property 'SyncRoot'
        //[Serializable]
        public static struct Enumerator
        {
            private Dictionary2!(TKey,TValue) dictionary;
            private int index;
            private int version_;
            private TValue currentValue;
            //TODO: generate constructor
            //TODO: generate method Dispose
            //TODO: generate method MoveNext
            //TODO: generate property 'Current'
            //TODO: generate property 'Current'
            //TODO: generate method Reset
        }
        public static class __Boxed__Enumerator : DotNetObject, IEnumerator1!(TValue), IEnumerator
        {
            Enumerator value;
            alias value this;
        }
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Generic\EqualityComparer.cs'
//
//[Serializable]
//[TypeDependencyAttribute("System.Collections.Generic.ObjectEqualityComparer`1")]
public abstract class EqualityComparer1(T) : DotNetObject, IEqualityComparer, IEqualityComparer1!(T)
{
    private static immutable EqualityComparer1!(T) defaultComparer/*todo: implement initializer*/ = null;
    //TODO: generate property 'Default'
    //TODO: generate method CreateComparer
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method IndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
}
//// The methods in this class look identical to the inherited methods, but the calls
//    // to Equal bind to IEquatable<T>.Equals(T) instead of Object.Equals(Object)
//    [Serializable]
public class GenericEqualityComparer1(T) : EqualityComparer1!(T)/*where T: IEquatable<T>*/
{
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method IndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
//[Serializable]
public class NullableEqualityComparer1(T) : EqualityComparer1!(Nullable1!(T))/*where T : struct, IEquatable<T>*/
{
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method IndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
//[Serializable]
public class ObjectEqualityComparer1(T) : EqualityComparer1!(T)
{
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method IndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
public class NonRandomizedStringEqualityComparer : GenericEqualityComparer1!(String)
{
    private static IEqualityComparer1!(String) s_nonRandomizedComparer;
    //TODO: generate property 'Default'
    //TODO: generate method GetHashCode
}
//#endif // FEATURE_CORECLR
//
//    // Performance of IndexOf on byte array is very important for some scenarios.
//    // We will call the C runtime function memchr, which is optimized.
//    [Serializable]
public class ByteEqualityComparer : EqualityComparer1!(ubyte)
{
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method IndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
//[Serializable]
public class EnumEqualityComparer1(T) : EqualityComparer1!(T), ISerializable/*where T : struct*/
{
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetObjectData
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
//[Serializable]
public final class SByteEnumEqualityComparer1(T) : EnumEqualityComparer1!(T), ISerializable/*where T : struct*/
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetHashCode
}
//[Serializable]
public final class ShortEnumEqualityComparer1(T) : EnumEqualityComparer1!(T), ISerializable/*where T : struct*/
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetHashCode
}
//[Serializable]
public final class LongEnumEqualityComparer1(T) : EqualityComparer1!(T), ISerializable/*where T : struct*/
{
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetObjectData
}
public final class RandomizedStringEqualityComparer : DotNetObject, IEqualityComparer1!(String), IEqualityComparer, IWellKnownStringEqualityComparer
{
    private long _entropy;
    //TODO: generate constructor
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetRandomizedEqualityComparer
    //TODO: generate method GetEqualityComparerForSerialization
}
public final class RandomizedObjectEqualityComparer : DotNetObject, IEqualityComparer, IWellKnownStringEqualityComparer
{
    private long _entropy;
    //TODO: generate constructor
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetRandomizedEqualityComparer
    //TODO: generate method GetEqualityComparerForSerialization
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Generic\ICollection.cs'
//
//// Base interface for all collections, defining enumerators, size, and 
//    // synchronization methods.
//
//    // Note that T[] : IList<T>, and we want to ensure that if you use
//    // IList<YourValueType>, we ensure a YourValueType[] can be used 
//    // without jitting.  Hence the TypeDependencyAttribute on SZArrayHelper.
//    // This is a special workaround internally though - see VM\compile.cpp.
//    // The same attribute is on IEnumerable<T> and ICollection<T>.
//    [TypeDependencyAttribute("System.SZArrayHelper")]
public interface ICollection1(T) : IEnumerable1!(T)
{
    //TODO: generate property 'Count'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate method Add
    //TODO: generate method Clear
    //TODO: generate method Contains
    //TODO: generate method CopyTo
    //TODO: generate method Remove
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Generic\IComparer.cs'
//
public interface IComparer1(T)
{
    //TODO: generate method Compare
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Generic\IDictionary.cs'
//
public interface IDictionary2(TKey,TValue) : ICollection1!(KeyValuePair2!(TKey,TValue))
{
    //TODO: generate indexer
    //TODO: generate property 'Keys'
    //TODO: generate property 'Values'
    //TODO: generate method ContainsKey
    //TODO: generate method Add
    //TODO: generate method Remove
    //TODO: generate method TryGetValue
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Generic\IEnumerable.cs'
//
//// Implement this interface if you need to support foreach semantics.
//
//    // Note that T[] : IList<T>, and we want to ensure that if you use
//    // IList<YourValueType>, we ensure a YourValueType[] can be used 
//    // without jitting.  Hence the TypeDependencyAttribute on SZArrayHelper.
//    // This is a special workaround internally though - see VM\compile.cpp.
//    // The same attribute is on IList<T> and ICollection<T>.
//    [TypeDependencyAttribute("System.SZArrayHelper")]
public interface IEnumerable1(T) : IEnumerable
{
    //TODO: generate method GetEnumerator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Generic\IEnumerator.cs'
//
public interface IEnumerator1(T) : IDisposable, IEnumerator
{
    //TODO: generate property 'Current'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Generic\IEqualityComparer.cs'
//
public interface IEqualityComparer1(T)
{
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Generic\IList.cs'
//
//// An IList is an ordered collection of objects.  The exact ordering
//    // is up to the implementation of the list, ranging from a sorted
//    // order to insertion order.  
//
//    // Note that T[] : IList<T>, and we want to ensure that if you use
//    // IList<YourValueType>, we ensure a YourValueType[] can be used 
//    // without jitting.  Hence the TypeDependencyAttribute on SZArrayHelper.
//    // This is a special workaround internally though - see VM\compile.cpp.
//    // The same attribute is on IEnumerable<T> and ICollection<T>.
//    [TypeDependencyAttribute("System.SZArrayHelper")]
public interface IList1(T) : ICollection1!(T)
{
    //TODO: generate indexer
    //TODO: generate method IndexOf
    //TODO: generate method Insert
    //TODO: generate method RemoveAt
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Generic\IReadOnlyCollection.cs'
//
//// Provides a read-only, covariant view of a generic list.
//
//    // Note that T[] : IReadOnlyList<T>, and we want to ensure that if you use
//    // IList<YourValueType>, we ensure a YourValueType[] can be used 
//    // without jitting.  Hence the TypeDependencyAttribute on SZArrayHelper.
//    // This is a special workaround internally though - see VM\compile.cpp.
//    // The same attribute is on IList<T>, IEnumerable<T>, ICollection<T>, and IReadOnlyList<T>.
//    [TypeDependencyAttribute("System.SZArrayHelper")]
public interface IReadOnlyCollection1(T) : IEnumerable1!(T)
{
    //TODO: generate property 'Count'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Generic\IReadOnlyDictionary.cs'
//
public interface IReadOnlyDictionary2(TKey,TValue) : IReadOnlyCollection1!(KeyValuePair2!(TKey,TValue))
{
    //TODO: generate method ContainsKey
    //TODO: generate method TryGetValue
    //TODO: generate indexer
    //TODO: generate property 'Keys'
    //TODO: generate property 'Values'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Generic\IReadOnlyList.cs'
//
//// Provides a read-only, covariant view of a generic list.
//
//    // Note that T[] : IReadOnlyList<T>, and we want to ensure that if you use
//    // IList<YourValueType>, we ensure a YourValueType[] can be used 
//    // without jitting.  Hence the TypeDependencyAttribute on SZArrayHelper.
//    // This is a special workaround internally though - see VM\compile.cpp.
//    // The same attribute is on IList<T>, IEnumerable<T>, ICollection<T> and IReadOnlyCollection<T>.
//    [TypeDependencyAttribute("System.SZArrayHelper")]
public interface IReadOnlyList1(T) : IReadOnlyCollection1!(T)
{
    //TODO: generate indexer
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Generic\KeyNotFoundException.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public class KeyNotFoundException : SystemException, ISerializable
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Generic\KeyValuePair.cs'
//
//// A KeyValuePair holds a key and a value from a dictionary.
//    // It is used by the IEnumerable<T> implementation for both IDictionary<TKey, TValue>
//    // and IReadOnlyDictionary<TKey, TValue>.
//    [Serializable]
public struct KeyValuePair2(TKey,TValue)
{
    private TKey key;
    private TValue value;
    //TODO: generate constructor
    //TODO: generate property 'Key'
    //TODO: generate property 'Value'
    //TODO: generate method ToString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Generic\List.cs'
//
//// Implements a variable-size List that uses an array of objects to store the
//    // elements. A List has a capacity, which is the allocated length
//    // of the internal array. As elements are added to a List, the capacity
//    // of the List is automatically increased as required by reallocating the
//    // internal array.
//    // 
//    [DebuggerTypeProxy(typeof(Mscorlib_CollectionDebugView<>))]
//[DebuggerDisplay("Count = {Count}")]
//[Serializable]
public class List1(T) : DotNetObject, IList1!(T), IList, IReadOnlyList1!(T)
{
    private enum int _defaultCapacity/*todo: implement initializer*/ = int();
    private T[] _items;
    // Ignored: [ContractPublicPropertyName("Count")]
    private int _size;
    private int _version;
    // Ignored: [NonSerialized]
    private DotNetObject _syncRoot;
    private static immutable T[] _emptyArray/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Capacity'
    //TODO: generate property 'Count'
    //TODO: generate property 'IsFixedSize'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate property 'IsSynchronized'
    //TODO: generate property 'SyncRoot'
    //TODO: generate indexer
    //TODO: generate method IsCompatibleObject
    //TODO: generate indexer
    //TODO: generate method Add
    //TODO: generate method Add
    //TODO: generate method AddRange
    //TODO: generate method AsReadOnly
    //TODO: generate method BinarySearch
    //TODO: generate method BinarySearch
    //TODO: generate method BinarySearch
    //TODO: generate method Clear
    //TODO: generate method Contains
    //TODO: generate method Contains
    //TODO: generate method ConvertAll
    //TODO: generate method CopyTo
    //TODO: generate method CopyTo
    //TODO: generate method CopyTo
    //TODO: generate method CopyTo
    //TODO: generate method EnsureCapacity
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
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    //TODO: generate method GetRange
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method Insert
    //TODO: generate method Insert
    //TODO: generate method InsertRange
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method Remove
    //TODO: generate method Remove
    //TODO: generate method RemoveAll
    //TODO: generate method RemoveAt
    //TODO: generate method RemoveRange
    //TODO: generate method Reverse
    //TODO: generate method Reverse
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method ToArray
    //TODO: generate method TrimExcess
    //TODO: generate method TrueForAll
    //[Serializable]
    public static struct Enumerator
    {
        private List1!(T) list;
        private int index;
        private int version_;
        private T current;
        //TODO: generate constructor
        //TODO: generate method Dispose
        //TODO: generate method MoveNext
        //TODO: generate method MoveNextRare
        //TODO: generate property 'Current'
        //TODO: generate property 'Current'
        //TODO: generate method Reset
    }
    public static class __Boxed__Enumerator : DotNetObject, IEnumerator1!(T), IEnumerator
    {
        Enumerator value;
        alias value this;
    }
}
