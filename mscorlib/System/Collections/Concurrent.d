module mscorlib.System.Collections.Concurrent;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    __DotNet__Object,
    SerializableAttribute,
    NonSerializedAttribute,
    IDisposable,
    FlagsAttribute;
import mscorlib.System.Runtime.InteropServices :
    ComVisibleAttribute;
import mscorlib.System.Diagnostics :
    DebuggerTypeProxyAttribute,
    DebuggerDisplayAttribute;
import mscorlib.System.Security.Permissions :
    HostProtectionAttribute;
import mscorlib.System.Collections.Generic :
    IDictionary2,
    IReadOnlyDictionary2,
    IEqualityComparer1,
    IEnumerator1,
    KeyValuePair2,
    IReadOnlyCollection1,
    IEnumerable1,
    IList1;
import mscorlib.System.Collections :
    IDictionary,
    IDictionaryEnumerator,
    ICollection;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Concurrent\ConcurrentDictionary.cs'
//
/// <summary>
/// Represents a thread-safe collection of keys and values.
/// </summary>
/// <typeparam name="TKey">The type of the keys in the dictionary.</typeparam>
/// <typeparam name="TValue">The type of the values in the dictionary.</typeparam>
/// <remarks>
/// All public and protected members of <see cref="ConcurrentDictionary{TKey,TValue}"/> are thread-safe and may be used
/// concurrently from multiple threads.
/// </remarks>
// #if !FEATURE_CORECLR
// [Serializable]
// #endif
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
@__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(Mscorlib_DictionaryDebugView<,>)*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Count = {Count}"*/)
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
public class ConcurrentDictionary2(TKey,TValue) : __DotNet__Object, IDictionary2!(TKey,TValue), IDictionary, IReadOnlyDictionary2!(TKey,TValue)
{
    private static class Tables : __DotNet__Object
    {
        public immutable Node[] m_buckets;
        public immutable __DotNet__Object[] m_locks;
        public /*todo: volatile*/ int[] m_countPerLock;
        public immutable IEqualityComparer1!(TKey) m_comparer;
        //TODO: generate constructor
    }
    private /*todo: volatile*/ Tables m_tables;
    public IEqualityComparer1!(TKey) m_comparer;
    private immutable bool m_growLockArray;
    private int m_keyRehashCount;
    private int m_budget;
    private enum int DEFAULT_CONCURRENCY_MULTIPLIER/*todo: implement initializer*/ = int();
    private enum int DEFAULT_CAPACITY/*todo: implement initializer*/ = int();
    private enum int MAX_LOCK_NUMBER/*todo: implement initializer*/ = int();
    private static immutable bool s_isValueWriteAtomic/*todo: implement initializer*/ = bool();
    //TODO: generate method IsValueWriteAtomic
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method InitializeFromCollection
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method TryAdd
    //TODO: generate method ContainsKey
    //TODO: generate method TryRemove
    //TODO: generate method TryRemoveInternal
    //TODO: generate method TryGetValue
    //TODO: generate method TryUpdate
    //TODO: generate method Clear
    //TODO: generate method CopyTo
    //TODO: generate method ToArray
    //TODO: generate method CopyToPairs
    //TODO: generate method CopyToEntries
    //TODO: generate method CopyToObjects
    //TODO: generate method GetEnumerator
    //TODO: generate method TryAddInternal
    //TODO: generate indexer
    //TODO: generate property 'Count'
    //TODO: generate method GetOrAdd
    //TODO: generate method GetOrAdd
    //TODO: generate method AddOrUpdate
    //TODO: generate method AddOrUpdate
    //TODO: generate property 'IsEmpty'
    //TODO: generate method Add
    //TODO: generate method Remove
    //TODO: generate property 'Keys'
    //TODO: generate property 'Keys'
    //TODO: generate property 'Values'
    //TODO: generate property 'Values'
    //TODO: generate method Add
    //TODO: generate method Contains
    //TODO: generate property 'IsReadOnly'
    //TODO: generate method Remove
    //TODO: generate method GetEnumerator
    //TODO: generate method Add
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
    //TODO: generate method GrowTable
    //TODO: generate method GetBucketAndLockNo
    //TODO: generate property 'DefaultConcurrencyLevel'
    //TODO: generate method AcquireAllLocks
    //TODO: generate method AcquireLocks
    //TODO: generate method ReleaseLocks
    //TODO: generate method GetKeys
    //TODO: generate method GetValues
    //TODO: generate method Assert
    private static class Node : __DotNet__Object
    {
        public TKey m_key;
        public TValue m_value;
        public /*todo: volatile*/ Node m_next;
        public int m_hashcode;
        //TODO: generate constructor
    }
    private static class DictionaryEnumerator : __DotNet__Object, IDictionaryEnumerator
    {
        private IEnumerator1!(KeyValuePair2!(TKey,TValue)) m_enumerator;
        //TODO: generate constructor
        //TODO: generate property 'Entry'
        //TODO: generate property 'Key'
        //TODO: generate property 'Value'
        //TODO: generate property 'Current'
        //TODO: generate method MoveNext
        //TODO: generate method Reset
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Concurrent\ConcurrentQueue.cs'
//
/// <summary>
/// Represents a thread-safe first-in, first-out collection of objects.
/// </summary>
/// <typeparam name="T">Specifies the type of elements in the queue.</typeparam>
/// <remarks>
/// All public  and protected members of <see cref="ConcurrentQueue{T}"/> are thread-safe and may be used
/// concurrently from multiple threads.
/// </remarks>
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Count = {Count}"*/)
@__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(SystemCollectionsConcurrent_ProducerConsumerCollectionDebugView<>)*/)
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class ConcurrentQueue1(T) : __DotNet__Object, IProducerConsumerCollection1!(T), IReadOnlyCollection1!(T)
{
    //fields of ConcurrentQueue
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private /*todo: volatile*/ Segment m_head;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private /*todo: volatile*/ Segment m_tail;
    private T[] m_serializationArray;
    private enum int SEGMENT_SIZE/*todo: implement initializer*/ = int();
    //number of snapshot takers, GetEnumerator(), ToList() and ToArray() operations take snapshot.
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    public /*todo: volatile*/ int m_numSnapshotTakers/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate method InitializeFromCollection
    //TODO: generate constructor
    //TODO: generate method OnSerializing
    //TODO: generate method OnDeserialized
    //TODO: generate method CopyTo
    //TODO: generate property 'IsSynchronized'
    //TODO: generate property 'SyncRoot'
    //TODO: generate method GetEnumerator
    //TODO: generate method TryAdd
    //TODO: generate method TryTake
    //TODO: generate property 'IsEmpty'
    //TODO: generate method ToArray
    //TODO: generate method ToList
    //TODO: generate method GetHeadTailPositions
    //TODO: generate property 'Count'
    //TODO: generate method CopyTo
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    //TODO: generate method Enqueue
    //TODO: generate method TryDequeue
    //TODO: generate method TryPeek
    private static class Segment : __DotNet__Object
    {
        public /*todo: volatile*/ T[] m_array;
        public /*todo: volatile*/ VolatileBool[] m_state;
        private /*todo: volatile*/ Segment m_next;
        public immutable long m_index;
        private /*todo: volatile*/ int m_low;
        private /*todo: volatile*/ int m_high;
        private /*todo: volatile*/ ConcurrentQueue1!(T) m_source;
        //TODO: generate constructor
        //TODO: generate property 'Next'
        //TODO: generate property 'IsEmpty'
        //TODO: generate method UnsafeAdd
        //TODO: generate method UnsafeGrow
        //TODO: generate method Grow
        //TODO: generate method TryAppend
        //TODO: generate method TryRemove
        //TODO: generate method TryPeek
        //TODO: generate method AddToList
        //TODO: generate property 'Low'
        //TODO: generate property 'High'
    }
}
private struct VolatileBool
{
    //TODO: generate constructor
    public /*todo: volatile*/ bool m_value;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Concurrent\ConcurrentStack.cs'
//
// A stack that uses CAS operations internally to maintain thread-safety in a lock-free
// manner. Attempting to push or pop concurrently from the stack will not trigger waiting,
// although some optimistic concurrency and retry is used, possibly leading to lack of
// fairness and/or livelock. The stack uses spinning and backoff to add some randomization,
// in hopes of statistically decreasing the possibility of livelock.
// 
// Note that we currently allocate a new node on every push. This avoids having to worry
// about potential ABA issues, since the CLR GC ensures that a memory address cannot be
// reused before all references to it have died.
/// <summary>
/// Represents a thread-safe last-in, first-out collection of objects.
/// </summary>
/// <typeparam name="T">Specifies the type of elements in the stack.</typeparam>
/// <remarks>
/// All public and protected members of <see cref="ConcurrentStack{T}"/> are thread-safe and may be used
/// concurrently from multiple threads.
/// </remarks>
@__DotNet__Attribute!(DebuggerDisplayAttribute.stringof/*, "Count = {Count}"*/)
@__DotNet__Attribute!(DebuggerTypeProxyAttribute.stringof/*, typeof(SystemCollectionsConcurrent_ProducerConsumerCollectionDebugView<>)*/)
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
public class ConcurrentStack1(T) : __DotNet__Object, IProducerConsumerCollection1!(T), IReadOnlyCollection1!(T)
{
    private static class Node : __DotNet__Object
    {
        public immutable T m_value;
        public Node m_next;
        //TODO: generate constructor
    }
    private /*todo: volatile*/ Node m_head;
    private enum int BACKOFF_MAX_YIELDS/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method InitializeFromCollection
    //TODO: generate property 'IsEmpty'
    //TODO: generate property 'Count'
    //TODO: generate property 'IsSynchronized'
    //TODO: generate property 'SyncRoot'
    //TODO: generate method Clear
    //TODO: generate method CopyTo
    //TODO: generate method CopyTo
    //TODO: generate method Push
    //TODO: generate method PushRange
    //TODO: generate method PushRange
    //TODO: generate method PushCore
    //TODO: generate method ValidatePushPopRangeInput
    //TODO: generate method TryAdd
    //TODO: generate method TryPeek
    //TODO: generate method TryPop
    //TODO: generate method TryPopRange
    //TODO: generate method TryPopRange
    //TODO: generate method TryPopCore
    //TODO: generate method TryPopCore
    //TODO: generate method CopyRemovedItems
    //TODO: generate method TryTake
    //TODO: generate method ToArray
    //TODO: generate method ToList
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Concurrent\IProducerConsumerCollection.cs'
//
public interface IProducerConsumerCollection1(T) : IEnumerable1!(T), ICollection
{
    //TODO: generate method CopyTo
    //TODO: generate method TryAdd
    //TODO: generate method TryTake
    //TODO: generate method ToArray
}
public final class SystemCollectionsConcurrent_ProducerConsumerCollectionDebugView1(T) : __DotNet__Object
{
    private IProducerConsumerCollection1!(T) m_collection;
    //TODO: generate constructor
    //TODO: generate property 'Items'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Concurrent\OrderablePartitioner.cs'
//
/// <summary>
/// Represents a particular manner of splitting an orderable data source into multiple partitions.
/// </summary>
/// <typeparam name="TSource">Type of the elements in the collection.</typeparam>
/// <remarks>
/// <para>
/// Each element in each partition has an integer index associated with it, which determines the relative
/// order of that element against elements in other partitions.
/// </para>
/// <para>
/// Inheritors of <see cref="OrderablePartitioner{TSource}"/> must adhere to the following rules:
/// <ol>
/// <li>All indices must be unique, such that there may not be duplicate indices. If all indices are not
/// unique, the output ordering may be scrambled.</li>
/// <li>All indices must be non-negative. If any indices are negative, consumers of the implementation
/// may throw exceptions.</li>
/// <li><see cref="GetPartitions"/> and <see cref="GetOrderablePartitions"/> should throw a
/// <see cref="T:System.ArgumentOutOfRangeException"/> if the requested partition count is less than or
/// equal to zero.</li>
/// <li><see cref="GetPartitions"/> and <see cref="GetOrderablePartitions"/> should always return a number
/// of enumerables equal to the requested partition count. If the partitioner runs out of data and cannot
/// create as many partitions as requested, an empty enumerator should be returned for each of the
/// remaining partitions. If this rule is not followed, consumers of the implementation may throw a <see
/// cref="T:System.InvalidOperationException"/>.</li>
/// <li><see cref="GetPartitions"/>, <see cref="GetOrderablePartitions"/>,
/// <see cref="GetDynamicPartitions"/>, and <see cref="GetOrderableDynamicPartitions"/>
/// should never return null. If null is returned, a consumer of the implementation may throw a
/// <see cref="T:System.InvalidOperationException"/>.</li>
/// <li><see cref="GetPartitions"/>, <see cref="GetOrderablePartitions"/>,
/// <see cref="GetDynamicPartitions"/>, and <see cref="GetOrderableDynamicPartitions"/>
/// should always return partitions that can fully and uniquely enumerate the input data source. All of
/// the data and only the data contained in the input source should be enumerated, with no duplication
/// that was not already in the input, unless specifically required by the particular partitioner's
/// design. If this is not followed, the output ordering may be scrambled.</li>
/// <li>If <see cref="KeysOrderedInEachPartition"/> returns true, each partition must return elements
/// with increasing key indices.</li>
/// <li>If <see cref="KeysOrderedAcrossPartitions"/> returns true, all the keys in partition numbered N
/// must be larger than all the keys in partition numbered N-1.</li>
/// <li>If <see cref="KeysNormalized"/> returns true, all indices must be monotonically increasing from
/// 0, though not necessarily within a single partition.</li>
/// </ol>
/// </para>
/// </remarks>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
public abstract class OrderablePartitioner1(TSource) : Partitioner1!(TSource)
{
    //TODO: generate constructor
    //TODO: generate method GetOrderablePartitions
    //TODO: generate method GetOrderableDynamicPartitions
    //TODO: generate property 'KeysOrderedInEachPartition'
    //TODO: generate property 'KeysOrderedAcrossPartitions'
    //TODO: generate property 'KeysNormalized'
    //TODO: generate method GetPartitions
    //TODO: generate method GetDynamicPartitions
    private static class EnumerableDropIndices : __DotNet__Object, IEnumerable1!(TSource), IDisposable
    {
        private immutable IEnumerable1!(KeyValuePair2!(long,TSource)) m_source;
        //TODO: generate constructor
        //TODO: generate method GetEnumerator
        //TODO: generate method GetEnumerator
        //TODO: generate method Dispose
    }
    private static class EnumeratorDropIndices : __DotNet__Object, IEnumerator1!(TSource)
    {
        private immutable IEnumerator1!(KeyValuePair2!(long,TSource)) m_source;
        //TODO: generate constructor
        //TODO: generate method MoveNext
        //TODO: generate property 'Current'
        //TODO: generate property 'Current'
        //TODO: generate method Dispose
        //TODO: generate method Reset
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Concurrent\Partitioner.cs'
//
/// <summary>
/// Represents a particular manner of splitting a data source into multiple partitions.
/// </summary>
/// <typeparam name="TSource">Type of the elements in the collection.</typeparam>
/// <remarks>
/// <para>
/// Inheritors of <see cref="Partitioner{TSource}"/> must adhere to the following rules:
/// <ol>
/// <li><see cref="GetPartitions"/> should throw a
/// <see cref="T:System.ArgumentOutOfRangeException"/> if the requested partition count is less than or
/// equal to zero.</li>
/// <li><see cref="GetPartitions"/> should always return a number of enumerables equal to the requested
/// partition count. If the partitioner runs out of data and cannot create as many partitions as 
/// requested, an empty enumerator should be returned for each of the remaining partitions. If this rule
/// is not followed, consumers of the implementation may throw a <see
/// cref="T:System.InvalidOperationException"/>.</li>
/// <li><see cref="GetPartitions"/> and <see cref="GetDynamicPartitions"/>
/// should never return null. If null is returned, a consumer of the implementation may throw a
/// <see cref="T:System.InvalidOperationException"/>.</li>
/// <li><see cref="GetPartitions"/> and <see cref="GetDynamicPartitions"/> should always return
/// partitions that can fully and uniquely enumerate the input data source. All of the data and only the
/// data contained in the input source should be enumerated, with no duplication that was not already in
/// the input, unless specifically required by the particular partitioner's design. If this is not
/// followed, the output ordering may be scrambled.</li>
/// </ol>
/// </para>
/// </remarks>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
public abstract class Partitioner1(TSource) : __DotNet__Object
{
    //TODO: generate method GetPartitions
    //TODO: generate property 'SupportsDynamicPartitions'
    //TODO: generate method GetDynamicPartitions
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Collections\Concurrent\PartitionerStatic.cs'
//
/// <summary>
/// Out-of-the-box partitioners are created with a set of default behaviors.  
/// For example, by default, some form of buffering and chunking will be employed to achieve 
/// optimal performance in the common scenario where an IEnumerable<> implementation is fast and 
/// non-blocking.  These behaviors can be overridden via this enumeration.
/// </summary>
@__DotNet__Attribute!(FlagsAttribute.stringof)
public enum EnumerablePartitionerOptions
{
    /// <summary>
    /// Use the default behavior (i.e., use buffering to achieve optimal performance)
    /// </summary>
    None = 0x0,
    /// <summary>
    /// Creates a partitioner that will take items from the source enumerable one at a time
    /// and will not use intermediate storage that can be accessed more efficiently by multiple threads.  
    /// This option provides support for low latency (items will be processed as soon as they are available from 
    /// the source) and partial support for dependencies between items (a thread cannot deadlock waiting for an item 
    /// that it, itself, is responsible for processing).
    /// </summary>
    NoBuffering = 0x1,
}
// The static class Partitioners implements 3 default partitioning strategies:
// 1. dynamic load balance partitioning for indexable data source (IList and arrays)
// 2. static partitioning for indexable data source (IList and arrays)
// 3. dynamic load balance partitioning for enumerables. Enumerables have indexes, which are the natural order
//    of elements, but enuemrators are not indexable 
// - data source of type IList/arrays have both dynamic and static partitioning, as 1 and 3.
//   We assume that the source data of IList/Array is not changing concurrently.
// - data source of type IEnumerable can only be partitioned dynamically (load-balance)
// - Dynamic partitioning methods 1 and 3 are same, both being dynamic and load-balance. But the 
//   implementation is different for data source of IList/Array vs. IEnumerable:
//   * When the source collection is IList/Arrays, we use Interlocked on the shared index; 
//   * When the source collection is IEnumerable, we use Monitor to wrap around the access to the source 
//     enumerator.
/// <summary>
/// Provides common partitioning strategies for arrays, lists, and enumerables.
/// </summary>
/// <remarks>
/// <para>
/// The static methods on <see cref="Partitioner"/> are all thread-safe and may be used concurrently
/// from multiple threads. However, while a created partitioner is in use, the underlying data source
/// should not be modified, whether from the same thread that's using a partitioner or from a separate
/// thread.
/// </para>
/// </remarks>
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, Synchronization = true, ExternalThreading = true*/)
public class Partitioner : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method Create
    //TODO: generate method Create
    //TODO: generate method Create
    //TODO: generate method Create
    //TODO: generate method Create
    //TODO: generate method Create
    //TODO: generate method CreateRanges
    //TODO: generate method Create
    //TODO: generate method Create
    //TODO: generate method CreateRanges
    private static abstract class DynamicPartitionEnumerator_Abstract2(TSource,TSourceReader) : __DotNet__Object, IEnumerator1!(KeyValuePair2!(long,TSource))
    {
        protected immutable TSourceReader m_sharedReader;
        protected static int s_defaultMaxChunkSize/*todo: implement initializer*/ = int();
        protected SharedInt m_currentChunkSize;
        protected SharedInt m_localOffset;
        private enum int CHUNK_DOUBLING_RATE/*todo: implement initializer*/ = int();
        private int m_doublingCountdown;
        protected immutable int m_maxChunkSize;
        protected immutable SharedLong m_sharedIndex;
        //TODO: generate constructor
        //TODO: generate constructor
        //TODO: generate method GrabNextChunk
        //TODO: generate property 'HasNoElementsLeft'
        //TODO: generate property 'Current'
        //TODO: generate method Dispose
        //TODO: generate method Reset
        //TODO: generate property 'Current'
        //TODO: generate method MoveNext
    }
    private static class DynamicPartitionerForIEnumerable1(TSource) : OrderablePartitioner1!(TSource)
    {
        private IEnumerable1!(TSource) m_source;
        private immutable bool m_useSingleChunking;
        //TODO: generate constructor
        //TODO: generate method GetOrderablePartitions
        //TODO: generate method GetOrderableDynamicPartitions
        //TODO: generate property 'SupportsDynamicPartitions'
        private static class InternalPartitionEnumerable : __DotNet__Object, IEnumerable1!(KeyValuePair2!(long,TSource)), IDisposable
        {
            private immutable IEnumerator1!(TSource) m_sharedReader;
            private SharedLong m_sharedIndex;
            private /*todo: volatile*/ KeyValuePair2!(long,TSource)[] m_FillBuffer;
            private /*todo: volatile*/ int m_FillBufferSize;
            private /*todo: volatile*/ int m_FillBufferCurrentPosition;
            private /*todo: volatile*/ int m_activeCopiers;
            private SharedBool m_hasNoElementsLeft;
            private SharedBool m_sourceDepleted;
            private __DotNet__Object m_sharedLock;
            private bool m_disposed;
            private SharedInt m_activePartitionCount;
            private immutable bool m_useSingleChunking;
            //TODO: generate constructor
            //TODO: generate method GetEnumerator
            //TODO: generate method GetEnumerator
            //TODO: generate method TryCopyFromFillBuffer
            //TODO: generate method GrabChunk
            //TODO: generate method GrabChunk_Single
            //TODO: generate method GrabChunk_Buffered
            //TODO: generate method Dispose
        }
        private static class InternalPartitionEnumerator : DynamicPartitionEnumerator_Abstract2!(TSource,IEnumerator1!(TSource))
        {
            private KeyValuePair2!(long,TSource)[] m_localList;
            private immutable SharedBool m_hasNoElementsLeft;
            private immutable __DotNet__Object m_sharedLock;
            private immutable SharedInt m_activePartitionCount;
            private InternalPartitionEnumerable m_enumerable;
            //TODO: generate constructor
            //TODO: generate method GrabNextChunk
            //TODO: generate property 'HasNoElementsLeft'
            //TODO: generate property 'Current'
            //TODO: generate method Dispose
        }
    }
    private static abstract class DynamicPartitionerForIndexRange_Abstract2(TSource,TCollection) : OrderablePartitioner1!(TSource)
    {
        private TCollection m_data;
        //TODO: generate constructor
        //TODO: generate method GetOrderableDynamicPartitions_Factory
        //TODO: generate method GetOrderablePartitions
        //TODO: generate method GetOrderableDynamicPartitions
        //TODO: generate property 'SupportsDynamicPartitions'
    }
    private static abstract class DynamicPartitionEnumeratorForIndexRange_Abstract2(TSource,TSourceReader) : DynamicPartitionEnumerator_Abstract2!(TSource,TSourceReader)
    {
        protected int m_startIndex;
        //TODO: generate constructor
        //TODO: generate property 'SourceCount'
        //TODO: generate method GrabNextChunk
        //TODO: generate property 'HasNoElementsLeft'
        //TODO: generate method Dispose
    }
    private static class DynamicPartitionerForIList1(TSource) : DynamicPartitionerForIndexRange_Abstract2!(TSource,IList1!(TSource))
    {
        //TODO: generate constructor
        //TODO: generate method GetOrderableDynamicPartitions_Factory
        private static class InternalPartitionEnumerable : __DotNet__Object, IEnumerable1!(KeyValuePair2!(long,TSource))
        {
            private immutable IList1!(TSource) m_sharedReader;
            private SharedLong m_sharedIndex;
            //TODO: generate constructor
            //TODO: generate method GetEnumerator
            //TODO: generate method GetEnumerator
        }
        private static class InternalPartitionEnumerator : DynamicPartitionEnumeratorForIndexRange_Abstract2!(TSource,IList1!(TSource))
        {
            //TODO: generate constructor
            //TODO: generate property 'SourceCount'
            //TODO: generate property 'Current'
        }
    }
    private static class DynamicPartitionerForArray1(TSource) : DynamicPartitionerForIndexRange_Abstract2!(TSource,TSource[])
    {
        //TODO: generate constructor
        //TODO: generate method GetOrderableDynamicPartitions_Factory
        private static class InternalPartitionEnumerable : __DotNet__Object, IEnumerable1!(KeyValuePair2!(long,TSource))
        {
            private immutable TSource[] m_sharedReader;
            private SharedLong m_sharedIndex;
            //TODO: generate constructor
            //TODO: generate method GetEnumerator
            //TODO: generate method GetEnumerator
        }
        private static class InternalPartitionEnumerator : DynamicPartitionEnumeratorForIndexRange_Abstract2!(TSource,TSource[])
        {
            //TODO: generate constructor
            //TODO: generate property 'SourceCount'
            //TODO: generate property 'Current'
        }
    }
    private static abstract class StaticIndexRangePartitioner2(TSource,TCollection) : OrderablePartitioner1!(TSource)
    {
        //TODO: generate constructor
        //TODO: generate property 'SourceCount'
        //TODO: generate method CreatePartition
        //TODO: generate method GetOrderablePartitions
    }
    private static abstract class StaticIndexRangePartition1(TSource) : __DotNet__Object, IEnumerator1!(KeyValuePair2!(long,TSource))
    {
        protected immutable int m_startIndex;
        protected immutable int m_endIndex;
        protected /*todo: volatile*/ int m_offset;
        //TODO: generate constructor
        //TODO: generate property 'Current'
        //TODO: generate method Dispose
        //TODO: generate method Reset
        //TODO: generate method MoveNext
        //TODO: generate property 'Current'
    }
    private static class StaticIndexRangePartitionerForIList1(TSource) : StaticIndexRangePartitioner2!(TSource,IList1!(TSource))
    {
        private IList1!(TSource) m_list;
        //TODO: generate constructor
        //TODO: generate property 'SourceCount'
        //TODO: generate method CreatePartition
    }
    private static class StaticIndexRangePartitionForIList1(TSource) : StaticIndexRangePartition1!(TSource)
    {
        private /*todo: volatile*/ IList1!(TSource) m_list;
        //TODO: generate constructor
        //TODO: generate property 'Current'
    }
    private static class StaticIndexRangePartitionerForArray1(TSource) : StaticIndexRangePartitioner2!(TSource,TSource[])
    {
        private TSource[] m_array;
        //TODO: generate constructor
        //TODO: generate property 'SourceCount'
        //TODO: generate method CreatePartition
    }
    private static class StaticIndexRangePartitionForArray1(TSource) : StaticIndexRangePartition1!(TSource)
    {
        private /*todo: volatile*/ TSource[] m_array;
        //TODO: generate constructor
        //TODO: generate property 'Current'
    }
    private static class SharedInt : __DotNet__Object
    {
        public /*todo: volatile*/ int Value;
        //TODO: generate constructor
    }
    private static class SharedBool : __DotNet__Object
    {
        public /*todo: volatile*/ bool Value;
        //TODO: generate constructor
    }
    private static class SharedLong : __DotNet__Object
    {
        public long Value;
        //TODO: generate constructor
    }
    private enum int DEFAULT_BYTES_PER_CHUNK/*todo: implement initializer*/ = int();
    //TODO: generate method GetDefaultChunkSize
}
