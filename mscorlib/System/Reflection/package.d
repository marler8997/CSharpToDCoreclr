module mscorlib.System.Reflection;

import mscorlib.System :
    DotNetObject,
    SystemException,
    ResolveEventArgs,
    String,
    IntPtr,
    Attribute,
    ICloneable,
    Version,
    MarshalByRefObject,
    IRuntimeMethodInfo,
    RuntimeType,
    Signature,
    Type,
    FormatException,
    Void,
    IRuntimeFieldInfo,
    DotNetException;
import mscorlib.System.Runtime.InteropServices :
    _Assembly,
    _AssemblyName,
    _ConstructorInfo,
    _EventInfo,
    _FieldInfo,
    _MemberInfo,
    _MethodBase,
    _MethodInfo,
    _Module,
    _ParameterInfo,
    _PropertyInfo;
import mscorlib.System.Security :
    IEvidenceFactory;
import mscorlib.System.Runtime.Serialization :
    ISerializable,
    IDeserializationCallback,
    SerializationInfo,
    IObjectReference;
import mscorlib.System.Globalization :
    CultureInfo;
import mscorlib.System.Configuration.Assemblies :
    AssemblyHashAlgorithm,
    AssemblyVersionCompatibility;
import mscorlib.System.Collections.Generic :
    IList1,
    Dictionary2;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\__Filters.cs'
//
//[Serializable]
public class __Filters : DotNetObject
{
    //TODO: generate method FilterTypeName
    //TODO: generate method FilterTypeNameIgnoreCase
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\AmbiguousMatchException.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AmbiguousMatchException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Assembly.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public alias ModuleResolveEventHandler = Module delegate(DotNetObject sender, ResolveEventArgs e);
//[Serializable]
//[ClassInterface(ClassInterfaceType.None)]
//[ComDefaultInterface(typeof(_Assembly))]
//[System.Runtime.InteropServices.ComVisible(true)]
//#pragma warning disable 618
//    [PermissionSetAttribute(SecurityAction.InheritanceDemand, Unrestricted = true)]
public abstract class Assembly : DotNetObject, _Assembly, IEvidenceFactory, ICustomAttributeProvider, ISerializable
{
    //TODO: generate constructor
    //TODO: generate method CreateQualifiedName
    //TODO: generate method GetAssembly
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method LoadFrom
    //TODO: generate method ReflectionOnlyLoadFrom
    //TODO: generate method LoadFrom
    //TODO: generate method LoadFrom
    //TODO: generate method LoadFrom
    //TODO: generate method Load
    //TODO: generate method GetType_Compat
    //TODO: generate method ReflectionOnlyLoad
    //TODO: generate method Load
    //TODO: generate method Load
    //TODO: generate method Load
    //TODO: generate method Load
    //TODO: generate method Load
    //TODO: generate method ReflectionOnlyLoad
    //TODO: generate method Load
    //TODO: generate method Load
    //TODO: generate method LoadFile
    //TODO: generate method Load
    //TODO: generate method Load
    //TODO: generate method GetExecutingAssembly
    //TODO: generate method GetCallingAssembly
    //TODO: generate method GetEntryAssembly
    //TODO: generate event 'ModuleResolve'
    //TODO: generate property 'CodeBase'
    //TODO: generate property 'EscapedCodeBase'
    //TODO: generate method GetName
    //TODO: generate method GetName
    //TODO: generate property 'FullName'
    //TODO: generate property 'EntryPoint'
    //TODO: generate method GetType
    //TODO: generate method GetType
    //TODO: generate method GetType
    //TODO: generate property 'ExportedTypes'
    //TODO: generate method GetExportedTypes
    //TODO: generate property 'DefinedTypes'
    //TODO: generate method GetTypes
    //TODO: generate method GetManifestResourceStream
    //TODO: generate method GetManifestResourceStream
    //TODO: generate method GetSatelliteAssembly
    //TODO: generate method GetSatelliteAssembly
    //TODO: generate method GetObjectData
    //TODO: generate property 'ManifestModule'
    //TODO: generate property 'CustomAttributes'
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributesData
    //TODO: generate property 'ReflectionOnly'
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate method CreateInstance
    //TODO: generate property 'Modules'
    //TODO: generate method GetLoadedModules
    //TODO: generate method GetLoadedModules
    //TODO: generate method GetModules
    //TODO: generate method GetModules
    //TODO: generate method GetModule
    //TODO: generate method GetFile
    //TODO: generate method GetFiles
    //TODO: generate method GetFiles
    //TODO: generate method GetManifestResourceNames
    //TODO: generate method GetReferencedAssemblies
    //TODO: generate method GetManifestResourceInfo
    //TODO: generate method ToString
    //TODO: generate property 'Location'
    //TODO: generate property 'ImageRuntimeVersion'
    //TODO: generate property 'GlobalAssemblyCache'
    //TODO: generate property 'HostContext'
    //TODO: generate property 'IsDynamic'
}
public enum LoadContext
{
    DEFAULT,
    LOADFROM,
    UNKNOWN,
    HOSTED,
}
//[Serializable]
public class RuntimeAssembly : Assembly
{
    private enum ASSEMBLY_FLAGS : uint
    {
        ASSEMBLY_FLAGS_UNKNOWN = 0x00000000,
        ASSEMBLY_FLAGS_INITIALIZED = 0x01000000,
        ASSEMBLY_FLAGS_FRAMEWORK = 0x02000000,
        ASSEMBLY_FLAGS_SAFE_REFLECTION = 0x04000000,
        ASSEMBLY_FLAGS_TOKEN_MASK = 0x00FFFFFF,
    }
    private enum uint COR_E_LOADING_REFERENCE_ASSEMBLY/*todo: implement initializer*/ = uint();
    //TODO: generate constructor
    //TODO: generate event field
    private String m_fullname;
    private DotNetObject m_syncRoot;
    private IntPtr m_assembly;
    private ASSEMBLY_FLAGS m_flags;
    //TODO: generate property 'InvocableAttributeCtorToken'
    //TODO: generate property 'Flags'
    //TODO: generate property 'SyncRoot'
    //TODO: generate event 'ModuleResolve'
    private enum String s_localFilePrefix/*todo: implement initializer*/ = null;
    //TODO: generate method GetCodeBase
    //TODO: generate method GetCodeBase
    //TODO: generate property 'CodeBase'
    //TODO: generate method GetNativeHandle
    //TODO: generate method GetName
    //TODO: generate method GetFullName
    //TODO: generate property 'FullName'
    //TODO: generate method GetEntryPoint
    //TODO: generate property 'EntryPoint'
    //TODO: generate method GetType
    //TODO: generate method GetType
    //TODO: generate method GetForwardedTypes
    //TODO: generate method GetExportedTypes
    //TODO: generate method GetExportedTypes
    //TODO: generate property 'DefinedTypes'
    //TODO: generate method GetManifestResourceStream
    //TODO: generate method GetManifestResourceStream
    //TODO: generate method GetObjectData
    //TODO: generate property 'ManifestModule'
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributesData
    //TODO: generate method InternalLoadFrom
    //TODO: generate method InternalLoad
    //TODO: generate method InternalLoad
    //TODO: generate method CreateAssemblyName
    //TODO: generate method InternalLoadAssemblyName
    //TODO: generate method InternalLoadAssemblyName
    private static String[] s_unsafeFrameworkAssemblyNames/*todo: implement initializer*/ = null;
    //TODO: generate method IsFrameworkAssembly
    //TODO: generate method IsSafeForReflection
    //TODO: generate method IsDesignerBindingContext
    //TODO: generate method nIsDesignerBindingContext
    //TODO: generate method _nLoad
    //TODO: generate method nLoad
    //TODO: generate method IsReflectionOnly
    //TODO: generate property 'ReflectionOnly'
    //TODO: generate method InternalLoadFromStream
    //TODO: generate method GetModule
    //TODO: generate method GetModule
    //TODO: generate method GetFile
    //TODO: generate method GetFiles
    //TODO: generate method GetManifestResourceNames
    //TODO: generate method GetManifestResourceNames
    //TODO: generate method GetExecutingAssembly
    //TODO: generate method GetExecutingAssembly
    //TODO: generate method GetReferencedAssemblies
    //TODO: generate method GetReferencedAssemblies
    //TODO: generate method GetManifestResourceInfo
    //TODO: generate method GetManifestResourceInfo
    //TODO: generate method GetLocation
    //TODO: generate property 'Location'
    //TODO: generate method GetImageRuntimeVersion
    //TODO: generate property 'ImageRuntimeVersion'
    //TODO: generate method IsGlobalAssemblyCache
    //TODO: generate property 'GlobalAssemblyCache'
    //TODO: generate method GetHostContext
    //TODO: generate property 'HostContext'
    //TODO: generate method VerifyCodeBase
    //TODO: generate method GetManifestResourceStream
    //TODO: generate method GetResource
    //TODO: generate method GetManifestResourceStream
    //TODO: generate method GetVersion
    //TODO: generate method GetVersion
    //TODO: generate method GetLocale
    //TODO: generate method GetLocale
    //TODO: generate method FCallIsDynamic
    //TODO: generate property 'IsDynamic'
    //TODO: generate method VerifyCodeBaseDiscovery
    //TODO: generate method GetSimpleName
    //TODO: generate method GetSimpleName
    //TODO: generate method GetHashAlgorithm
    //TODO: generate method GetHashAlgorithm
    //TODO: generate method GetFlags
    //TODO: generate method GetFlags
    //TODO: generate method GetRawBytes
    //TODO: generate method GetRawBytes
    //TODO: generate method GetPublicKey
    //TODO: generate method GetPublicKey
    //TODO: generate method GetGrantSet
    //TODO: generate method GetGrantSet
    //TODO: generate method IsAllSecurityCritical
    //TODO: generate method IsAllSecurityCritical
    //TODO: generate method IsAllSecuritySafeCritical
    //TODO: generate method IsAllSecuritySafeCritical
    //TODO: generate method IsAllPublicAreaSecuritySafeCritical
    //TODO: generate method IsAllPublicAreaSecuritySafeCritical
    //TODO: generate method IsAllSecurityTransparent
    //TODO: generate method IsAllSecurityTransparent
    //TODO: generate method OnModuleResolveEvent
    //TODO: generate method GetSatelliteAssembly
    //TODO: generate method GetSatelliteAssembly
    //TODO: generate method InternalGetSatelliteAssembly
    //TODO: generate method InternalGetSatelliteAssembly
    //TODO: generate method InternalProbeForSatelliteAssemblyNextToParentAssembly
    //TODO: generate method nLoadFile
    //TODO: generate method nLoadImage
    //TODO: generate method nLoadFromUnmanagedArray
    //TODO: generate method GetModules
    //TODO: generate method GetModulesInternal
    //TODO: generate method GetModules
    //TODO: generate method GetLoadedModules
    //TODO: generate method GetManifestModule
    //TODO: generate method GetToken
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\AssemblyAttributes.cs'
//
//[AttributeUsage (AttributeTargets.Assembly, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AssemblyCopyrightAttribute : Attribute
{
    private String m_copyright;
    //TODO: generate constructor
    //TODO: generate property 'Copyright'
}
//[AttributeUsage (AttributeTargets.Assembly, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AssemblyTrademarkAttribute : Attribute
{
    private String m_trademark;
    //TODO: generate constructor
    //TODO: generate property 'Trademark'
}
//[AttributeUsage (AttributeTargets.Assembly, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AssemblyProductAttribute : Attribute
{
    private String m_product;
    //TODO: generate constructor
    //TODO: generate property 'Product'
}
//[AttributeUsage (AttributeTargets.Assembly, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AssemblyCompanyAttribute : Attribute
{
    private String m_company;
    //TODO: generate constructor
    //TODO: generate property 'Company'
}
//[AttributeUsage (AttributeTargets.Assembly, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AssemblyDescriptionAttribute : Attribute
{
    private String m_description;
    //TODO: generate constructor
    //TODO: generate property 'Description'
}
//[AttributeUsage (AttributeTargets.Assembly, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AssemblyTitleAttribute : Attribute
{
    private String m_title;
    //TODO: generate constructor
    //TODO: generate property 'Title'
}
//[AttributeUsage (AttributeTargets.Assembly, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AssemblyConfigurationAttribute : Attribute
{
    private String m_configuration;
    //TODO: generate constructor
    //TODO: generate property 'Configuration'
}
//[AttributeUsage (AttributeTargets.Assembly, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AssemblyDefaultAliasAttribute : Attribute
{
    private String m_defaultAlias;
    //TODO: generate constructor
    //TODO: generate property 'DefaultAlias'
}
//[AttributeUsage (AttributeTargets.Assembly, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AssemblyInformationalVersionAttribute : Attribute
{
    private String m_informationalVersion;
    //TODO: generate constructor
    //TODO: generate property 'InformationalVersion'
}
//[AttributeUsage(AttributeTargets.Assembly, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AssemblyFileVersionAttribute : Attribute
{
    private String _version;
    //TODO: generate constructor
    //TODO: generate property 'Version'
}
//[AttributeUsage (AttributeTargets.Assembly, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AssemblyCultureAttribute : Attribute
{
    private String m_culture;
    //TODO: generate constructor
    //TODO: generate property 'Culture'
}
//[AttributeUsage (AttributeTargets.Assembly, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AssemblyVersionAttribute : Attribute
{
    private String m_version;
    //TODO: generate constructor
    //TODO: generate property 'Version'
}
//[AttributeUsage (AttributeTargets.Assembly, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AssemblyKeyFileAttribute : Attribute
{
    private String m_keyFile;
    //TODO: generate constructor
    //TODO: generate property 'KeyFile'
}
//[AttributeUsage (AttributeTargets.Assembly, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AssemblyDelaySignAttribute : Attribute
{
    private bool m_delaySign;
    //TODO: generate constructor
    //TODO: generate property 'DelaySign'
}
//[AttributeUsage(AttributeTargets.Assembly, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AssemblyAlgorithmIdAttribute : Attribute
{
    private uint m_algId;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'AlgorithmId'
}
//[AttributeUsage(AttributeTargets.Assembly, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AssemblyFlagsAttribute : Attribute
{
    private AssemblyNameFlags m_flags;
    //TODO: generate constructor
    //TODO: generate property 'Flags'
    //TODO: generate property 'AssemblyFlags'
    //TODO: generate constructor
    //TODO: generate constructor
}
//[AttributeUsage(AttributeTargets.Assembly, AllowMultiple=true, Inherited=false)]
public final class AssemblyMetadataAttribute : Attribute
{
    private String m_key;
    private String m_value;
    //TODO: generate constructor
    //TODO: generate property 'Key'
    //TODO: generate property 'Value'
}
//#if FEATURE_STRONGNAME_MIGRATION
//    [AttributeUsage(AttributeTargets.Assembly, Inherited = false, AllowMultiple=false)]
public final class AssemblySignatureKeyAttribute : Attribute
{
    private String _publicKey;
    private String _countersignature;
    //TODO: generate constructor
    //TODO: generate property 'PublicKey'
    //TODO: generate property 'Countersignature'
}
//#endif
//
//    [AttributeUsage (AttributeTargets.Assembly, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AssemblyKeyNameAttribute : Attribute
{
    private String m_keyName;
    //TODO: generate constructor
    //TODO: generate property 'KeyName'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\AssemblyName.cs'
//
//[Serializable]
//[ClassInterface(ClassInterfaceType.None)]
//[ComDefaultInterface(typeof(_AssemblyName))]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AssemblyName : DotNetObject, _AssemblyName, ICloneable, ISerializable, IDeserializationCallback
{
    private String _Name;
    private ubyte[] _PublicKey;
    private ubyte[] _PublicKeyToken;
    private CultureInfo _CultureInfo;
    private String _CodeBase;
    private Version _Version;
    private StrongNameKeyPair _StrongNameKeyPair;
    private SerializationInfo m_siInfo;
    private ubyte[] _HashForControl;
    private AssemblyHashAlgorithm _HashAlgorithm;
    private AssemblyHashAlgorithm _HashAlgorithmForControl;
    private AssemblyVersionCompatibility _VersionCompatibility;
    private AssemblyNameFlags _Flags;
    //TODO: generate constructor
    //TODO: generate property 'Name'
    //TODO: generate property 'Version'
    //TODO: generate property 'CultureInfo'
    //TODO: generate property 'CultureName'
    //TODO: generate property 'CodeBase'
    //TODO: generate property 'EscapedCodeBase'
    //TODO: generate property 'ProcessorArchitecture'
    //TODO: generate property 'ContentType'
    //TODO: generate method Clone
    //TODO: generate method GetAssemblyName
    //TODO: generate method SetHashControl
    //TODO: generate method GetPublicKey
    //TODO: generate method SetPublicKey
    //TODO: generate method GetPublicKeyToken
    //TODO: generate method SetPublicKeyToken
    //TODO: generate property 'Flags'
    //TODO: generate property 'HashAlgorithm'
    //TODO: generate property 'VersionCompatibility'
    //TODO: generate property 'KeyPair'
    //TODO: generate property 'FullName'
    //TODO: generate method ToString
    //TODO: generate method GetObjectData
    //TODO: generate method OnDeserialization
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method ReferenceMatchesDefinition
    //TODO: generate method ReferenceMatchesDefinitionInternal
    //TODO: generate method nInit
    //TODO: generate method nInit
    //TODO: generate method SetProcArchIndex
    //TODO: generate method CalculateProcArchIndex
    //TODO: generate method Init
    //TODO: generate method nGetFileInformation
    //TODO: generate method nToString
    //TODO: generate method nGetPublicKeyToken
    //TODO: generate method EscapeCodeBase
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\AssemblyNameFlags.cs'
//
// Ignored: [Serializable]
// Ignored: [FlagsAttribute()]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum AssemblyNameFlags
{
    None = 0x0000,
    PublicKey = 0x0001,
    EnableJITcompileOptimizer = 0x4000,
    EnableJITcompileTracking = 0x8000,
    Retargetable = 0x0100,
}
// Ignored: [Serializable]
// Ignored: [System.Runtime.InteropServices.ComVisible(false)]
public enum AssemblyContentType
{
    Default = 0x0000,
    WindowsRuntime = 0x0001,
}
// Ignored: [Serializable]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum ProcessorArchitecture
{
    None = 0x0000,
    MSIL = 0x0001,
    X86 = 0x0002,
    IA64 = 0x0003,
    Amd64 = 0x0004,
    Arm = 0x0005,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\AssemblyNameProxy.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public class AssemblyNameProxy : MarshalByRefObject
{
    //TODO: generate method GetAssemblyName
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Associates.cs'
//
public class Associates : DotNetObject
{
    private this() {} // prevent instantiation
    // Ignored: [Flags]
    public enum Attributes
    {
        ComposedOfAllVirtualMethods = 0x1,
        ComposedOfAllPrivateMethods = 0x2,
        ComposedOfNoPublicMembers = 0x4,
        ComposedOfNoStaticMembers = 0x8,
    }
    //TODO: generate method IncludeAccessor
    //TODO: generate method AssignAssociates
    //TODO: generate method AssignAssociates
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Binder.cs'
//
//[Serializable]
//[ClassInterface(ClassInterfaceType.AutoDual)]
//[System.Runtime.InteropServices.ComVisible(true)]
public abstract class Binder : DotNetObject
{
    //TODO: generate method BindToMethod
    //TODO: generate method BindToField
    //TODO: generate method SelectMethod
    //TODO: generate method SelectProperty
    //TODO: generate method ChangeType
    //TODO: generate method ReorderArgumentArray
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\BindingFlags.cs'
//
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum BindingFlags
{
    Default = 0x00,
    IgnoreCase = 0x01,
    DeclaredOnly = 0x02,
    Instance = 0x04,
    Static = 0x08,
    Public = 0x10,
    NonPublic = 0x20,
    FlattenHierarchy = 0x40,
    InvokeMethod = 0x0100,
    CreateInstance = 0x0200,
    GetField = 0x0400,
    SetField = 0x0800,
    GetProperty = 0x1000,
    SetProperty = 0x2000,
    PutDispProperty = 0x4000,
    PutRefDispProperty = 0x8000,
    ExactBinding = 0x010000,
    SuppressChangeType = 0x020000,
    OptionalParamBinding = 0x040000,
    IgnoreReturn = 0x01000000,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\CallingConventions.cs'
//
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum CallingConventions
{
    Standard = 0x0001,
    VarArgs = 0x0002,
    Any = Standard | VarArgs,
    HasThis = 0x0020,
    ExplicitThis = 0x0040,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\ConstructorInfo.cs'
//
//[Serializable]
//[ClassInterface(ClassInterfaceType.None)]
//[ComDefaultInterface(typeof(_ConstructorInfo))]
//#pragma warning disable 618
//    [PermissionSetAttribute(SecurityAction.InheritanceDemand, Name = "FullTrust")]
//#pragma warning restore 618
//    [System.Runtime.InteropServices.ComVisible(true)]
public abstract class ConstructorInfo : MethodBase, _ConstructorInfo
{
    // Ignored: #region Static Members
    // Ignored: [System.Runtime.InteropServices.ComVisible(true)]
    public static immutable String ConstructorName/*todo: implement initializer*/ = null;
    // Ignored: [System.Runtime.InteropServices.ComVisible(true)]
    public static immutable String TypeConstructorName/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetReturnType
    //TODO: generate property 'MemberType'
    //TODO: generate method Invoke
    //TODO: generate method Invoke
}
//[Serializable]
public final class RuntimeConstructorInfo : ConstructorInfo, ISerializable, IRuntimeMethodInfo
{
    private /*todo: volatile*/RuntimeType m_declaringType;
    private RuntimeType.RuntimeTypeCache m_reflectedTypeCache;
    private String m_toString;
    private ParameterInfo[] m_parameters/*todo: implement initializer*/ = null;
    private DotNetObject _empty1;
    private DotNetObject _empty2;
    private DotNetObject _empty3;
    private IntPtr m_handle;
    private MethodAttributes m_methodAttributes;
    private BindingFlags m_bindingFlags;
    private /*todo: volatile*/Signature m_signature;
    private INVOCATION_FLAGS m_invocationFlags;
    //TODO: generate method IsNonW8PFrameworkAPI
    //TODO: generate property 'IsDynamicallyInvokable'
    //TODO: generate property 'InvocationFlags'
    //TODO: generate constructor
    //TODO: generate property 'Value'
    //TODO: generate method CacheEquals
    //TODO: generate property 'Signature'
    //TODO: generate property 'ReflectedTypeInternal'
    //TODO: generate method CheckConsistency
    //TODO: generate property 'BindingFlags'
    //TODO: generate method GetMethodHandle
    //TODO: generate property 'IsOverloaded'
    //TODO: generate method ToString
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributesData
    //TODO: generate property 'Name'
    //TODO: generate property 'MemberType'
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'ReflectedType'
    //TODO: generate property 'MetadataToken'
    //TODO: generate property 'Module'
    //TODO: generate method GetRuntimeType
    //TODO: generate method GetRuntimeModule
    //TODO: generate method GetRuntimeAssembly
    //TODO: generate method GetReturnType
    //TODO: generate method GetParametersNoCopy
    //TODO: generate method GetParameters
    //TODO: generate method GetMethodImplementationFlags
    //TODO: generate property 'MethodHandle'
    //TODO: generate property 'Attributes'
    //TODO: generate property 'CallingConvention'
    //TODO: generate method CheckCanCreateInstance
    //TODO: generate method ThrowNoInvokeException
    //TODO: generate method Invoke
    //TODO: generate method GetMethodBody
    //TODO: generate property 'IsSecurityCritical'
    //TODO: generate property 'IsSecuritySafeCritical'
    //TODO: generate property 'IsSecurityTransparent'
    //TODO: generate property 'ContainsGenericParameters'
    //TODO: generate method Invoke
    //TODO: generate method GetObjectData
    //TODO: generate method SerializationToString
    //TODO: generate method SerializationInvoke
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\CustomAttribute.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public class CustomAttributeData : DotNetObject
{
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributesInternal
    //TODO: generate method GetCustomAttributesInternal
    //TODO: generate method GetCustomAttributesInternal
    //TODO: generate method GetCustomAttributesInternal
    //TODO: generate method GetCustomAttributesInternal
    //TODO: generate method GetCustomAttributesInternal
    //TODO: generate method GetCustomAttributesInternal
    //TODO: generate method GetCustomAttributesInternal
    //TODO: generate method GetCustomAttributesInternal
    //TODO: generate method TypeToCustomAttributeEncoding
    //TODO: generate method InitCustomAttributeType
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributeRecords
    //TODO: generate method Filter
    private ConstructorInfo m_ctor;
    private RuntimeModule m_scope;
    private MemberInfo[] m_members;
    private CustomAttributeCtorParameter[] m_ctorParams;
    private CustomAttributeNamedParameter[] m_namedParams;
    private IList1!(CustomAttributeTypedArgument) m_typedCtorArgs;
    private IList1!(CustomAttributeNamedArgument) m_namedArgs;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Init
    //TODO: generate method Init
    //TODO: generate method Init
    //TODO: generate method Init
    //TODO: generate method Init
    //TODO: generate method ToString
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate property 'AttributeType'
    //TODO: generate property 'Constructor'
    //TODO: generate property 'ConstructorArguments'
    //TODO: generate property 'NamedArguments'
}
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public struct CustomAttributeNamedArgument
{
    //TODO: generate operator
    //TODO: generate operator
    private MemberInfo m_memberInfo;
    private CustomAttributeTypedArgument m_value;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method ToString
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate property 'ArgumentType'
    //TODO: generate property 'MemberInfo'
    //TODO: generate property 'TypedValue'
    //TODO: generate property 'MemberName'
    //TODO: generate property 'IsField'
}
//[Serializable]
//[ComVisible(true)]
public struct CustomAttributeTypedArgument
{
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method CustomAttributeEncodingToType
    //TODO: generate method EncodedValueToRawValue
    //TODO: generate method ResolveType
    private DotNetObject m_value;
    private Type m_argumentType;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CanonicalizeValue
    //TODO: generate constructor
    //TODO: generate method ToString
    //TODO: generate method ToString
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate property 'ArgumentType'
    //TODO: generate property 'Value'
}
//[Serializable]
public struct CustomAttributeRecord
{
    public ConstArray blob;
    public MetadataToken tkCtor;
}
// Ignored: [Serializable]
public enum CustomAttributeEncoding : int
{
    Undefined = 0,
    Boolean = /*MemberExpression:Type*/CorElementType.Boolean,
    Char = /*MemberExpression:Type*/CorElementType.Char,
    SByte = /*MemberExpression:Type*/CorElementType.I1,
    Byte = /*MemberExpression:Type*/CorElementType.U1,
    Int16 = /*MemberExpression:Type*/CorElementType.I2,
    UInt16 = /*MemberExpression:Type*/CorElementType.U2,
    Int32 = /*MemberExpression:Type*/CorElementType.I4,
    UInt32 = /*MemberExpression:Type*/CorElementType.U4,
    Int64 = /*MemberExpression:Type*/CorElementType.I8,
    UInt64 = /*MemberExpression:Type*/CorElementType.U8,
    Float = /*MemberExpression:Type*/CorElementType.R4,
    Double = /*MemberExpression:Type*/CorElementType.R8,
    String = /*MemberExpression:Type*/CorElementType.String,
    Array = /*MemberExpression:Type*/CorElementType.SzArray,
    Type = 0x50,
    Object = 0x51,
    Field = 0x53,
    Property = 0x54,
    Enum = 0x55,
}
//[Serializable]
//[StructLayout(LayoutKind.Auto)]
public struct CustomAttributeEncodedArgument
{
    //TODO: generate method ParseAttributeArguments
    //TODO: generate method ParseAttributeArguments
    private long m_primitiveValue;
    private CustomAttributeEncodedArgument[] m_arrayValue;
    private String m_stringValue;
    private CustomAttributeType m_type;
    //TODO: generate property 'CustomAttributeType'
    //TODO: generate property 'PrimitiveValue'
    //TODO: generate property 'ArrayValue'
    //TODO: generate property 'StringValue'
}
//[Serializable]
//[StructLayout(LayoutKind.Auto)]
public struct CustomAttributeNamedParameter
{
    private String m_argumentName;
    private CustomAttributeEncoding m_fieldOrProperty;
    private CustomAttributeEncoding m_padding;
    private CustomAttributeType m_type;
    private CustomAttributeEncodedArgument m_encodedArgument;
    //TODO: generate constructor
    //TODO: generate property 'EncodedArgument'
}
//[Serializable]
//[StructLayout(LayoutKind.Auto)]
public struct CustomAttributeCtorParameter
{
    private CustomAttributeType m_type;
    private CustomAttributeEncodedArgument m_encodedArgument;
    //TODO: generate constructor
    //TODO: generate property 'CustomAttributeEncodedArgument'
}
//// Note: This is a managed representation of a frame type defined in vm\frames.h; please ensure the layout remains
//    // synchronized.
//    [StructLayout(LayoutKind.Sequential)]
public struct SecurityContextFrame
{
    private IntPtr m_GSCookie;
    private IntPtr __VFN_table;
    private IntPtr m_Next;
    private IntPtr m_Assembly;
    //TODO: generate method Push
    //TODO: generate method Pop
}
//[Serializable]
//[StructLayout(LayoutKind.Auto)]
public struct CustomAttributeType
{
    private String m_enumName;
    private CustomAttributeEncoding m_encodedType;
    private CustomAttributeEncoding m_encodedEnumType;
    private CustomAttributeEncoding m_encodedArrayType;
    private CustomAttributeEncoding m_padding;
    //TODO: generate constructor
    //TODO: generate property 'EncodedType'
    //TODO: generate property 'EncodedEnumType'
    //TODO: generate property 'EncodedArrayType'
    //TODO: generate property 'EnumName'
}
public class CustomAttribute : DotNetObject
{
    private this() {} // prevent instantiation
    private static RuntimeType Type_RuntimeType/*todo: implement initializer*/ = null;
    private static RuntimeType Type_Type/*todo: implement initializer*/ = null;
    //TODO: generate method IsDefined
    //TODO: generate method IsDefined
    //TODO: generate method IsDefined
    //TODO: generate method IsDefined
    //TODO: generate method IsDefined
    //TODO: generate method IsDefined
    //TODO: generate method IsDefined
    //TODO: generate method IsDefined
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributes
    //TODO: generate method AllowCriticalCustomAttributes
    //TODO: generate method SpecialAllowCriticalAttributes
    //TODO: generate method AllowCriticalCustomAttributes
    //TODO: generate method AllowCriticalCustomAttributes
    //TODO: generate method AllowCriticalCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsAttributeDefined
    //TODO: generate method IsCustomAttributeDefined
    //TODO: generate method IsCustomAttributeDefined
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method FilterCustomAttributeRecord
    //TODO: generate method AttributeUsageCheck
    //TODO: generate method GetAttributeUsage
    //TODO: generate method _ParseAttributeUsageAttribute
    //TODO: generate method ParseAttributeUsageAttribute
    //TODO: generate method _CreateCaObject
    //TODO: generate method CreateCaObject
    //TODO: generate method _GetPropertyOrFieldData
    //TODO: generate method GetPropertyOrFieldData
    //TODO: generate method CreateAttributeArrayHelper
}
public class PseudoCustomAttribute : DotNetObject
{
    private this() {} // prevent instantiation
    private static Dictionary2!(RuntimeType,RuntimeType) s_pca;
    private static int s_pcasCount;
    //TODO: generate method _GetSecurityAttributes
    //TODO: generate method GetSecurityAttributes
    //TODO: generate constructor
    //TODO: generate method VerifyPseudoCustomAttribute
    //TODO: generate method IsSecurityAttribute
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\CustomAttributeExtensions.cs'
//
public class CustomAttributeExtensions : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttribute
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method IsDefined
    //TODO: generate method IsDefined
    //TODO: generate method IsDefined
    //TODO: generate method IsDefined
    //TODO: generate method IsDefined
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\CustomAttributeFormatException.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public class CustomAttributeFormatException : FormatException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\DefaultMemberAttribute.cs'
//
//[Serializable]
//[AttributeUsage(AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Interface)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class DefaultMemberAttribute : Attribute
{
    private String m_memberName;
    //TODO: generate constructor
    //TODO: generate property 'MemberName'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\EventAttributes.cs'
//
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum EventAttributes
{
    None = 0x0000,
    SpecialName = 0x0200,
    ReservedMask = 0x0400,
    RTSpecialName = 0x0400,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\EventInfo.cs'
//
//[Serializable]
//[ClassInterface(ClassInterfaceType.None)]
//[ComDefaultInterface(typeof(_EventInfo))]
//#pragma warning disable 618
//    [PermissionSetAttribute(SecurityAction.InheritanceDemand, Name = "FullTrust")]
//#pragma warning restore 618
//    [System.Runtime.InteropServices.ComVisible(true)]
public abstract class EventInfo : MemberInfo, _EventInfo
{
    //TODO: generate constructor
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate property 'MemberType'
    //TODO: generate method GetOtherMethods
    //TODO: generate method GetAddMethod
    //TODO: generate method GetRemoveMethod
    //TODO: generate method GetRaiseMethod
    //TODO: generate property 'Attributes'
    //TODO: generate property 'AddMethod'
    //TODO: generate property 'RemoveMethod'
    //TODO: generate property 'RaiseMethod'
    //TODO: generate method GetOtherMethods
    //TODO: generate method GetAddMethod
    //TODO: generate method GetRemoveMethod
    //TODO: generate method GetRaiseMethod
    //TODO: generate method AddEventHandler
    //TODO: generate method RemoveEventHandler
    //TODO: generate property 'EventHandlerType'
    //TODO: generate property 'IsSpecialName'
    //TODO: generate property 'IsMulticast'
}
//[Serializable]
public final class RuntimeEventInfo : EventInfo, ISerializable
{
    private int m_token;
    private EventAttributes m_flags;
    private String m_name;
    // Ignored: [System.Security.SecurityCritical]
    private Void* m_utf8name;
    private RuntimeType.RuntimeTypeCache m_reflectedTypeCache;
    private RuntimeMethodInfo m_addMethod;
    private RuntimeMethodInfo m_removeMethod;
    private RuntimeMethodInfo m_raiseMethod;
    private MethodInfo[] m_otherMethod;
    private RuntimeType m_declaringType;
    private BindingFlags m_bindingFlags;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CacheEquals
    //TODO: generate property 'BindingFlags'
    //TODO: generate method ToString
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributesData
    //TODO: generate property 'MemberType'
    //TODO: generate property 'Name'
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'ReflectedType'
    //TODO: generate property 'ReflectedTypeInternal'
    //TODO: generate property 'MetadataToken'
    //TODO: generate property 'Module'
    //TODO: generate method GetRuntimeModule
    //TODO: generate method GetObjectData
    //TODO: generate method GetOtherMethods
    //TODO: generate method GetAddMethod
    //TODO: generate method GetRemoveMethod
    //TODO: generate method GetRaiseMethod
    //TODO: generate property 'Attributes'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\FieldAttributes.cs'
//
// Ignored: // This Enum matchs the CorFieldAttr defined in CorHdr.h
// Ignored: [Serializable]
// Ignored: [Flags()]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum FieldAttributes
{
    FieldAccessMask = 0x0007,
    PrivateScope = 0x0000,
    Private = 0x0001,
    FamANDAssem = 0x0002,
    Assembly = 0x0003,
    Family = 0x0004,
    FamORAssem = 0x0005,
    Public = 0x0006,
    Static = 0x0010,
    InitOnly = 0x0020,
    Literal = 0x0040,
    NotSerialized = 0x0080,
    SpecialName = 0x0200,
    PinvokeImpl = 0x2000,
    ReservedMask = 0x9500,
    RTSpecialName = 0x0400,
    HasFieldMarshal = 0x1000,
    HasDefault = 0x8000,
    HasFieldRVA = 0x0100,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\FieldInfo.cs'
//
//[Serializable]
//[ClassInterface(ClassInterfaceType.None)]
//[ComDefaultInterface(typeof(_FieldInfo))]
//#pragma warning disable 618
//    [PermissionSetAttribute(SecurityAction.InheritanceDemand, Name = "FullTrust")]
//#pragma warning restore 618
//    [System.Runtime.InteropServices.ComVisible(true)]
public abstract class FieldInfo : MemberInfo, _FieldInfo
{
    //TODO: generate method GetFieldFromHandle
    //TODO: generate method GetFieldFromHandle
    //TODO: generate constructor
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate property 'MemberType'
    //TODO: generate method GetRequiredCustomModifiers
    //TODO: generate method GetOptionalCustomModifiers
    //TODO: generate method SetValueDirect
    //TODO: generate method GetValueDirect
    //TODO: generate property 'FieldHandle'
    //TODO: generate property 'FieldType'
    //TODO: generate method GetValue
    //TODO: generate method GetRawConstantValue
    //TODO: generate method SetValue
    //TODO: generate property 'Attributes'
    //TODO: generate method SetValue
    //TODO: generate property 'IsPublic'
    //TODO: generate property 'IsPrivate'
    //TODO: generate property 'IsFamily'
    //TODO: generate property 'IsAssembly'
    //TODO: generate property 'IsFamilyAndAssembly'
    //TODO: generate property 'IsFamilyOrAssembly'
    //TODO: generate property 'IsStatic'
    //TODO: generate property 'IsInitOnly'
    //TODO: generate property 'IsLiteral'
    //TODO: generate property 'IsNotSerialized'
    //TODO: generate property 'IsSpecialName'
    //TODO: generate property 'IsPinvokeImpl'
    //TODO: generate property 'IsSecurityCritical'
    //TODO: generate property 'IsSecuritySafeCritical'
    //TODO: generate property 'IsSecurityTransparent'
}
//[Serializable]
public abstract class RuntimeFieldInfo : FieldInfo, ISerializable
{
    private BindingFlags m_bindingFlags;
    protected RuntimeType.RuntimeTypeCache m_reflectedTypeCache;
    protected RuntimeType m_declaringType;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'BindingFlags'
    //TODO: generate property 'ReflectedTypeInternal'
    //TODO: generate method GetDeclaringTypeInternal
    //TODO: generate method GetRuntimeType
    //TODO: generate method GetRuntimeModule
    //TODO: generate property 'MemberType'
    //TODO: generate property 'ReflectedType'
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'Module'
    //TODO: generate method ToString
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributesData
    //TODO: generate method GetObjectData
}
//[Serializable]
public final class RtFieldInfo : RuntimeFieldInfo, IRuntimeFieldInfo
{
    //TODO: generate method PerformVisibilityCheckOnField
    private IntPtr m_fieldHandle;
    private FieldAttributes m_fieldAttributes;
    private String m_name;
    private RuntimeType m_fieldType;
    private INVOCATION_FLAGS m_invocationFlags;
    //TODO: generate method IsNonW8PFrameworkAPI
    //TODO: generate property 'InvocationFlags'
    //TODO: generate method GetRuntimeAssembly
    //TODO: generate constructor
    //TODO: generate property 'Value'
    //TODO: generate method CheckConsistency
    //TODO: generate method CacheEquals
    //TODO: generate method InternalSetValue
    //TODO: generate method UnsafeSetValue
    //TODO: generate method InternalGetValue
    //TODO: generate method UnsafeGetValue
    //TODO: generate property 'Name'
    //TODO: generate property 'FullName'
    //TODO: generate property 'MetadataToken'
    //TODO: generate method GetRuntimeModule
    //TODO: generate method GetValue
    //TODO: generate method GetRawConstantValue
    //TODO: generate method GetValueDirect
    //TODO: generate method SetValue
    //TODO: generate method SetValueDirect
    //TODO: generate property 'FieldHandle'
    //TODO: generate method GetFieldHandle
    //TODO: generate property 'Attributes'
    //TODO: generate property 'FieldType'
    //TODO: generate method GetRequiredCustomModifiers
    //TODO: generate method GetOptionalCustomModifiers
}
//[Serializable]
public final class MdFieldInfo : RuntimeFieldInfo, ISerializable
{
    private int m_tkField;
    private String m_name;
    private RuntimeType m_fieldType;
    private FieldAttributes m_fieldAttributes;
    //TODO: generate constructor
    //TODO: generate method CacheEquals
    //TODO: generate property 'Name'
    //TODO: generate property 'MetadataToken'
    //TODO: generate method GetRuntimeModule
    //TODO: generate property 'FieldHandle'
    //TODO: generate property 'Attributes'
    //TODO: generate property 'IsSecurityCritical'
    //TODO: generate property 'IsSecuritySafeCritical'
    //TODO: generate property 'IsSecurityTransparent'
    //TODO: generate method GetValueDirect
    //TODO: generate method SetValueDirect
    //TODO: generate method GetValue
    //TODO: generate method GetRawConstantValue
    //TODO: generate method GetValue
    //TODO: generate method SetValue
    //TODO: generate property 'FieldType'
    //TODO: generate method GetRequiredCustomModifiers
    //TODO: generate method GetOptionalCustomModifiers
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\GenericParameterAttributes.cs'
//
// Ignored: [Flags()]
public enum GenericParameterAttributes
{
    None = 0x0000,
    VarianceMask = 0x0003,
    Covariant = 0x0001,
    Contravariant = 0x0002,
    SpecialConstraintMask = 0x001C,
    ReferenceTypeConstraint = 0x0004,
    NotNullableValueTypeConstraint = 0x0008,
    DefaultConstructorConstraint = 0x0010,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\ICustomAttributeProvider.cs'
//
//// Interface does not need to be marked with the serializable attribute
//[System.Runtime.InteropServices.ComVisible(true)]
public interface ICustomAttributeProvider
{
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\InterfaceMapping.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public struct InterfaceMapping
{
    // Ignored: [System.Runtime.InteropServices.ComVisible(true)]
    public Type TargetType;
    // Ignored: [System.Runtime.InteropServices.ComVisible(true)]
    public Type InterfaceType;
    // Ignored: [System.Runtime.InteropServices.ComVisible(true)]
    public MethodInfo[] TargetMethods;
    // Ignored: [System.Runtime.InteropServices.ComVisible(true)]
    public MethodInfo[] InterfaceMethods;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\IntrospectionExtensions.cs'
//
public class IntrospectionExtensions : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method GetTypeInfo
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\InvalidFilterCriteriaException.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public class InvalidFilterCriteriaException : DotNetException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\IReflect.cs'
//
//// Interface does not need to be marked with the serializable attribute
//    [Guid("AFBF15E5-C37C-11d2-B88E-00A0C9B471B8")]
//[System.Runtime.InteropServices.ComVisible(true)]
public interface IReflect
{
    //TODO: generate method GetMethod
    //TODO: generate method GetMethod
    //TODO: generate method GetMethods
    //TODO: generate method GetField
    //TODO: generate method GetFields
    //TODO: generate method GetProperty
    //TODO: generate method GetProperty
    //TODO: generate method GetProperties
    //TODO: generate method GetMember
    //TODO: generate method GetMembers
    //TODO: generate method InvokeMember
    //TODO: generate property 'UnderlyingSystemType'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\IReflectableType.cs'
//
public interface IReflectableType
{
    //TODO: generate method GetTypeInfo
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\LoaderAllocator.cs'
//
public final class LoaderAllocatorScout : DotNetObject
{
    public IntPtr m_nativeLoaderAllocator;
    //TODO: generate method Destroy
    //TODO: generate destructor
}
public final class LoaderAllocator : DotNetObject
{
    //TODO: generate constructor
    private LoaderAllocatorScout m_scout;
    private DotNetObject[] m_slots;
    public CerHashtable2!(RuntimeMethodInfo,RuntimeMethodInfo) m_methodInstantiations;
    private int m_slotsUsed;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\ManifestResourceInfo.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public class ManifestResourceInfo : DotNetObject
{
    private Assembly _containingAssembly;
    private String _containingFileName;
    private ResourceLocation _resourceLocation;
    //TODO: generate constructor
    //TODO: generate property 'ReferencedAssembly'
    //TODO: generate property 'FileName'
    //TODO: generate property 'ResourceLocation'
}
// Ignored: // The ResourceLocation is a combination of these flags, set or not.
// Ignored: // Linked means not Embedded.
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum ResourceLocation
{
    Embedded = 0x1,
    ContainedInAnotherAssembly = 0x2,
    ContainedInManifestFile = 0x4,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\MdConstant.cs'
//
public class MdConstant : DotNetObject
{
    private this() {} // prevent instantiation
    //TODO: generate method GetValue
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\MdImport.cs'
//
// Ignored: [Serializable]
public enum CorElementType : ubyte
{
    End = 0x00,
    Void = 0x01,
    Boolean = 0x02,
    Char = 0x03,
    I1 = 0x04,
    U1 = 0x05,
    I2 = 0x06,
    U2 = 0x07,
    I4 = 0x08,
    U4 = 0x09,
    I8 = 0x0A,
    U8 = 0x0B,
    R4 = 0x0C,
    R8 = 0x0D,
    String = 0x0E,
    Ptr = 0x0F,
    ByRef = 0x10,
    ValueType = 0x11,
    Class = 0x12,
    Var = 0x13,
    Array = 0x14,
    GenericInst = 0x15,
    TypedByRef = 0x16,
    I = 0x18,
    U = 0x19,
    FnPtr = 0x1B,
    Object = 0x1C,
    SzArray = 0x1D,
    MVar = 0x1E,
    CModReqd = 0x1F,
    CModOpt = 0x20,
    Internal = 0x21,
    Max = 0x22,
    Modifier = 0x40,
    Sentinel = 0x41,
    Pinned = 0x45,
}
// Ignored: [Serializable]
// Ignored: [Flags()]
public enum MdSigCallingConvention : ubyte
{
    CallConvMask = 0x0f,
    Default = 0x00,
    C = 0x01,
    StdCall = 0x02,
    ThisCall = 0x03,
    FastCall = 0x04,
    Vararg = 0x05,
    Field = 0x06,
    LocalSig = 0x07,
    Property = 0x08,
    Unmgd = 0x09,
    GenericInst = 0x0a,
    Generic = 0x10,
    HasThis = 0x20,
    ExplicitThis = 0x40,
}
// Ignored: [Serializable]
// Ignored: [Flags()]
public enum PInvokeAttributes
{
    NoMangle = 0x0001,
    CharSetMask = 0x0006,
    CharSetNotSpec = 0x0000,
    CharSetAnsi = 0x0002,
    CharSetUnicode = 0x0004,
    CharSetAuto = 0x0006,
    BestFitUseAssem = 0x0000,
    BestFitEnabled = 0x0010,
    BestFitDisabled = 0x0020,
    BestFitMask = 0x0030,
    ThrowOnUnmappableCharUseAssem = 0x0000,
    ThrowOnUnmappableCharEnabled = 0x1000,
    ThrowOnUnmappableCharDisabled = 0x2000,
    ThrowOnUnmappableCharMask = 0x3000,
    SupportsLastError = 0x0040,
    CallConvMask = 0x0700,
    CallConvWinapi = 0x0100,
    CallConvCdecl = 0x0200,
    CallConvStdcall = 0x0300,
    CallConvThiscall = 0x0400,
    CallConvFastcall = 0x0500,
    MaxValue = 0xFFFF,
}
// Ignored: [Serializable]
// Ignored: [Flags()]
public enum MethodSemanticsAttributes
{
    Setter = 0x0001,
    Getter = 0x0002,
    Other = 0x0004,
    AddOn = 0x0008,
    RemoveOn = 0x0010,
    Fire = 0x0020,
}
// Ignored: [Serializable]
public enum MetadataTokenType
{
    Module = 0x00000000,
    TypeRef = 0x01000000,
    TypeDef = 0x02000000,
    FieldDef = 0x04000000,
    MethodDef = 0x06000000,
    ParamDef = 0x08000000,
    InterfaceImpl = 0x09000000,
    MemberRef = 0x0a000000,
    CustomAttribute = 0x0c000000,
    Permission = 0x0e000000,
    Signature = 0x11000000,
    Event = 0x14000000,
    Property = 0x17000000,
    ModuleRef = 0x1a000000,
    TypeSpec = 0x1b000000,
    Assembly = 0x20000000,
    AssemblyRef = 0x23000000,
    File = 0x26000000,
    ExportedType = 0x27000000,
    ManifestResource = 0x28000000,
    GenericPar = 0x2a000000,
    MethodSpec = 0x2b000000,
    String = 0x70000000,
    Name = 0x71000000,
    BaseType = 0x72000000,
    Invalid = 0x7FFFFFFF,
}
//[Serializable]
public struct ConstArray
{
    //TODO: generate property 'Signature'
    //TODO: generate property 'Length'
    //TODO: generate indexer
    public int m_length;
    public IntPtr m_constArray;
}
//[Serializable]
public struct MetadataToken
{
    //TODO: generate conversion operator
    //TODO: generate conversion operator
    //TODO: generate method IsTokenOfType
    //TODO: generate method IsNullToken
    public int Value;
    //TODO: generate constructor
    //TODO: generate property 'IsGlobalTypeDefToken'
    //TODO: generate property 'TokenType'
    //TODO: generate property 'IsTypeRef'
    //TODO: generate property 'IsTypeDef'
    //TODO: generate property 'IsFieldDef'
    //TODO: generate property 'IsMethodDef'
    //TODO: generate property 'IsMemberRef'
    //TODO: generate property 'IsEvent'
    //TODO: generate property 'IsProperty'
    //TODO: generate property 'IsParamDef'
    //TODO: generate property 'IsTypeSpec'
    //TODO: generate property 'IsMethodSpec'
    //TODO: generate property 'IsString'
    //TODO: generate property 'IsSignature'
    //TODO: generate property 'IsModule'
    //TODO: generate property 'IsAssembly'
    //TODO: generate property 'IsGenericPar'
    //TODO: generate method ToString
}
public struct MetadataEnumResult
{
    private int[] largeResult;
    private int length;
    private /*todo: fixed modifier*/int smallResult/*todo: implement field ArgumentList '[16]'*/;
    //TODO: generate property 'Length'
    //TODO: generate indexer
}
public struct MetadataImport
{
    private IntPtr m_metadataImport2;
    private DotNetObject m_keepalive;
    public static immutable MetadataImport EmptyImport/*todo: implement initializer*/ = MetadataImport();
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method _GetMarshalAs
    //TODO: generate method GetMarshalAs
    //TODO: generate method ThrowError
    //TODO: generate constructor
    //TODO: generate method _Enum
    //TODO: generate method Enum
    //TODO: generate method EnumNestedTypes
    //TODO: generate method EnumCustomAttributes
    //TODO: generate method EnumParams
    //TODO: generate method EnumFields
    //TODO: generate method EnumProperties
    //TODO: generate method EnumEvents
    //TODO: generate method _GetDefaultValue
    //TODO: generate method GetDefaultValue
    //TODO: generate method _GetUserString
    //TODO: generate method GetUserString
    //TODO: generate method _GetName
    //TODO: generate method GetName
    //TODO: generate method _GetNamespace
    //TODO: generate method GetNamespace
    //TODO: generate method _GetEventProps
    //TODO: generate method GetEventProps
    //TODO: generate method _GetFieldDefProps
    //TODO: generate method GetFieldDefProps
    //TODO: generate method _GetPropertyProps
    //TODO: generate method GetPropertyProps
    //TODO: generate method _GetParentToken
    //TODO: generate method GetParentToken
    //TODO: generate method _GetParamDefProps
    //TODO: generate method GetParamDefProps
    //TODO: generate method _GetGenericParamProps
    //TODO: generate method GetGenericParamProps
    //TODO: generate method _GetScopeProps
    //TODO: generate method GetScopeProps
    //TODO: generate method GetMethodSignature
    //TODO: generate method _GetSigOfMethodDef
    //TODO: generate method GetSigOfMethodDef
    //TODO: generate method _GetSignatureFromToken
    //TODO: generate method GetSignatureFromToken
    //TODO: generate method _GetMemberRefProps
    //TODO: generate method GetMemberRefProps
    //TODO: generate method _GetCustomAttributeProps
    //TODO: generate method GetCustomAttributeProps
    //TODO: generate method _GetClassLayout
    //TODO: generate method GetClassLayout
    //TODO: generate method _GetFieldOffset
    //TODO: generate method GetFieldOffset
    //TODO: generate method _GetSigOfFieldDef
    //TODO: generate method GetSigOfFieldDef
    //TODO: generate method _GetFieldMarshal
    //TODO: generate method GetFieldMarshal
    //TODO: generate method _GetPInvokeMap
    //TODO: generate method GetPInvokeMap
    //TODO: generate method _IsValidToken
    //TODO: generate method IsValidToken
}
public class MetadataException : DotNetException
{
    private int m_hr;
    //TODO: generate constructor
    //TODO: generate method ToString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\MemberFilter.cs'
//
//// Define the delegate
//    [Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public alias MemberFilter = bool delegate(MemberInfo m, DotNetObject filterCriteria);

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\MemberInfo.cs'
//
//[Serializable]
//[ClassInterface(ClassInterfaceType.None)]
//[ComDefaultInterface(typeof(_MemberInfo))]
//#pragma warning disable 618
//    [PermissionSetAttribute(SecurityAction.InheritanceDemand, Name = "FullTrust")]
//#pragma warning restore 618
//    [System.Runtime.InteropServices.ComVisible(true)]
public abstract class MemberInfo : DotNetObject, ICustomAttributeProvider, _MemberInfo
{
    //TODO: generate constructor
    //TODO: generate method CacheEquals
    //TODO: generate property 'MemberType'
    //TODO: generate property 'Name'
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'ReflectedType'
    //TODO: generate property 'CustomAttributes'
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributesData
    //TODO: generate property 'MetadataToken'
    //TODO: generate property 'Module'
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\MemberInfoSerializationHolder.cs'
//
//[Serializable]
public class MemberInfoSerializationHolder : DotNetObject, ISerializable, IObjectReference
{
    //TODO: generate method GetSerializationInfo
    //TODO: generate method GetSerializationInfo
    private String m_memberName;
    private RuntimeType m_reflectedType;
    private String m_signature;
    private String m_signature2;
    private MemberTypes m_memberType;
    private SerializationInfo m_info;
    //TODO: generate constructor
    //TODO: generate method GetObjectData
    //TODO: generate method GetRealObject
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\MemberTypes.cs'
//
// Ignored: // This Enum matchs the CorTypeAttr defined in CorHdr.h
// Ignored: [Serializable]
// Ignored: [Flags()]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum MemberTypes
{
    Constructor = 0x01,
    Event = 0x02,
    Field = 0x04,
    Method = 0x08,
    Property = 0x10,
    TypeInfo = 0x20,
    Custom = 0x40,
    NestedType = 0x80,
    All = Constructor | Event | Field | Method | Property | TypeInfo | NestedType,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\MethodAttributes.cs'
//
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum MethodAttributes
{
    MemberAccessMask = 0x0007,
    PrivateScope = 0x0000,
    Private = 0x0001,
    FamANDAssem = 0x0002,
    Assembly = 0x0003,
    Family = 0x0004,
    FamORAssem = 0x0005,
    Public = 0x0006,
    Static = 0x0010,
    Final = 0x0020,
    Virtual = 0x0040,
    HideBySig = 0x0080,
    CheckAccessOnOverride = 0x0200,
    VtableLayoutMask = 0x0100,
    ReuseSlot = 0x0000,
    NewSlot = 0x0100,
    Abstract = 0x0400,
    SpecialName = 0x0800,
    PinvokeImpl = 0x2000,
    UnmanagedExport = 0x0008,
    RTSpecialName = 0x1000,
    ReservedMask = 0xd000,
    HasSecurity = 0x4000,
    RequireSecObject = 0x8000,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\MethodBase.cs'
//
// Ignored: //
// Ignored: // Invocation cached flags. Those are used in unmanaged code as well
// Ignored: // so be careful if you change them
// Ignored: //
// Ignored: [Flags]
public enum INVOCATION_FLAGS : uint
{
    INVOCATION_FLAGS_UNKNOWN = 0x00000000,
    INVOCATION_FLAGS_INITIALIZED = 0x00000001,
    INVOCATION_FLAGS_NO_INVOKE = 0x00000002,
    INVOCATION_FLAGS_NEED_SECURITY = 0x00000004,
    INVOCATION_FLAGS_NO_CTOR_INVOKE = 0x00000008,
    INVOCATION_FLAGS_IS_CTOR = 0x00000010,
    INVOCATION_FLAGS_RISKY_METHOD = 0x00000020,
    INVOCATION_FLAGS_NON_W8P_FX_API = 0x00000040,
    INVOCATION_FLAGS_IS_DELEGATE_CTOR = 0x00000080,
    INVOCATION_FLAGS_CONTAINS_STACK_POINTERS = 0x00000100,
    INVOCATION_FLAGS_SPECIAL_FIELD = 0x00000010,
    INVOCATION_FLAGS_FIELD_SPECIAL_CAST = 0x00000020,
    INVOCATION_FLAGS_CONSTRUCTOR_INVOKE = 0x10000000,
}
//[Serializable]
//[ClassInterface(ClassInterfaceType.None)]
//[ComDefaultInterface(typeof(_MethodBase))]
//#pragma warning disable 618
//    [PermissionSetAttribute(SecurityAction.InheritanceDemand, Name = "FullTrust")]
//#pragma warning restore 618
//    [System.Runtime.InteropServices.ComVisible(true)]
public abstract class MethodBase : MemberInfo, _MethodBase
{
    //TODO: generate method GetMethodFromHandle
    //TODO: generate method GetMethodFromHandle
    //TODO: generate method GetCurrentMethod
    //TODO: generate constructor
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetMethodDesc
    //TODO: generate property 'IsDynamicallyInvokable'
    //TODO: generate method GetParametersNoCopy
    //TODO: generate method GetParameters
    //TODO: generate property 'MethodImplementationFlags'
    //TODO: generate method GetMethodImplementationFlags
    //TODO: generate property 'MethodHandle'
    //TODO: generate property 'Attributes'
    //TODO: generate method Invoke
    //TODO: generate property 'CallingConvention'
    //TODO: generate method GetGenericArguments
    //TODO: generate property 'IsGenericMethodDefinition'
    //TODO: generate property 'ContainsGenericParameters'
    //TODO: generate property 'IsGenericMethod'
    //TODO: generate property 'IsSecurityCritical'
    //TODO: generate property 'IsSecuritySafeCritical'
    //TODO: generate property 'IsSecurityTransparent'
    //TODO: generate method Invoke
    //TODO: generate property 'IsPublic'
    //TODO: generate property 'IsPrivate'
    //TODO: generate property 'IsFamily'
    //TODO: generate property 'IsAssembly'
    //TODO: generate property 'IsFamilyAndAssembly'
    //TODO: generate property 'IsFamilyOrAssembly'
    //TODO: generate property 'IsStatic'
    //TODO: generate property 'IsFinal'
    //TODO: generate property 'IsVirtual'
    //TODO: generate property 'IsHideBySig'
    //TODO: generate property 'IsAbstract'
    //TODO: generate property 'IsSpecialName'
    //TODO: generate property 'IsConstructor'
    //TODO: generate method GetMethodBody
    //TODO: generate method ConstructParameters
    //TODO: generate property 'FullName'
    //TODO: generate method FormatNameAndSig
    //TODO: generate method FormatNameAndSig
    //TODO: generate method GetParameterTypes
    //TODO: generate method CheckArguments
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\MethodBody.cs'
//
// Ignored: [Flags()]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum ExceptionHandlingClauseOptions : int
{
    Clause = 0x0,
    Filter = 0x1,
    Finally = 0x2,
    Fault = 0x4,
}
//[System.Runtime.InteropServices.ComVisible(true)]
public class ExceptionHandlingClause : DotNetObject
{
    //TODO: generate constructor
    private MethodBody m_methodBody;
    // Ignored: [ContractPublicPropertyName("Flags")]
    private ExceptionHandlingClauseOptions m_flags;
    private int m_tryOffset;
    private int m_tryLength;
    private int m_handlerOffset;
    private int m_handlerLength;
    private int m_catchMetadataToken;
    private int m_filterOffset;
    //TODO: generate property 'Flags'
    //TODO: generate property 'TryOffset'
    //TODO: generate property 'TryLength'
    //TODO: generate property 'HandlerOffset'
    //TODO: generate property 'HandlerLength'
    //TODO: generate property 'FilterOffset'
    //TODO: generate property 'CatchType'
    //TODO: generate method ToString
}
//[System.Runtime.InteropServices.ComVisible(true)]
public class MethodBody : DotNetObject
{
    //TODO: generate constructor
    private ubyte[] m_IL;
    private ExceptionHandlingClause[] m_exceptionHandlingClauses;
    private LocalVariableInfo[] m_localVariables;
    public MethodBase m_methodBase;
    private int m_localSignatureMetadataToken;
    private int m_maxStackSize;
    private bool m_initLocals;
    //TODO: generate property 'LocalSignatureMetadataToken'
    //TODO: generate property 'LocalVariables'
    //TODO: generate property 'MaxStackSize'
    //TODO: generate property 'InitLocals'
    //TODO: generate method GetILAsByteArray
    //TODO: generate property 'ExceptionHandlingClauses'
}
//[System.Runtime.InteropServices.ComVisible(true)]
public class LocalVariableInfo : DotNetObject
{
    private RuntimeType m_type;
    private int m_isPinned;
    private int m_localIndex;
    //TODO: generate constructor
    //TODO: generate method ToString
    //TODO: generate property 'LocalType'
    //TODO: generate property 'IsPinned'
    //TODO: generate property 'LocalIndex'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\MethodImplAttributes.cs'
//
// Ignored: // This Enum matchs the CorMethodImpl defined in CorHdr.h
// Ignored: [Serializable]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum MethodImplAttributes
{
    CodeTypeMask = 0x0003,
    IL = 0x0000,
    Native = 0x0001,
    OPTIL = 0x0002,
    Runtime = 0x0003,
    ManagedMask = 0x0004,
    Unmanaged = 0x0004,
    Managed = 0x0000,
    ForwardRef = 0x0010,
    PreserveSig = 0x0080,
    InternalCall = 0x1000,
    Synchronized = 0x0020,
    NoInlining = 0x0008,
    // Ignored: [System.Runtime.InteropServices.ComVisible(false)]
    AggressiveInlining = 0x0100,
    NoOptimization = 0x0040,
    MaxMethodImplVal = 0xFFFF,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\MethodInfo.cs'
//
//[Serializable]
//[ClassInterface(ClassInterfaceType.None)]
//[ComDefaultInterface(typeof(_MethodInfo))]
//#pragma warning disable 618
//    [PermissionSetAttribute(SecurityAction.InheritanceDemand, Name = "FullTrust")]
//#pragma warning restore 618
//    [System.Runtime.InteropServices.ComVisible(true)]
public abstract class MethodInfo : MethodBase, _MethodInfo
{
    //TODO: generate constructor
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate property 'MemberType'
    //TODO: generate property 'ReturnType'
    //TODO: generate property 'ReturnParameter'
    //TODO: generate property 'ReturnTypeCustomAttributes'
    //TODO: generate method GetBaseDefinition
    //TODO: generate method GetGenericArguments
    //TODO: generate method GetGenericMethodDefinition
    //TODO: generate method MakeGenericMethod
    //TODO: generate method CreateDelegate
    //TODO: generate method CreateDelegate
}
//[Serializable]
public final class RuntimeMethodInfo : MethodInfo, ISerializable, IRuntimeMethodInfo
{
    private IntPtr m_handle;
    private RuntimeType.RuntimeTypeCache m_reflectedTypeCache;
    private String m_name;
    private String m_toString;
    private ParameterInfo[] m_parameters;
    private ParameterInfo m_returnParameter;
    private BindingFlags m_bindingFlags;
    private MethodAttributes m_methodAttributes;
    private Signature m_signature;
    private RuntimeType m_declaringType;
    private DotNetObject m_keepalive;
    private INVOCATION_FLAGS m_invocationFlags;
    //TODO: generate method IsNonW8PFrameworkAPI
    //TODO: generate property 'IsDynamicallyInvokable'
    //TODO: generate property 'InvocationFlags'
    //TODO: generate constructor
    //TODO: generate property 'Value'
    //TODO: generate property 'ReflectedTypeInternal'
    //TODO: generate method FetchNonReturnParameters
    //TODO: generate method FetchReturnParameter
    //TODO: generate method FormatNameAndSig
    //TODO: generate method CacheEquals
    //TODO: generate property 'Signature'
    //TODO: generate property 'BindingFlags'
    //TODO: generate method GetMethodHandle
    //TODO: generate method GetParentDefinition
    //TODO: generate method GetDeclaringTypeInternal
    //TODO: generate method ToString
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributesData
    //TODO: generate property 'Name'
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'ReflectedType'
    //TODO: generate property 'MemberType'
    //TODO: generate property 'MetadataToken'
    //TODO: generate property 'Module'
    //TODO: generate method GetRuntimeType
    //TODO: generate method GetRuntimeModule
    //TODO: generate method GetRuntimeAssembly
    //TODO: generate property 'IsSecurityCritical'
    //TODO: generate property 'IsSecuritySafeCritical'
    //TODO: generate property 'IsSecurityTransparent'
    //TODO: generate method GetParametersNoCopy
    //TODO: generate method GetParameters
    //TODO: generate method GetMethodImplementationFlags
    //TODO: generate property 'IsOverloaded'
    //TODO: generate property 'MethodHandle'
    //TODO: generate property 'Attributes'
    //TODO: generate property 'CallingConvention'
    //TODO: generate method GetMethodBody
    //TODO: generate method CheckConsistency
    //TODO: generate method ThrowNoInvokeException
    //TODO: generate method Invoke
    //TODO: generate method UnsafeInvoke
    //TODO: generate method UnsafeInvokeInternal
    //TODO: generate method InvokeArgumentsCheck
    //TODO: generate property 'ReturnType'
    //TODO: generate property 'ReturnTypeCustomAttributes'
    //TODO: generate property 'ReturnParameter'
    //TODO: generate method GetBaseDefinition
    //TODO: generate method CreateDelegate
    //TODO: generate method CreateDelegate
    //TODO: generate method CreateDelegateInternal
    //TODO: generate method MakeGenericMethod
    //TODO: generate method GetGenericArgumentsInternal
    //TODO: generate method GetGenericArguments
    //TODO: generate method GetGenericMethodDefinition
    //TODO: generate property 'IsGenericMethod'
    //TODO: generate property 'IsGenericMethodDefinition'
    //TODO: generate property 'ContainsGenericParameters'
    //TODO: generate method GetObjectData
    //TODO: generate method SerializationToString
    //TODO: generate method InternalGetCurrentMethod
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Missing.cs'
//
//// This is not serializable because it is a reflection command.
//    [Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class Missing : DotNetObject, ISerializable
{
    public static immutable Missing Value/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method GetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Module.cs'
//
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum PortableExecutableKinds
{
    NotAPortableExecutableImage = 0x0,
    ILOnly = 0x1,
    Required32Bit = 0x2,
    PE32Plus = 0x4,
    Unmanaged32Bit = 0x8,
    // Ignored: [ComVisible(false)]
    Preferred32Bit = 0x10,
}
// Ignored: [Serializable]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum ImageFileMachine
{
    I386 = 0x014c,
    IA64 = 0x0200,
    AMD64 = 0x8664,
    ARM = 0x01c4,
}
//[Serializable]
//[ClassInterface(ClassInterfaceType.None)]
//[ComDefaultInterface(typeof(_Module))]
//[System.Runtime.InteropServices.ComVisible(true)]
//#pragma warning disable 618
//    [PermissionSetAttribute(SecurityAction.InheritanceDemand, Unrestricted = true)]
public abstract class Module : DotNetObject, _Module, ISerializable, ICustomAttributeProvider
{
    //TODO: generate constructor
    //TODO: generate constructor
    public static immutable TypeFilter FilterTypeName;
    public static immutable TypeFilter FilterTypeNameIgnoreCase;
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    private enum BindingFlags DefaultLookup/*todo: implement initializer*/ = (cast(BindingFlags)0);
    //TODO: generate method ToString
    //TODO: generate property 'CustomAttributes'
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributesData
    //TODO: generate method ResolveMethod
    //TODO: generate method ResolveMethod
    //TODO: generate method ResolveField
    //TODO: generate method ResolveField
    //TODO: generate method ResolveType
    //TODO: generate method ResolveType
    //TODO: generate method ResolveMember
    //TODO: generate method ResolveMember
    //TODO: generate method ResolveSignature
    //TODO: generate method ResolveString
    //TODO: generate method GetPEKind
    //TODO: generate property 'MDStreamVersion'
    //TODO: generate method GetObjectData
    //TODO: generate method GetType
    //TODO: generate method GetType
    //TODO: generate method GetType
    //TODO: generate property 'FullyQualifiedName'
    //TODO: generate method FindTypes
    //TODO: generate method GetTypes
    //TODO: generate property 'ModuleVersionId'
    //TODO: generate property 'MetadataToken'
    //TODO: generate method IsResource
    //TODO: generate method GetFields
    //TODO: generate method GetFields
    //TODO: generate method GetField
    //TODO: generate method GetField
    //TODO: generate method GetMethods
    //TODO: generate method GetMethods
    //TODO: generate method GetMethod
    //TODO: generate method GetMethod
    //TODO: generate method GetMethod
    //TODO: generate method GetMethodImpl
    //TODO: generate property 'ScopeName'
    //TODO: generate property 'Name'
    //TODO: generate property 'Assembly'
    //TODO: generate property 'ModuleHandle'
    //TODO: generate method GetModuleHandle
}
//[Serializable]
public class RuntimeModule : Module
{
    //TODO: generate constructor
    //TODO: generate method GetType
    //TODO: generate method nIsTransientInternal
    //TODO: generate method GetScopeName
    //TODO: generate method GetFullyQualifiedName
    //TODO: generate method GetTypes
    //TODO: generate method GetDefinedTypes
    //TODO: generate method IsResource
    //TODO: generate method ConvertToTypeHandleArray
    //TODO: generate method ResolveSignature
    //TODO: generate method ResolveMethod
    //TODO: generate method ResolveLiteralField
    //TODO: generate method ResolveField
    //TODO: generate method ResolveType
    //TODO: generate method ResolveMember
    //TODO: generate method ResolveString
    //TODO: generate method GetPEKind
    //TODO: generate property 'MDStreamVersion'
    private RuntimeType m_runtimeType;
    private RuntimeAssembly m_runtimeAssembly;
    private IntPtr m_pRefClass;
    private IntPtr m_pData;
    private IntPtr m_pGlobals;
    private IntPtr m_pFields;
    //TODO: generate method GetMethodImpl
    //TODO: generate method GetMethodInternal
    //TODO: generate property 'RuntimeType'
    //TODO: generate method IsTransientInternal
    //TODO: generate property 'MetadataImport'
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributesData
    //TODO: generate method GetObjectData
    //TODO: generate method GetType
    //TODO: generate method GetFullyQualifiedName
    //TODO: generate property 'FullyQualifiedName'
    //TODO: generate method GetTypes
    //TODO: generate property 'ModuleVersionId'
    //TODO: generate property 'MetadataToken'
    //TODO: generate method IsResource
    //TODO: generate method GetFields
    //TODO: generate method GetField
    //TODO: generate method GetMethods
    //TODO: generate property 'ScopeName'
    //TODO: generate property 'Name'
    //TODO: generate property 'Assembly'
    //TODO: generate method GetRuntimeAssembly
    //TODO: generate method GetModuleHandle
    //TODO: generate method GetNativeHandle
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\ObfuscateAssemblyAttribute.cs'
//
//[AttributeUsage (AttributeTargets.Assembly, AllowMultiple=false, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class ObfuscateAssemblyAttribute : Attribute
{
    private bool m_assemblyIsPrivate;
    private bool m_strip/*todo: implement initializer*/ = bool();
    //TODO: generate constructor
    //TODO: generate property 'AssemblyIsPrivate'
    //TODO: generate property 'StripAfterObfuscation'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\ObfuscationAttribute.cs'
//
//[AttributeUsage(AttributeTargets.Assembly | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Method | AttributeTargets.Parameter | AttributeTargets.Field | AttributeTargets.Property | AttributeTargets.Event | AttributeTargets.Interface | AttributeTargets.Enum | AttributeTargets.Delegate,
//        AllowMultiple = true, Inherited = false)]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class ObfuscationAttribute : Attribute
{
    private bool m_strip/*todo: implement initializer*/ = bool();
    private bool m_exclude/*todo: implement initializer*/ = bool();
    private bool m_applyToMembers/*todo: implement initializer*/ = bool();
    private String m_feature/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate property 'StripAfterObfuscation'
    //TODO: generate property 'Exclude'
    //TODO: generate property 'ApplyToMembers'
    //TODO: generate property 'Feature'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\ParameterAttributes.cs'
//
// Ignored: // This Enum matchs the CorParamAttr defined in CorHdr.h
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum ParameterAttributes
{
    None = 0x0000,
    In = 0x0001,
    Out = 0x0002,
    Lcid = 0x0004,
    Retval = 0x0008,
    Optional = 0x0010,
    ReservedMask = 0xf000,
    HasDefault = 0x1000,
    HasFieldMarshal = 0x2000,
    Reserved3 = 0x4000,
    Reserved4 = 0x8000,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\ParameterInfo.cs'
//
//[Serializable]
//[ClassInterface(ClassInterfaceType.None)]
//[ComDefaultInterface(typeof(_ParameterInfo))]
//[System.Runtime.InteropServices.ComVisible(true)]
public class ParameterInfo : DotNetObject, _ParameterInfo, ICustomAttributeProvider, IObjectReference
{
    protected String NameImpl;
    protected Type ClassImpl;
    protected int PositionImpl;
    protected ParameterAttributes AttrsImpl;
    protected DotNetObject DefaultValueImpl;
    protected MemberInfo MemberImpl;
    // Ignored: #endregion
    // Ignored: #region Legacy Private Members
    // Ignored: // These are here only for backwards compatibility -- they are not set
    // Ignored: // until this instance is serialized, so don't rely on their values from
    // Ignored: // arbitrary code.
    // Ignored: #pragma warning disable 169
    // Ignored: [OptionalField]
    private IntPtr _importer;
    // Ignored: [OptionalField]
    private int _token;
    // Ignored: [OptionalField]
    private bool bExtraConstChecked;
    //TODO: generate constructor
    //TODO: generate method SetName
    //TODO: generate method SetAttributes
    //TODO: generate property 'ParameterType'
    //TODO: generate property 'Name'
    //TODO: generate property 'HasDefaultValue'
    //TODO: generate property 'DefaultValue'
    //TODO: generate property 'RawDefaultValue'
    //TODO: generate property 'Position'
    //TODO: generate property 'Attributes'
    //TODO: generate property 'Member'
    //TODO: generate property 'IsIn'
    //TODO: generate property 'IsOut'
    //TODO: generate property 'IsLcid'
    //TODO: generate property 'IsRetval'
    //TODO: generate property 'IsOptional'
    //TODO: generate property 'MetadataToken'
    //TODO: generate method GetRequiredCustomModifiers
    //TODO: generate method GetOptionalCustomModifiers
    //TODO: generate method ToString
    //TODO: generate property 'CustomAttributes'
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributesData
    //TODO: generate method GetRealObject
}
//[Serializable]
public final class RuntimeParameterInfo : ParameterInfo, ISerializable
{
    //TODO: generate method GetParameters
    //TODO: generate method GetReturnParameter
    //TODO: generate method GetParameters
    private static immutable Type s_DecimalConstantAttributeType/*todo: implement initializer*/ = null;
    private static immutable Type s_CustomConstantAttributeType/*todo: implement initializer*/ = null;
    // Ignored: #endregion
    // Ignored: #region Private Data Members
    // Ignored: // These are new in Whidbey, so we cannot serialize them directly or we break backwards compatibility.
    // Ignored: [NonSerialized]
    private int m_tkParamDef;
    // Ignored: [NonSerialized]
    private MetadataImport m_scope;
    // Ignored: [NonSerialized]
    private Signature m_signature;
    // Ignored: [NonSerialized]
    private /*todo: volatile*/bool m_nameIsCached/*todo: implement initializer*/ = bool();
    // Ignored: [NonSerialized]
    private immutable bool m_noMetadata/*todo: implement initializer*/ = bool();
    // Ignored: [NonSerialized]
    private bool m_noDefaultValue/*todo: implement initializer*/ = bool();
    // Ignored: [NonSerialized]
    private MethodBase m_originalMember/*todo: implement initializer*/ = null;
    //TODO: generate property 'DefiningMethod'
    //TODO: generate method GetObjectData
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'ParameterType'
    //TODO: generate property 'Name'
    //TODO: generate property 'HasDefaultValue'
    //TODO: generate property 'DefaultValue'
    //TODO: generate property 'RawDefaultValue'
    //TODO: generate method GetDefaultValue
    //TODO: generate method GetDefaultValueInternal
    //TODO: generate method GetRuntimeModule
    //TODO: generate property 'MetadataToken'
    //TODO: generate method GetRequiredCustomModifiers
    //TODO: generate method GetOptionalCustomModifiers
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributesData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\ParameterModifier.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public struct ParameterModifier
{
    private bool[] _byRef;
    //TODO: generate constructor
    //TODO: generate property 'IsByRefArray'
    //TODO: generate indexer
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Pointer.cs'
//
//[CLSCompliant(false)]
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class Pointer : DotNetObject, ISerializable
{
    // Ignored: [SecurityCritical]
    private Void* _ptr;
    private RuntimeType _ptrType;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Box
    //TODO: generate method Unbox
    //TODO: generate method GetPointerType
    //TODO: generate method GetPointerValue
    //TODO: generate method GetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\PropertyAttributes.cs'
//
// Ignored: // This Enum matchs the CorPropertyAttr defined in CorHdr.h
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum PropertyAttributes
{
    None = 0x0000,
    SpecialName = 0x0200,
    ReservedMask = 0xf400,
    RTSpecialName = 0x0400,
    HasDefault = 0x1000,
    Reserved2 = 0x2000,
    Reserved3 = 0x4000,
    Reserved4 = 0x8000,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\PropertyInfo.cs'
//
//[Serializable]
//[ClassInterface(ClassInterfaceType.None)]
//[ComDefaultInterface(typeof(_PropertyInfo))]
//#pragma warning disable 618
//    [PermissionSetAttribute(SecurityAction.InheritanceDemand, Name = "FullTrust")]
//#pragma warning restore 618
//    [System.Runtime.InteropServices.ComVisible(true)]
public abstract class PropertyInfo : MemberInfo, _PropertyInfo
{
    //TODO: generate constructor
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate property 'MemberType'
    //TODO: generate method GetConstantValue
    //TODO: generate method GetRawConstantValue
    //TODO: generate property 'PropertyType'
    //TODO: generate method SetValue
    //TODO: generate method GetAccessors
    //TODO: generate method GetGetMethod
    //TODO: generate method GetSetMethod
    //TODO: generate method GetIndexParameters
    //TODO: generate property 'Attributes'
    //TODO: generate property 'CanRead'
    //TODO: generate property 'CanWrite'
    //TODO: generate method GetValue
    //TODO: generate method GetValue
    //TODO: generate method GetValue
    //TODO: generate method SetValue
    //TODO: generate method SetValue
    //TODO: generate method GetRequiredCustomModifiers
    //TODO: generate method GetOptionalCustomModifiers
    //TODO: generate method GetAccessors
    //TODO: generate property 'GetMethod'
    //TODO: generate property 'SetMethod'
    //TODO: generate method GetGetMethod
    //TODO: generate method GetSetMethod
    //TODO: generate property 'IsSpecialName'
}
//[Serializable]
public final class RuntimePropertyInfo : PropertyInfo, ISerializable
{
    private int m_token;
    private String m_name;
    // Ignored: [System.Security.SecurityCritical]
    private Void* m_utf8name;
    private PropertyAttributes m_flags;
    private RuntimeType.RuntimeTypeCache m_reflectedTypeCache;
    private RuntimeMethodInfo m_getterMethod;
    private RuntimeMethodInfo m_setterMethod;
    private MethodInfo[] m_otherMethod;
    private RuntimeType m_declaringType;
    private BindingFlags m_bindingFlags;
    private Signature m_signature;
    private ParameterInfo[] m_parameters;
    //TODO: generate constructor
    //TODO: generate method CacheEquals
    //TODO: generate property 'Signature'
    //TODO: generate method EqualsSig
    //TODO: generate property 'BindingFlags'
    //TODO: generate method ToString
    //TODO: generate method FormatNameAndSig
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributesData
    //TODO: generate property 'MemberType'
    //TODO: generate property 'Name'
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'ReflectedType'
    //TODO: generate property 'ReflectedTypeInternal'
    //TODO: generate property 'MetadataToken'
    //TODO: generate property 'Module'
    //TODO: generate method GetRuntimeModule
    //TODO: generate method GetRequiredCustomModifiers
    //TODO: generate method GetOptionalCustomModifiers
    //TODO: generate method GetConstantValue
    //TODO: generate method GetConstantValue
    //TODO: generate method GetRawConstantValue
    //TODO: generate method GetAccessors
    //TODO: generate property 'PropertyType'
    //TODO: generate method GetGetMethod
    //TODO: generate method GetSetMethod
    //TODO: generate method GetIndexParameters
    //TODO: generate method GetIndexParametersNoCopy
    //TODO: generate property 'Attributes'
    //TODO: generate property 'CanRead'
    //TODO: generate property 'CanWrite'
    //TODO: generate method GetValue
    //TODO: generate method GetValue
    //TODO: generate method SetValue
    //TODO: generate method SetValue
    //TODO: generate method GetObjectData
    //TODO: generate method SerializationToString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\ReflectionContext.cs'
//
public abstract class ReflectionContext : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method MapAssembly
    //TODO: generate method MapType
    //TODO: generate method GetTypeForObject
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\ReflectionTypeLoadException.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class ReflectionTypeLoadException : SystemException, ISerializable
{
    private Type[] _classes;
    private DotNetException[] _exceptions;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Types'
    //TODO: generate property 'LoaderExceptions'
    //TODO: generate method GetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\ResourceAttributes.cs'
//
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum ResourceAttributes
{
    Public = 0x0001,
    Private = 0x0002,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\RuntimeReflectionExtensions.cs'
//
public class RuntimeReflectionExtensions : DotNetObject
{
    private this() {} // prevent instantiation
    private enum BindingFlags everything/*todo: implement initializer*/ = (cast(BindingFlags)0);
    //TODO: generate method CheckAndThrow
    //TODO: generate method CheckAndThrow
    //TODO: generate method GetRuntimeProperties
    //TODO: generate method GetRuntimeEvents
    //TODO: generate method GetRuntimeMethods
    //TODO: generate method GetRuntimeFields
    //TODO: generate method GetRuntimeProperty
    //TODO: generate method GetRuntimeEvent
    //TODO: generate method GetRuntimeMethod
    //TODO: generate method GetRuntimeField
    //TODO: generate method GetRuntimeBaseDefinition
    //TODO: generate method GetRuntimeInterfaceMap
    //TODO: generate method GetMethodInfo
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\StrongNameKeyPair.cs'
//
public class StrongNameKeyPair : DotNetObject
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\TargetException.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public class TargetException : DotNetException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\TargetInvocationException.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class TargetInvocationException : DotNetException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\TargetParameterCountException.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class TargetParameterCountException : DotNetException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\TypeAttributes.cs'
//
// Ignored: // This Enum matchs the CorTypeAttr defined in CorHdr.h
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum TypeAttributes
{
    VisibilityMask = 0x00000007,
    NotPublic = 0x00000000,
    Public = 0x00000001,
    NestedPublic = 0x00000002,
    NestedPrivate = 0x00000003,
    NestedFamily = 0x00000004,
    NestedAssembly = 0x00000005,
    NestedFamANDAssem = 0x00000006,
    NestedFamORAssem = 0x00000007,
    LayoutMask = 0x00000018,
    AutoLayout = 0x00000000,
    SequentialLayout = 0x00000008,
    ExplicitLayout = 0x00000010,
    ClassSemanticsMask = 0x00000020,
    Class = 0x00000000,
    Interface = 0x00000020,
    Abstract = 0x00000080,
    Sealed = 0x00000100,
    SpecialName = 0x00000400,
    Import = 0x00001000,
    Serializable = 0x00002000,
    // Ignored: [ComVisible(false)]
    WindowsRuntime = 0x00004000,
    StringFormatMask = 0x00030000,
    AnsiClass = 0x00000000,
    UnicodeClass = 0x00010000,
    AutoClass = 0x00020000,
    CustomFormatClass = 0x00030000,
    CustomFormatMask = 0x00C00000,
    BeforeFieldInit = 0x00100000,
    ReservedMask = 0x00040800,
    RTSpecialName = 0x00000800,
    HasSecurity = 0x00040000,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\TypeDelegator.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public class TypeDelegator : DotNetTypeInfo
{
    //TODO: generate method IsAssignableFrom
    protected Type typeImpl;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'GUID'
    //TODO: generate property 'MetadataToken'
    //TODO: generate method InvokeMember
    //TODO: generate property 'Module'
    //TODO: generate property 'Assembly'
    //TODO: generate property 'TypeHandle'
    //TODO: generate property 'Name'
    //TODO: generate property 'FullName'
    //TODO: generate property 'Namespace'
    //TODO: generate property 'AssemblyQualifiedName'
    //TODO: generate property 'BaseType'
    //TODO: generate method GetConstructorImpl
    //TODO: generate method GetConstructors
    //TODO: generate method GetMethodImpl
    //TODO: generate method GetMethods
    //TODO: generate method GetField
    //TODO: generate method GetFields
    //TODO: generate method GetInterface
    //TODO: generate method GetInterfaces
    //TODO: generate method GetEvent
    //TODO: generate method GetEvents
    //TODO: generate method GetPropertyImpl
    //TODO: generate method GetProperties
    //TODO: generate method GetEvents
    //TODO: generate method GetNestedTypes
    //TODO: generate method GetNestedType
    //TODO: generate method GetMember
    //TODO: generate method GetMembers
    //TODO: generate method GetAttributeFlagsImpl
    //TODO: generate method IsArrayImpl
    //TODO: generate method IsPrimitiveImpl
    //TODO: generate method IsByRefImpl
    //TODO: generate method IsPointerImpl
    //TODO: generate method IsValueTypeImpl
    //TODO: generate method IsCOMObjectImpl
    //TODO: generate property 'IsConstructedGenericType'
    //TODO: generate method GetElementType
    //TODO: generate method HasElementTypeImpl
    //TODO: generate property 'UnderlyingSystemType'
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetInterfaceMap
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\TypeFilter.cs'
//
//// Define the delegate
//    [Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public alias TypeFilter = bool delegate(Type m, DotNetObject filterCriteria);

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\TypeInfo.cs'
//
////all today's runtime Type derivations derive now from TypeInfo
//    //we make TypeInfo implement IRCT - simplifies work
//    [System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public abstract class DotNetTypeInfo : Type, IReflectableType
{
    //TODO: generate constructor
    //TODO: generate method GetTypeInfo
    //TODO: generate method AsType
    //TODO: generate property 'GenericTypeParameters'
    //TODO: generate method IsAssignableFrom
    //TODO: generate method GetDeclaredEvent
    //TODO: generate method GetDeclaredField
    //TODO: generate method GetDeclaredMethod
    //TODO: generate method GetDeclaredMethods
    //TODO: generate method GetDeclaredNestedType
    //TODO: generate method GetDeclaredProperty
    //TODO: generate property 'DeclaredConstructors'
    //TODO: generate property 'DeclaredEvents'
    //TODO: generate property 'DeclaredFields'
    //TODO: generate property 'DeclaredMembers'
    //TODO: generate property 'DeclaredMethods'
    //TODO: generate property 'DeclaredNestedTypes'
    //TODO: generate property 'DeclaredProperties'
    //TODO: generate property 'ImplementedInterfaces'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\RtType.cs'
//
public struct CerHashtable2(K,V)
{
    private static class Table : DotNetObject
    {
        public K[] m_keys;
        public V[] m_values;
        public int m_count;
        //TODO: generate constructor
        //TODO: generate method Insert
    }
    private Table m_Table;
    private enum int MinSize/*todo: implement initializer*/ = int();
    //TODO: generate method GetHashCodeHelper
    //TODO: generate method Rehash
    //TODO: generate indexer
}
