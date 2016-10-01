module mscorlib.System.Collections.ObjectModel;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    SerializableAttribute,
    __DotNet__Object,
    NonSerializedAttribute;
import mscorlib.System.Runtime.InteropServices :
    ComVisibleAttribute;
import mscorlib.System.Diagnostics :
    DebuggerTypeProxyAttribute,
    DebuggerDisplayAttribute;
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
@__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(Mscorlib_CollectionDebugView<>)*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Count = {Count}"*/)
public class Collection1(T) : __DotNet__Object, IList1!(T), IList, IReadOnlyList1!(T)
{
    private IList1!(T) items;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private __DotNet__Object _syncRoot;
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
@__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(Mscorlib_KeyedCollectionDebugView<,>)*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Count = {Count}"*/)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
@__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(Mscorlib_CollectionDebugView<>)*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Count = {Count}"*/)
public class ReadOnlyCollection1(T) : __DotNet__Object, IList1!(T), IList, IReadOnlyList1!(T)
{
    private IList1!(T) list;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private __DotNet__Object _syncRoot;
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(Mscorlib_DictionaryDebugView<,>)*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Count = {Count}"*/)
public class ReadOnlyDictionary2(TKey,TValue) : __DotNet__Object, IDictionary2!(TKey,TValue), IDictionary, IReadOnlyDictionary2!(TKey,TValue)
{
    private immutable IDictionary2!(TKey,TValue) m_dictionary;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private __DotNet__Object m_syncRoot;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private KeyCollection m_keys;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
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
    @__DotNet__Attribute!(SerializableAttribute.stringof)
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
    private static class __Boxed__DictionaryEnumerator : __DotNet__Object, IDictionaryEnumerator
    {
        DictionaryEnumerator value;
        alias value this;
    }
    //TODO: generate property 'Keys'
    //TODO: generate property 'Values'
    // #endregion IReadOnlyDictionary members
    @__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(Mscorlib_CollectionDebugView<>)*/)
    @__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Count = {Count}"*/)
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    public static final class KeyCollection : __DotNet__Object, ICollection1!(TKey), ICollection, IReadOnlyCollection1!(TKey)
    {
        private immutable ICollection1!(TKey) m_collection;
        @__DotNet__Attribute!(NonSerializedAttribute.stringof)
        private __DotNet__Object m_syncRoot;
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
    @__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(Mscorlib_CollectionDebugView<>)*/)
    @__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Count = {Count}"*/)
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    public static final class ValueCollection : __DotNet__Object, ICollection1!(TValue), ICollection, IReadOnlyCollection1!(TValue)
    {
        private immutable ICollection1!(TValue) m_collection;
        @__DotNet__Attribute!(NonSerializedAttribute.stringof)
        private __DotNet__Object m_syncRoot;
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
public class ReadOnlyDictionaryHelpers : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method CopyToNonGenericICollectionHelper
}
