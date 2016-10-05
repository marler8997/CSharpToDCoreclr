module mscorlib.System.Collections;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    SerializableAttribute,
    __DotNet__Object,
    ICloneable,
    NonSerializedAttribute,
    String,
    ObsoleteAttribute;
import mscorlib.System.Runtime.CompilerServices :
    FriendAccessAllowedAttribute,
    ConditionalWeakTable2;
import mscorlib.System.Diagnostics :
    DebuggerTypeProxyAttribute,
    DebuggerDisplayAttribute,
    DebuggerBrowsableAttribute;
import mscorlib.System.Runtime.InteropServices :
    ComVisibleAttribute,
    GuidAttribute;
import mscorlib.System.Diagnostics.Contracts :
    ContractPublicPropertyNameAttribute;
import mscorlib :
    EmptyArray1;
import mscorlib.System.Runtime.Serialization :
    ISerializable,
    IDeserializationCallback,
    SerializationInfo;
import mscorlib.System.Globalization :
    CompareInfo,
    CultureInfo;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\ArrayList.cs'
//
// Implements a variable-size List that uses an array of objects to store the
// elements. A ArrayList has a capacity, which is the allocated length
// of the internal array. As elements are added to a ArrayList, the capacity
// of the ArrayList is automatically increased as required by reallocating the
// internal array.
// 
// #if FEATURE_CORECLR
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
// #endif
@__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(System.Collections.ArrayList.ArrayListDebugView)*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Count = {Count}"*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class ArrayList : __DotNet__Object, IList, ICloneable
{
    private __DotNet__Object[] _items;
    @__DotNet__Attribute!(ContractPublicPropertyNameAttribute.stringof/*, "Count"*/)
    private int _size;
    private int _version;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private __DotNet__Object _syncRoot;
    private enum int _defaultCapacity/*todo: implement initializer*/ = int();
    private static immutable __DotNet__Object[] emptyArray/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Capacity'
    //TODO: generate property 'Count'
    //TODO: generate property 'IsFixedSize'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate property 'IsSynchronized'
    //TODO: generate property 'SyncRoot'
    //TODO: generate indexer
    //TODO: generate method Adapter
    //TODO: generate method Add
    //TODO: generate method AddRange
    //TODO: generate method BinarySearch
    //TODO: generate method BinarySearch
    //TODO: generate method BinarySearch
    //TODO: generate method Clear
    //TODO: generate method Clone
    //TODO: generate method Contains
    //TODO: generate method CopyTo
    //TODO: generate method CopyTo
    //TODO: generate method CopyTo
    //TODO: generate method EnsureCapacity
    //TODO: generate method FixedSize
    //TODO: generate method FixedSize
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method IndexOf
    //TODO: generate method Insert
    //TODO: generate method InsertRange
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method LastIndexOf
    //TODO: generate method ReadOnly
    //TODO: generate method ReadOnly
    //TODO: generate method Remove
    //TODO: generate method RemoveAt
    //TODO: generate method RemoveRange
    //TODO: generate method Repeat
    //TODO: generate method Reverse
    //TODO: generate method Reverse
    //TODO: generate method SetRange
    //TODO: generate method GetRange
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method Sort
    //TODO: generate method Synchronized
    //TODO: generate method Synchronized
    //TODO: generate method ToArray
    //TODO: generate method ToArray
    //TODO: generate method TrimToSize
    // This class wraps an IList, exposing it as a ArrayList
    // Note this requires reimplementing half of ArrayList...
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class IListWrapper : ArrayList
    {
        private IList _list;
        //TODO: generate constructor
        //TODO: generate property 'Capacity'
        //TODO: generate property 'Count'
        //TODO: generate property 'IsReadOnly'
        //TODO: generate property 'IsFixedSize'
        //TODO: generate property 'IsSynchronized'
        //TODO: generate indexer
        //TODO: generate property 'SyncRoot'
        //TODO: generate method Add
        //TODO: generate method AddRange
        //TODO: generate method BinarySearch
        //TODO: generate method Clear
        //TODO: generate method Clone
        //TODO: generate method Contains
        //TODO: generate method CopyTo
        //TODO: generate method CopyTo
        //TODO: generate method GetEnumerator
        //TODO: generate method GetEnumerator
        //TODO: generate method IndexOf
        //TODO: generate method IndexOf
        //TODO: generate method IndexOf
        //TODO: generate method Insert
        //TODO: generate method InsertRange
        //TODO: generate method LastIndexOf
        //TODO: generate method LastIndexOf
        //TODO: generate method LastIndexOf
        //TODO: generate method Remove
        //TODO: generate method RemoveAt
        //TODO: generate method RemoveRange
        //TODO: generate method Reverse
        //TODO: generate method SetRange
        //TODO: generate method GetRange
        //TODO: generate method Sort
        //TODO: generate method ToArray
        //TODO: generate method ToArray
        //TODO: generate method TrimToSize
        // This is the enumerator for an IList that's been wrapped in another
        // class that implements all of ArrayList's methods.
        @__DotNet__Attribute!(SerializableAttribute.stringof)
        private static final class IListWrapperEnumWrapper : __DotNet__Object, IEnumerator, ICloneable
        {
            private IEnumerator _en;
            private int _remaining;
            private int _initialStartIndex;
            private int _initialCount;
            private bool _firstCall;
            //TODO: generate constructor
            //TODO: generate constructor
            //TODO: generate method Clone
            //TODO: generate method MoveNext
            //TODO: generate property 'Current'
            //TODO: generate method Reset
        }
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class SyncArrayList : ArrayList
    {
        private ArrayList _list;
        private __DotNet__Object _root;
        //TODO: generate constructor
        //TODO: generate property 'Capacity'
        //TODO: generate property 'Count'
        //TODO: generate property 'IsReadOnly'
        //TODO: generate property 'IsFixedSize'
        //TODO: generate property 'IsSynchronized'
        //TODO: generate indexer
        //TODO: generate property 'SyncRoot'
        //TODO: generate method Add
        //TODO: generate method AddRange
        //TODO: generate method BinarySearch
        //TODO: generate method BinarySearch
        //TODO: generate method BinarySearch
        //TODO: generate method Clear
        //TODO: generate method Clone
        //TODO: generate method Contains
        //TODO: generate method CopyTo
        //TODO: generate method CopyTo
        //TODO: generate method CopyTo
        //TODO: generate method GetEnumerator
        //TODO: generate method GetEnumerator
        //TODO: generate method IndexOf
        //TODO: generate method IndexOf
        //TODO: generate method IndexOf
        //TODO: generate method Insert
        //TODO: generate method InsertRange
        //TODO: generate method LastIndexOf
        //TODO: generate method LastIndexOf
        //TODO: generate method LastIndexOf
        //TODO: generate method Remove
        //TODO: generate method RemoveAt
        //TODO: generate method RemoveRange
        //TODO: generate method Reverse
        //TODO: generate method SetRange
        //TODO: generate method GetRange
        //TODO: generate method Sort
        //TODO: generate method Sort
        //TODO: generate method Sort
        //TODO: generate method ToArray
        //TODO: generate method ToArray
        //TODO: generate method TrimToSize
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class SyncIList : __DotNet__Object, IList
    {
        private IList _list;
        private __DotNet__Object _root;
        //TODO: generate constructor
        //TODO: generate property 'Count'
        //TODO: generate property 'IsReadOnly'
        //TODO: generate property 'IsFixedSize'
        //TODO: generate property 'IsSynchronized'
        //TODO: generate indexer
        //TODO: generate property 'SyncRoot'
        //TODO: generate method Add
        //TODO: generate method Clear
        //TODO: generate method Contains
        //TODO: generate method CopyTo
        //TODO: generate method GetEnumerator
        //TODO: generate method IndexOf
        //TODO: generate method Insert
        //TODO: generate method Remove
        //TODO: generate method RemoveAt
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class FixedSizeList : __DotNet__Object, IList
    {
        private IList _list;
        //TODO: generate constructor
        //TODO: generate property 'Count'
        //TODO: generate property 'IsReadOnly'
        //TODO: generate property 'IsFixedSize'
        //TODO: generate property 'IsSynchronized'
        //TODO: generate indexer
        //TODO: generate property 'SyncRoot'
        //TODO: generate method Add
        //TODO: generate method Clear
        //TODO: generate method Contains
        //TODO: generate method CopyTo
        //TODO: generate method GetEnumerator
        //TODO: generate method IndexOf
        //TODO: generate method Insert
        //TODO: generate method Remove
        //TODO: generate method RemoveAt
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class FixedSizeArrayList : ArrayList
    {
        private ArrayList _list;
        //TODO: generate constructor
        //TODO: generate property 'Count'
        //TODO: generate property 'IsReadOnly'
        //TODO: generate property 'IsFixedSize'
        //TODO: generate property 'IsSynchronized'
        //TODO: generate indexer
        //TODO: generate property 'SyncRoot'
        //TODO: generate method Add
        //TODO: generate method AddRange
        //TODO: generate method BinarySearch
        //TODO: generate property 'Capacity'
        //TODO: generate method Clear
        //TODO: generate method Clone
        //TODO: generate method Contains
        //TODO: generate method CopyTo
        //TODO: generate method CopyTo
        //TODO: generate method GetEnumerator
        //TODO: generate method GetEnumerator
        //TODO: generate method IndexOf
        //TODO: generate method IndexOf
        //TODO: generate method IndexOf
        //TODO: generate method Insert
        //TODO: generate method InsertRange
        //TODO: generate method LastIndexOf
        //TODO: generate method LastIndexOf
        //TODO: generate method LastIndexOf
        //TODO: generate method Remove
        //TODO: generate method RemoveAt
        //TODO: generate method RemoveRange
        //TODO: generate method SetRange
        //TODO: generate method GetRange
        //TODO: generate method Reverse
        //TODO: generate method Sort
        //TODO: generate method ToArray
        //TODO: generate method ToArray
        //TODO: generate method TrimToSize
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class ReadOnlyList : __DotNet__Object, IList
    {
        private IList _list;
        //TODO: generate constructor
        //TODO: generate property 'Count'
        //TODO: generate property 'IsReadOnly'
        //TODO: generate property 'IsFixedSize'
        //TODO: generate property 'IsSynchronized'
        //TODO: generate indexer
        //TODO: generate property 'SyncRoot'
        //TODO: generate method Add
        //TODO: generate method Clear
        //TODO: generate method Contains
        //TODO: generate method CopyTo
        //TODO: generate method GetEnumerator
        //TODO: generate method IndexOf
        //TODO: generate method Insert
        //TODO: generate method Remove
        //TODO: generate method RemoveAt
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class ReadOnlyArrayList : ArrayList
    {
        private ArrayList _list;
        //TODO: generate constructor
        //TODO: generate property 'Count'
        //TODO: generate property 'IsReadOnly'
        //TODO: generate property 'IsFixedSize'
        //TODO: generate property 'IsSynchronized'
        //TODO: generate indexer
        //TODO: generate property 'SyncRoot'
        //TODO: generate method Add
        //TODO: generate method AddRange
        //TODO: generate method BinarySearch
        //TODO: generate property 'Capacity'
        //TODO: generate method Clear
        //TODO: generate method Clone
        //TODO: generate method Contains
        //TODO: generate method CopyTo
        //TODO: generate method CopyTo
        //TODO: generate method GetEnumerator
        //TODO: generate method GetEnumerator
        //TODO: generate method IndexOf
        //TODO: generate method IndexOf
        //TODO: generate method IndexOf
        //TODO: generate method Insert
        //TODO: generate method InsertRange
        //TODO: generate method LastIndexOf
        //TODO: generate method LastIndexOf
        //TODO: generate method LastIndexOf
        //TODO: generate method Remove
        //TODO: generate method RemoveAt
        //TODO: generate method RemoveRange
        //TODO: generate method SetRange
        //TODO: generate method GetRange
        //TODO: generate method Reverse
        //TODO: generate method Sort
        //TODO: generate method ToArray
        //TODO: generate method ToArray
        //TODO: generate method TrimToSize
    }
    // Implements an enumerator for a ArrayList. The enumerator uses the
    // internal version number of the list to ensure that no modifications are
    // made to the list while an enumeration is in progress.
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static final class ArrayListEnumerator : __DotNet__Object, IEnumerator, ICloneable
    {
        private ArrayList list;
        private int index;
        private int endIndex;
        private int version_;
        private __DotNet__Object currentElement;
        private int startIndex;
        //TODO: generate constructor
        //TODO: generate method Clone
        //TODO: generate method MoveNext
        //TODO: generate property 'Current'
        //TODO: generate method Reset
    }
    // Implementation of a generic list subrange. An instance of this class
    // is returned by the default implementation of List.GetRange.
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class Range : ArrayList
    {
        private ArrayList _baseList;
        private int _baseIndex;
        @__DotNet__Attribute!(ContractPublicPropertyNameAttribute.stringof/*, "Count"*/)
        private int _baseSize;
        private int _baseVersion;
        //TODO: generate constructor
        //TODO: generate method InternalUpdateRange
        //TODO: generate method InternalUpdateVersion
        //TODO: generate method Add
        //TODO: generate method AddRange
        //TODO: generate method BinarySearch
        //TODO: generate property 'Capacity'
        //TODO: generate method Clear
        //TODO: generate method Clone
        //TODO: generate method Contains
        //TODO: generate method CopyTo
        //TODO: generate method CopyTo
        //TODO: generate property 'Count'
        //TODO: generate property 'IsReadOnly'
        //TODO: generate property 'IsFixedSize'
        //TODO: generate property 'IsSynchronized'
        //TODO: generate method GetEnumerator
        //TODO: generate method GetEnumerator
        //TODO: generate method GetRange
        //TODO: generate property 'SyncRoot'
        //TODO: generate method IndexOf
        //TODO: generate method IndexOf
        //TODO: generate method IndexOf
        //TODO: generate method Insert
        //TODO: generate method InsertRange
        //TODO: generate method LastIndexOf
        //TODO: generate method LastIndexOf
        //TODO: generate method LastIndexOf
        //TODO: generate method RemoveAt
        //TODO: generate method RemoveRange
        //TODO: generate method Reverse
        //TODO: generate method SetRange
        //TODO: generate method Sort
        //TODO: generate indexer
        //TODO: generate method ToArray
        //TODO: generate method ToArray
        //TODO: generate method TrimToSize
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static final class ArrayListEnumeratorSimple : __DotNet__Object, IEnumerator, ICloneable
    {
        private ArrayList list;
        private int index;
        private int version_;
        private __DotNet__Object currentElement;
        @__DotNet__Attribute!(NonSerializedAttribute.stringof)
        private bool isArrayList;
        private static __DotNet__Object dummyObject/*todo: implement initializer*/ = null;
        //TODO: generate constructor
        //TODO: generate method Clone
        //TODO: generate method MoveNext
        //TODO: generate property 'Current'
        //TODO: generate method Reset
    }
    package(mscorlib) static class ArrayListDebugView : __DotNet__Object
    {
        private ArrayList arrayList;
        //TODO: generate constructor
        //TODO: generate property 'Items'
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\BitArray.cs'
//
// A vector of bits.  Use this to store bits efficiently, without having to do bit 
// shifting yourself.
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof/**/)
public final class BitArray : __DotNet__Object, ICollection, ICloneable
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate indexer
    //TODO: generate method Get
    //TODO: generate method Set
    //TODO: generate method SetAll
    //TODO: generate method And
    //TODO: generate method Or
    //TODO: generate method Xor
    //TODO: generate method Not
    //TODO: generate property 'Length'
    //TODO: generate method CopyTo
    //TODO: generate property 'Count'
    //TODO: generate method Clone
    //TODO: generate property 'SyncRoot'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate property 'IsSynchronized'
    //TODO: generate method GetEnumerator
    private enum int BitsPerInt32/*todo: implement initializer*/ = int();
    private enum int BytesPerInt32/*todo: implement initializer*/ = int();
    private enum int BitsPerByte/*todo: implement initializer*/ = int();
    //TODO: generate method GetArrayLength
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class BitArrayEnumeratorSimple : __DotNet__Object, IEnumerator, ICloneable
    {
        private BitArray bitarray;
        private int index;
        private int version_;
        private bool currentElement;
        //TODO: generate constructor
        //TODO: generate method Clone
        //TODO: generate method MoveNext
        //TODO: generate property 'Current'
        //TODO: generate method Reset
    }
    private int[] m_array;
    private int m_length;
    private int _version;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private __DotNet__Object _syncRoot;
    private enum int _ShrinkThreshold/*todo: implement initializer*/ = int();
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\CollectionBase.cs'
//
// Useful base class for typed read/write collections where items derive from object
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class CollectionBase : __DotNet__Object, IList
{
    private ArrayList list;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'InnerList'
    //TODO: generate property 'List'
    //TODO: generate property 'Capacity'
    //TODO: generate property 'Count'
    //TODO: generate method Clear
    //TODO: generate method RemoveAt
    //TODO: generate property 'IsReadOnly'
    //TODO: generate property 'IsFixedSize'
    //TODO: generate property 'IsSynchronized'
    //TODO: generate property 'SyncRoot'
    //TODO: generate method CopyTo
    //TODO: generate indexer
    //TODO: generate method Contains
    //TODO: generate method Add
    //TODO: generate method Remove
    //TODO: generate method IndexOf
    //TODO: generate method Insert
    //TODO: generate method GetEnumerator
    //TODO: generate method OnSet
    //TODO: generate method OnInsert
    //TODO: generate method OnClear
    //TODO: generate method OnRemove
    //TODO: generate method OnValidate
    //TODO: generate method OnSetComplete
    //TODO: generate method OnInsertComplete
    //TODO: generate method OnClearComplete
    //TODO: generate method OnRemoveComplete
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Comparer.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class Comparer : __DotNet__Object, IComparer, ISerializable
{
    private CompareInfo m_compareInfo;
    public static immutable Comparer Default/*todo: implement initializer*/ = null;
    public static immutable Comparer DefaultInvariant/*todo: implement initializer*/ = null;
    private enum String CompareInfoName/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Compare
    //TODO: generate method GetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\CompatibleComparer.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class CompatibleComparer : __DotNet__Object, IEqualityComparer
{
    private IComparer _comparer;
    private IHashCodeProvider _hcp;
    //TODO: generate constructor
    //TODO: generate method Compare
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate property 'Comparer'
    //TODO: generate property 'HashCodeProvider'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\DictionaryEntry.cs'
//
// A DictionaryEntry holds a key and a value from a dictionary.
// It is returned by IDictionaryEnumerator::GetEntry().
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public struct DictionaryEntry
{
    private __DotNet__Object _key;
    private __DotNet__Object _value;
    //TODO: generate constructor
    //TODO: generate property 'Key'
    //TODO: generate property 'Value'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\EmptyReadOnlyDictionaryInternal.cs'
//
///    This is a simple implementation of IDictionary that is empty and readonly.
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class EmptyReadOnlyDictionaryInternal : __DotNet__Object, IDictionary
{
    //TODO: generate constructor
    //TODO: generate method GetEnumerator
    //TODO: generate method CopyTo
    //TODO: generate property 'Count'
    //TODO: generate property 'SyncRoot'
    //TODO: generate property 'IsSynchronized'
    //TODO: generate indexer
    //TODO: generate property 'Keys'
    //TODO: generate property 'Values'
    //TODO: generate method Contains
    //TODO: generate method Add
    //TODO: generate method Clear
    //TODO: generate property 'IsReadOnly'
    //TODO: generate property 'IsFixedSize'
    //TODO: generate method GetEnumerator
    //TODO: generate method Remove
    private static final class NodeEnumerator : __DotNet__Object, IDictionaryEnumerator
    {
        //TODO: generate constructor
        //TODO: generate method MoveNext
        //TODO: generate property 'Current'
        //TODO: generate method Reset
        //TODO: generate property 'Key'
        //TODO: generate property 'Value'
        //TODO: generate property 'Entry'
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Hashtable.cs'
//
// #if !FEATURE_CORECLR
// using System.Security.Cryptography;
// #endif
// The Hashtable class represents a dictionary of associated keys and values
// with constant lookup time.
// 
// Objects used as keys in a hashtable must implement the GetHashCode
// and Equals methods (or they can rely on the default implementations
// inherited from Object if key equality is simply reference
// equality). Furthermore, the GetHashCode and Equals methods of
// a key object must produce the same results given the same parameters for the
// entire time the key is present in the hashtable. In practical terms, this
// means that key objects should be immutable, at least for the time they are
// used as keys in a hashtable.
// 
// When entries are added to a hashtable, they are placed into
// buckets based on the hashcode of their keys. Subsequent lookups of
// keys will use the hashcode of the keys to only search a particular bucket,
// thus substantially reducing the number of key comparisons required to find
// an entry. A hashtable's maximum load factor, which can be specified
// when the hashtable is instantiated, determines the maximum ratio of
// hashtable entries to hashtable buckets. Smaller load factors cause faster
// average lookup times at the cost of increased memory consumption. The
// default maximum load factor of 1.0 generally provides the best balance
// between speed and size. As entries are added to a hashtable, the hashtable's
// actual load factor increases, and when the actual load factor reaches the
// maximum load factor value, the number of buckets in the hashtable is
// automatically increased by approximately a factor of two (to be precise, the
// number of hashtable buckets is increased to the smallest prime number that
// is larger than twice the current number of hashtable buckets).
// 
// Each object provides their own hash function, accessed by calling
// GetHashCode().  However, one can write their own object 
// implementing IEqualityComparer and pass it to a constructor on
// the Hashtable.  That hash function (and the equals method on the 
// IEqualityComparer) would be used for all objects in the table.
//
// Changes since V1 during Whidbey:
// *) Deprecated IHashCodeProvider, use IEqualityComparer instead.  This will
//    allow better performance for objects where equality checking can be
//    done much faster than establishing an ordering between two objects,
//    such as an ordinal string equality check.
// 
@__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(System.Collections.Hashtable.HashtableDebugView)*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Count = {Count}"*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class Hashtable : __DotNet__Object, IDictionary, ISerializable, IDeserializationCallback, ICloneable
{
    package(mscorlib) enum int HashPrime/*todo: implement initializer*/ = int();
    private enum int InitialSize/*todo: implement initializer*/ = int();
    private enum String LoadFactorName/*todo: implement initializer*/ = null;
    private enum String VersionName/*todo: implement initializer*/ = null;
    private enum String ComparerName/*todo: implement initializer*/ = null;
    private enum String HashCodeProviderName/*todo: implement initializer*/ = null;
    private enum String HashSizeName/*todo: implement initializer*/ = null;
    private enum String KeysName/*todo: implement initializer*/ = null;
    private enum String ValuesName/*todo: implement initializer*/ = null;
    private enum String KeyComparerName/*todo: implement initializer*/ = null;
    private static struct bucket
    {
        public __DotNet__Object key;
        public __DotNet__Object val;
        public int hash_coll;
    }
    private bucket[] buckets;
    private int count;
    private int occupancy;
    private int loadsize;
    private float loadFactor;
    private /*todo: volatile*/ int version_;
    private /*todo: volatile*/ bool isWriterInProgress;
    private ICollection keys;
    private ICollection values;
    private IEqualityComparer _keycomparer;
    private __DotNet__Object _syncRoot;
    //TODO: generate property 'hcp'
    //TODO: generate property 'comparer'
    //TODO: generate property 'EqualityComparer'
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
    //TODO: generate method InitHash
    //TODO: generate method Add
    //TODO: generate method Clear
    //TODO: generate method Clone
    //TODO: generate method Contains
    //TODO: generate method ContainsKey
    //TODO: generate method ContainsValue
    //TODO: generate method CopyKeys
    //TODO: generate method CopyEntries
    //TODO: generate method CopyTo
    //TODO: generate method ToKeyValuePairsArray
    //TODO: generate method CopyValues
    //TODO: generate indexer
    //TODO: generate method expand
    //TODO: generate method rehash
    //TODO: generate method UpdateVersion
    //TODO: generate method rehash
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    //TODO: generate method GetHash
    //TODO: generate property 'IsReadOnly'
    //TODO: generate property 'IsFixedSize'
    //TODO: generate property 'IsSynchronized'
    //TODO: generate method KeyEquals
    //TODO: generate property 'Keys'
    //TODO: generate property 'Values'
    //TODO: generate method Insert
    //TODO: generate method putEntry
    //TODO: generate method Remove
    //TODO: generate property 'SyncRoot'
    //TODO: generate property 'Count'
    //TODO: generate method Synchronized
    //TODO: generate method GetObjectData
    //TODO: generate method OnDeserialization
    // Implements a Collection for the keys of a hashtable. An instance of this
    // class is created by the GetKeys method of a hashtable.
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class KeyCollection : __DotNet__Object, ICollection
    {
        private Hashtable _hashtable;
        //TODO: generate constructor
        //TODO: generate method CopyTo
        //TODO: generate method GetEnumerator
        //TODO: generate property 'IsSynchronized'
        //TODO: generate property 'SyncRoot'
        //TODO: generate property 'Count'
    }
    // Implements a Collection for the values of a hashtable. An instance of
    // this class is created by the GetValues method of a hashtable.
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class ValueCollection : __DotNet__Object, ICollection
    {
        private Hashtable _hashtable;
        //TODO: generate constructor
        //TODO: generate method CopyTo
        //TODO: generate method GetEnumerator
        //TODO: generate property 'IsSynchronized'
        //TODO: generate property 'SyncRoot'
        //TODO: generate property 'Count'
    }
    // Synchronized wrapper for hashtable
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class SyncHashtable : Hashtable, IEnumerable
    {
        protected Hashtable _table;
        //TODO: generate constructor
        //TODO: generate constructor
        //TODO: generate method GetObjectData
        //TODO: generate property 'Count'
        //TODO: generate property 'IsReadOnly'
        //TODO: generate property 'IsFixedSize'
        //TODO: generate property 'IsSynchronized'
        //TODO: generate indexer
        //TODO: generate property 'SyncRoot'
        //TODO: generate method Add
        //TODO: generate method Clear
        //TODO: generate method Contains
        //TODO: generate method ContainsKey
        //TODO: generate method ContainsValue
        //TODO: generate method CopyTo
        //TODO: generate method Clone
        //TODO: generate method GetEnumerator
        //TODO: generate method GetEnumerator
        //TODO: generate property 'Keys'
        //TODO: generate property 'Values'
        //TODO: generate method Remove
        //TODO: generate method OnDeserialization
        //TODO: generate method ToKeyValuePairsArray
    }
    // Implements an enumerator for a hashtable. The enumerator uses the
    // internal version number of the hashtabke to ensure that no modifications
    // are made to the hashtable while an enumeration is in progress.
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class HashtableEnumerator : __DotNet__Object, IDictionaryEnumerator, ICloneable
    {
        private Hashtable hashtable;
        private int bucket;
        private int version_;
        private bool current;
        private int getObjectRetType;
        private __DotNet__Object currentKey;
        private __DotNet__Object currentValue;
        package(mscorlib) enum int Keys/*todo: implement initializer*/ = int();
        package(mscorlib) enum int Values/*todo: implement initializer*/ = int();
        package(mscorlib) enum int DictEntry/*todo: implement initializer*/ = int();
        //TODO: generate constructor
        //TODO: generate method Clone
        //TODO: generate property 'Key'
        //TODO: generate method MoveNext
        //TODO: generate property 'Entry'
        //TODO: generate property 'Current'
        //TODO: generate property 'Value'
        //TODO: generate method Reset
    }
    package(mscorlib) static class HashtableDebugView : __DotNet__Object
    {
        private Hashtable hashtable;
        //TODO: generate constructor
        //TODO: generate property 'Items'
    }
}
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
package(mscorlib) class HashHelpers : __DotNet__Object
{
    private this() {} // prevent instantiation
    public enum int HashCollisionThreshold/*todo: implement initializer*/ = int();
    public static bool s_UseRandomizedStringHashing/*todo: implement initializer*/ = bool();
    public static immutable int[] primes/*todo: implement initializer*/ = null;
    private static ConditionalWeakTable2!(__DotNet__Object,SerializationInfo) s_SerializationInfoTable;
    //TODO: generate property 'SerializationInfoTable'
    //TODO: generate method IsPrime
    //TODO: generate method GetPrime
    //TODO: generate method GetMinPrime
    //TODO: generate method ExpandPrime
    public enum int MaxPrimeArrayLength/*todo: implement initializer*/ = int();
    //TODO: generate method IsWellKnownEqualityComparer
    //TODO: generate method GetRandomizedEqualityComparer
    //TODO: generate method GetEqualityComparerForSerialization
    private enum int bufferSize/*todo: implement initializer*/ = int();
    private static ubyte[] data;
    private static int currentIndex/*todo: implement initializer*/ = int();
    private static immutable __DotNet__Object lockObj/*todo: implement initializer*/ = null;
    //TODO: generate method GetEntropy
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\ICollection.cs'
//
// Base interface for all collections, defining enumerators, size, and 
// synchronization methods.
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface ICollection : IEnumerable
{
    //TODO: generate method CopyTo
    //TODO: generate property 'Count'
    //TODO: generate property 'SyncRoot'
    //TODO: generate property 'IsSynchronized'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\IComparer.cs'
//
// The IComparer interface implements a method that compares two objects. It is
// used in conjunction with the Sort and BinarySearch methods on
// the Array and List classes.
// 
// Interfaces are not serializable
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IComparer
{
    //TODO: generate method Compare
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\IDictionary.cs'
//
// An IDictionary is a possibly unordered set of key-value pairs.
// Keys can be any non-null object.  Values can be any object.
// You can look up a value in an IDictionary via the default indexed
// property, Items.
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IDictionary : ICollection
{
    //TODO: generate indexer
    //TODO: generate property 'Keys'
    //TODO: generate property 'Values'
    //TODO: generate method Contains
    //TODO: generate method Add
    //TODO: generate method Clear
    //TODO: generate property 'IsReadOnly'
    //TODO: generate property 'IsFixedSize'
    //TODO: generate method GetEnumerator
    //TODO: generate method Remove
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\IDictionaryEnumerator.cs'
//
// This interface represents an enumerator that allows sequential access to the
// elements of a dictionary. Upon creation, an enumerator is conceptually
// positioned before the first element of the enumeration. The first call to the
// MoveNext method brings the first element of the enumeration into view,
// and each successive call to MoveNext brings the next element into
// view until MoveNext returns false, indicating that there are no more
// elements to enumerate. Following each call to MoveNext, the
// Key and Value methods are used to obtain the key and
// value of the element currently in view. The values returned by calls to
// Key and Value are undefined before the first call to
// MoveNext and following a call to MoveNext that returned false.
// Enumerators are typically used in while loops of the form
// 
// IDictionaryEnumerator e = ...;
// while (e.MoveNext()) {
//     Object key = e.Key;
//     Object value = e.Value;
//     ...
// }
// 
// The IDictionaryEnumerator interface extends the IEnumerator
// inerface and can thus be used as a regular enumerator. The Current 
// method of an IDictionaryEnumerator returns a DictionaryEntry containing
// the current key and value pair.  However, the GetEntry method will
// return the same DictionaryEntry and avoids boxing the DictionaryEntry (boxing
// is somewhat expensive).
// 
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IDictionaryEnumerator : IEnumerator
{
    //TODO: generate property 'Key'
    //TODO: generate property 'Value'
    //TODO: generate property 'Entry'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\IEnumerable.cs'
//
// Implement this interface if you need to support VB's foreach semantics.
// Also, COM classes that support an enumerator will also implement this interface.
@__DotNet__Attribute!(GuidAttribute.stringof/*, "496B0ABE-CDEE-11d3-88E8-00902754C43A"*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IEnumerable
{
    //TODO: generate method GetEnumerator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\IEnumerator.cs'
//
// Base interface for all enumerators, providing a simple approach
// to iterating over a collection.
@__DotNet__Attribute!(GuidAttribute.stringof/*, "496B0ABF-CDEE-11d3-88E8-00902754C43A"*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IEnumerator
{
    //TODO: generate method MoveNext
    //TODO: generate property 'Current'
    //TODO: generate method Reset
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\IEqualityComparer.cs'
//
// An IEqualityComparer is a mechanism to consume custom performant comparison infrastructure
// that can be consumed by some of the common collections.
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IEqualityComparer
{
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\IHashCodeProvider.cs'
//
// Provides a mechanism for a hash table user to override the default
// GetHashCode() function on Objects, providing their own hash function.
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Please use IEqualityComparer instead."*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IHashCodeProvider
{
    //TODO: generate method GetHashCode
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\IList.cs'
//
// An IList is an ordered collection of objects.  The exact ordering
// is up to the implementation of the list, ranging from a sorted
// order to insertion order.
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IList : ICollection
{
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
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\IStructuralComparable.cs'
//
public interface IStructuralComparable
{
    //TODO: generate method CompareTo
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\IStructuralEquatable.cs'
//
public interface IStructuralEquatable
{
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\KeyValuePairs.cs'
//
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "{value}", Name = "[{key}]", Type = ""*/)
package(mscorlib) class KeyValuePairs : __DotNet__Object
{
    @__DotNet__Attribute!(DebuggerBrowsableAttribute.stringof/*, DebuggerBrowsableState.Never*/)
    private __DotNet__Object key;
    @__DotNet__Attribute!(DebuggerBrowsableAttribute.stringof/*, DebuggerBrowsableState.Never*/)
    private __DotNet__Object value;
    //TODO: generate constructor
    //TODO: generate property 'Key'
    //TODO: generate property 'Value'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\ListDictionaryInternal.cs'
//
///    This is a simple implementation of IDictionary using a singly linked list. This
///    will be smaller and faster than a Hashtable if the number of elements is 10 or less.
///    This should not be used if performance is important for large numbers of elements.
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class ListDictionaryInternal : __DotNet__Object, IDictionary
{
    private DictionaryNode head;
    private int version_;
    private int count;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private __DotNet__Object _syncRoot;
    //TODO: generate constructor
    //TODO: generate indexer
    //TODO: generate property 'Count'
    //TODO: generate property 'Keys'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate property 'IsFixedSize'
    //TODO: generate property 'IsSynchronized'
    //TODO: generate property 'SyncRoot'
    //TODO: generate property 'Values'
    //TODO: generate method Add
    //TODO: generate method Clear
    //TODO: generate method Contains
    //TODO: generate method CopyTo
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    //TODO: generate method Remove
    private static class NodeEnumerator : __DotNet__Object, IDictionaryEnumerator
    {
        private ListDictionaryInternal list;
        private DictionaryNode current;
        private int version_;
        private bool start;
        //TODO: generate constructor
        //TODO: generate property 'Current'
        //TODO: generate property 'Entry'
        //TODO: generate property 'Key'
        //TODO: generate property 'Value'
        //TODO: generate method MoveNext
        //TODO: generate method Reset
    }
    private static class NodeKeyValueCollection : __DotNet__Object, ICollection
    {
        private ListDictionaryInternal list;
        private bool isKeys;
        //TODO: generate constructor
        //TODO: generate method CopyTo
        //TODO: generate property 'Count'
        //TODO: generate property 'IsSynchronized'
        //TODO: generate property 'SyncRoot'
        //TODO: generate method GetEnumerator
        private static class NodeKeyValueEnumerator : __DotNet__Object, IEnumerator
        {
            private ListDictionaryInternal list;
            private DictionaryNode current;
            private int version_;
            private bool isKeys;
            private bool start;
            //TODO: generate constructor
            //TODO: generate property 'Current'
            //TODO: generate method MoveNext
            //TODO: generate method Reset
        }
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class DictionaryNode : __DotNet__Object
    {
        public __DotNet__Object key;
        public __DotNet__Object value;
        public DictionaryNode next;
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\SortedList.cs'
//
// The SortedList class implements a sorted list of keys and values. Entries in
// a sorted list are sorted by their keys and are accessible both by key and by
// index. The keys of a sorted list can be ordered either according to a
// specific IComparer implementation given when the sorted list is
// instantiated, or according to the IComparable implementation provided
// by the keys themselves. In either case, a sorted list does not allow entries
// with duplicate keys.
// 
// A sorted list internally maintains two arrays that store the keys and
// values of the entries. The capacity of a sorted list is the allocated
// length of these internal arrays. As elements are added to a sorted list, the
// capacity of the sorted list is automatically increased as required by
// reallocating the internal arrays.  The capacity is never automatically 
// decreased, but users can call either TrimToSize or 
// Capacity explicitly.
// 
// The GetKeyList and GetValueList methods of a sorted list
// provides access to the keys and values of the sorted list in the form of
// List implementations. The List objects returned by these
// methods are aliases for the underlying sorted list, so modifications
// made to those lists are directly reflected in the sorted list, and vice
// versa.
// 
// The SortedList class provides a convenient way to create a sorted
// copy of another dictionary, such as a Hashtable. For example:
// 
// Hashtable h = new Hashtable();
// h.Add(...);
// h.Add(...);
// ...
// SortedList s = new SortedList(h);
// 
// The last line above creates a sorted list that contains a copy of the keys
// and values stored in the hashtable. In this particular example, the keys
// will be ordered according to the IComparable interface, which they
// all must implement. To impose a different ordering, SortedList also
// has a constructor that allows a specific IComparer implementation to
// be specified.
// 
@__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(System.Collections.SortedList.SortedListDebugView)*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Count = {Count}"*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
// #if FEATURE_CORECLR
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Non-generic collections have been deprecated. Please use collections in System.Collections.Generic."*/)
// #endif
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class SortedList : __DotNet__Object, IDictionary, ICloneable
{
    private __DotNet__Object[] keys;
    private __DotNet__Object[] values;
    private int _size;
    private int version_;
    private IComparer comparer;
    private KeyList keyList;
    private ValueList valueList;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private __DotNet__Object _syncRoot;
    private enum int _defaultCapacity/*todo: implement initializer*/ = int();
    private static __DotNet__Object[] emptyArray/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method Init
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Add
    //TODO: generate property 'Capacity'
    //TODO: generate property 'Count'
    //TODO: generate property 'Keys'
    //TODO: generate property 'Values'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate property 'IsFixedSize'
    //TODO: generate property 'IsSynchronized'
    //TODO: generate property 'SyncRoot'
    //TODO: generate method Clear
    //TODO: generate method Clone
    //TODO: generate method Contains
    //TODO: generate method ContainsKey
    //TODO: generate method ContainsValue
    //TODO: generate method CopyTo
    //TODO: generate method ToKeyValuePairsArray
    //TODO: generate method EnsureCapacity
    //TODO: generate method GetByIndex
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    //TODO: generate method GetKey
    //TODO: generate method GetKeyList
    //TODO: generate method GetValueList
    //TODO: generate indexer
    //TODO: generate method IndexOfKey
    //TODO: generate method IndexOfValue
    //TODO: generate method Insert
    //TODO: generate method RemoveAt
    //TODO: generate method Remove
    //TODO: generate method SetByIndex
    //TODO: generate method Synchronized
    //TODO: generate method TrimToSize
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class SyncSortedList : SortedList
    {
        private SortedList _list;
        private __DotNet__Object _root;
        //TODO: generate constructor
        //TODO: generate property 'Count'
        //TODO: generate property 'SyncRoot'
        //TODO: generate property 'IsReadOnly'
        //TODO: generate property 'IsFixedSize'
        //TODO: generate property 'IsSynchronized'
        //TODO: generate indexer
        //TODO: generate method Add
        //TODO: generate property 'Capacity'
        //TODO: generate method Clear
        //TODO: generate method Clone
        //TODO: generate method Contains
        //TODO: generate method ContainsKey
        //TODO: generate method ContainsValue
        //TODO: generate method CopyTo
        //TODO: generate method GetByIndex
        //TODO: generate method GetEnumerator
        //TODO: generate method GetKey
        //TODO: generate method GetKeyList
        //TODO: generate method GetValueList
        //TODO: generate method IndexOfKey
        //TODO: generate method IndexOfValue
        //TODO: generate method RemoveAt
        //TODO: generate method Remove
        //TODO: generate method SetByIndex
        //TODO: generate method ToKeyValuePairsArray
        //TODO: generate method TrimToSize
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class SortedListEnumerator : __DotNet__Object, IDictionaryEnumerator, ICloneable
    {
        private SortedList sortedList;
        private __DotNet__Object key;
        private __DotNet__Object value;
        private int index;
        private int startIndex;
        private int endIndex;
        private int version_;
        private bool current;
        private int getObjectRetType;
        package(mscorlib) enum int Keys/*todo: implement initializer*/ = int();
        package(mscorlib) enum int Values/*todo: implement initializer*/ = int();
        package(mscorlib) enum int DictEntry/*todo: implement initializer*/ = int();
        //TODO: generate constructor
        //TODO: generate method Clone
        //TODO: generate property 'Key'
        //TODO: generate method MoveNext
        //TODO: generate property 'Entry'
        //TODO: generate property 'Current'
        //TODO: generate property 'Value'
        //TODO: generate method Reset
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class KeyList : __DotNet__Object, IList
    {
        private SortedList sortedList;
        //TODO: generate constructor
        //TODO: generate property 'Count'
        //TODO: generate property 'IsReadOnly'
        //TODO: generate property 'IsFixedSize'
        //TODO: generate property 'IsSynchronized'
        //TODO: generate property 'SyncRoot'
        //TODO: generate method Add
        //TODO: generate method Clear
        //TODO: generate method Contains
        //TODO: generate method CopyTo
        //TODO: generate method Insert
        //TODO: generate indexer
        //TODO: generate method GetEnumerator
        //TODO: generate method IndexOf
        //TODO: generate method Remove
        //TODO: generate method RemoveAt
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class ValueList : __DotNet__Object, IList
    {
        private SortedList sortedList;
        //TODO: generate constructor
        //TODO: generate property 'Count'
        //TODO: generate property 'IsReadOnly'
        //TODO: generate property 'IsFixedSize'
        //TODO: generate property 'IsSynchronized'
        //TODO: generate property 'SyncRoot'
        //TODO: generate method Add
        //TODO: generate method Clear
        //TODO: generate method Contains
        //TODO: generate method CopyTo
        //TODO: generate method Insert
        //TODO: generate indexer
        //TODO: generate method GetEnumerator
        //TODO: generate method IndexOf
        //TODO: generate method Remove
        //TODO: generate method RemoveAt
    }
    package(mscorlib) static class SortedListDebugView : __DotNet__Object
    {
        private SortedList sortedList;
        //TODO: generate constructor
        //TODO: generate property 'Items'
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Stack.cs'
//
// A simple stack of objects.  Internally it is implemented as an array,
// so Push can be O(n).  Pop is O(1).
@__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(System.Collections.Stack.StackDebugView)*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Count = {Count}"*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class Stack : __DotNet__Object, ICollection, ICloneable
{
    private __DotNet__Object[] _array;
    @__DotNet__Attribute!(ContractPublicPropertyNameAttribute.stringof/*, "Count"*/)
    private int _size;
    private int _version;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private __DotNet__Object _syncRoot;
    private enum int _defaultCapacity/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Count'
    //TODO: generate property 'IsSynchronized'
    //TODO: generate property 'SyncRoot'
    //TODO: generate method Clear
    //TODO: generate method Clone
    //TODO: generate method Contains
    //TODO: generate method CopyTo
    //TODO: generate method GetEnumerator
    //TODO: generate method Peek
    //TODO: generate method Pop
    //TODO: generate method Push
    //TODO: generate method Synchronized
    //TODO: generate method ToArray
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class SyncStack : Stack
    {
        private Stack _s;
        private __DotNet__Object _root;
        //TODO: generate constructor
        //TODO: generate property 'IsSynchronized'
        //TODO: generate property 'SyncRoot'
        //TODO: generate property 'Count'
        //TODO: generate method Contains
        //TODO: generate method Clone
        //TODO: generate method Clear
        //TODO: generate method CopyTo
        //TODO: generate method Push
        //TODO: generate method Pop
        //TODO: generate method GetEnumerator
        //TODO: generate method Peek
        //TODO: generate method ToArray
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class StackEnumerator : __DotNet__Object, IEnumerator, ICloneable
    {
        private Stack _stack;
        private int _index;
        private int _version;
        private __DotNet__Object currentElement;
        //TODO: generate constructor
        //TODO: generate method Clone
        //TODO: generate method MoveNext
        //TODO: generate property 'Current'
        //TODO: generate method Reset
    }
    package(mscorlib) static class StackDebugView : __DotNet__Object
    {
        private Stack stack;
        //TODO: generate constructor
        //TODO: generate property 'Items'
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\StructuralComparisons.cs'
//
public class StructuralComparisons : __DotNet__Object
{
    private this() {} // prevent instantiation
    private static /*todo: volatile*/ IComparer s_StructuralComparer;
    private static /*todo: volatile*/ IEqualityComparer s_StructuralEqualityComparer;
    //TODO: generate property 'StructuralComparer'
    //TODO: generate property 'StructuralEqualityComparer'
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class StructuralEqualityComparer : __DotNet__Object, IEqualityComparer
{
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class StructuralComparer : __DotNet__Object, IComparer
{
    //TODO: generate method Compare
}
