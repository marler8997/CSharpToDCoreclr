module mscorlib.System.Runtime.Serialization;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    __DotNet__Object,
    Type,
    CLSCompliantAttribute,
    SerializableAttribute,
    AttributeUsageAttribute,
    Attribute,
    SystemException,
    String,
    Environment,
    CoreLib,
    FlagsAttribute;
import mscorlib.System.Runtime.InteropServices :
    ComVisibleAttribute;
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
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class FormatterConverter : __DotNet__Object, IFormatterConverter
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
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class FormatterServices : __DotNet__Object
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
package(mscorlib) final class SurrogateForCyclicalReference : __DotNet__Object, ISerializationSurrogate
{
    private ISerializationSurrogate innerSurrogate;
    //TODO: generate constructor
    //TODO: generate method GetObjectData
    //TODO: generate method SetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\IDeserializationCallback.cs'
//
// Interface does not need to be marked with the serializable attribute    
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IDeserializationCallback
{
    //TODO: generate method OnDeserialization
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\IFormatter.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
// Interface does not need to be marked with the serializable attribute
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IObjectReference
{
    //TODO: generate method GetRealObject
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\ISerializable.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface ISerializable
{
    //TODO: generate method GetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\ISerializationSurrogate.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface ISerializationSurrogate
{
    //TODO: generate method GetObjectData
    //TODO: generate method SetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\ISurrogateSelector.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface ISurrogateSelector
{
    //TODO: generate method ChainSelector
    //TODO: generate method GetSurrogate
    //TODO: generate method GetNextSelector
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\MemberHolder.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class MemberHolder : __DotNet__Object
{
    package(mscorlib) MemberInfo[] members/*todo: implement initializer*/ = null;
    package(mscorlib) Type memberType;
    package(mscorlib) StreamingContext context;
    //TODO: generate constructor
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\SerializationAttributes.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Field, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class OptionalFieldAttribute : Attribute
{
    private int versionAdded/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate property 'VersionAdded'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class OnSerializingAttribute : Attribute
{
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class OnSerializedAttribute : Attribute
{
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class OnDeserializingAttribute : Attribute
{
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class OnDeserializedAttribute : Attribute
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\SerializationBinder.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class SerializationBinder : __DotNet__Object
{
    //TODO: generate method BindToName
    //TODO: generate method BindToType
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Serialization\SerializationException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
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
package(mscorlib) final class SerializationFieldInfo : FieldInfo
{
    package(mscorlib) enum String FakeNameSeparatorString/*todo: implement initializer*/ = null;
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
// #endif 
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class SerializationInfo : __DotNet__Object
{
    private enum int defaultSize/*todo: implement initializer*/ = int();
    private enum String s_mscorlibAssemblySimpleName/*todo: implement initializer*/ = null;
    private enum String s_mscorlibFileName/*todo: implement initializer*/ = null;
    package(mscorlib) String[] m_members;
    package(mscorlib) __DotNet__Object[] m_data;
    package(mscorlib) Type[] m_types;
    private Dictionary2!(String,int) m_nameToIndex;
    package(mscorlib) int m_currMember;
    package(mscorlib) IFormatterConverter m_converter;
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
//
// The tuple returned by SerializationInfoEnumerator.Current.
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct SerializationEntry
{
    private Type m_type;
    private __DotNet__Object m_value;
    private String m_name;
    //TODO: generate property 'Value'
    //TODO: generate property 'Name'
    //TODO: generate property 'ObjectType'
    //TODO: generate constructor
}
//
// A simple enumerator over the values stored in the SerializationInfo.
// This does not snapshot the values, it just keeps pointers to the 
// member variables of the SerializationInfo that created it.
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class SerializationInfoEnumerator : __DotNet__Object, IEnumerator
{
    private String[] m_members;
    private __DotNet__Object[] m_data;
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct StreamingContext
{
    package(mscorlib) __DotNet__Object m_additionalContext;
    package(mscorlib) StreamingContextStates m_state;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Context'
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate property 'State'
}
// **********************************************************
// Keep these in sync with the version in vm\runtimehandles.h
// **********************************************************
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
