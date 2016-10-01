module mscorlib.System.IO;

import mscorlib.System :
    String,
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    __DotNet__Object,
    IDisposable,
    SerializableAttribute,
    FlagsAttribute,
    IAsyncResult,
    AsyncCallback,
    Action1,
    SystemException,
    NonSerializedAttribute,
    ThreadStaticAttribute,
    ObsoleteAttribute,
    IFormatProvider;
import mscorlib.System.Diagnostics.Contracts :
    PureAttribute,
    ContractPublicPropertyNameAttribute;
import mscorlib.System.Runtime.InteropServices :
    ComVisibleAttribute,
    StringBuffer,
    GCHandle,
    SafeBuffer;
import mscorlib.System.Text :
    Decoder,
    Encoding,
    Encoder,
    StringBuilder,
    UnicodeEncoding;
import mscorlib.System.Runtime.Serialization :
    OptionalFieldAttribute,
    ISerializable;
import mscorlib.System.Threading.Tasks :
    BeginEndAwaitableAdapter,
    Task1,
    ITaskCompletionAction,
    Task;
import mscorlib.System.Security :
    SecurityCriticalAttribute,
    SecurityState;
import mscorlib.System.Runtime.CompilerServices :
    FriendAccessAllowedAttribute;
import mscorlib.System.Threading :
    ManualResetEvent,
    NativeOverlapped,
    IOCompletionCallback,
    CancellationToken,
    CancellationTokenRegistration,
    SemaphoreSlim,
    ExecutionContext,
    ContextCallback;
import mscorlib.Microsoft.Win32.SafeHandles :
    SafeFileHandle,
    SafeFindHandle;
import mscorlib.System.Collections.Generic :
    IEnumerable1,
    IEnumerator1,
    List1;
import mscorlib.Microsoft.Win32 :
    Win32Native;
import mscorlib.System.Runtime.ExceptionServices :
    ExceptionDispatchInfo;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\__DebugOutputTextWriter.cs'
//
public class __DebugOutputTextWriter : TextWriter
{
    private immutable String _consoleType;
    //TODO: generate constructor
    //TODO: generate property 'Encoding'
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method WriteLine
    //TODO: generate method OutputDebugString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\__Error.cs'
//
@__DotNet__Attribute!(PureAttribute.stringof)
public class __Error : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method EndOfFile
    //TODO: generate method FileNotOpen
    //TODO: generate method StreamIsClosed
    //TODO: generate method MemoryStreamNotExpandable
    //TODO: generate method ReaderClosed
    //TODO: generate method ReadNotSupported
    //TODO: generate method SeekNotSupported
    //TODO: generate method WrongAsyncResult
    //TODO: generate method EndReadCalledTwice
    //TODO: generate method EndWriteCalledTwice
    //TODO: generate method GetDisplayablePath
    //TODO: generate method WinIOError
    //TODO: generate method WinIOError
    //TODO: generate method WinIODriveError
    //TODO: generate method WinIODriveError
    //TODO: generate method WriteNotSupported
    //TODO: generate method WriterClosed
    public enum int ERROR_FILE_NOT_FOUND/*todo: implement initializer*/ = int();
    public enum int ERROR_PATH_NOT_FOUND/*todo: implement initializer*/ = int();
    public enum int ERROR_ACCESS_DENIED/*todo: implement initializer*/ = int();
    public enum int ERROR_INVALID_PARAMETER/*todo: implement initializer*/ = int();
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\__HResults.cs'
//
public class __HResults : __DotNet__Object
{
    private this() {} // prevent instantiation
    public enum int COR_E_ENDOFSTREAM/*todo: implement initializer*/ = int();
    public enum int COR_E_FILELOAD/*todo: implement initializer*/ = int();
    public enum int COR_E_FILENOTFOUND/*todo: implement initializer*/ = int();
    public enum int COR_E_DIRECTORYNOTFOUND/*todo: implement initializer*/ = int();
    public enum int COR_E_PATHTOOLONG/*todo: implement initializer*/ = int();
    public enum int COR_E_IO/*todo: implement initializer*/ = int();
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\BinaryReader.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class BinaryReader : __DotNet__Object, IDisposable
{
    private enum int MaxCharBytesSize/*todo: implement initializer*/ = int();
    private Stream m_stream;
    private ubyte[] m_buffer;
    private Decoder m_decoder;
    private ubyte[] m_charBytes;
    private wchar[] m_singleChar;
    private wchar[] m_charBuffer;
    private int m_maxCharsSize;
    private bool m_2BytesPerChar;
    private bool m_isMemoryStream;
    private bool m_leaveOpen;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'BaseStream'
    //TODO: generate method Close
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    //TODO: generate method PeekChar
    //TODO: generate method Read
    //TODO: generate method ReadBoolean
    //TODO: generate method ReadByte
    //TODO: generate method ReadSByte
    //TODO: generate method ReadChar
    //TODO: generate method ReadInt16
    //TODO: generate method ReadUInt16
    //TODO: generate method ReadInt32
    //TODO: generate method ReadUInt32
    //TODO: generate method ReadInt64
    //TODO: generate method ReadUInt64
    //TODO: generate method ReadSingle
    //TODO: generate method ReadDouble
    //TODO: generate method ReadDecimal
    //TODO: generate method ReadString
    //TODO: generate method Read
    //TODO: generate method InternalReadChars
    //TODO: generate method InternalReadOneChar
    //TODO: generate method ReadChars
    //TODO: generate method Read
    //TODO: generate method ReadBytes
    //TODO: generate method FillBuffer
    //TODO: generate method Read7BitEncodedInt
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\BinaryWriter.cs'
//
// This abstract base class represents a writer that can write
// primitives to an arbitrary stream. A subclass can override methods to
// give unique encodings.
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class BinaryWriter : __DotNet__Object, IDisposable
{
    public static immutable BinaryWriter Null/*todo: implement initializer*/ = null;
    protected Stream OutStream;
    private ubyte[] _buffer;
    private Encoding _encoding;
    private Encoder _encoder;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof)
    private bool _leaveOpen;
    // This field should never have been serialized and has not been used since before v2.0.
    // However, this type is serializable, and we need to keep the field name around when deserializing.
    // Also, we'll make .NET FX 4.5 not break if it's missing.
    // #pragma warning disable 169
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof)
    private wchar[] _tmpOneCharBuffer;
    private ubyte[] _largeByteBuffer;
    private int _maxChars;
    private enum int LargeByteBufferSize/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Close
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    //TODO: generate property 'BaseStream'
    //TODO: generate method Flush
    //TODO: generate method Seek
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
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write7BitEncodedInt
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\BufferedStream.cs'
//
/// <summary>
/// One of the design goals here is to prevent the buffer from getting in the way and slowing
/// down underlying stream accesses when it is not needed. If you always read & write for sizes
/// greater than the internal buffer size, then this class may not even allocate the internal buffer.
/// See a large comment in Write for the details of the write buffer heuristic.
/// 
/// This class buffers reads & writes in a shared buffer.
/// (If you maintained two buffers separately, one operation would always trash the other buffer
/// anyways, so we might as well use one buffer.) 
/// The assumption here is you will almost always be doing a series of reads or writes, but rarely
/// alternate between the two of them on the same stream.
///
/// Class Invariants:
/// The class has one buffer, shared for reading & writing.
/// It can only be used for one or the other at any point in time - not both.
/// The following should be true:
/// <![CDATA[
///   * 0 <= _readPos <= _readLen < _bufferSize
///   * 0 <= _writePos < _bufferSize
///   * _readPos == _readLen && _readPos > 0 implies the read buffer is valid, but we're at the end of the buffer.
///   * _readPos == _readLen == 0 means the read buffer contains garbage.
///   * Either _writePos can be greater than 0, or _readLen & _readPos can be greater than zero,
///     but neither can be greater than zero at the same time.
///  ]]>
/// This class will never cache more bytes than the max specified buffer size.
/// However, it may use a temporary buffer of up to twice the size in order to combine several IO operations on
/// the underlying stream into a single operation. This is because we assume that memory copies are significantly
/// faster than IO operations on the underlying stream (if this was not true, using buffering is never appropriate).
/// The max size of this "shadow" buffer is limited as to not allocate it on the LOH.
/// Shadowing is always transient. Even when using this technique, this class still guarantees that the number of
/// bytes cached (not yet written to the target stream or not yet consumed by the user) is never larger than the 
/// actual specified buffer size.
/// </summary>
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class BufferedStream : Stream
{
    private enum int _DefaultBufferSize/*todo: implement initializer*/ = int();
    private Stream _stream;
    private ubyte[] _buffer;
    private immutable int _bufferSize;
    private int _readPos;
    private int _readLen;
    private int _writePos;
    private BeginEndAwaitableAdapter _beginEndAwaitable;
    private Task1!(int) _lastSyncCompletedReadTask;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method EnsureNotClosed
    //TODO: generate method EnsureCanSeek
    //TODO: generate method EnsureCanRead
    //TODO: generate method EnsureCanWrite
    //TODO: generate method EnsureBeginEndAwaitableAllocated
    private enum int MaxShadowBufferSize/*todo: implement initializer*/ = int();
    //TODO: generate method EnsureShadowBufferAllocated
    //TODO: generate method EnsureBufferAllocated
    //TODO: generate property 'UnderlyingStream'
    //TODO: generate property 'BufferSize'
    //TODO: generate property 'CanRead'
    //TODO: generate property 'CanWrite'
    //TODO: generate property 'CanSeek'
    //TODO: generate property 'Length'
    //TODO: generate property 'Position'
    //TODO: generate method Dispose
    //TODO: generate method Flush
    //TODO: generate method FlushAsync
    //TODO: generate method FlushAsyncInternal
    //TODO: generate method FlushRead
    //TODO: generate method ClearReadBufferBeforeWrite
    //TODO: generate method FlushWrite
    //TODO: generate method FlushWriteAsync
    //TODO: generate method ReadFromBuffer
    //TODO: generate method ReadFromBuffer
    //TODO: generate method Read
    //TODO: generate method BeginRead
    //TODO: generate method BeginReadFromUnderlyingStream
    //TODO: generate method EndRead
    //TODO: generate method LastSyncCompletedReadTask
    //TODO: generate method ReadAsync
    //TODO: generate method ReadFromUnderlyingStreamAsync
    //TODO: generate method ReadByte
    //TODO: generate method WriteToBuffer
    //TODO: generate method WriteToBuffer
    //TODO: generate method Write
    //TODO: generate method BeginWrite
    //TODO: generate method BeginWriteToUnderlyingStream
    //TODO: generate method EndWrite
    //TODO: generate method WriteAsync
    //TODO: generate method WriteToUnderlyingStreamAsync
    //TODO: generate method WriteByte
    //TODO: generate method Seek
    //TODO: generate method SetLength
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\Directory.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class Directory : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method GetParent
    //TODO: generate method CreateDirectory
    //TODO: generate method UnsafeCreateDirectory
    //TODO: generate method InternalCreateDirectoryHelper
    //TODO: generate method GetDemandDir
    //TODO: generate method InternalCreateDirectory
    //TODO: generate method InternalCreateDirectory
    //TODO: generate method Exists
    //TODO: generate method UnsafeExists
    //TODO: generate method InternalExistsHelper
    //TODO: generate method InternalExists
    //TODO: generate method InternalExists
    //TODO: generate method SetCreationTime
    //TODO: generate method SetCreationTimeUtc
    //TODO: generate method GetCreationTime
    //TODO: generate method GetCreationTimeUtc
    //TODO: generate method SetLastWriteTime
    //TODO: generate method SetLastWriteTimeUtc
    //TODO: generate method GetLastWriteTime
    //TODO: generate method GetLastWriteTimeUtc
    //TODO: generate method SetLastAccessTime
    //TODO: generate method SetLastAccessTimeUtc
    //TODO: generate method GetLastAccessTime
    //TODO: generate method GetLastAccessTimeUtc
    //TODO: generate method GetFiles
    //TODO: generate method GetFiles
    //TODO: generate method GetFiles
    //TODO: generate method InternalGetFiles
    //TODO: generate method UnsafeGetFiles
    //TODO: generate method GetDirectories
    //TODO: generate method GetDirectories
    //TODO: generate method GetDirectories
    //TODO: generate method InternalGetDirectories
    //TODO: generate method UnsafeGetDirectories
    //TODO: generate method GetFileSystemEntries
    //TODO: generate method GetFileSystemEntries
    //TODO: generate method GetFileSystemEntries
    //TODO: generate method InternalGetFileSystemEntries
    public static final class SearchData : __DotNet__Object
    {
        //TODO: generate constructor
        public immutable String fullPath;
        public immutable String userPath;
        public immutable SearchOption searchOption;
    }
    //TODO: generate method InternalGetFileDirectoryNames
    //TODO: generate method EnumerateDirectories
    //TODO: generate method EnumerateDirectories
    //TODO: generate method EnumerateDirectories
    //TODO: generate method InternalEnumerateDirectories
    //TODO: generate method EnumerateFiles
    //TODO: generate method EnumerateFiles
    //TODO: generate method EnumerateFiles
    //TODO: generate method InternalEnumerateFiles
    //TODO: generate method EnumerateFileSystemEntries
    //TODO: generate method EnumerateFileSystemEntries
    //TODO: generate method EnumerateFileSystemEntries
    //TODO: generate method InternalEnumerateFileSystemEntries
    //TODO: generate method EnumerateFileSystemNames
    //TODO: generate method GetLogicalDrives
    //TODO: generate method GetDirectoryRoot
    //TODO: generate method InternalGetDirectoryRoot
    //TODO: generate method GetCurrentDirectory
    //TODO: generate method UnsafeGetCurrentDirectory
    //TODO: generate method InternalGetCurrentDirectory
    //TODO: generate method NewGetCurrentDirectory
    //TODO: generate method SetCurrentDirectory
    //TODO: generate method Move
    //TODO: generate method UnsafeMove
    //TODO: generate method InternalMove
    //TODO: generate method Delete
    //TODO: generate method Delete
    //TODO: generate method UnsafeDelete
    //TODO: generate method Delete
    //TODO: generate method DeleteHelper
    //TODO: generate method OpenHandle
    private enum int FILE_ATTRIBUTE_DIRECTORY/*todo: implement initializer*/ = int();
    private enum int GENERIC_WRITE/*todo: implement initializer*/ = int();
    private enum int FILE_SHARE_WRITE/*todo: implement initializer*/ = int();
    private enum int FILE_SHARE_DELETE/*todo: implement initializer*/ = int();
    private enum int OPEN_EXISTING/*todo: implement initializer*/ = int();
    private enum int FILE_FLAG_BACKUP_SEMANTICS/*todo: implement initializer*/ = int();
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\DirectoryInfo.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class DirectoryInfo : FileSystemInfo
{
    private String[] demandDir;
    //TODO: generate constructor
    //TODO: generate method UnsafeCreateDirectoryInfo
    //TODO: generate constructor
    //TODO: generate method Init
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Name'
    //TODO: generate property 'Parent'
    //TODO: generate method CreateSubdirectory
    //TODO: generate method CreateSubdirectory
    //TODO: generate method CreateSubdirectoryHelper
    //TODO: generate method Create
    //TODO: generate property 'Exists'
    //TODO: generate method GetFiles
    //TODO: generate method GetFiles
    //TODO: generate method InternalGetFiles
    //TODO: generate method GetFiles
    //TODO: generate method GetDirectories
    //TODO: generate method GetFileSystemInfos
    //TODO: generate method GetFileSystemInfos
    //TODO: generate method InternalGetFileSystemInfos
    //TODO: generate method GetFileSystemInfos
    //TODO: generate method GetDirectories
    //TODO: generate method GetDirectories
    //TODO: generate method InternalGetDirectories
    //TODO: generate method EnumerateDirectories
    //TODO: generate method EnumerateDirectories
    //TODO: generate method EnumerateDirectories
    //TODO: generate method InternalEnumerateDirectories
    //TODO: generate method EnumerateFiles
    //TODO: generate method EnumerateFiles
    //TODO: generate method EnumerateFiles
    //TODO: generate method InternalEnumerateFiles
    //TODO: generate method EnumerateFileSystemInfos
    //TODO: generate method EnumerateFileSystemInfos
    //TODO: generate method EnumerateFileSystemInfos
    //TODO: generate method InternalEnumerateFileSystemInfos
    //TODO: generate property 'Root'
    //TODO: generate method MoveTo
    //TODO: generate method Delete
    //TODO: generate method Delete
    //TODO: generate method ToString
    //TODO: generate method GetDisplayName
    //TODO: generate method GetDirName
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\DirectoryNotFoundException.cs'
//
// 
// * Thrown when trying to access a directory that doesn't exist on disk.
// * From COM Interop, this exception is thrown for 2 HRESULTS: 
// * the Win32 errorcode-as-HRESULT ERROR_PATH_NOT_FOUND (0x80070003) 
// * and STG_E_PATHNOTFOUND (0x80030003).
// 
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class DirectoryNotFoundException : IOException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\DriveInfo.cs'
//
// Matches Win32's DRIVE_XXX #defines from winbase.h
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum DriveType
{
    Unknown = 0,
    NoRootDirectory = 1,
    Removable = 2,
    Fixed = 3,
    Network = 4,
    CDRom = 5,
    Ram = 6,
}
// Ideally we'll get a better security permission, but possibly
// not for Whidbey.
// #if FEATURE_SERIALIZATION
// [Serializable]
// #endif
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class DriveInfo : __DotNet__Object
{
    private String _name;
    private enum String NameField/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Name'
    //TODO: generate property 'DriveType'
    //TODO: generate property 'DriveFormat'
    //TODO: generate property 'IsReady'
    //TODO: generate property 'AvailableFreeSpace'
    //TODO: generate property 'TotalFreeSpace'
    //TODO: generate property 'TotalSize'
    //TODO: generate method GetDrives
    //TODO: generate property 'RootDirectory'
    //TODO: generate property 'VolumeLabel'
    //TODO: generate method ToString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\DriveNotFoundException.cs'
//
//Thrown when trying to access a drive that is not availabe.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class DriveNotFoundException : IOException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\EndOfStreamException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class EndOfStreamException : IOException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\File.cs'
//
// Class for creating FileStream objects, and some basic file management
// routines such as Delete, etc.
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class File : __DotNet__Object
{
    private this() {} // prevent instantiation
    private enum int GetFileExInfoStandard/*todo: implement initializer*/ = int();
    //TODO: generate method OpenText
    //TODO: generate method CreateText
    //TODO: generate method AppendText
    //TODO: generate method Copy
    //TODO: generate method Copy
    //TODO: generate method UnsafeCopy
    //TODO: generate method InternalCopy
    //TODO: generate method Create
    //TODO: generate method Create
    //TODO: generate method Create
    //TODO: generate method Delete
    //TODO: generate method UnsafeDelete
    //TODO: generate method InternalDelete
    //TODO: generate method Decrypt
    //TODO: generate method Encrypt
    //TODO: generate method Exists
    //TODO: generate method UnsafeExists
    //TODO: generate method InternalExistsHelper
    //TODO: generate method InternalExists
    //TODO: generate method Open
    //TODO: generate method Open
    //TODO: generate method Open
    //TODO: generate method SetCreationTime
    //TODO: generate method SetCreationTimeUtc
    //TODO: generate method GetCreationTime
    //TODO: generate method GetCreationTimeUtc
    //TODO: generate method InternalGetCreationTimeUtc
    //TODO: generate method SetLastAccessTime
    //TODO: generate method SetLastAccessTimeUtc
    //TODO: generate method GetLastAccessTime
    //TODO: generate method GetLastAccessTimeUtc
    //TODO: generate method InternalGetLastAccessTimeUtc
    //TODO: generate method SetLastWriteTime
    //TODO: generate method SetLastWriteTimeUtc
    //TODO: generate method GetLastWriteTime
    //TODO: generate method GetLastWriteTimeUtc
    //TODO: generate method InternalGetLastWriteTimeUtc
    //TODO: generate method GetAttributes
    //TODO: generate method SetAttributes
    //TODO: generate method OpenRead
    //TODO: generate method OpenWrite
    //TODO: generate method ReadAllText
    //TODO: generate method ReadAllText
    //TODO: generate method UnsafeReadAllText
    //TODO: generate method InternalReadAllText
    //TODO: generate method WriteAllText
    //TODO: generate method WriteAllText
    //TODO: generate method UnsafeWriteAllText
    //TODO: generate method InternalWriteAllText
    //TODO: generate method ReadAllBytes
    //TODO: generate method UnsafeReadAllBytes
    //TODO: generate method InternalReadAllBytes
    //TODO: generate method WriteAllBytes
    //TODO: generate method UnsafeWriteAllBytes
    //TODO: generate method InternalWriteAllBytes
    //TODO: generate method ReadAllLines
    //TODO: generate method ReadAllLines
    //TODO: generate method InternalReadAllLines
    //TODO: generate method ReadLines
    //TODO: generate method ReadLines
    //TODO: generate method WriteAllLines
    //TODO: generate method WriteAllLines
    //TODO: generate method WriteAllLines
    //TODO: generate method WriteAllLines
    //TODO: generate method InternalWriteAllLines
    //TODO: generate method AppendAllText
    //TODO: generate method AppendAllText
    //TODO: generate method InternalAppendAllText
    //TODO: generate method AppendAllLines
    //TODO: generate method AppendAllLines
    //TODO: generate method Move
    //TODO: generate method UnsafeMove
    //TODO: generate method InternalMove
    //TODO: generate method Replace
    //TODO: generate method Replace
    //TODO: generate method InternalReplace
    //TODO: generate method FillAttributeInfo
    //TODO: generate method OpenFile
    private enum int ERROR_INVALID_PARAMETER/*todo: implement initializer*/ = int();
    private enum int ERROR_ACCESS_DENIED/*todo: implement initializer*/ = int();
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\FileAccess.cs'
//
// Contains constants for specifying the access you want for a file.
// You can have Read, Write or ReadWrite access.
// 
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum FileAccess
{
    // Specifies read access to the file. Data can be read from the file and
    // the file pointer can be moved. Combine with WRITE for read-write access.
    Read = 1,
    // Specifies write access to the file. Data can be written to the file and
    // the file pointer can be moved. Combine with READ for read-write access.
    Write = 2,
    // Specifies read and write access to the file. Data can be written to the
    // file and the file pointer can be moved. Data can also be read from the 
    // file.
    ReadWrite = 3,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\FileAttributes.cs'
//
// File attributes for use with the FileEnumerator class.
// These constants correspond to the constants in WinNT.h.
// 
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum FileAttributes
{
    // From WinNT.h (FILE_ATTRIBUTE_XXX)
    ReadOnly = 0x1,
    Hidden = 0x2,
    System = 0x4,
    Directory = 0x10,
    Archive = 0x20,
    Device = 0x40,
    Normal = 0x80,
    Temporary = 0x100,
    SparseFile = 0x200,
    ReparsePoint = 0x400,
    Compressed = 0x800,
    Offline = 0x1000,
    NotContentIndexed = 0x2000,
    Encrypted = 0x4000,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\FileInfo.cs'
//
// Class for creating FileStream objects, and some basic file management
// routines such as Delete, etc.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class FileInfo : FileSystemInfo
{
    private String _name;
    //TODO: generate constructor
    //TODO: generate method UnsafeCreateFileInfo
    //TODO: generate constructor
    //TODO: generate method Init
    //TODO: generate method GetDisplayPath
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Name'
    //TODO: generate property 'Length'
    //TODO: generate property 'DirectoryName'
    //TODO: generate property 'Directory'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate method OpenText
    //TODO: generate method CreateText
    //TODO: generate method AppendText
    //TODO: generate method CopyTo
    //TODO: generate method CopyTo
    //TODO: generate method Create
    //TODO: generate method Delete
    //TODO: generate method Decrypt
    //TODO: generate method Encrypt
    //TODO: generate property 'Exists'
    //TODO: generate method Open
    //TODO: generate method Open
    //TODO: generate method Open
    //TODO: generate method OpenRead
    //TODO: generate method OpenWrite
    //TODO: generate method MoveTo
    //TODO: generate method Replace
    //TODO: generate method Replace
    //TODO: generate method ToString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\FileLoadException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class FileLoadException : IOException
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
    //TODO: generate method GetObjectData
    //TODO: generate method FormatFileLoadExceptionMessage
    //TODO: generate method GetFileLoadExceptionMessage
    //TODO: generate method GetMessageForHR
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\FileMode.cs'
//
// Contains constants for specifying how the OS should open a file.
// These will control whether you overwrite a file, open an existing
// file, or some combination thereof.
// 
// To append to a file, use Append (which maps to OpenOrCreate then we seek
// to the end of the file).  To truncate a file or create it if it doesn't 
// exist, use Create.
// 
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum FileMode
{
    // Creates a new file. An exception is raised if the file already exists.
    CreateNew = 1,
    // Creates a new file. If the file already exists, it is overwritten.
    Create = 2,
    // Opens an existing file. An exception is raised if the file does not exist.
    Open = 3,
    // Opens the file if it exists. Otherwise, creates a new file.
    OpenOrCreate = 4,
    // Opens an existing file. Once opened, the file is truncated so that its
    // size is zero bytes. The calling process must open the file with at least
    // WRITE access. An exception is raised if the file does not exist.
    Truncate = 5,
    // Opens the file if it exists and seeks to the end.  Otherwise, 
    // creates a new file.
    Append = 6,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\FileNotFoundException.cs'
//
// Thrown when trying to access a file that doesn't exist on disk.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class FileNotFoundException : IOException
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
    //TODO: generate method GetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\FileOptions.cs'
//
// Maps to FILE_FLAG_DELETE_ON_CLOSE and similar values from winbase.h.
// We didn't expose a number of these values because we didn't believe 
// a number of them made sense in managed code, at least not yet.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum FileOptions
{
    // NOTE: any change to FileOptions enum needs to be 
    // matched in the FileStream ctor for error validation
    None = 0,
    WriteThrough = cast(int)0x80000000,
    Asynchronous = cast(int)0x40000000,
    // NoBuffering = 0x20000000,
    RandomAccess = 0x10000000,
    DeleteOnClose = 0x04000000,
    SequentialScan = 0x08000000,
    // AllowPosix = 0x01000000,  // FILE_FLAG_POSIX_SEMANTICS
    // BackupOrRestore,
    // DisallowReparsePoint = 0x00200000, // FILE_FLAG_OPEN_REPARSE_POINT
    // NoRemoteRecall = 0x00100000, // FILE_FLAG_OPEN_NO_RECALL
    // FirstPipeInstance = 0x00080000, // FILE_FLAG_FIRST_PIPE_INSTANCE
    Encrypted = 0x00004000,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\FileSecurityState.cs'
//
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
public class FileSecurityState : SecurityState
{
    private static immutable wchar[] m_illegalCharacters/*todo: implement initializer*/ = null;
    private FileSecurityStateAccess m_access;
    private String m_userPath;
    private String m_canonicalizedPath;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Access'
    //TODO: generate property 'Path'
    //TODO: generate method EnsureState
    //TODO: generate method ToFileSecurityState
    //TODO: generate method VerifyAccess
    //TODO: generate method VerifyPath
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\FileSecurityStateAccess.cs'
//
@__DotNet__Attribute!(FlagsAttribute.stringof)
public enum FileSecurityStateAccess
{
    NoAccess = 0,
    Read = 1,
    Write = 2,
    Append = 4,
    PathDiscovery = 8,
    AllAccess = 15,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\FileShare.cs'
//
// Contains constants for controlling file sharing options while
// opening files.  You can specify what access other processes trying
// to open the same file concurrently can have.
//
// Note these values currently match the values for FILE_SHARE_READ,
// FILE_SHARE_WRITE, and FILE_SHARE_DELETE in winnt.h
// 
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum FileShare
{
    // No sharing. Any request to open the file (by this process or another
    // process) will fail until the file is closed.
    None = 0,
    // Allows subsequent opening of the file for reading. If this flag is not
    // specified, any request to open the file for reading (by this process or
    // another process) will fail until the file is closed.
    Read = 1,
    // Allows subsequent opening of the file for writing. If this flag is not
    // specified, any request to open the file for writing (by this process or
    // another process) will fail until the file is closed.
    Write = 2,
    // Allows subsequent opening of the file for writing or reading. If this flag
    // is not specified, any request to open the file for writing or reading (by
    // this process or another process) will fail until the file is closed.
    ReadWrite = 3,
    // Open the file, but allow someone else to delete the file.
    Delete = 4,
    // Whether the file handle should be inheritable by child processes.
    // Note this is not directly supported like this by Win32.
    Inheritable = 0x10,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\FileStream.cs'
//
public final class FileStreamAsyncResult : __DotNet__Object, IAsyncResult
{
    private AsyncCallback _userCallback;
    private __DotNet__Object _userStateObject;
    private ManualResetEvent _waitHandle;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private SafeFileHandle _handle;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private NativeOverlapped* _overlapped;
    //TODO: generate property 'OverLapped'
    //TODO: generate property 'IsAsync'
    public int _EndXxxCalled;
    private int _numBytes;
    //TODO: generate property 'NumBytes'
    private int _errorCode;
    //TODO: generate property 'ErrorCode'
    private int _numBufferedBytes;
    //TODO: generate property 'NumBufferedBytes'
    //TODO: generate property 'NumBytesRead'
    private bool _isWrite;
    //TODO: generate property 'IsWrite'
    private bool _isComplete;
    private bool _completedSynchronously;
    // The NativeOverlapped struct keeps a GCHandle to this IAsyncResult object.
    // So if the user doesn't call EndRead/EndWrite, a finalizer won't help because
    // it'll never get called. 
    // Overlapped class will take care of the async IO operations in progress 
    // when an appdomain unload occurs.
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private static IOCompletionCallback s_IOCallback;
    //TODO: generate constructor
    //TODO: generate method CreateBufferedReadResult
    //TODO: generate constructor
    //TODO: generate property 'AsyncState'
    //TODO: generate property 'IsCompleted'
    //TODO: generate property 'AsyncWaitHandle'
    //TODO: generate property 'CompletedSynchronously'
    //TODO: generate method CallUserCallbackWorker
    //TODO: generate method CallUserCallback
    //TODO: generate method ReleaseNativeResource
    //TODO: generate method Wait
    //TODO: generate method AsyncFSCallback
    //TODO: generate method Cancel
}
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class FileStream : Stream
{
    public enum int DefaultBufferSize/*todo: implement initializer*/ = int();
    private ubyte[] _buffer;
    private String _fileName;
    private bool _isAsync;
    private bool _canRead;
    private bool _canWrite;
    private bool _canSeek;
    private bool _exposedHandle;
    private bool _isPipe;
    private int _readPos;
    private int _readLen;
    private int _writePos;
    private int _bufferSize;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private SafeFileHandle _handle;
    private long _pos;
    private long _appendStart;
    private static AsyncCallback s_endReadTask;
    private static AsyncCallback s_endWriteTask;
    private static Action1!(__DotNet__Object) s_cancelReadHandler;
    private static Action1!(__DotNet__Object) s_cancelWriteHandler;
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
    //TODO: generate method Init
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetSecAttrs
    //TODO: generate method VerifyHandleIsSync
    //TODO: generate property 'CanRead'
    //TODO: generate property 'CanWrite'
    //TODO: generate property 'CanSeek'
    //TODO: generate property 'IsAsync'
    //TODO: generate property 'Length'
    //TODO: generate property 'Name'
    //TODO: generate property 'NameInternal'
    //TODO: generate property 'Position'
    //TODO: generate method Dispose
    //TODO: generate destructor
    //TODO: generate method Flush
    //TODO: generate method Flush
    //TODO: generate method FlushInternalBuffer
    //TODO: generate method FlushOSBuffer
    //TODO: generate method FlushRead
    //TODO: generate method FlushWrite
    //TODO: generate property 'Handle'
    //TODO: generate property 'SafeFileHandle'
    //TODO: generate method SetLength
    //TODO: generate method SetLengthCore
    //TODO: generate method Read
    //TODO: generate method ReadCore
    //TODO: generate method Seek
    //TODO: generate method SeekCore
    //TODO: generate method VerifyOSHandlePosition
    //TODO: generate method Write
    //TODO: generate method WriteCore
    //TODO: generate method BeginRead
    //TODO: generate method BeginReadAsync
    //TODO: generate method BeginReadCore
    //TODO: generate method EndRead
    //TODO: generate method ReadByte
    //TODO: generate method BeginWrite
    //TODO: generate method BeginWriteAsync
    //TODO: generate method BeginWriteCore
    //TODO: generate method EndWrite
    //TODO: generate method WriteByte
    //TODO: generate method Lock
    //TODO: generate method Unlock
    private enum int FILE_ATTRIBUTE_NORMAL/*todo: implement initializer*/ = int();
    private enum int FILE_ATTRIBUTE_ENCRYPTED/*todo: implement initializer*/ = int();
    private enum int FILE_FLAG_OVERLAPPED/*todo: implement initializer*/ = int();
    public enum int GENERIC_READ/*todo: implement initializer*/ = int();
    private enum int GENERIC_WRITE/*todo: implement initializer*/ = int();
    private enum int FILE_BEGIN/*todo: implement initializer*/ = int();
    private enum int FILE_CURRENT/*todo: implement initializer*/ = int();
    private enum int FILE_END/*todo: implement initializer*/ = int();
    public enum int ERROR_BROKEN_PIPE/*todo: implement initializer*/ = int();
    public enum int ERROR_NO_DATA/*todo: implement initializer*/ = int();
    private enum int ERROR_HANDLE_EOF/*todo: implement initializer*/ = int();
    private enum int ERROR_INVALID_PARAMETER/*todo: implement initializer*/ = int();
    private enum int ERROR_IO_PENDING/*todo: implement initializer*/ = int();
    //TODO: generate method ReadFileNative
    //TODO: generate method WriteFileNative
    //TODO: generate method ReadAsync
    //TODO: generate method WriteAsync
    private static final class FileStreamReadWriteTask1(T) : Task1!(T)
    {
        public CancellationToken _cancellationToken;
        public CancellationTokenRegistration _registration;
        public FileStreamAsyncResult _asyncResult;
        //TODO: generate constructor
    }
    //TODO: generate method CancelTask
    //TODO: generate method EndReadTask
    //TODO: generate method EndWriteTask
    //TODO: generate method FlushAsync
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\FileSystemEnumerable.cs'
//
public class FileSystemEnumerableFactory : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method CreateFileNameIterator
    //TODO: generate method CreateFileInfoIterator
    //TODO: generate method CreateDirectoryInfoIterator
    //TODO: generate method CreateFileSystemInfoIterator
}
public abstract class Iterator1(TSource) : __DotNet__Object, IEnumerable1!(TSource), IEnumerator1!(TSource)
{
    private int threadId;
    public int state;
    public TSource current;
    //TODO: generate constructor
    //TODO: generate property 'Current'
    //TODO: generate method Clone
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    //TODO: generate method GetEnumerator
    //TODO: generate method MoveNext
    //TODO: generate property 'Current'
    //TODO: generate method GetEnumerator
    //TODO: generate method Reset
}
public class FileSystemEnumerableIterator1(TSource) : Iterator1!(TSource)
{
    private enum int STATE_INIT/*todo: implement initializer*/ = int();
    private enum int STATE_SEARCH_NEXT_DIR/*todo: implement initializer*/ = int();
    private enum int STATE_FIND_NEXT_FILE/*todo: implement initializer*/ = int();
    private enum int STATE_FINISH/*todo: implement initializer*/ = int();
    private SearchResultHandler1!(TSource) _resultHandler;
    private List1!(Directory.SearchData) searchStack;
    private Directory.SearchData searchData;
    private String searchCriteria;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private SafeFindHandle _hnd/*todo: implement initializer*/ = null;
    private bool needsParentPathDiscoveryDemand;
    private bool empty;
    private String userPath;
    private SearchOption searchOption;
    private String fullPath;
    private String normalizedSearchPath;
    private int oldMode;
    private bool _checkHost;
    //TODO: generate constructor
    //TODO: generate method CommonInit
    //TODO: generate constructor
    //TODO: generate method Clone
    //TODO: generate method Dispose
    //TODO: generate method MoveNext
    //TODO: generate method CreateSearchResult
    //TODO: generate method HandleError
    //TODO: generate method AddSearchableDirsToStack
    //TODO: generate method DoDemand
    //TODO: generate method NormalizeSearchPattern
    //TODO: generate method GetNormalizedSearchCriteria
    //TODO: generate method GetFullSearchString
}
public abstract class SearchResultHandler1(TSource) : __DotNet__Object
{
    //TODO: generate method IsResultIncluded
    //TODO: generate method CreateObject
}
public class StringResultHandler : SearchResultHandler1!(String)
{
    private bool _includeFiles;
    private bool _includeDirs;
    //TODO: generate constructor
    //TODO: generate method IsResultIncluded
    //TODO: generate method CreateObject
}
public class FileInfoResultHandler : SearchResultHandler1!(FileInfo)
{
    //TODO: generate method IsResultIncluded
    //TODO: generate method CreateObject
}
public class DirectoryInfoResultHandler : SearchResultHandler1!(DirectoryInfo)
{
    //TODO: generate method IsResultIncluded
    //TODO: generate method CreateObject
}
public class FileSystemInfoResultHandler : SearchResultHandler1!(FileSystemInfo)
{
    //TODO: generate method IsResultIncluded
    //TODO: generate method CreateObject
}
public final class SearchResult : __DotNet__Object
{
    private String fullPath;
    private String userPath;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private Win32Native.WIN32_FIND_DATA findData;
    //TODO: generate constructor
    //TODO: generate property 'FullPath'
    //TODO: generate property 'UserPath'
    //TODO: generate property 'FindData'
}
public class FileSystemEnumerableHelpers : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method IsDir
    //TODO: generate method IsFile
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\FileSystemInfo.cs'
//
// #if FEATURE_SERIALIZATION
// [Serializable]
// #endif
// #if !FEATURE_CORECLR
// [FileIOPermissionAttribute(SecurityAction.InheritanceDemand,Unrestricted=true)]
// #endif
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class FileSystemInfo : __DotNet__Object, ISerializable
{
    // #endif  //FEATURE_REMOTING      
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    public Win32Native.WIN32_FILE_ATTRIBUTE_DATA _data;
    public int _dataInitialised/*todo: implement initializer*/ = int();
    private enum int ERROR_INVALID_PARAMETER/*todo: implement initializer*/ = int();
    public enum int ERROR_ACCESS_DENIED/*todo: implement initializer*/ = int();
    protected String FullPath;
    protected String OriginalPath;
    private String _displayPath/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method InitializeFrom
    //TODO: generate property 'FullName'
    //TODO: generate property 'UnsafeGetFullName'
    //TODO: generate property 'Extension'
    //TODO: generate property 'Name'
    //TODO: generate property 'Exists'
    //TODO: generate method Delete
    //TODO: generate property 'CreationTime'
    //TODO: generate property 'CreationTimeUtc'
    //TODO: generate property 'LastAccessTime'
    //TODO: generate property 'LastAccessTimeUtc'
    //TODO: generate property 'LastWriteTime'
    //TODO: generate property 'LastWriteTimeUtc'
    //TODO: generate method Refresh
    //TODO: generate property 'Attributes'
    //TODO: generate method GetObjectData
    //TODO: generate property 'DisplayPath'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\IOException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class IOException : SystemException
{
    // For debugging purposes, store the complete path in the IOException
    // if possible.  Don't give it back to users due to security concerns.
    // Let the code that throws the exception worry about that.  But we can
    // at least assist people attached to the process with a managed 
    // debugger.  Don't serialize it to avoid any security problems.
    // This information isn't guaranteed to be correct, but is our second 
    // best effort at a file or directory involved, after the exception 
    // message.
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private String _maybeFullPath;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\LongPathHelper.cs'
//
public class LongPathHelper : __DotNet__Object
{
    private enum int MaxShortName/*todo: implement initializer*/ = int();
    private enum wchar LastAnsi/*todo: implement initializer*/ = wchar();
    private enum wchar Delete/*todo: implement initializer*/ = wchar();
    @__DotNet__Attribute!(ThreadStaticAttribute.stringof)
    private static StringBuffer t_fullPathBuffer;
    //TODO: generate method Normalize
    //TODO: generate method GetFullPathName
    //TODO: generate method GetLongPathName
    //TODO: generate method GetLongPathName
    //TODO: generate method GetErrorAndThrow
    //TODO: generate method GetInputBuffer
    //TODO: generate method TryExpandShortFileName
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\MemoryStream.cs'
//
// A MemoryStream represents a Stream in memory (ie, it has no backing store).
// This stream may reduce the need for temporary buffers and files in 
// an application.  
// 
// There are two ways to create a MemoryStream.  You can initialize one
// from an unsigned byte array, or you can create an empty one.  Empty 
// memory streams are resizable, while ones created with a byte array provide
// a stream "view" of the data.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class MemoryStream : Stream
{
    private ubyte[] _buffer;
    private int _origin;
    private int _position;
    @__DotNet__Attribute!(ContractPublicPropertyNameAttribute.stringof/*, "Length"*/)
    private int _length;
    private int _capacity;
    private bool _expandable;
    private bool _writable;
    private bool _exposable;
    private bool _isOpen;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private Task1!(int) _lastReadTask;
    private enum int MemStreamMaxLength/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'CanRead'
    //TODO: generate property 'CanSeek'
    //TODO: generate property 'CanWrite'
    //TODO: generate method EnsureWriteable
    //TODO: generate method Dispose
    //TODO: generate method EnsureCapacity
    //TODO: generate method Flush
    //TODO: generate method FlushAsync
    //TODO: generate method GetBuffer
    //TODO: generate method TryGetBuffer
    //TODO: generate method InternalGetBuffer
    //TODO: generate method InternalGetOriginAndLength
    //TODO: generate method InternalGetPosition
    //TODO: generate method InternalReadInt32
    //TODO: generate method InternalEmulateRead
    //TODO: generate property 'Capacity'
    //TODO: generate property 'Length'
    //TODO: generate property 'Position'
    //TODO: generate method Read
    //TODO: generate method ReadAsync
    //TODO: generate method ReadByte
    //TODO: generate method CopyTo
    //TODO: generate method CopyToAsync
    //TODO: generate method Seek
    //TODO: generate method SetLength
    //TODO: generate method ToArray
    //TODO: generate method Write
    //TODO: generate method WriteAsync
    //TODO: generate method WriteByte
    //TODO: generate method WriteTo
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\Path.cs'
//
// Provides methods for processing directory strings in an ideally
// cross-platform manner.  Most of the methods don't do a complete
// full parsing (such as examining a UNC hostname), but they will
// handle most string operations.  
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class Path : __DotNet__Object
{
    private this() {} // prevent instantiation
    public static immutable wchar DirectorySeparatorChar/*todo: implement initializer*/ = wchar();
    public enum String DirectorySeparatorCharAsString/*todo: implement initializer*/ = null;
    public static immutable wchar AltDirectorySeparatorChar/*todo: implement initializer*/ = wchar();
    public static immutable wchar VolumeSeparatorChar/*todo: implement initializer*/ = wchar();
    // #else
    // public static readonly char VolumeSeparatorChar = '/';
    // #endif // !PLATFORM_UNIX
    // Platform specific invalid list of characters in a path.
    // See the "Naming a File" MSDN conceptual docs for more details on
    // what is valid in a file name (which is slightly different from what
    // is legal in a path name).
    // Note: This list is duplicated in CheckInvalidPathChars
    @__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Please use GetInvalidPathChars or GetInvalidFileNameChars instead."*/)
    public static immutable wchar[] InvalidPathChars/*todo: implement initializer*/ = null;
    public static immutable wchar[] TrimEndChars/*todo: implement initializer*/ = null;
    private static immutable wchar[] RealInvalidPathChars/*todo: implement initializer*/ = null;
    private static immutable wchar[] InvalidFileNameChars/*todo: implement initializer*/ = null;
    public static immutable wchar PathSeparator/*todo: implement initializer*/ = wchar();
    public static immutable int MaxPath/*todo: implement initializer*/ = int();
    public static immutable int MaxPathComponentLength/*todo: implement initializer*/ = int();
    public enum int MAX_PATH/*todo: implement initializer*/ = int();
    public enum int MAX_DIRECTORY_PATH/*todo: implement initializer*/ = int();
    //TODO: generate method ChangeExtension
    //TODO: generate method GetDirectoryName
    //TODO: generate method GetDirectoryNameInternal
    //TODO: generate method GetRootLength
    //TODO: generate method IsDirectorySeparator
    //TODO: generate method GetInvalidPathChars
    //TODO: generate method GetInvalidFileNameChars
    //TODO: generate method GetExtension
    //TODO: generate method GetFullPath
    //TODO: generate method UnsafeGetFullPath
    //TODO: generate method GetFullPathInternal
    //TODO: generate method NormalizePath
    //TODO: generate method NormalizePath
    //TODO: generate method NormalizePath
    //TODO: generate method NormalizePath
    //TODO: generate method NewNormalizePathLimitedChecks
    //TODO: generate method NewNormalizePath
    public enum int MaxLongPath/*todo: implement initializer*/ = int();
    private enum String LongPathPrefix/*todo: implement initializer*/ = null;
    private enum String UNCPathPrefix/*todo: implement initializer*/ = null;
    private enum String UNCLongPathPrefixToInsert/*todo: implement initializer*/ = null;
    private enum String UNCLongPathPrefix/*todo: implement initializer*/ = null;
    //TODO: generate method HasLongPathPrefix
    //TODO: generate method AddLongPathPrefix
    //TODO: generate method RemoveLongPathPrefix
    //TODO: generate method RemoveLongPathPrefix
    //TODO: generate method GetFileName
    //TODO: generate method GetFileNameWithoutExtension
    //TODO: generate method GetPathRoot
    //TODO: generate method GetTempPath
    //TODO: generate method IsRelative
    //TODO: generate method GetRandomFileName
    //TODO: generate method GetTempFileName
    //TODO: generate method UnsafeGetTempFileName
    //TODO: generate method InternalGetTempFileName
    //TODO: generate method HasExtension
    //TODO: generate method IsPathRooted
    //TODO: generate method Combine
    //TODO: generate method Combine
    //TODO: generate method Combine
    //TODO: generate method Combine
    //TODO: generate method CombineNoChecks
    private static immutable wchar[] s_Base32Char/*todo: implement initializer*/ = null;
    //TODO: generate method ToBase32StringSuitableForDirName
    //TODO: generate method CheckSearchPattern
    //TODO: generate method CheckInvalidPathChars
    //TODO: generate method InternalCombine
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\PathInternal.cs'
//
public class PathInternal : __DotNet__Object
{
    private this() {} // prevent instantiation
    public enum String ExtendedPathPrefix/*todo: implement initializer*/ = null;
    public enum String UncPathPrefix/*todo: implement initializer*/ = null;
    public enum String UncExtendedPrefixToInsert/*todo: implement initializer*/ = null;
    public enum String UncExtendedPathPrefix/*todo: implement initializer*/ = null;
    public enum String DevicePathPrefix/*todo: implement initializer*/ = null;
    public enum int DevicePrefixLength/*todo: implement initializer*/ = int();
    public enum int UncPrefixLength/*todo: implement initializer*/ = int();
    public enum int UncExtendedPrefixLength/*todo: implement initializer*/ = int();
    public enum int MaxShortPath/*todo: implement initializer*/ = int();
    public enum int MaxShortDirectoryPath/*todo: implement initializer*/ = int();
    public enum int MaxLongPath/*todo: implement initializer*/ = int();
    public static immutable int MaxComponentLength/*todo: implement initializer*/ = int();
    public static immutable wchar[] InvalidPathChars/*todo: implement initializer*/ = null;
    //TODO: generate method HasInvalidVolumeSeparator
    //TODO: generate method StartsWithOrdinal
    //TODO: generate method IsValidDriveChar
    //TODO: generate method IsPathTooLong
    //TODO: generate method AreSegmentsTooLong
    //TODO: generate method IsDirectoryTooLong
    //TODO: generate method EnsureExtendedPrefix
    //TODO: generate method RemoveExtendedPrefix
    //TODO: generate method RemoveExtendedPrefix
    //TODO: generate method IsDevice
    //TODO: generate method IsDevice
    //TODO: generate method IsExtended
    //TODO: generate method IsExtended
    //TODO: generate method IsExtended
    //TODO: generate method IsExtendedUnc
    //TODO: generate method IsExtendedUnc
    //TODO: generate method HasIllegalCharacters
    //TODO: generate method AnyPathHasIllegalCharacters
    //TODO: generate method HasWildCardCharacters
    //TODO: generate method AnyPathHasWildCardCharacters
    //TODO: generate method GetRootLength
    //TODO: generate method GetRootLength
    //TODO: generate method GetRootLength
    //TODO: generate method StartsWithOrdinal
    //TODO: generate method IsPartiallyQualified
    //TODO: generate method IsPartiallyQualified
    //TODO: generate method PathStartSkip
    //TODO: generate method IsDirectorySeparator
    //TODO: generate method NormalizeDirectorySeparators
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\PathTooLongException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class PathTooLongException : IOException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\PinnedBufferMemoryStream.cs'
//
public final class PinnedBufferMemoryStream : UnmanagedMemoryStream
{
    private ubyte[] _array;
    private GCHandle _pinningHandle;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate destructor
    //TODO: generate method Dispose
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\ReadLinesIterator.cs'
//
public class ReadLinesIterator : Iterator1!(String)
{
    private immutable String _path;
    private immutable Encoding _encoding;
    private StreamReader _reader;
    //TODO: generate constructor
    //TODO: generate method MoveNext
    //TODO: generate method Clone
    //TODO: generate method Dispose
    //TODO: generate method CreateIterator
    //TODO: generate method CreateIterator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\SearchOption.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum SearchOption
{
    // Include only the current directory in the search operation
    TopDirectoryOnly,
    // Include the current directory and all the sub-directories
    // underneath it including reparse points in the search operation. 
    // This will traverse reparse points (i.e, mounted points and symbolic links)
    // recursively. If the directory structure searched contains a loop
    // because of hard links, the search operation will go on for ever. 
    AllDirectories,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\SeekOrigin.cs'
//
// Provides seek reference points.  To seek to the end of a stream,
// call stream.Seek(0, SeekOrigin.End).
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum SeekOrigin
{
    // These constants match Win32's FILE_BEGIN, FILE_CURRENT, and FILE_END
    Begin = 0,
    Current = 1,
    End = 2,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\Stream.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class Stream : __DotNet__Object, IDisposable
{
    public static immutable Stream Null/*todo: implement initializer*/ = null;
    private enum int _DefaultCopyBufferSize/*todo: implement initializer*/ = int();
    // To implement Async IO operations on streams that don't support async IO
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private ReadWriteTask _activeReadWriteTask;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private SemaphoreSlim _asyncActiveSemaphore;
    //TODO: generate method EnsureAsyncActiveSemaphoreInitialized
    //TODO: generate property 'CanRead'
    //TODO: generate property 'CanSeek'
    //TODO: generate property 'CanTimeout'
    //TODO: generate property 'CanWrite'
    //TODO: generate property 'Length'
    //TODO: generate property 'Position'
    //TODO: generate property 'ReadTimeout'
    //TODO: generate property 'WriteTimeout'
    //TODO: generate method CopyToAsync
    //TODO: generate method CopyToAsync
    //TODO: generate method CopyToAsync
    //TODO: generate method CopyToAsyncInternal
    //TODO: generate method CopyTo
    //TODO: generate method CopyTo
    //TODO: generate method Close
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    //TODO: generate method Flush
    //TODO: generate method FlushAsync
    //TODO: generate method FlushAsync
    //TODO: generate method CreateWaitHandle
    //TODO: generate method BeginRead
    //TODO: generate method BeginReadInternal
    //TODO: generate method EndRead
    //TODO: generate method ReadAsync
    //TODO: generate method ReadAsync
    //TODO: generate method HasOverriddenBeginEndRead
    //TODO: generate method BeginEndReadAsync
    private static struct ReadWriteParameters
    {
        public ubyte[] Buffer;
        public int Offset;
        public int Count;
    }
    //TODO: generate method BeginWrite
    //TODO: generate method BeginWriteInternal
    //TODO: generate method RunReadWriteTaskWhenReady
    //TODO: generate method RunReadWriteTask
    //TODO: generate method FinishTrackingAsyncOperation
    //TODO: generate method EndWrite
    private static final class ReadWriteTask : Task1!(int), ITaskCompletionAction
    {
        public immutable bool _isRead;
        public immutable bool _apm;
        public Stream _stream;
        public ubyte[] _buffer;
        public immutable int _offset;
        public immutable int _count;
        private AsyncCallback _callback;
        private ExecutionContext _context;
        //TODO: generate method ClearBeginState
        //TODO: generate constructor
        //TODO: generate method InvokeAsyncCallback
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private static ContextCallback s_invokeAsyncCallback;
        //TODO: generate method Invoke
        //TODO: generate property 'InvokeMayRunArbitraryCode'
    }
    //TODO: generate method WriteAsync
    //TODO: generate method WriteAsync
    //TODO: generate method HasOverriddenBeginEndWrite
    //TODO: generate method BeginEndWriteAsync
    //TODO: generate method Seek
    //TODO: generate method SetLength
    //TODO: generate method Read
    //TODO: generate method ReadByte
    //TODO: generate method Write
    //TODO: generate method WriteByte
    //TODO: generate method Synchronized
    //TODO: generate method ObjectInvariant
    //TODO: generate method BlockingBeginRead
    //TODO: generate method BlockingEndRead
    //TODO: generate method BlockingBeginWrite
    //TODO: generate method BlockingEndWrite
    //TODO: generate method ValidateCopyToArguments
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static final class NullStream : Stream
    {
        //TODO: generate constructor
        //TODO: generate property 'CanRead'
        //TODO: generate property 'CanWrite'
        //TODO: generate property 'CanSeek'
        //TODO: generate property 'Length'
        //TODO: generate property 'Position'
        //TODO: generate method CopyToAsync
        //TODO: generate method Dispose
        //TODO: generate method Flush
        //TODO: generate method FlushAsync
        //TODO: generate method BeginRead
        //TODO: generate method EndRead
        //TODO: generate method BeginWrite
        //TODO: generate method EndWrite
        //TODO: generate method Read
        //TODO: generate method ReadAsync
        private static Task1!(int) s_nullReadTask;
        //TODO: generate method ReadByte
        //TODO: generate method Write
        //TODO: generate method WriteAsync
        //TODO: generate method WriteByte
        //TODO: generate method Seek
        //TODO: generate method SetLength
    }
    public static final class SynchronousAsyncResult : __DotNet__Object, IAsyncResult
    {
        private immutable __DotNet__Object _stateObject;
        private immutable bool _isWrite;
        private ManualResetEvent _waitHandle;
        private ExceptionDispatchInfo _exceptionInfo;
        private bool _endXxxCalled;
        private int _bytesRead;
        //TODO: generate constructor
        //TODO: generate constructor
        //TODO: generate constructor
        //TODO: generate property 'IsCompleted'
        //TODO: generate property 'AsyncWaitHandle'
        //TODO: generate property 'AsyncState'
        //TODO: generate property 'CompletedSynchronously'
        //TODO: generate method ThrowIfError
        //TODO: generate method EndRead
        //TODO: generate method EndWrite
    }
    // SyncStream is a wrapper around a stream that takes 
    // a lock for every operation making it thread safe.
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    public static final class SyncStream : Stream, IDisposable
    {
        private Stream _stream;
        //TODO: generate constructor
        //TODO: generate property 'CanRead'
        //TODO: generate property 'CanWrite'
        //TODO: generate property 'CanSeek'
        //TODO: generate property 'CanTimeout'
        //TODO: generate property 'Length'
        //TODO: generate property 'Position'
        //TODO: generate property 'ReadTimeout'
        //TODO: generate property 'WriteTimeout'
        //TODO: generate method Close
        //TODO: generate method Dispose
        //TODO: generate method Flush
        //TODO: generate method Read
        //TODO: generate method ReadByte
        //TODO: generate method BeginRead
        //TODO: generate method EndRead
        //TODO: generate method Seek
        //TODO: generate method SetLength
        //TODO: generate method Write
        //TODO: generate method WriteByte
        //TODO: generate method BeginWrite
        //TODO: generate method EndWrite
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\StreamReader.cs'
//
// This class implements a TextReader for reading characters to a Stream.
// This is designed for character input in a particular Encoding, 
// whereas the Stream class is designed for byte input and output.  
// 
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class StreamReader : TextReader
{
    public static immutable /*todo: new modifier*/ StreamReader Null/*todo: implement initializer*/ = null;
    private static ubyte[] s_utf8Preamble;
    //TODO: generate property 'DefaultBufferSize'
    private enum int DefaultFileStreamBufferSize/*todo: implement initializer*/ = int();
    private enum int MinBufferSize/*todo: implement initializer*/ = int();
    private enum int MaxSharedBuilderCapacity/*todo: implement initializer*/ = int();
    private Stream stream;
    private Encoding encoding;
    private Decoder decoder;
    private ubyte[] byteBuffer;
    private wchar[] charBuffer;
    private ubyte[] _preamble;
    private int charPos;
    private int charLen;
    private int byteLen;
    private int bytePos;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private StringBuilder _builder;
    private int _maxCharsPerBuffer;
    private bool _detectEncoding;
    private bool _checkPreamble;
    private bool _isBlocked;
    private bool _closable;
    // We don't guarantee thread safety on StreamReader, but we should at 
    // least prevent users from trying to read anything while an Async
    // read from the same thread is in progress.
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private /*todo: volatile*/ Task _asyncReadTask;
    //TODO: generate method CheckAsyncTaskInProgress
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
    //TODO: generate method Init
    //TODO: generate method Init
    //TODO: generate method Close
    //TODO: generate method Dispose
    //TODO: generate property 'CurrentEncoding'
    //TODO: generate property 'BaseStream'
    //TODO: generate property 'LeaveOpen'
    //TODO: generate method DiscardBufferedData
    //TODO: generate property 'EndOfStream'
    //TODO: generate method Peek
    //TODO: generate method Read
    //TODO: generate method Read
    //TODO: generate method ReadToEnd
    //TODO: generate method ReadBlock
    //TODO: generate method CompressBuffer
    //TODO: generate method DetectEncoding
    //TODO: generate method IsPreamble
    //TODO: generate method AcquireSharedStringBuilder
    //TODO: generate method GetStringAndReleaseSharedStringBuilder
    //TODO: generate method ReadBuffer
    //TODO: generate method ReadBuffer
    //TODO: generate method ReadLine
    //TODO: generate method ReadLineAsync
    //TODO: generate method ReadLineAsyncInternal
    //TODO: generate method ReadToEndAsync
    //TODO: generate method ReadToEndAsyncInternal
    //TODO: generate method ReadAsync
    //TODO: generate method ReadAsyncInternal
    //TODO: generate method ReadBlockAsync
    //TODO: generate property 'CharLen_Prop'
    //TODO: generate property 'CharPos_Prop'
    //TODO: generate property 'ByteLen_Prop'
    //TODO: generate property 'BytePos_Prop'
    //TODO: generate property 'Preamble_Prop'
    //TODO: generate property 'CheckPreamble_Prop'
    //TODO: generate property 'Decoder_Prop'
    //TODO: generate property 'DetectEncoding_Prop'
    //TODO: generate property 'CharBuffer_Prop'
    //TODO: generate property 'ByteBuffer_Prop'
    //TODO: generate property 'IsBlocked_Prop'
    //TODO: generate property 'Stream_Prop'
    //TODO: generate property 'MaxCharsPerBuffer_Prop'
    //TODO: generate method ReadBufferAsync
    private static class NullStreamReader : StreamReader
    {
        //TODO: generate constructor
        //TODO: generate property 'BaseStream'
        //TODO: generate property 'CurrentEncoding'
        //TODO: generate method Dispose
        //TODO: generate method Peek
        //TODO: generate method Read
        //TODO: generate method Read
        //TODO: generate method ReadLine
        //TODO: generate method ReadToEnd
        //TODO: generate method ReadBuffer
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\StreamWriter.cs'
//
// This class implements a TextWriter for writing characters to a Stream.
// This is designed for character output in a particular Encoding, 
// whereas the Stream class is designed for byte input and output.  
// 
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class StreamWriter : TextWriter
{
    public enum int DefaultBufferSize/*todo: implement initializer*/ = int();
    private enum int DefaultFileStreamBufferSize/*todo: implement initializer*/ = int();
    private enum int MinBufferSize/*todo: implement initializer*/ = int();
    private enum int DontCopyOnWriteLineThreshold/*todo: implement initializer*/ = int();
    public static immutable /*todo: new modifier*/ StreamWriter Null/*todo: implement initializer*/ = null;
    private Stream stream;
    private Encoding encoding;
    private Encoder encoder;
    private ubyte[] byteBuffer;
    private wchar[] charBuffer;
    private int charPos;
    private int charLen;
    private bool autoFlush;
    private bool haveWrittenPreamble;
    private bool closable;
    // #if MDA_SUPPORTED
    // [NonSerialized] 
    // For StreamWriterBufferedDataLost MDA
    // private MdaHelper mdaHelper;
    // #endif
    // We don't guarantee thread safety on StreamWriter, but we should at 
    // least prevent users from trying to write anything while an Async
    // write from the same thread is in progress.
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private /*todo: volatile*/ Task _asyncWriteTask;
    //TODO: generate method CheckAsyncTaskInProgress
    private static /*todo: volatile*/ Encoding _UTF8NoBOM;
    //TODO: generate property 'UTF8NoBOM'
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
    //TODO: generate method Init
    //TODO: generate method CreateFile
    //TODO: generate method Close
    //TODO: generate method Dispose
    //TODO: generate method Flush
    //TODO: generate method Flush
    //TODO: generate property 'AutoFlush'
    //TODO: generate property 'BaseStream'
    //TODO: generate property 'LeaveOpen'
    //TODO: generate property 'HaveWrittenPreamble'
    //TODO: generate property 'Encoding'
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method WriteAsync
    //TODO: generate method WriteAsyncInternal
    //TODO: generate method WriteAsync
    //TODO: generate method WriteAsyncInternal
    //TODO: generate method WriteAsync
    //TODO: generate method WriteAsyncInternal
    //TODO: generate method WriteLineAsync
    //TODO: generate method WriteLineAsync
    //TODO: generate method WriteLineAsync
    //TODO: generate method WriteLineAsync
    //TODO: generate method FlushAsync
    //TODO: generate property 'CharPos_Prop'
    //TODO: generate property 'HaveWrittenPreamble_Prop'
    //TODO: generate method FlushAsyncInternal
    //TODO: generate method FlushAsyncInternal
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\StringReader.cs'
//
// This class implements a text reader that reads from a string.
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class StringReader : TextReader
{
    private String _s;
    private int _pos;
    private int _length;
    //TODO: generate constructor
    //TODO: generate method Close
    //TODO: generate method Dispose
    //TODO: generate method Peek
    //TODO: generate method Read
    //TODO: generate method Read
    //TODO: generate method ReadToEnd
    //TODO: generate method ReadLine
    //TODO: generate method ReadLineAsync
    //TODO: generate method ReadToEndAsync
    //TODO: generate method ReadBlockAsync
    //TODO: generate method ReadAsync
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\StringWriter.cs'
//
// This class implements a text writer that writes to a string buffer and allows
// the resulting sequence of characters to be presented as a string.
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class StringWriter : TextWriter
{
    private static /*todo: volatile*/ UnicodeEncoding m_encoding/*todo: implement initializer*/ = null;
    private StringBuilder _sb;
    private bool _isOpen;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Close
    //TODO: generate method Dispose
    //TODO: generate property 'Encoding'
    //TODO: generate method GetStringBuilder
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method WriteAsync
    //TODO: generate method WriteAsync
    //TODO: generate method WriteAsync
    //TODO: generate method WriteLineAsync
    //TODO: generate method WriteLineAsync
    //TODO: generate method WriteLineAsync
    //TODO: generate method FlushAsync
    //TODO: generate method ToString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\TextReader.cs'
//
// This abstract base class represents a reader that can read a sequential
// stream of characters.  This is not intended for reading bytes -
// there are methods on the Stream class to read bytes.
// A subclass must minimally implement the Peek() and Read() methods.
//
// This class is intended for character input, not bytes.  
// There are methods on the Stream class for reading bytes. 
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class TextReader : __DotNet__Object, IDisposable
{
    public static immutable TextReader Null/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method Close
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    //TODO: generate method Peek
    //TODO: generate method Read
    //TODO: generate method Read
    //TODO: generate method ReadToEnd
    //TODO: generate method ReadBlock
    //TODO: generate method ReadLine
    //TODO: generate method ReadLineAsync
    //TODO: generate method ReadToEndAsync
    //TODO: generate method ReadAsync
    //TODO: generate method ReadAsyncInternal
    //TODO: generate method ReadBlockAsync
    //TODO: generate method ReadBlockAsyncInternal
    //TODO: generate method Synchronized
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static final class NullTextReader : TextReader
    {
        //TODO: generate constructor
        //TODO: generate method Read
        //TODO: generate method ReadLine
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    public static final class SyncTextReader : TextReader
    {
        public TextReader _in;
        //TODO: generate constructor
        //TODO: generate method Close
        //TODO: generate method Dispose
        //TODO: generate method Peek
        //TODO: generate method Read
        //TODO: generate method Read
        //TODO: generate method ReadBlock
        //TODO: generate method ReadLine
        //TODO: generate method ReadToEnd
        //TODO: generate method ReadLineAsync
        //TODO: generate method ReadToEndAsync
        //TODO: generate method ReadBlockAsync
        //TODO: generate method ReadAsync
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\TextWriter.cs'
//
// This abstract base class represents a writer that can write a sequential
// stream of characters. A subclass must minimally implement the 
// Write(char) method.
//
// This class is intended for character output, not bytes.  
// There are methods on the Stream class for writing bytes. 
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class TextWriter : __DotNet__Object, IDisposable
{
    public static immutable TextWriter Null/*todo: implement initializer*/ = null;
    private enum String InitialNewLine/*todo: implement initializer*/ = null;
    protected wchar[] CoreNewLine/*todo: implement initializer*/ = null;
    private IFormatProvider InternalFormatProvider;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'FormatProvider'
    //TODO: generate method Close
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    //TODO: generate method Flush
    //TODO: generate property 'Encoding'
    //TODO: generate property 'NewLine'
    //TODO: generate method Synchronized
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
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method Write
    //TODO: generate method WriteLine
    //TODO: generate method WriteLine
    //TODO: generate method WriteLine
    //TODO: generate method WriteLine
    //TODO: generate method WriteLine
    //TODO: generate method WriteLine
    //TODO: generate method WriteLine
    //TODO: generate method WriteLine
    //TODO: generate method WriteLine
    //TODO: generate method WriteLine
    //TODO: generate method WriteLine
    //TODO: generate method WriteLine
    //TODO: generate method WriteLine
    //TODO: generate method WriteLine
    //TODO: generate method WriteLine
    //TODO: generate method WriteLine
    //TODO: generate method WriteLine
    //TODO: generate method WriteLine
    //TODO: generate method WriteAsync
    //TODO: generate method WriteAsync
    //TODO: generate method WriteAsync
    //TODO: generate method WriteAsync
    //TODO: generate method WriteLineAsync
    //TODO: generate method WriteLineAsync
    //TODO: generate method WriteLineAsync
    //TODO: generate method WriteLineAsync
    //TODO: generate method WriteLineAsync
    //TODO: generate method FlushAsync
    // #endregion
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static final class NullTextWriter : TextWriter
    {
        //TODO: generate constructor
        //TODO: generate property 'Encoding'
        //TODO: generate method Write
        //TODO: generate method Write
        //TODO: generate method WriteLine
        //TODO: generate method WriteLine
        //TODO: generate method WriteLine
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    public static final class SyncTextWriter : TextWriter, IDisposable
    {
        private TextWriter _out;
        //TODO: generate constructor
        //TODO: generate property 'Encoding'
        //TODO: generate property 'FormatProvider'
        //TODO: generate property 'NewLine'
        //TODO: generate method Close
        //TODO: generate method Dispose
        //TODO: generate method Flush
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
        //TODO: generate method Write
        //TODO: generate method Write
        //TODO: generate method Write
        //TODO: generate method WriteLine
        //TODO: generate method WriteLine
        //TODO: generate method WriteLine
        //TODO: generate method WriteLine
        //TODO: generate method WriteLine
        //TODO: generate method WriteLine
        //TODO: generate method WriteLine
        //TODO: generate method WriteLine
        //TODO: generate method WriteLine
        //TODO: generate method WriteLine
        //TODO: generate method WriteLine
        //TODO: generate method WriteLine
        //TODO: generate method WriteLine
        //TODO: generate method WriteLine
        //TODO: generate method WriteLine
        //TODO: generate method WriteLine
        //TODO: generate method WriteLine
        //TODO: generate method WriteLine
        //TODO: generate method WriteAsync
        //TODO: generate method WriteAsync
        //TODO: generate method WriteAsync
        //TODO: generate method WriteLineAsync
        //TODO: generate method WriteLineAsync
        //TODO: generate method WriteLineAsync
        //TODO: generate method FlushAsync
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\UnmanagedMemoryAccessor.cs'
//
public class UnmanagedMemoryAccessor : __DotNet__Object, IDisposable
{
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private SafeBuffer _buffer;
    private long _offset;
    @__DotNet__Attribute!(ContractPublicPropertyNameAttribute.stringof/*, "Capacity"*/)
    private long _capacity;
    private FileAccess _access;
    private bool _isOpen;
    private bool _canRead;
    private bool _canWrite;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Initialize
    //TODO: generate property 'Capacity'
    //TODO: generate property 'CanRead'
    //TODO: generate property 'CanWrite'
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    //TODO: generate property 'IsOpen'
    //TODO: generate method ReadBoolean
    //TODO: generate method ReadByte
    //TODO: generate method ReadChar
    //TODO: generate method ReadInt16
    //TODO: generate method ReadInt32
    //TODO: generate method ReadInt64
    //TODO: generate method ReadDecimal
    //TODO: generate method ReadSingle
    //TODO: generate method ReadDouble
    //TODO: generate method ReadSByte
    //TODO: generate method ReadUInt16
    //TODO: generate method ReadUInt32
    //TODO: generate method ReadUInt64
    //TODO: generate method Read
    //TODO: generate method ReadArray
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
    //TODO: generate method WriteArray
    //TODO: generate method InternalReadByte
    //TODO: generate method InternalWrite
    //TODO: generate method EnsureSafeToRead
    //TODO: generate method EnsureSafeToWrite
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\UnmanagedMemoryStream.cs'
//
public class UnmanagedMemoryStream : Stream
{
    private enum long UnmanagedMemStreamMaxLength/*todo: implement initializer*/ = long();
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private SafeBuffer _buffer;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private ubyte* _mem;
    private long _length;
    private long _capacity;
    private long _position;
    private long _offset;
    private FileAccess _access;
    public bool _isOpen;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private Task1!(int) _lastReadTask;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Initialize
    //TODO: generate method Initialize
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Initialize
    //TODO: generate method Initialize
    //TODO: generate property 'CanRead'
    //TODO: generate property 'CanSeek'
    //TODO: generate property 'CanWrite'
    //TODO: generate method Dispose
    //TODO: generate method Flush
    //TODO: generate method FlushAsync
    //TODO: generate property 'Length'
    //TODO: generate property 'Capacity'
    //TODO: generate property 'Position'
    //TODO: generate property 'PositionPointer'
    //TODO: generate property 'Pointer'
    //TODO: generate method Read
    //TODO: generate method ReadAsync
    //TODO: generate method ReadByte
    //TODO: generate method Seek
    //TODO: generate method SetLength
    //TODO: generate method Write
    //TODO: generate method WriteAsync
    //TODO: generate method WriteByte
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\IO\UnmanagedMemoryStreamWrapper.cs'
//
public final class UnmanagedMemoryStreamWrapper : MemoryStream
{
    private UnmanagedMemoryStream _unmanagedStream;
    //TODO: generate constructor
    //TODO: generate property 'CanRead'
    //TODO: generate property 'CanSeek'
    //TODO: generate property 'CanWrite'
    //TODO: generate method Dispose
    //TODO: generate method Flush
    //TODO: generate method GetBuffer
    //TODO: generate method TryGetBuffer
    //TODO: generate property 'Capacity'
    //TODO: generate property 'Length'
    //TODO: generate property 'Position'
    //TODO: generate method Read
    //TODO: generate method ReadByte
    //TODO: generate method Seek
    //TODO: generate method ToArray
    //TODO: generate method Write
    //TODO: generate method WriteByte
    //TODO: generate method WriteTo
    //TODO: generate method SetLength
    //TODO: generate method CopyToAsync
    //TODO: generate method FlushAsync
    //TODO: generate method ReadAsync
    //TODO: generate method WriteAsync
}
