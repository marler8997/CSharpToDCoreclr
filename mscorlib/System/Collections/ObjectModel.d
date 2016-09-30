module mscorlib.System.Collections.ObjectModel;

import mscorlib.System :
    DotNetObject;
import mscorlib.System.Collections.Generic :
    IList1,
    IReadOnlyList1,
    IEqualityComparer1,
    Dictionary2,
    IDictionary2,
    IReadOnlyDictionary2,
    IEnumerator1,
    KeyValuePair2,
    ICollection1,
    IReadOnlyCollection1;
import mscorlib.System.Collections :
    IList,
    IDictionary,
    IDictionaryEnumerator,
    ICollection;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\ObjectModel\Collection.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(false)]
//[DebuggerTypeProxy(typeof(Mscorlib_CollectionDebugView<>))]
//[DebuggerDisplay("Count = {Count}")]
public class Collection1(T) : DotNetObject, IList1!(T), IList, IReadOnlyList1!(T)
{
    private IList1!(T) items;
    // Ignored: [NonSerialized]
    private DotNetObject _syncRoot;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Count'
    //TODO: generate property 'Items'
    //TODO: generate indexer
    //TODO: generate method Add
    //TODO: generate method Clear
    //TODO: generate method CopyTo
    //TODO: generate method Contains
    //TODO: generate method GetEnumerator
    //TODO: generate method IndexOf
    //TODO: generate method Insert
    //TODO: generate method Remove
    //TODO: generate method RemoveAt
    //TODO: generate method ClearItems
    //TODO: generate method InsertItem
    //TODO: generate method RemoveItem
    //TODO: generate method SetItem
    //TODO: generate property 'IsReadOnly'
    //TODO: generate method GetEnumerator
    //TODO: generate property 'IsSynchronized'
    //TODO: generate property 'SyncRoot'
    //TODO: generate method CopyTo
    //TODO: generate indexer
    //TODO: generate property 'IsReadOnly'
    //TODO: generate property 'IsFixedSize'
    //TODO: generate method Add
    //TODO: generate method Contains
    //TODO: generate method IndexOf
    //TODO: generate method Insert
    //TODO: generate method Remove
    //TODO: generate method IsCompatibleObject
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\ObjectModel\KeyedCollection.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(false)]
//[DebuggerTypeProxy(typeof(Mscorlib_KeyedCollectionDebugView<,>))]
//[DebuggerDisplay("Count = {Count}")]
public abstract class KeyedCollection2(TKey,TItem) : Collection1!(TItem)
{
    private enum int defaultThreshold/*todo: implement initializer*/ = int();
    private IEqualityComparer1!(TKey) comparer;
    private Dictionary2!(TKey,TItem) dict;
    private int keyCount;
    private int threshold;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Items'
    //TODO: generate property 'Comparer'
    //TODO: generate indexer
    //TODO: generate method Contains
    //TODO: generate method ContainsItem
    //TODO: generate method Remove
    //TODO: generate property 'Dictionary'
    //TODO: generate method ChangeItemKey
    //TODO: generate method ClearItems
    //TODO: generate method GetKeyForItem
    //TODO: generate method InsertItem
    //TODO: generate method RemoveItem
    //TODO: generate method SetItem
    //TODO: generate method AddKey
    //TODO: generate method CreateDictionary
    //TODO: generate method RemoveKey
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\ObjectModel\ReadOnlyCollection.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(false)]
//[DebuggerTypeProxy(typeof(Mscorlib_CollectionDebugView<>))]
//[DebuggerDisplay("Count = {Count}")]
public class ReadOnlyCollection1(T) : DotNetObject, IList1!(T), IList, IReadOnlyList1!(T)
{
    private IList1!(T) list;
    // Ignored: [NonSerialized]
    private DotNetObject _syncRoot;
    //TODO: generate constructor
    //TODO: generate property 'Count'
    //TODO: generate indexer
    //TODO: generate method Contains
    //TODO: generate method CopyTo
    //TODO: generate method GetEnumerator
    //TODO: generate method IndexOf
    //TODO: generate property 'Items'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate indexer
    //TODO: generate method Add
    //TODO: generate method Clear
    //TODO: generate method Insert
    //TODO: generate method Remove
    //TODO: generate method RemoveAt
    //TODO: generate method GetEnumerator
    //TODO: generate property 'IsSynchronized'
    //TODO: generate property 'SyncRoot'
    //TODO: generate method CopyTo
    //TODO: generate property 'IsFixedSize'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate indexer
    //TODO: generate method Add
    //TODO: generate method Clear
    //TODO: generate method IsCompatibleObject
    //TODO: generate method Contains
    //TODO: generate method IndexOf
    //TODO: generate method Insert
    //TODO: generate method Remove
    //TODO: generate method RemoveAt
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\ObjectModel\ReadOnlyDictionary.cs'
//
//[Serializable]
//[DebuggerTypeProxy(typeof(Mscorlib_DictionaryDebugView<,>))]
//[DebuggerDisplay("Count = {Count}")]
public class ReadOnlyDictionary2(TKey,TValue) : DotNetObject, IDictionary2!(TKey,TValue), IDictionary, IReadOnlyDictionary2!(TKey,TValue)
{
    private immutable IDictionary2!(TKey,TValue) m_dictionary;
    // Ignored: [NonSerialized]
    private DotNetObject m_syncRoot;
    // Ignored: [NonSerialized]
    private KeyCollection m_keys;
    // Ignored: [NonSerialized]
    private ValueCollection m_values;
    //TODO: generate constructor
    //TODO: generate property 'Dictionary'
    //TODO: generate property 'Keys'
    //TODO: generate property 'Values'
    //TODO: generate method ContainsKey
    //TODO: generate property 'Keys'
    //TODO: generate method TryGetValue
    //TODO: generate property 'Values'
    //TODO: generate indexer
    //TODO: generate method Add
    //TODO: generate method Remove
    //TODO: generate indexer
    //TODO: generate property 'Count'
    //TODO: generate method Contains
    //TODO: generate method CopyTo
    //TODO: generate property 'IsReadOnly'
    //TODO: generate method Add
    //TODO: generate method Clear
    //TODO: generate method Remove
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    //TODO: generate method IsCompatibleKey
    //TODO: generate method Add
    //TODO: generate method Clear
    //TODO: generate method Contains
    //TODO: generate method GetEnumerator
    //TODO: generate property 'IsFixedSize'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate property 'Keys'
    //TODO: generate method Remove
    //TODO: generate property 'Values'
    //TODO: generate indexer
    //TODO: generate method CopyTo
    //TODO: generate property 'IsSynchronized'
    //TODO: generate property 'SyncRoot'
    //[Serializable]
    private static struct DictionaryEnumerator
    {
        private immutable IDictionary2!(TKey,TValue) m_dictionary;
        private IEnumerator1!(KeyValuePair2!(TKey,TValue)) m_enumerator;
        //TODO: generate constructor
        //TODO: generate property 'Entry'
        //TODO: generate property 'Key'
        //TODO: generate property 'Value'
        //TODO: generate property 'Current'
        //TODO: generate method MoveNext
        //TODO: generate method Reset
    }
    private static class __Boxed__DictionaryEnumerator : DotNetObject, IDictionaryEnumerator
    {
        DictionaryEnumerator value;
        alias value this;
    }
    //TODO: generate property 'Keys'
    //TODO: generate property 'Values'
    //#endregion IReadOnlyDictionary members
//
//        [DebuggerTypeProxy(typeof(Mscorlib_CollectionDebugView<>))]
    //[DebuggerDisplay("Count = {Count}")]
    //[Serializable]
    public static final class KeyCollection : DotNetObject, ICollection1!(TKey), ICollection, IReadOnlyCollection1!(TKey)
    {
        private immutable ICollection1!(TKey) m_collection;
        // Ignored: [NonSerialized]
        private DotNetObject m_syncRoot;
        //TODO: generate constructor
        //TODO: generate method Add
        //TODO: generate method Clear
        //TODO: generate method Contains
        //TODO: generate method CopyTo
        //TODO: generate property 'Count'
        //TODO: generate property 'IsReadOnly'
        //TODO: generate method Remove
        //TODO: generate method GetEnumerator
        //TODO: generate method GetEnumerator
        //TODO: generate method CopyTo
        //TODO: generate property 'IsSynchronized'
        //TODO: generate property 'SyncRoot'
    }
    //[DebuggerTypeProxy(typeof(Mscorlib_CollectionDebugView<>))]
    //[DebuggerDisplay("Count = {Count}")]
    //[Serializable]
    public static final class ValueCollection : DotNetObject, ICollection1!(TValue), ICollection, IReadOnlyCollection1!(TValue)
    {
        private immutable ICollection1!(TValue) m_collection;
        // Ignored: [NonSerialized]
        private DotNetObject m_syncRoot;
        //TODO: generate constructor
        //TODO: generate method Add
        //TODO: generate method Clear
        //TODO: generate method Contains
        //TODO: generate method CopyTo
        //TODO: generate property 'Count'
        //TODO: generate property 'IsReadOnly'
        //TODO: generate method Remove
        //TODO: generate method GetEnumerator
        //TODO: generate method GetEnumerator
        //TODO: generate method CopyTo
        //TODO: generate property 'IsSynchronized'
        //TODO: generate property 'SyncRoot'
    }
}
public class ReadOnlyDictionaryHelpers : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method CopyToNonGenericICollectionHelper
}
