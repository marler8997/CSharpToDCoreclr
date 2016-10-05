module mscorlib.System.Text;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    SerializableAttribute,
    __DotNet__Object,
    NonSerializedAttribute,
    ArgumentException,
    String,
    ICloneable,
    ThreadStaticAttribute;
import mscorlib.System.Runtime.InteropServices :
    ComVisibleAttribute;
import mscorlib.System.Runtime.Serialization :
    IObjectReference,
    ISerializable,
    OptionalFieldAttribute;
import mscorlib.System.Security :
    SecurityCriticalAttribute;
import mscorlib.System.Globalization :
    CodePageDataItem;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\ASCIIEncoding.cs'
//
// ASCIIEncoding
//
// Note that ASCIIEncoding is optomized with no best fit and ? for fallback.
// It doesn't come in other flavors.
//
// Note: ASCIIEncoding is the only encoding that doesn't do best fit (windows has best fit).
//
// Note: IsAlwaysNormalized remains false because 1/2 the code points are unassigned, so they'd
//       use fallbacks, and we cannot guarantee that fallbacks are normalized.
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class ASCIIEncoding : Encoding
{
    package(mscorlib) static immutable ASCIIEncoding s_default/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method SetDefaultFallbacks
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetCharCount
    //TODO: generate method GetCharCount
    //TODO: generate method GetChars
    //TODO: generate method GetChars
    //TODO: generate method GetString
    //TODO: generate method GetByteCount
    //TODO: generate method GetBytes
    //TODO: generate method GetCharCount
    //TODO: generate method GetChars
    //TODO: generate method GetMaxByteCount
    //TODO: generate method GetMaxCharCount
    //TODO: generate property 'IsSingleByte'
    //TODO: generate method GetDecoder
    //TODO: generate method GetEncoder
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\CodePageEncoding.cs'
//
// =================================CodePageEncoding==================================
// ** This class is here only to deserialize the Code Page classes from Everett (V1.1) into
// ** Appropriate Whidbey (V2.0) objects.  We also serialize the Whidbey classes
// ** using this proxy since we pretty much need one anyway and that solves Whidbey
// ** to Everett compatibility as well.
// ==============================================================================
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class CodePageEncoding : __DotNet__Object, IObjectReference, ISerializable
{
    // Temp stuff
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private int m_codePage;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private bool m_isReadOnly;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private bool m_deserializedFromEverett/*todo: implement initializer*/ = bool();
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private EncoderFallback encoderFallback/*todo: implement initializer*/ = null;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private DecoderFallback decoderFallback/*todo: implement initializer*/ = null;
    // Might need this when GetRealObjecting
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private Encoding realEncoding/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method GetRealObject
    //TODO: generate method GetObjectData
    // Same problem with the Decoder, this only happens with Everett Decoders
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    package(mscorlib) static final class Decoder : __DotNet__Object, IObjectReference, ISerializable
    {
        // Might need this when GetRealObjecting
        @__DotNet__Attribute!(NonSerializedAttribute.stringof)
        private Encoding realEncoding/*todo: implement initializer*/ = null;
        //TODO: generate constructor
        //TODO: generate method GetRealObject
        //TODO: generate method GetObjectData
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\Decoder.cs'
//
// A Decoder is used to decode a sequence of blocks of bytes into a
// sequence of blocks of characters. Following instantiation of a decoder,
// sequential blocks of bytes are converted into blocks of characters through
// calls to the GetChars method. The decoder maintains state between the
// conversions, allowing it to correctly decode byte sequences that span
// adjacent blocks.
//
// Instances of specific implementations of the Decoder abstract base
// class are typically obtained through calls to the GetDecoder method
// of Encoding objects.
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public abstract class Decoder : __DotNet__Object
{
    package(mscorlib) DecoderFallback m_fallback/*todo: implement initializer*/ = null;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    package(mscorlib) DecoderFallbackBuffer m_fallbackBuffer/*todo: implement initializer*/ = null;
    //TODO: generate method SerializeDecoder
    //TODO: generate constructor
    //TODO: generate property 'Fallback'
    //TODO: generate property 'FallbackBuffer'
    //TODO: generate property 'InternalHasFallbackBuffer'
    //TODO: generate method Reset
    //TODO: generate method GetCharCount
    //TODO: generate method GetCharCount
    //TODO: generate method GetCharCount
    //TODO: generate method GetChars
    //TODO: generate method GetChars
    //TODO: generate method GetChars
    //TODO: generate method Convert
    //TODO: generate method Convert
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\DecoderBestFitFallback.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class InternalDecoderBestFitFallback : DecoderFallback
{
    package(mscorlib) Encoding encoding/*todo: implement initializer*/ = null;
    package(mscorlib) wchar[] arrayBestFit/*todo: implement initializer*/ = null;
    package(mscorlib) wchar cReplacement/*todo: implement initializer*/ = wchar();
    //TODO: generate constructor
    //TODO: generate method CreateFallbackBuffer
    //TODO: generate property 'MaxCharCount'
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
package(mscorlib) final class InternalDecoderBestFitFallbackBuffer : DecoderFallbackBuffer
{
    package(mscorlib) wchar cBestFit/*todo: implement initializer*/ = wchar();
    package(mscorlib) int iCount/*todo: implement initializer*/ = int();
    package(mscorlib) int iSize;
    private InternalDecoderBestFitFallback oFallback;
    private static __DotNet__Object s_InternalSyncObject;
    //TODO: generate property 'InternalSyncObject'
    //TODO: generate constructor
    //TODO: generate method Fallback
    //TODO: generate method GetNextChar
    //TODO: generate method MovePrevious
    //TODO: generate property 'Remaining'
    //TODO: generate method Reset
    //TODO: generate method InternalFallback
    //TODO: generate method TryBestFit
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\DecoderExceptionFallback.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class DecoderExceptionFallback : DecoderFallback
{
    //TODO: generate constructor
    //TODO: generate method CreateFallbackBuffer
    //TODO: generate property 'MaxCharCount'
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
public final class DecoderExceptionFallbackBuffer : DecoderFallbackBuffer
{
    //TODO: generate method Fallback
    //TODO: generate method GetNextChar
    //TODO: generate method MovePrevious
    //TODO: generate property 'Remaining'
    //TODO: generate method Throw
}
// Exception for decoding unknown byte sequences.
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class DecoderFallbackException : ArgumentException
{
    private ubyte[] bytesUnknown/*todo: implement initializer*/ = null;
    private int index/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'BytesUnknown'
    //TODO: generate property 'Index'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\DecoderFallback.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
public abstract class DecoderFallback : __DotNet__Object
{
    package(mscorlib) bool bIsMicrosoftBestFitFallback/*todo: implement initializer*/ = bool();
    private static /*todo: volatile*/ DecoderFallback replacementFallback;
    private static /*todo: volatile*/ DecoderFallback exceptionFallback;
    private static __DotNet__Object s_InternalSyncObject;
    //TODO: generate property 'InternalSyncObject'
    //TODO: generate property 'ReplacementFallback'
    //TODO: generate property 'ExceptionFallback'
    //TODO: generate method CreateFallbackBuffer
    //TODO: generate property 'MaxCharCount'
    //TODO: generate property 'IsMicrosoftBestFitFallback'
}
public abstract class DecoderFallbackBuffer : __DotNet__Object
{
    //TODO: generate method Fallback
    //TODO: generate method GetNextChar
    //TODO: generate method MovePrevious
    //TODO: generate property 'Remaining'
    //TODO: generate method Reset
    // Internal items to help us figure out what we're doing as far as error messages, etc.
    // These help us with our performance and messages internally
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    package(mscorlib) ubyte* byteStart;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    package(mscorlib) wchar* charEnd;
    //TODO: generate method InternalReset
    //TODO: generate method InternalInitialize
    //TODO: generate method InternalFallback
    //TODO: generate method InternalFallback
    //TODO: generate method ThrowLastBytesRecursive
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\DecoderNLS.cs'
//
// A Decoder is used to decode a sequence of blocks of bytes into a
// sequence of blocks of characters. Following instantiation of a decoder,
// sequential blocks of bytes are converted into blocks of characters through
// calls to the GetChars method. The decoder maintains state between the
// conversions, allowing it to correctly decode byte sequences that span
// adjacent blocks.
//
// Instances of specific implementations of the Decoder abstract base
// class are typically obtained through calls to the GetDecoder method
// of Encoding objects.
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class DecoderNLS : mscorlib.System.Text.Decoder, ISerializable
{
    protected Encoding m_encoding;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    protected bool m_mustFlush;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    package(mscorlib) bool m_throwOnOverflow;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    package(mscorlib) int m_bytesUsed;
    //TODO: generate constructor
    //TODO: generate method GetObjectData
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Reset
    //TODO: generate method GetCharCount
    //TODO: generate method GetCharCount
    //TODO: generate method GetCharCount
    //TODO: generate method GetChars
    //TODO: generate method GetChars
    //TODO: generate method GetChars
    //TODO: generate method Convert
    //TODO: generate method Convert
    //TODO: generate property 'MustFlush'
    //TODO: generate property 'HasState'
    //TODO: generate method ClearMustFlush
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\DecoderReplacementFallback.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class DecoderReplacementFallback : DecoderFallback
{
    private String strDefault;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'DefaultString'
    //TODO: generate method CreateFallbackBuffer
    //TODO: generate property 'MaxCharCount'
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
public final class DecoderReplacementFallbackBuffer : DecoderFallbackBuffer
{
    private String strDefault;
    private int fallbackCount/*todo: implement initializer*/ = int();
    private int fallbackIndex/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate method Fallback
    //TODO: generate method GetNextChar
    //TODO: generate method MovePrevious
    //TODO: generate property 'Remaining'
    //TODO: generate method Reset
    //TODO: generate method InternalFallback
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\Encoder.cs'
//
// An Encoder is used to encode a sequence of blocks of characters into
// a sequence of blocks of bytes. Following instantiation of an encoder,
// sequential blocks of characters are converted into blocks of bytes through
// calls to the GetBytes method. The encoder maintains state between the
// conversions, allowing it to correctly encode character sequences that span
// adjacent blocks.
//
// Instances of specific implementations of the Encoder abstract base
// class are typically obtained through calls to the GetEncoder method
// of Encoding objects.
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public abstract class Encoder : __DotNet__Object
{
    package(mscorlib) EncoderFallback m_fallback/*todo: implement initializer*/ = null;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    package(mscorlib) EncoderFallbackBuffer m_fallbackBuffer/*todo: implement initializer*/ = null;
    //TODO: generate method SerializeEncoder
    //TODO: generate constructor
    //TODO: generate property 'Fallback'
    //TODO: generate property 'FallbackBuffer'
    //TODO: generate property 'InternalHasFallbackBuffer'
    //TODO: generate method Reset
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method Convert
    //TODO: generate method Convert
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\EncoderBestFitFallback.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class InternalEncoderBestFitFallback : EncoderFallback
{
    package(mscorlib) Encoding encoding/*todo: implement initializer*/ = null;
    package(mscorlib) wchar[] arrayBestFit/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method CreateFallbackBuffer
    //TODO: generate property 'MaxCharCount'
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
package(mscorlib) final class InternalEncoderBestFitFallbackBuffer : EncoderFallbackBuffer
{
    private wchar cBestFit/*todo: implement initializer*/ = wchar();
    private InternalEncoderBestFitFallback oFallback;
    private int iCount/*todo: implement initializer*/ = int();
    private int iSize;
    private static __DotNet__Object s_InternalSyncObject;
    //TODO: generate property 'InternalSyncObject'
    //TODO: generate constructor
    //TODO: generate method Fallback
    //TODO: generate method Fallback
    //TODO: generate method GetNextChar
    //TODO: generate method MovePrevious
    //TODO: generate property 'Remaining'
    //TODO: generate method Reset
    //TODO: generate method TryBestFit
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\EncoderExceptionFallback.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class EncoderExceptionFallback : EncoderFallback
{
    //TODO: generate constructor
    //TODO: generate method CreateFallbackBuffer
    //TODO: generate property 'MaxCharCount'
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
public final class EncoderExceptionFallbackBuffer : EncoderFallbackBuffer
{
    //TODO: generate constructor
    //TODO: generate method Fallback
    //TODO: generate method Fallback
    //TODO: generate method GetNextChar
    //TODO: generate method MovePrevious
    //TODO: generate property 'Remaining'
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class EncoderFallbackException : ArgumentException
{
    private wchar charUnknown;
    private wchar charUnknownHigh;
    private wchar charUnknownLow;
    private int index;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'CharUnknown'
    //TODO: generate property 'CharUnknownHigh'
    //TODO: generate property 'CharUnknownLow'
    //TODO: generate property 'Index'
    //TODO: generate method IsUnknownSurrogate
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\EncoderFallback.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
public abstract class EncoderFallback : __DotNet__Object
{
    package(mscorlib) bool bIsMicrosoftBestFitFallback/*todo: implement initializer*/ = bool();
    private static /*todo: volatile*/ EncoderFallback replacementFallback;
    private static /*todo: volatile*/ EncoderFallback exceptionFallback;
    private static __DotNet__Object s_InternalSyncObject;
    //TODO: generate property 'InternalSyncObject'
    //TODO: generate property 'ReplacementFallback'
    //TODO: generate property 'ExceptionFallback'
    //TODO: generate method CreateFallbackBuffer
    //TODO: generate property 'MaxCharCount'
}
public abstract class EncoderFallbackBuffer : __DotNet__Object
{
    //TODO: generate method Fallback
    //TODO: generate method Fallback
    //TODO: generate method GetNextChar
    //TODO: generate method MovePrevious
    //TODO: generate property 'Remaining'
    //TODO: generate method Reset
    // Internal items to help us figure out what we're doing as far as error messages, etc.
    // These help us with our performance and messages internally
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    package(mscorlib) wchar* charStart;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    package(mscorlib) wchar* charEnd;
    package(mscorlib) EncoderNLS encoder;
    package(mscorlib) bool setEncoder;
    package(mscorlib) bool bUsedEncoder;
    package(mscorlib) bool bFallingBack/*todo: implement initializer*/ = bool();
    package(mscorlib) int iRecursionCount/*todo: implement initializer*/ = int();
    private enum int iMaxRecursion/*todo: implement initializer*/ = int();
    //TODO: generate method InternalReset
    //TODO: generate method InternalInitialize
    //TODO: generate method InternalGetNextChar
    //TODO: generate method InternalFallback
    //TODO: generate method ThrowLastCharRecursive
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\EncoderNLS.cs'
//
// An Encoder is used to encode a sequence of blocks of characters into
// a sequence of blocks of bytes. Following instantiation of an encoder,
// sequential blocks of characters are converted into blocks of bytes through
// calls to the GetBytes method. The encoder maintains state between the
// conversions, allowing it to correctly encode character sequences that span
// adjacent blocks.
//
// Instances of specific implementations of the Encoder abstract base
// class are typically obtained through calls to the GetEncoder method
// of Encoding objects.
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class EncoderNLS : mscorlib.System.Text.Encoder, ISerializable
{
    package(mscorlib) wchar charLeftOver;
    protected Encoding m_encoding;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    protected bool m_mustFlush;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    package(mscorlib) bool m_throwOnOverflow;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    package(mscorlib) int m_charsUsed;
    //TODO: generate constructor
    //TODO: generate method GetObjectData
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Reset
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method Convert
    //TODO: generate method Convert
    //TODO: generate property 'Encoding'
    //TODO: generate property 'MustFlush'
    //TODO: generate property 'HasState'
    //TODO: generate method ClearMustFlush
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\EncoderReplacementFallback.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class EncoderReplacementFallback : EncoderFallback
{
    private String strDefault;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'DefaultString'
    //TODO: generate method CreateFallbackBuffer
    //TODO: generate property 'MaxCharCount'
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
public final class EncoderReplacementFallbackBuffer : EncoderFallbackBuffer
{
    private String strDefault;
    private int fallbackCount/*todo: implement initializer*/ = int();
    private int fallbackIndex/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate method Fallback
    //TODO: generate method Fallback
    //TODO: generate method GetNextChar
    //TODO: generate method MovePrevious
    //TODO: generate property 'Remaining'
    //TODO: generate method Reset
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\Encoding.cs'
//
// This abstract base class represents a character encoding. The class provides
// methods to convert arrays and strings of Unicode characters to and from
// arrays of bytes. A number of Encoding implementations are provided in
// the System.Text package, including:
//
// ASCIIEncoding, which encodes Unicode characters as single 7-bit
// ASCII characters. This encoding only supports character values between 0x00
//     and 0x7F.
// BaseCodePageEncoding, which encapsulates a Windows code page. Any
//     installed code page can be accessed through this encoding, and conversions
//     are performed using the WideCharToMultiByte and
//     MultiByteToWideChar Windows API functions.
// UnicodeEncoding, which encodes each Unicode character as two
//    consecutive bytes. Both little-endian (code page 1200) and big-endian (code
//    page 1201) encodings are recognized.
// UTF7Encoding, which encodes Unicode characters using the UTF-7
//     encoding (UTF-7 stands for UCS Transformation Format, 7-bit form). This
//     encoding supports all Unicode character values, and can also be accessed
//     as code page 65000.
// UTF8Encoding, which encodes Unicode characters using the UTF-8
//     encoding (UTF-8 stands for UCS Transformation Format, 8-bit form). This
//     encoding supports all Unicode character values, and can also be accessed
//     as code page 65001.
// UTF32Encoding, both 12000 (little endian) & 12001 (big endian)
//
// In addition to directly instantiating Encoding objects, an
// application can use the ForCodePage, GetASCII,
// GetDefault, GetUnicode, GetUTF7, and GetUTF8
// methods in this class to obtain encodings.
//
// Through an encoding, the GetBytes method is used to convert arrays
// of characters to arrays of bytes, and the GetChars method is used to
// convert arrays of bytes to arrays of characters. The GetBytes and
// GetChars methods maintain no state between conversions, and are
// generally intended for conversions of complete blocks of bytes and
// characters in one operation. When the data to be converted is only available
// in sequential blocks (such as data read from a stream) or when the amount of
// data is so large that it needs to be divided into smaller blocks, an
// application may choose to use a Decoder or an Encoder to
// perform the conversion. Decoders and encoders allow sequential blocks of
// data to be converted and they maintain the state required to support
// conversions of data that spans adjacent blocks. Decoders and encoders are
// obtained using the GetDecoder and GetEncoder methods.
//
// The core GetBytes and GetChars methods require the caller
// to provide the destination buffer and ensure that the buffer is large enough
// to hold the entire result of the conversion. When using these methods,
// either directly on an Encoding object or on an associated
// Decoder or Encoder, an application can use one of two methods
// to allocate destination buffers.
//
// The GetByteCount and GetCharCount methods can be used to
// compute the exact size of the result of a particular conversion, and an
// appropriately sized buffer for that conversion can then be allocated.
// The GetMaxByteCount and GetMaxCharCount methods can be
// be used to compute the maximum possible size of a conversion of a given
// number of bytes or characters, and a buffer of that size can then be reused
// for multiple conversions.
//
// The first method generally uses less memory, whereas the second method
// generally executes faster.
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public abstract class Encoding : __DotNet__Object, ICloneable
{
    private static Encoding defaultEncoding;
    package(mscorlib) enum int MIMECONTF_MAILNEWS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int MIMECONTF_BROWSER/*todo: implement initializer*/ = int();
    package(mscorlib) enum int MIMECONTF_SAVABLE_MAILNEWS/*todo: implement initializer*/ = int();
    package(mscorlib) enum int MIMECONTF_SAVABLE_BROWSER/*todo: implement initializer*/ = int();
    private enum int CodePageDefault/*todo: implement initializer*/ = int();
    private enum int CodePageNoOEM/*todo: implement initializer*/ = int();
    private enum int CodePageNoMac/*todo: implement initializer*/ = int();
    private enum int CodePageNoThread/*todo: implement initializer*/ = int();
    private enum int CodePageNoSymbol/*todo: implement initializer*/ = int();
    private enum int CodePageUnicode/*todo: implement initializer*/ = int();
    private enum int CodePageBigEndian/*todo: implement initializer*/ = int();
    private enum int CodePageWindows1252/*todo: implement initializer*/ = int();
    private enum int CodePageMacGB2312/*todo: implement initializer*/ = int();
    private enum int CodePageGB2312/*todo: implement initializer*/ = int();
    private enum int CodePageMacKorean/*todo: implement initializer*/ = int();
    private enum int CodePageDLLKorean/*todo: implement initializer*/ = int();
    private enum int ISO2022JP/*todo: implement initializer*/ = int();
    private enum int ISO2022JPESC/*todo: implement initializer*/ = int();
    private enum int ISO2022JPSISO/*todo: implement initializer*/ = int();
    private enum int ISOKorean/*todo: implement initializer*/ = int();
    private enum int ISOSimplifiedCN/*todo: implement initializer*/ = int();
    private enum int EUCJP/*todo: implement initializer*/ = int();
    private enum int ChineseHZ/*todo: implement initializer*/ = int();
    private enum int DuplicateEUCCN/*todo: implement initializer*/ = int();
    private enum int EUCCN/*todo: implement initializer*/ = int();
    private enum int EUCKR/*todo: implement initializer*/ = int();
    package(mscorlib) enum int CodePageASCII/*todo: implement initializer*/ = int();
    package(mscorlib) enum int ISO_8859_1/*todo: implement initializer*/ = int();
    private enum int ISCIIAssemese/*todo: implement initializer*/ = int();
    private enum int ISCIIBengali/*todo: implement initializer*/ = int();
    private enum int ISCIIDevanagari/*todo: implement initializer*/ = int();
    private enum int ISCIIGujarathi/*todo: implement initializer*/ = int();
    private enum int ISCIIKannada/*todo: implement initializer*/ = int();
    private enum int ISCIIMalayalam/*todo: implement initializer*/ = int();
    private enum int ISCIIOriya/*todo: implement initializer*/ = int();
    private enum int ISCIIPanjabi/*todo: implement initializer*/ = int();
    private enum int ISCIITamil/*todo: implement initializer*/ = int();
    private enum int ISCIITelugu/*todo: implement initializer*/ = int();
    private enum int GB18030/*todo: implement initializer*/ = int();
    private enum int ISO_8859_8I/*todo: implement initializer*/ = int();
    private enum int ISO_8859_8_Visual/*todo: implement initializer*/ = int();
    private enum int ENC50229/*todo: implement initializer*/ = int();
    private enum int CodePageUTF7/*todo: implement initializer*/ = int();
    private enum int CodePageUTF8/*todo: implement initializer*/ = int();
    private enum int CodePageUTF32/*todo: implement initializer*/ = int();
    private enum int CodePageUTF32BE/*todo: implement initializer*/ = int();
    package(mscorlib) int m_codePage/*todo: implement initializer*/ = int();
    package(mscorlib) CodePageDataItem dataItem/*todo: implement initializer*/ = null;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    package(mscorlib) bool m_deserializedFromEverett/*todo: implement initializer*/ = bool();
    // Because of encoders we may be read only
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    private bool m_isReadOnly/*todo: implement initializer*/ = bool();
    // Encoding (encoder) fallback
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    package(mscorlib) EncoderFallback encoderFallback/*todo: implement initializer*/ = null;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    package(mscorlib) DecoderFallback decoderFallback/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method SetDefaultFallbacks
    //TODO: generate method OnDeserializing
    //TODO: generate method OnDeserialized
    //TODO: generate method OnDeserializing
    //TODO: generate method OnDeserialized
    //TODO: generate method OnSerializing
    //TODO: generate method DeserializeEncoding
    //TODO: generate method SerializeEncoding
    //TODO: generate method Convert
    //TODO: generate method Convert
    //TODO: generate method RegisterProvider
    //TODO: generate method GetEncoding
    //TODO: generate method GetEncoding
    //TODO: generate method GetEncoding
    //TODO: generate method GetEncoding
    //TODO: generate method GetEncodings
    //TODO: generate method GetPreamble
    //TODO: generate method GetDataItem
    //TODO: generate property 'BodyName'
    //TODO: generate property 'EncodingName'
    //TODO: generate property 'HeaderName'
    //TODO: generate property 'WebName'
    //TODO: generate property 'WindowsCodePage'
    //TODO: generate property 'IsBrowserDisplay'
    //TODO: generate property 'IsBrowserSave'
    //TODO: generate property 'IsMailNewsDisplay'
    //TODO: generate property 'IsMailNewsSave'
    //TODO: generate property 'IsSingleByte'
    //TODO: generate property 'EncoderFallback'
    //TODO: generate property 'DecoderFallback'
    //TODO: generate method Clone
    //TODO: generate property 'IsReadOnly'
    //TODO: generate property 'ASCII'
    //TODO: generate property 'Latin1'
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetCharCount
    //TODO: generate method GetCharCount
    //TODO: generate method GetCharCount
    //TODO: generate method GetCharCount
    //TODO: generate method GetChars
    //TODO: generate method GetChars
    //TODO: generate method GetChars
    //TODO: generate method GetChars
    //TODO: generate method GetChars
    //TODO: generate method GetString
    //TODO: generate property 'CodePage'
    //TODO: generate method IsAlwaysNormalized
    //TODO: generate method IsAlwaysNormalized
    //TODO: generate method GetDecoder
    //TODO: generate method CreateDefaultEncoding
    //TODO: generate property 'Default'
    //TODO: generate method GetEncoder
    //TODO: generate method GetMaxByteCount
    //TODO: generate method GetMaxCharCount
    //TODO: generate method GetString
    //TODO: generate method GetString
    //TODO: generate property 'Unicode'
    //TODO: generate property 'BigEndianUnicode'
    //TODO: generate property 'UTF7'
    //TODO: generate property 'UTF8'
    //TODO: generate property 'UTF32'
    //TODO: generate property 'BigEndianUTF32'
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetBestFitUnicodeToBytesData
    //TODO: generate method GetBestFitBytesToUnicodeData
    //TODO: generate method ThrowBytesOverflow
    //TODO: generate method ThrowBytesOverflow
    //TODO: generate method ThrowCharsOverflow
    //TODO: generate method ThrowCharsOverflow
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    package(mscorlib) static class DefaultEncoder : mscorlib.System.Text.Encoder, IObjectReference, ISerializable
    {
        private Encoding m_encoding;
        @__DotNet__Attribute!(NonSerializedAttribute.stringof)
        private bool m_hasInitializedEncoding;
        @__DotNet__Attribute!(NonSerializedAttribute.stringof)
        package(mscorlib) wchar charLeftOver;
        //TODO: generate constructor
        //TODO: generate constructor
        //TODO: generate method GetRealObject
        //TODO: generate method GetObjectData
        //TODO: generate method GetByteCount
        //TODO: generate method GetByteCount
        //TODO: generate method GetBytes
        //TODO: generate method GetBytes
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    package(mscorlib) static class DefaultDecoder : mscorlib.System.Text.Decoder, IObjectReference, ISerializable
    {
        private Encoding m_encoding;
        @__DotNet__Attribute!(NonSerializedAttribute.stringof)
        private bool m_hasInitializedEncoding;
        //TODO: generate constructor
        //TODO: generate constructor
        //TODO: generate method GetRealObject
        //TODO: generate method GetObjectData
        //TODO: generate method GetCharCount
        //TODO: generate method GetCharCount
        //TODO: generate method GetCharCount
        //TODO: generate method GetChars
        //TODO: generate method GetChars
        //TODO: generate method GetChars
    }
    package(mscorlib) static class EncodingCharBuffer : __DotNet__Object
    {
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private wchar* chars;
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private wchar* charStart;
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private wchar* charEnd;
        private int charCountResult/*todo: implement initializer*/ = int();
        private Encoding enc;
        private DecoderNLS decoder;
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private ubyte* byteStart;
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private ubyte* byteEnd;
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private ubyte* bytes;
        private DecoderFallbackBuffer fallbackBuffer;
        //TODO: generate constructor
        //TODO: generate method AddChar
        //TODO: generate method AddChar
        //TODO: generate method AddChar
        //TODO: generate method AdjustBytes
        //TODO: generate property 'MoreData'
        //TODO: generate method EvenMoreData
        //TODO: generate method GetNextByte
        //TODO: generate property 'BytesUsed'
        //TODO: generate method Fallback
        //TODO: generate method Fallback
        //TODO: generate method Fallback
        //TODO: generate method Fallback
        //TODO: generate property 'Count'
    }
    package(mscorlib) static class EncodingByteBuffer : __DotNet__Object
    {
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private ubyte* bytes;
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private ubyte* byteStart;
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private ubyte* byteEnd;
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private wchar* chars;
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private wchar* charStart;
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private wchar* charEnd;
        private int byteCountResult/*todo: implement initializer*/ = int();
        private Encoding enc;
        private EncoderNLS encoder;
        package(mscorlib) EncoderFallbackBuffer fallbackBuffer;
        //TODO: generate constructor
        //TODO: generate method AddByte
        //TODO: generate method AddByte
        //TODO: generate method AddByte
        //TODO: generate method AddByte
        //TODO: generate method AddByte
        //TODO: generate method AddByte
        //TODO: generate method AddByte
        //TODO: generate method MovePrevious
        //TODO: generate method Fallback
        //TODO: generate property 'MoreData'
        //TODO: generate method GetNextChar
        //TODO: generate property 'CharsUsed'
        //TODO: generate property 'Count'
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\EncodingForwarder.cs'
//
package(mscorlib) class EncodingForwarder : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetCharCount
    //TODO: generate method GetCharCount
    //TODO: generate method GetChars
    //TODO: generate method GetChars
    //TODO: generate method GetString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\EncodingInfo.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class EncodingInfo : __DotNet__Object
{
    private int iCodePage;
    private String strEncodingName;
    private String strDisplayName;
    //TODO: generate constructor
    //TODO: generate property 'CodePage'
    //TODO: generate property 'Name'
    //TODO: generate property 'DisplayName'
    //TODO: generate method GetEncoding
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\EncodingNLS.cs'
//
// This class overrides Encoding with the things we need for our NLS Encodings
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) abstract class EncodingNLS : Encoding
{
    //TODO: generate constructor
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetCharCount
    //TODO: generate method GetCharCount
    //TODO: generate method GetChars
    //TODO: generate method GetChars
    //TODO: generate method GetString
    //TODO: generate method GetDecoder
    //TODO: generate method GetEncoder
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\EncodingProvider.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class EncodingProvider : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method GetEncoding
    //TODO: generate method GetEncoding
    //TODO: generate method GetEncoding
    //TODO: generate method GetEncoding
    //TODO: generate method AddProvider
    //TODO: generate method GetEncodingFromProvider
    //TODO: generate method GetEncodingFromProvider
    //TODO: generate method GetEncodingFromProvider
    //TODO: generate method GetEncodingFromProvider
    private static __DotNet__Object s_InternalSyncObject/*todo: implement initializer*/ = null;
    private static /*todo: volatile*/ EncodingProvider[] s_providers;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\ISCIIEncoding.cs'
//
// Encodes text into and out of the ISCII encodings.
// ISCII contains characters to encode indic scripts by mapping indic scripts
// to the same code page.  This works because they are all related scripts.
// ISCII provides a "font" selection method to switch between the appropriate
// fonts to display the other scripts.  All ISCII characters are above the
// ASCII range to provide ASCII compatibility.
//
// IsAlwaysNormalized() isn't overridden
// We don't override IsAlwaysNormalized() because it is false for all forms (like base implimentation)
//      Forms C & KC have things like 0933 + 093C == composed 0934, so they aren't normalized
//      Forms D & KD have things like 0934, which decomposes to 0933 + 093C, so not normal.
//      Form IDNA has the above problems plus case mapping, so false (like most encodings)
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class ISCIIEncoding : EncodingNLS, ISerializable
{
    private enum int CodeDefault/*todo: implement initializer*/ = int();
    private enum int CodeRoman/*todo: implement initializer*/ = int();
    private enum int CodeDevanagari/*todo: implement initializer*/ = int();
    private enum int CodeBengali/*todo: implement initializer*/ = int();
    private enum int CodeTamil/*todo: implement initializer*/ = int();
    private enum int CodeTelugu/*todo: implement initializer*/ = int();
    private enum int CodeAssamese/*todo: implement initializer*/ = int();
    private enum int CodeOriya/*todo: implement initializer*/ = int();
    private enum int CodeKannada/*todo: implement initializer*/ = int();
    private enum int CodeMalayalam/*todo: implement initializer*/ = int();
    private enum int CodeGujarati/*todo: implement initializer*/ = int();
    private enum int CodePunjabi/*todo: implement initializer*/ = int();
    private enum int MultiByteBegin/*todo: implement initializer*/ = int();
    private enum int IndicBegin/*todo: implement initializer*/ = int();
    private enum int IndicEnd/*todo: implement initializer*/ = int();
    private enum ubyte ControlATR/*todo: implement initializer*/ = ubyte();
    private enum ubyte ControlCodePageStart/*todo: implement initializer*/ = ubyte();
    private enum ubyte Virama/*todo: implement initializer*/ = ubyte();
    private enum ubyte Nukta/*todo: implement initializer*/ = ubyte();
    private enum ubyte DevenagariExt/*todo: implement initializer*/ = ubyte();
    private enum wchar ZWNJ/*todo: implement initializer*/ = wchar();
    private enum wchar ZWJ/*todo: implement initializer*/ = wchar();
    private int defaultCodePage;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetObjectData
    //TODO: generate method GetMaxByteCount
    //TODO: generate method GetMaxCharCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetBytes
    //TODO: generate method GetCharCount
    //TODO: generate method GetChars
    //TODO: generate method GetDecoder
    //TODO: generate method GetEncoder
    //TODO: generate method GetHashCode
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    package(mscorlib) static class ISCIIEncoder : EncoderNLS
    {
        package(mscorlib) int defaultCodePage/*todo: implement initializer*/ = int();
        package(mscorlib) int currentCodePage/*todo: implement initializer*/ = int();
        package(mscorlib) bool bLastVirama/*todo: implement initializer*/ = bool();
        //TODO: generate constructor
        //TODO: generate method Reset
        //TODO: generate property 'HasState'
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    package(mscorlib) static class ISCIIDecoder : DecoderNLS
    {
        package(mscorlib) int currentCodePage/*todo: implement initializer*/ = int();
        package(mscorlib) bool bLastATR/*todo: implement initializer*/ = bool();
        package(mscorlib) bool bLastVirama/*todo: implement initializer*/ = bool();
        package(mscorlib) bool bLastDevenagariStressAbbr/*todo: implement initializer*/ = bool();
        package(mscorlib) wchar cLastCharForNextNukta/*todo: implement initializer*/ = wchar();
        package(mscorlib) wchar cLastCharForNoNextNukta/*todo: implement initializer*/ = wchar();
        //TODO: generate constructor
        //TODO: generate method Reset
        //TODO: generate property 'HasState'
    }
    private static int[] UnicodeToIndicChar/*todo: implement initializer*/ = null;
    private static ubyte[] SecondIndicByte/*todo: implement initializer*/ = null;
    private static int[] IndicMappingIndex/*todo: implement initializer*/ = null;
    private static wchar[] IndicMapping/*todo: implement initializer*/ = null;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\Latin1Encoding.cs'
//
//
// Latin1Encoding is a simple override to optimize the GetString version of Latin1Encoding.
// because of the best fit cases we can't do this when encoding the string, only when decoding
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class Latin1Encoding : EncodingNLS, ISerializable
{
    package(mscorlib) static immutable Latin1Encoding s_default/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetObjectData
    //TODO: generate method GetByteCount
    //TODO: generate method GetBytes
    //TODO: generate method GetCharCount
    //TODO: generate method GetChars
    //TODO: generate method GetMaxByteCount
    //TODO: generate method GetMaxCharCount
    //TODO: generate property 'IsSingleByte'
    //TODO: generate method IsAlwaysNormalized
    //TODO: generate method GetBestFitUnicodeToBytesData
    private static immutable wchar[] arrayCharBestFit/*todo: implement initializer*/ = null;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\MLangCodePageEncoding.cs'
//
// =================================MLangCodePageEncoding==================================
// ** This class is here only to deserialize the MLang classes from Everett (V1.1) into
// ** Appropriate Whidbey (V2.0) objects.  We also serialize the Whidbey classes
// ** using this proxy since we pretty much need one anyway and that solves Whidbey
// ** to Everett compatibility as well.
// ==============================================================================
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class MLangCodePageEncoding : __DotNet__Object, IObjectReference, ISerializable
{
    // Temp stuff
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private int m_codePage;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private bool m_isReadOnly;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private bool m_deserializedFromEverett/*todo: implement initializer*/ = bool();
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private EncoderFallback encoderFallback/*todo: implement initializer*/ = null;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private DecoderFallback decoderFallback/*todo: implement initializer*/ = null;
    // Might need this when GetRealObjecting
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private Encoding realEncoding/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method GetRealObject
    //TODO: generate method GetObjectData
    // Same problem with the Encoder, this only happens with Everett Encoders
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    package(mscorlib) static final class MLangEncoder : __DotNet__Object, IObjectReference, ISerializable
    {
        // Might need this when GetRealObjecting
        @__DotNet__Attribute!(NonSerializedAttribute.stringof)
        private Encoding realEncoding/*todo: implement initializer*/ = null;
        //TODO: generate constructor
        //TODO: generate method GetRealObject
        //TODO: generate method GetObjectData
    }
    // Same problem with the Decoder, this only happens with Everett Decoders
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    package(mscorlib) static final class MLangDecoder : __DotNet__Object, IObjectReference, ISerializable
    {
        // Might need this when GetRealObjecting
        @__DotNet__Attribute!(NonSerializedAttribute.stringof)
        private Encoding realEncoding/*todo: implement initializer*/ = null;
        //TODO: generate constructor
        //TODO: generate method GetRealObject
        //TODO: generate method GetObjectData
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\Normalization.cs'
//
// This is the enumeration for Normalization Forms
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum NormalizationForm
{
    // #if !FEATURE_NORM_IDNA_ONLY     
    FormC = 1,
    FormD = 2,
    FormKC = 5,
    FormKD = 6,
}
package(mscorlib) enum ExtendedNormalizationForms
{
    // #if !FEATURE_NORM_IDNA_ONLY     
    FormC = 1,
    FormD = 2,
    FormKC = 5,
    FormKD = 6,
    // #endif // !FEATURE_NORM_IDNA_ONLY        
    FormIdna = 0xd,
    // #if !FEATURE_NORM_IDNA_ONLY
    FormCDisallowUnassigned = 0x101,
    FormDDisallowUnassigned = 0x102,
    FormKCDisallowUnassigned = 0x105,
    FormKDDisallowUnassigned = 0x106,
    // #endif // !FEATURE_NORM_IDNA_ONLY        
    FormIdnaDisallowUnassigned = 0x10d,
}
package(mscorlib) class Normalization : __DotNet__Object
{
    private static /*todo: volatile*/ bool NFC;
    private static /*todo: volatile*/ bool NFD;
    private static /*todo: volatile*/ bool NFKC;
    private static /*todo: volatile*/ bool NFKD;
    private static /*todo: volatile*/ bool IDNA;
    private static /*todo: volatile*/ bool NFCDisallowUnassigned;
    private static /*todo: volatile*/ bool NFDDisallowUnassigned;
    private static /*todo: volatile*/ bool NFKCDisallowUnassigned;
    private static /*todo: volatile*/ bool NFKDDisallowUnassigned;
    private static /*todo: volatile*/ bool IDNADisallowUnassigned;
    private static /*todo: volatile*/ bool Other;
    private enum int ERROR_SUCCESS/*todo: implement initializer*/ = int();
    private enum int ERROR_NOT_ENOUGH_MEMORY/*todo: implement initializer*/ = int();
    private enum int ERROR_INVALID_PARAMETER/*todo: implement initializer*/ = int();
    private enum int ERROR_INSUFFICIENT_BUFFER/*todo: implement initializer*/ = int();
    private enum int ERROR_NO_UNICODE_TRANSLATION/*todo: implement initializer*/ = int();
    //TODO: generate method InitializeForm
    //TODO: generate method EnsureInitialized
    //TODO: generate method IsNormalized
    //TODO: generate method Normalize
    //TODO: generate method nativeNormalizationNormalizeString
    //TODO: generate method nativeNormalizationIsNormalizedString
    //TODO: generate method nativeNormalizationInitNormalization
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\StringBuilder.cs'
//
// This class represents a mutable string.  It is convenient for situations in
// which it is desirable to modify a string, perhaps by removing, replacing, or 
// inserting characters, without creating a new String subsequent to
// each modification. 
// 
// The methods contained within this class do not return a new StringBuilder
// object unless specified otherwise.  This class may be used in conjunction with the String
// class to carry out modifications upon strings.
// 
// When passing null into a constructor in VJ and VC, the null
// should be explicitly type cast.
// For Example:
// StringBuilder sb1 = new StringBuilder((StringBuilder)null);
// StringBuilder sb2 = new StringBuilder((String)null);
// Console.WriteLine(sb1);
// Console.WriteLine(sb2);
// 
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class StringBuilder : __DotNet__Object, ISerializable
{
    package(mscorlib) wchar[] m_ChunkChars;
    package(mscorlib) StringBuilder m_ChunkPrevious;
    package(mscorlib) int m_ChunkLength;
    package(mscorlib) int m_ChunkOffset;
    package(mscorlib) int m_MaxCapacity/*todo: implement initializer*/ = int();
    package(mscorlib) enum int DefaultCapacity/*todo: implement initializer*/ = int();
    private enum String CapacityField/*todo: implement initializer*/ = null;
    private enum String MaxCapacityField/*todo: implement initializer*/ = null;
    private enum String StringValueField/*todo: implement initializer*/ = null;
    private enum String ThreadIDField/*todo: implement initializer*/ = null;
    package(mscorlib) enum int MaxChunkSize/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetObjectData
    //TODO: generate method VerifyClassInvariant
    //TODO: generate property 'Capacity'
    //TODO: generate property 'MaxCapacity'
    //TODO: generate method EnsureCapacity
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method Clear
    //TODO: generate property 'Length'
    //TODO: generate indexer
    //TODO: generate method Append
    //TODO: generate method Append
    //TODO: generate method Append
    //TODO: generate method AppendHelper
    //TODO: generate method ReplaceBufferInternal
    //TODO: generate method ReplaceBufferAnsiInternal
    //TODO: generate method Append
    //TODO: generate method AppendLine
    //TODO: generate method AppendLine
    //TODO: generate method CopyTo
    //TODO: generate method Insert
    //TODO: generate method Remove
    //TODO: generate method Append
    //TODO: generate method Append
    //TODO: generate method Append
    //TODO: generate method Append
    //TODO: generate method Append
    //TODO: generate method Append
    //TODO: generate method Append
    //TODO: generate method Append
    //TODO: generate method Append
    //TODO: generate method Append
    //TODO: generate method Append
    //TODO: generate method Append
    //TODO: generate method Append
    //TODO: generate method Append
    //TODO: generate method Append
    //TODO: generate method Insert
    //TODO: generate method Insert
    //TODO: generate method Insert
    //TODO: generate method Insert
    //TODO: generate method Insert
    //TODO: generate method Insert
    //TODO: generate method Insert
    //TODO: generate method Insert
    //TODO: generate method Insert
    //TODO: generate method Insert
    //TODO: generate method Insert
    //TODO: generate method Insert
    //TODO: generate method Insert
    //TODO: generate method Insert
    //TODO: generate method Insert
    //TODO: generate method Insert
    //TODO: generate method Insert
    //TODO: generate method AppendFormat
    //TODO: generate method AppendFormat
    //TODO: generate method AppendFormat
    //TODO: generate method AppendFormat
    //TODO: generate method AppendFormat
    //TODO: generate method AppendFormat
    //TODO: generate method AppendFormat
    //TODO: generate method AppendFormat
    //TODO: generate method FormatError
    private enum int Index_Limit/*todo: implement initializer*/ = int();
    private enum int Width_Limit/*todo: implement initializer*/ = int();
    //TODO: generate method AppendFormatHelper
    //TODO: generate method Replace
    //TODO: generate method Equals
    //TODO: generate method Replace
    //TODO: generate method Replace
    //TODO: generate method Replace
    //TODO: generate method Append
    //TODO: generate method Insert
    //TODO: generate method ReplaceAllInChunk
    //TODO: generate method StartsWith
    //TODO: generate method ReplaceInPlaceAtChunk
    //TODO: generate method ThreadSafeCopy
    //TODO: generate method ThreadSafeCopy
    //TODO: generate method InternalCopy
    //TODO: generate method FindChunkForIndex
    //TODO: generate method FindChunkForByte
    //TODO: generate method Next
    //TODO: generate method ExpandByABlock
    //TODO: generate constructor
    //TODO: generate method MakeRoom
    //TODO: generate constructor
    //TODO: generate method Remove
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\StringBuilderCache.cs'
//
package(mscorlib) class StringBuilderCache : __DotNet__Object
{
    private this() {} // prevent instantiation
    private enum int MAX_BUILDER_SIZE/*todo: implement initializer*/ = int();
    @__DotNet__Attribute!(ThreadStaticAttribute.stringof)
    private static StringBuilder CachedInstance;
    //TODO: generate method Acquire
    //TODO: generate method Release
    //TODO: generate method GetStringAndRelease
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\SurrogateEncoder.cs'
//
// =================================SurrogateEncoder==================================
// ** This class is here only to deserialize the SurrogateEncoder class from Everett (V1.1) into
// ** Appropriate Whidbey (V2.0) objects.
// ==============================================================================
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class SurrogateEncoder : __DotNet__Object, IObjectReference, ISerializable
{
    // Might need this when GetRealObjecting
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private Encoding realEncoding/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method GetRealObject
    //TODO: generate method GetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\UnicodeEncoding.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class UnicodeEncoding : Encoding
{
    package(mscorlib) static immutable UnicodeEncoding s_bigEndianDefault/*todo: implement initializer*/ = null;
    package(mscorlib) static immutable UnicodeEncoding s_littleEndianDefault/*todo: implement initializer*/ = null;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    package(mscorlib) bool isThrowException/*todo: implement initializer*/ = bool();
    package(mscorlib) bool bigEndian/*todo: implement initializer*/ = bool();
    package(mscorlib) bool byteOrderMark/*todo: implement initializer*/ = bool();
    public enum int CharSize/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method OnDeserializing
    //TODO: generate method SetDefaultFallbacks
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetCharCount
    //TODO: generate method GetCharCount
    //TODO: generate method GetChars
    //TODO: generate method GetChars
    //TODO: generate method GetString
    //TODO: generate method GetByteCount
    //TODO: generate method GetBytes
    //TODO: generate method GetCharCount
    //TODO: generate method GetChars
    //TODO: generate method GetEncoder
    //TODO: generate method GetDecoder
    //TODO: generate method GetPreamble
    //TODO: generate method GetMaxByteCount
    //TODO: generate method GetMaxCharCount
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class Decoder : DecoderNLS, ISerializable
    {
        package(mscorlib) int lastByte/*todo: implement initializer*/ = int();
        package(mscorlib) wchar lastChar/*todo: implement initializer*/ = wchar();
        //TODO: generate constructor
        //TODO: generate constructor
        //TODO: generate method GetObjectData
        //TODO: generate method Reset
        //TODO: generate property 'HasState'
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\UTF32Encoding.cs'
//
// Encodes text into and out of UTF-32.  UTF-32 is a way of writing
// Unicode characters with a single storage unit (32 bits) per character,
//
// The UTF-32 byte order mark is simply the Unicode byte order mark
// (0x00FEFF) written in UTF-32 (0x0000FEFF or 0xFFFE0000).  The byte order
// mark is used mostly to distinguish UTF-32 text from other encodings, and doesn't
// switch the byte orderings.
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class UTF32Encoding : Encoding
{
    package(mscorlib) static immutable UTF32Encoding s_default/*todo: implement initializer*/ = null;
    package(mscorlib) static immutable UTF32Encoding s_bigEndianDefault/*todo: implement initializer*/ = null;
    private bool emitUTF32ByteOrderMark/*todo: implement initializer*/ = bool();
    private bool isThrowException/*todo: implement initializer*/ = bool();
    private bool bigEndian/*todo: implement initializer*/ = bool();
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method SetDefaultFallbacks
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetCharCount
    //TODO: generate method GetCharCount
    //TODO: generate method GetChars
    //TODO: generate method GetChars
    //TODO: generate method GetString
    //TODO: generate method GetByteCount
    //TODO: generate method GetBytes
    //TODO: generate method GetCharCount
    //TODO: generate method GetChars
    //TODO: generate method GetSurrogate
    //TODO: generate method GetHighSurrogate
    //TODO: generate method GetLowSurrogate
    //TODO: generate method GetDecoder
    //TODO: generate method GetEncoder
    //TODO: generate method GetMaxByteCount
    //TODO: generate method GetMaxCharCount
    //TODO: generate method GetPreamble
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    package(mscorlib) static class UTF32Decoder : DecoderNLS
    {
        package(mscorlib) int iChar/*todo: implement initializer*/ = int();
        package(mscorlib) int readByteCount/*todo: implement initializer*/ = int();
        //TODO: generate constructor
        //TODO: generate method Reset
        //TODO: generate property 'HasState'
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\UTF7Encoding.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class UTF7Encoding : Encoding
{
    private enum String base64Chars/*todo: implement initializer*/ = null;
    private enum String directChars/*todo: implement initializer*/ = null;
    private enum String optionalChars/*todo: implement initializer*/ = null;
    package(mscorlib) static immutable UTF7Encoding s_default/*todo: implement initializer*/ = null;
    private ubyte[] base64Bytes;
    private byte[] base64Values;
    private bool[] directEncode;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    private bool m_allowOptionals;
    private enum int UTF7_CODEPAGE/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method MakeTables
    //TODO: generate method SetDefaultFallbacks
    //TODO: generate method OnDeserializing
    //TODO: generate method OnDeserialized
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetCharCount
    //TODO: generate method GetCharCount
    //TODO: generate method GetChars
    //TODO: generate method GetChars
    //TODO: generate method GetString
    //TODO: generate method GetByteCount
    //TODO: generate method GetBytes
    //TODO: generate method GetCharCount
    //TODO: generate method GetChars
    //TODO: generate method GetDecoder
    //TODO: generate method GetEncoder
    //TODO: generate method GetMaxByteCount
    //TODO: generate method GetMaxCharCount
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class Decoder : DecoderNLS, ISerializable
    {
        package(mscorlib) int bits;
        package(mscorlib) int bitCount;
        package(mscorlib) bool firstByte;
        //TODO: generate constructor
        //TODO: generate constructor
        //TODO: generate method GetObjectData
        //TODO: generate method Reset
        //TODO: generate property 'HasState'
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    private static class Encoder : EncoderNLS, ISerializable
    {
        package(mscorlib) int bits;
        package(mscorlib) int bitCount;
        //TODO: generate constructor
        //TODO: generate constructor
        //TODO: generate method GetObjectData
        //TODO: generate method Reset
        //TODO: generate property 'HasState'
    }
    // Preexisting UTF7 behavior for bad bytes was just to spit out the byte as the next char
    // and turn off base64 mode if it was in that mode.  We still exit the mode, but now we fallback.
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    package(mscorlib) static final class DecoderUTF7Fallback : DecoderFallback
    {
        //TODO: generate constructor
        //TODO: generate method CreateFallbackBuffer
        //TODO: generate property 'MaxCharCount'
        //TODO: generate method Equals
        //TODO: generate method GetHashCode
    }
    package(mscorlib) static final class DecoderUTF7FallbackBuffer : DecoderFallbackBuffer
    {
        private wchar cFallback/*todo: implement initializer*/ = wchar();
        private int iCount/*todo: implement initializer*/ = int();
        private int iSize;
        //TODO: generate constructor
        //TODO: generate method Fallback
        //TODO: generate method GetNextChar
        //TODO: generate method MovePrevious
        //TODO: generate property 'Remaining'
        //TODO: generate method Reset
        //TODO: generate method InternalFallback
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Text\UTF8Encoding.cs'
//
// Encodes text into and out of UTF-8.  UTF-8 is a way of writing
// Unicode characters with variable numbers of bytes per character,
// optimized for the lower 127 ASCII characters.  It's an efficient way
// of encoding US English in an internationalizable way.
//
// Don't override IsAlwaysNormalized because it is just a Unicode Transformation and could be confused.
//
// The UTF-8 byte order mark is simply the Unicode byte order mark
// (0xFEFF) written in UTF-8 (0xEF 0xBB 0xBF).  The byte order mark is
// used mostly to distinguish UTF-8 text from other encodings, and doesn't
// switch the byte orderings.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class UTF8Encoding : Encoding
{
    private enum int UTF8_CODEPAGE/*todo: implement initializer*/ = int();
    package(mscorlib) static immutable UTF8Encoding s_default/*todo: implement initializer*/ = null;
    private bool emitUTF8Identifier/*todo: implement initializer*/ = bool();
    private bool isThrowException/*todo: implement initializer*/ = bool();
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method SetDefaultFallbacks
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetByteCount
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetBytes
    //TODO: generate method GetCharCount
    //TODO: generate method GetCharCount
    //TODO: generate method GetChars
    //TODO: generate method GetChars
    //TODO: generate method GetString
    //TODO: generate method GetByteCount
    //TODO: generate method PtrDiff
    //TODO: generate method PtrDiff
    //TODO: generate method InRange
    //TODO: generate method GetBytes
    private enum int FinalByte/*todo: implement initializer*/ = int();
    private enum int SupplimentarySeq/*todo: implement initializer*/ = int();
    private enum int ThreeByteSeq/*todo: implement initializer*/ = int();
    //TODO: generate method GetCharCount
    //TODO: generate method GetChars
    //TODO: generate method FallbackInvalidByteSequence
    //TODO: generate method FallbackInvalidByteSequence
    //TODO: generate method GetBytesUnknown
    //TODO: generate method GetDecoder
    //TODO: generate method GetEncoder
    //TODO: generate method GetMaxByteCount
    //TODO: generate method GetMaxCharCount
    //TODO: generate method GetPreamble
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    package(mscorlib) static class UTF8Encoder : EncoderNLS, ISerializable
    {
        package(mscorlib) int surrogateChar;
        //TODO: generate constructor
        //TODO: generate constructor
        //TODO: generate method GetObjectData
        //TODO: generate method Reset
        //TODO: generate property 'HasState'
    }
    @__DotNet__Attribute!(SerializableAttribute.stringof)
    package(mscorlib) static class UTF8Decoder : DecoderNLS, ISerializable
    {
        package(mscorlib) int bits;
        //TODO: generate constructor
        //TODO: generate constructor
        //TODO: generate method GetObjectData
        //TODO: generate method Reset
        //TODO: generate property 'HasState'
    }
}
