module mscorlib.System.Runtime.Serialization;

import mscorlib.System :
    DotNetObject,
    Type,
    Attribute,
    SystemException,
    String;
import mscorlib.System.Reflection :
    Binder,
    MemberInfo,
    FieldInfo,
    RuntimeFieldInfo;
import mscorlib.System.Collections.Generic :
    Dictionary2;
import mscorlib.System.Collections :
    IEnumerator;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\FormatterConverter.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public class FormatterConverter : DotNetObject, IFormatterConverter
{
    //TODO: generate constructor
    //TODO: generate method Convert
    //TODO: generate method Convert
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
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\FormatterServices.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public class FormatterServices : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method GetUninitializedObject
    //TODO: generate method GetSafeUninitializedObject
    //TODO: generate method nativeGetSafeUninitializedObject
    //TODO: generate method nativeGetUninitializedObject
    private static Binder s_binder/*todo: implement initializer*/ = null;
    //TODO: generate method SerializationSetValue
    //TODO: generate method PopulateObjectMembers
    //TODO: generate method GetObjectData
    //TODO: generate method GetSurrogateForCyclicalReference
    //TODO: generate method GetTypeFromAssembly
    //TODO: generate method LoadAssemblyFromString
    //TODO: generate method LoadAssemblyFromStringNoThrow
    //TODO: generate method GetClrAssemblyName
    //TODO: generate method GetClrTypeFullName
    //TODO: generate method GetClrTypeFullNameForArray
    //TODO: generate method GetClrTypeFullNameForNonArrayTypes
}
public final class SurrogateForCyclicalReference : DotNetObject, ISerializationSurrogate
{
    private ISerializationSurrogate innerSurrogate;
    //TODO: generate constructor
    //TODO: generate method GetObjectData
    //TODO: generate method SetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\IDeserializationCallback.cs'
//
//// Interface does not need to be marked with the serializable attribute    
//    [System.Runtime.InteropServices.ComVisible(true)]
public interface IDeserializationCallback
{
    //TODO: generate method OnDeserialization
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\IFormatter.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public interface IFormatter
{
    //TODO: generate method Deserialize
    //TODO: generate method Serialize
    //TODO: generate property 'SurrogateSelector'
    //TODO: generate property 'Binder'
    //TODO: generate property 'Context'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\IFormatterConverter.cs'
//
//[CLSCompliant(false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public interface IFormatterConverter
{
    //TODO: generate method Convert
    //TODO: generate method Convert
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
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\IObjectReference.cs'
//
//// Interface does not need to be marked with the serializable attribute
//[System.Runtime.InteropServices.ComVisible(true)]
public interface IObjectReference
{
    //TODO: generate method GetRealObject
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\ISerializable.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public interface ISerializable
{
    //TODO: generate method GetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\ISerializationSurrogate.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public interface ISerializationSurrogate
{
    //TODO: generate method GetObjectData
    //TODO: generate method SetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\ISurrogateSelector.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public interface ISurrogateSelector
{
    //TODO: generate method ChainSelector
    //TODO: generate method GetSurrogate
    //TODO: generate method GetNextSelector
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\MemberHolder.cs'
//
//[Serializable]
public class MemberHolder : DotNetObject
{
    public MemberInfo[] members/*todo: implement initializer*/ = null;
    public Type memberType;
    public StreamingContext context;
    //TODO: generate constructor
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\SerializationAttributes.cs'
//
//[AttributeUsage(AttributeTargets.Field, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class OptionalFieldAttribute : Attribute
{
    private int versionAdded/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate property 'VersionAdded'
}
//[AttributeUsage(AttributeTargets.Method, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class OnSerializingAttribute : Attribute
{
}
//[AttributeUsage(AttributeTargets.Method, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class OnSerializedAttribute : Attribute
{
}
//[AttributeUsage(AttributeTargets.Method, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class OnDeserializingAttribute : Attribute
{
}
//[AttributeUsage(AttributeTargets.Method, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class OnDeserializedAttribute : Attribute
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\SerializationBinder.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public abstract class SerializationBinder : DotNetObject
{
    //TODO: generate method BindToName
    //TODO: generate method BindToType
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\SerializationException.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public class SerializationException : SystemException
{
    private static String _nullMessage/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\SerializationFieldInfo.cs'
//
public final class SerializationFieldInfo : FieldInfo
{
    public enum String FakeNameSeparatorString/*todo: implement initializer*/ = null;
    private RuntimeFieldInfo m_field;
    private String m_serializationName;
    //TODO: generate property 'Module'
    //TODO: generate property 'MetadataToken'
    //TODO: generate constructor
    //TODO: generate property 'Name'
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'ReflectedType'
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate property 'FieldType'
    //TODO: generate method GetValue
    //TODO: generate method InternalGetValue
    //TODO: generate method SetValue
    //TODO: generate method InternalSetValue
    //TODO: generate property 'FieldInfo'
    //TODO: generate property 'FieldHandle'
    //TODO: generate property 'Attributes'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\SerializationInfo.cs'
//
//#endif 
//
//    [System.Runtime.InteropServices.ComVisible(true)]
public final class SerializationInfo : DotNetObject
{
    private enum int defaultSize/*todo: implement initializer*/ = int();
    private enum String s_mscorlibAssemblySimpleName/*todo: implement initializer*/ = null;
    private enum String s_mscorlibFileName/*todo: implement initializer*/ = null;
    public String[] m_members;
    public DotNetObject[] m_data;
    public Type[] m_types;
    private Dictionary2!(String,int) m_nameToIndex;
    public int m_currMember;
    public IFormatterConverter m_converter;
    private String m_fullTypeName;
    private String m_assemName;
    private Type objectType;
    private bool isFullTypeNameSetExplicit;
    private bool isAssemblyNameSetExplicit;
    private bool requireSameTokenInPartialTrust;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'FullTypeName'
    //TODO: generate property 'AssemblyName'
    //TODO: generate method SetType
    //TODO: generate method Compare
    //TODO: generate method DemandForUnsafeAssemblyNameAssignments
    //TODO: generate method IsAssemblyNameAssignmentSafe
    //TODO: generate property 'MemberCount'
    //TODO: generate property 'ObjectType'
    //TODO: generate property 'IsFullTypeNameSetExplicit'
    //TODO: generate property 'IsAssemblyNameSetExplicit'
    //TODO: generate method GetEnumerator
    //TODO: generate method ExpandArrays
    //TODO: generate method AddValue
    //TODO: generate method AddValue
    //TODO: generate method AddValue
    //TODO: generate method AddValue
    //TODO: generate method AddValue
    //TODO: generate method AddValue
    //TODO: generate method AddValue
    //TODO: generate method AddValue
    //TODO: generate method AddValue
    //TODO: generate method AddValue
    //TODO: generate method AddValue
    //TODO: generate method AddValue
    //TODO: generate method AddValue
    //TODO: generate method AddValue
    //TODO: generate method AddValue
    //TODO: generate method AddValue
    //TODO: generate method AddValueInternal
    //TODO: generate method UpdateValue
    //TODO: generate method FindElement
    //TODO: generate method GetElement
    //TODO: generate method GetElementNoThrow
    //TODO: generate method GetValue
    //TODO: generate method GetValueNoThrow
    //TODO: generate method GetBoolean
    //TODO: generate method GetChar
    //TODO: generate method GetSByte
    //TODO: generate method GetByte
    //TODO: generate method GetInt16
    //TODO: generate method GetUInt16
    //TODO: generate method GetInt32
    //TODO: generate method GetUInt32
    //TODO: generate method GetInt64
    //TODO: generate method GetUInt64
    //TODO: generate method GetSingle
    //TODO: generate method GetDouble
    //TODO: generate method GetDecimal
    //TODO: generate method GetDateTime
    //TODO: generate method GetString
    //TODO: generate property 'MemberNames'
    //TODO: generate property 'MemberValues'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\SerializationInfoEnumerator.cs'
//
////
//    // The tuple returned by SerializationInfoEnumerator.Current.
//    //
//[System.Runtime.InteropServices.ComVisible(true)]
public struct SerializationEntry
{
    private Type m_type;
    private DotNetObject m_value;
    private String m_name;
    //TODO: generate property 'Value'
    //TODO: generate property 'Name'
    //TODO: generate property 'ObjectType'
    //TODO: generate constructor
}
////
//    // A simple enumerator over the values stored in the SerializationInfo.
//    // This does not snapshot the values, it just keeps pointers to the 
//    // member variables of the SerializationInfo that created it.
//    //
//[System.Runtime.InteropServices.ComVisible(true)]
public final class SerializationInfoEnumerator : DotNetObject, IEnumerator
{
    private String[] m_members;
    private DotNetObject[] m_data;
    private Type[] m_types;
    private int m_numItems;
    private int m_currItem;
    private bool m_current;
    //TODO: generate constructor
    //TODO: generate method MoveNext
    //TODO: generate property 'Current'
    //TODO: generate property 'Current'
    //TODO: generate method Reset
    //TODO: generate property 'Name'
    //TODO: generate property 'Value'
    //TODO: generate property 'ObjectType'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\StreamingContext.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public struct StreamingContext
{
    public DotNetObject m_additionalContext;
    public StreamingContextStates m_state;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Context'
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate property 'State'
}
// Ignored: // **********************************************************
// Ignored: // Keep these in sync with the version in vm\runtimehandles.h
// Ignored: // **********************************************************
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum StreamingContextStates
{
    CrossProcess = 0x01,
    CrossMachine = 0x02,
    File = 0x04,
    Persistence = 0x08,
    Remoting = 0x10,
    Other = 0x20,
    Clone = 0x40,
    CrossAppDomain = 0x80,
    All = 0xFF,
}
