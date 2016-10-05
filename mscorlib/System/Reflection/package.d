module mscorlib.System.Reflection;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    SerializableAttribute,
    __DotNet__Object,
    SystemException,
    ResolveEventArgs,
    String,
    IntPtr,
    AttributeUsageAttribute,
    Attribute,
    ICloneable,
    Version,
    FlagsAttribute,
    MarshalByRefObject,
    IRuntimeMethodInfo,
    RuntimeType,
    Signature,
    Type,
    FormatException,
    Void,
    IRuntimeFieldInfo,
    __DotNet__Exception,
    NonSerializedAttribute,
    CLSCompliantAttribute;
import mscorlib.System.Runtime.InteropServices :
    ComVisibleAttribute,
    ClassInterfaceAttribute,
    ComDefaultInterfaceAttribute,
    _Assembly,
    _AssemblyName,
    _ConstructorInfo,
    StructLayoutAttribute,
    _EventInfo,
    _FieldInfo,
    GuidAttribute,
    _MemberInfo,
    _MethodBase,
    _MethodInfo,
    _Module,
    _ParameterInfo,
    _PropertyInfo;
import mscorlib.System.Security.Permissions :
    PermissionSetAttribute;
import mscorlib.System.Security :
    IEvidenceFactory,
    SecurityCriticalAttribute;
import mscorlib.System.Runtime.Serialization :
    ISerializable,
    IDeserializationCallback,
    SerializationInfo,
    IObjectReference,
    OptionalFieldAttribute;
import mscorlib.System.Globalization :
    CultureInfo;
import mscorlib.System.Configuration.Assemblies :
    AssemblyHashAlgorithm,
    AssemblyVersionCompatibility;
import mscorlib.System.Collections.Generic :
    IList1,
    Dictionary2;
import mscorlib.System.Diagnostics.Contracts :
    ContractPublicPropertyNameAttribute;
import mscorlib.System.Runtime.CompilerServices :
    DecimalConstantAttribute,
    CustomConstantAttribute;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\__Filters.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class __Filters : __DotNet__Object
{
    //TODO: generate method FilterTypeName
    //TODO: generate method FilterTypeNameIgnoreCase
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\AmbiguousMatchException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public alias ModuleResolveEventHandler = Module delegate(__DotNet__Object sender, ResolveEventArgs e);
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_Assembly)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
// #pragma warning disable 618
@__DotNet__Attribute!(PermissionSetAttribute.stringof/*, SecurityAction.InheritanceDemand, Unrestricted = true*/)
public abstract class Assembly : __DotNet__Object, _Assembly, IEvidenceFactory, ICustomAttributeProvider, ISerializable
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
package(mscorlib) enum LoadContext
{
    DEFAULT,
    LOADFROM,
    UNKNOWN,
    HOSTED,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class RuntimeAssembly : Assembly
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
    private __DotNet__Object m_syncRoot;
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
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AssemblyCopyrightAttribute : Attribute
{
    private String m_copyright;
    //TODO: generate constructor
    //TODO: generate property 'Copyright'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AssemblyTrademarkAttribute : Attribute
{
    private String m_trademark;
    //TODO: generate constructor
    //TODO: generate property 'Trademark'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AssemblyProductAttribute : Attribute
{
    private String m_product;
    //TODO: generate constructor
    //TODO: generate property 'Product'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AssemblyCompanyAttribute : Attribute
{
    private String m_company;
    //TODO: generate constructor
    //TODO: generate property 'Company'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AssemblyDescriptionAttribute : Attribute
{
    private String m_description;
    //TODO: generate constructor
    //TODO: generate property 'Description'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AssemblyTitleAttribute : Attribute
{
    private String m_title;
    //TODO: generate constructor
    //TODO: generate property 'Title'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AssemblyConfigurationAttribute : Attribute
{
    private String m_configuration;
    //TODO: generate constructor
    //TODO: generate property 'Configuration'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AssemblyDefaultAliasAttribute : Attribute
{
    private String m_defaultAlias;
    //TODO: generate constructor
    //TODO: generate property 'DefaultAlias'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AssemblyInformationalVersionAttribute : Attribute
{
    private String m_informationalVersion;
    //TODO: generate constructor
    //TODO: generate property 'InformationalVersion'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AssemblyFileVersionAttribute : Attribute
{
    private String _version;
    //TODO: generate constructor
    //TODO: generate property 'Version'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AssemblyCultureAttribute : Attribute
{
    private String m_culture;
    //TODO: generate constructor
    //TODO: generate property 'Culture'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AssemblyVersionAttribute : Attribute
{
    private String m_version;
    //TODO: generate constructor
    //TODO: generate property 'Version'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AssemblyKeyFileAttribute : Attribute
{
    private String m_keyFile;
    //TODO: generate constructor
    //TODO: generate property 'KeyFile'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AssemblyDelaySignAttribute : Attribute
{
    private bool m_delaySign;
    //TODO: generate constructor
    //TODO: generate property 'DelaySign'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AssemblyAlgorithmIdAttribute : Attribute
{
    private uint m_algId;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'AlgorithmId'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AssemblyFlagsAttribute : Attribute
{
    private AssemblyNameFlags m_flags;
    //TODO: generate constructor
    //TODO: generate property 'Flags'
    //TODO: generate property 'AssemblyFlags'
    //TODO: generate constructor
    //TODO: generate constructor
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, AllowMultiple=true, Inherited=false*/)
public final class AssemblyMetadataAttribute : Attribute
{
    private String m_key;
    private String m_value;
    //TODO: generate constructor
    //TODO: generate property 'Key'
    //TODO: generate property 'Value'
}
// #if FEATURE_STRONGNAME_MIGRATION
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited = false, AllowMultiple=false*/)
public final class AssemblySignatureKeyAttribute : Attribute
{
    private String _publicKey;
    private String _countersignature;
    //TODO: generate constructor
    //TODO: generate property 'PublicKey'
    //TODO: generate property 'Countersignature'
}
// #endif
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AssemblyKeyNameAttribute : Attribute
{
    private String m_keyName;
    //TODO: generate constructor
    //TODO: generate property 'KeyName'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\AssemblyName.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_AssemblyName)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AssemblyName : __DotNet__Object, _AssemblyName, ICloneable, ISerializable, IDeserializationCallback
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum AssemblyNameFlags
{
    None = 0x0000,
    // Flag used to indicate that an assembly ref contains the full public key, not the compressed token.
    // Must match afPublicKey in CorHdr.h.
    PublicKey = 0x0001,
    //ProcArchMask              = 0x00F0,     // Bits describing the processor architecture
    // Accessible via AssemblyName.ProcessorArchitecture
    EnableJITcompileOptimizer = 0x4000,
    EnableJITcompileTracking = 0x8000,
    Retargetable = 0x0100,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
public enum AssemblyContentType
{
    Default = 0x0000,
    WindowsRuntime = 0x0001,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class AssemblyNameProxy : MarshalByRefObject
{
    //TODO: generate method GetAssemblyName
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Associates.cs'
//
package(mscorlib) class Associates : __DotNet__Object
{
    private this() {} // prevent instantiation
    @__DotNet__Attribute!(FlagsAttribute.stringof)
    package(mscorlib) enum Attributes
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.AutoDual*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class Binder : __DotNet__Object
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum BindingFlags
{
    // NOTES: We have lookup masks defined in RuntimeType and Activator.  If we
    //    change the lookup values then these masks may need to change also.
    // a place holder for no flag specifed
    Default = 0x00,
    // These flags indicate what to search for when binding
    IgnoreCase = 0x01,
    DeclaredOnly = 0x02,
    Instance = 0x04,
    Static = 0x08,
    Public = 0x10,
    NonPublic = 0x20,
    FlattenHierarchy = 0x40,
    // These flags are used by InvokeMember to determine
    // what type of member we are trying to Invoke.
    // BindingAccess = 0xFF00;
    InvokeMethod = 0x0100,
    CreateInstance = 0x0200,
    GetField = 0x0400,
    SetField = 0x0800,
    GetProperty = 0x1000,
    SetProperty = 0x2000,
    // These flags are also used by InvokeMember but they should only
    // be used when calling InvokeMember on a COM object.
    PutDispProperty = 0x4000,
    PutRefDispProperty = 0x8000,
    ExactBinding = 0x010000,
    SuppressChangeType = 0x020000,
    // DefaultValueBinding will return the set of methods having ArgCount or 
    //    more parameters.  This is used for default values, etc.
    OptionalParamBinding = 0x040000,
    // These are a couple of misc attributes used
    IgnoreReturn = 0x01000000,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\CallingConventions.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum CallingConventions
{
    //NOTE: If you change this please update COMMember.cpp.  These
    //    are defined there.
    Standard = 0x0001,
    VarArgs = 0x0002,
    Any = Standard | VarArgs,
    HasThis = 0x0020,
    ExplicitThis = 0x0040,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\ConstructorInfo.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_ConstructorInfo)*/)
// #pragma warning disable 618
@__DotNet__Attribute!(PermissionSetAttribute.stringof/*, SecurityAction.InheritanceDemand, Name = "FullTrust"*/)
// #pragma warning restore 618
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class ConstructorInfo : MethodBase, _ConstructorInfo
{
    // #region Static Members
    @__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
    public static immutable String ConstructorName/*todo: implement initializer*/ = null;
    @__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class RuntimeConstructorInfo : ConstructorInfo, ISerializable, IRuntimeMethodInfo
{
    private /*todo: volatile*/ RuntimeType m_declaringType;
    private RuntimeType.RuntimeTypeCache m_reflectedTypeCache;
    private String m_toString;
    private ParameterInfo[] m_parameters/*todo: implement initializer*/ = null;
    private __DotNet__Object _empty1;
    private __DotNet__Object _empty2;
    private __DotNet__Object _empty3;
    private IntPtr m_handle;
    private MethodAttributes m_methodAttributes;
    private BindingFlags m_bindingFlags;
    private /*todo: volatile*/ Signature m_signature;
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class CustomAttributeData : __DotNet__Object
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct CustomAttributeTypedArgument
{
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method CustomAttributeEncodingToType
    //TODO: generate method EncodedValueToRawValue
    //TODO: generate method ResolveType
    private __DotNet__Object m_value;
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) struct CustomAttributeRecord
{
    package(mscorlib) ConstArray blob;
    package(mscorlib) MetadataToken tkCtor;
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) enum CustomAttributeEncoding : int
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Auto*/)
package(mscorlib) struct CustomAttributeEncodedArgument
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Auto*/)
package(mscorlib) struct CustomAttributeNamedParameter
{
    private String m_argumentName;
    private CustomAttributeEncoding m_fieldOrProperty;
    private CustomAttributeEncoding m_padding;
    private CustomAttributeType m_type;
    private CustomAttributeEncodedArgument m_encodedArgument;
    //TODO: generate constructor
    //TODO: generate property 'EncodedArgument'
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Auto*/)
package(mscorlib) struct CustomAttributeCtorParameter
{
    private CustomAttributeType m_type;
    private CustomAttributeEncodedArgument m_encodedArgument;
    //TODO: generate constructor
    //TODO: generate property 'CustomAttributeEncodedArgument'
}
// Note: This is a managed representation of a frame type defined in vm\frames.h; please ensure the layout remains
// synchronized.
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
package(mscorlib) struct SecurityContextFrame
{
    private IntPtr m_GSCookie;
    private IntPtr __VFN_table;
    private IntPtr m_Next;
    private IntPtr m_Assembly;
    //TODO: generate method Push
    //TODO: generate method Pop
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Auto*/)
package(mscorlib) struct CustomAttributeType
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
package(mscorlib) class CustomAttribute : __DotNet__Object
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
package(mscorlib) class PseudoCustomAttribute : __DotNet__Object
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
public class CustomAttributeExtensions : __DotNet__Object
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Interface*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class DefaultMemberAttribute : Attribute
{
    private String m_memberName;
    //TODO: generate constructor
    //TODO: generate property 'MemberName'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\EventAttributes.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum EventAttributes
{
    None = 0x0000,
    // This Enum matchs the CorEventAttr defined in CorHdr.h
    SpecialName = 0x0200,
    // Reserved flags for Runtime use only.
    ReservedMask = 0x0400,
    RTSpecialName = 0x0400,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\EventInfo.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_EventInfo)*/)
// #pragma warning disable 618
@__DotNet__Attribute!(PermissionSetAttribute.stringof/*, SecurityAction.InheritanceDemand, Name = "FullTrust"*/)
// #pragma warning restore 618
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class RuntimeEventInfo : EventInfo, ISerializable
{
    private int m_token;
    private EventAttributes m_flags;
    private String m_name;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
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
// This Enum matchs the CorFieldAttr defined in CorHdr.h
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum FieldAttributes
{
    // member access mask - Use this mask to retrieve accessibility information.
    FieldAccessMask = 0x0007,
    PrivateScope = 0x0000,
    Private = 0x0001,
    FamANDAssem = 0x0002,
    Assembly = 0x0003,
    Family = 0x0004,
    FamORAssem = 0x0005,
    Public = 0x0006,
    // end member access mask
    // field contract attributes.
    Static = 0x0010,
    InitOnly = 0x0020,
    Literal = 0x0040,
    NotSerialized = 0x0080,
    SpecialName = 0x0200,
    // interop attributes
    PinvokeImpl = 0x2000,
    // Reserved flags for runtime use only.
    ReservedMask = 0x9500,
    RTSpecialName = 0x0400,
    HasFieldMarshal = 0x1000,
    HasDefault = 0x8000,
    HasFieldRVA = 0x0100,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\FieldInfo.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_FieldInfo)*/)
// #pragma warning disable 618
@__DotNet__Attribute!(PermissionSetAttribute.stringof/*, SecurityAction.InheritanceDemand, Name = "FullTrust"*/)
// #pragma warning restore 618
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) abstract class RuntimeFieldInfo : FieldInfo, ISerializable
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class RtFieldInfo : RuntimeFieldInfo, IRuntimeFieldInfo
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class MdFieldInfo : RuntimeFieldInfo, ISerializable
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
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
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
// Interface does not need to be marked with the serializable attribute
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface ICustomAttributeProvider
{
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\InterfaceMapping.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct InterfaceMapping
{
    @__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
    public Type TargetType;
    @__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
    public Type InterfaceType;
    @__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
    public MethodInfo[] TargetMethods;
    @__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
    public MethodInfo[] InterfaceMethods;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\IntrospectionExtensions.cs'
//
public class IntrospectionExtensions : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method GetTypeInfo
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\InvalidFilterCriteriaException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class InvalidFilterCriteriaException : __DotNet__Exception
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\IReflect.cs'
//
// Interface does not need to be marked with the serializable attribute
@__DotNet__Attribute!(GuidAttribute.stringof/*, "AFBF15E5-C37C-11d2-B88E-00A0C9B471B8"*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
package(mscorlib) final class LoaderAllocatorScout : __DotNet__Object
{
    package(mscorlib) IntPtr m_nativeLoaderAllocator;
    //TODO: generate method Destroy
    //TODO: generate destructor
}
package(mscorlib) final class LoaderAllocator : __DotNet__Object
{
    //TODO: generate constructor
    private LoaderAllocatorScout m_scout;
    private __DotNet__Object[] m_slots;
    package(mscorlib) CerHashtable2!(RuntimeMethodInfo,RuntimeMethodInfo) m_methodInstantiations;
    private int m_slotsUsed;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\ManifestResourceInfo.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class ManifestResourceInfo : __DotNet__Object
{
    private Assembly _containingAssembly;
    private String _containingFileName;
    private ResourceLocation _resourceLocation;
    //TODO: generate constructor
    //TODO: generate property 'ReferencedAssembly'
    //TODO: generate property 'FileName'
    //TODO: generate property 'ResourceLocation'
}
// The ResourceLocation is a combination of these flags, set or not.
// Linked means not Embedded.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum ResourceLocation
{
    Embedded = 0x1,
    ContainedInAnotherAssembly = 0x2,
    ContainedInManifestFile = 0x4,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\MdConstant.cs'
//
package(mscorlib) class MdConstant : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method GetValue
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\MdImport.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) enum CorElementType : ubyte
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
package(mscorlib) enum MdSigCallingConvention : ubyte
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
package(mscorlib) enum PInvokeAttributes
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
package(mscorlib) enum MethodSemanticsAttributes
{
    Setter = 0x0001,
    Getter = 0x0002,
    Other = 0x0004,
    AddOn = 0x0008,
    RemoveOn = 0x0010,
    Fire = 0x0020,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) enum MetadataTokenType
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) struct ConstArray
{
    //TODO: generate property 'Signature'
    //TODO: generate property 'Length'
    //TODO: generate indexer
    package(mscorlib) int m_length;
    package(mscorlib) IntPtr m_constArray;
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) struct MetadataToken
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
package(mscorlib) struct MetadataEnumResult
{
    private int[] largeResult;
    private int length;
    private /*todo: fixed*/ int[16] smallResult;
    //TODO: generate property 'Length'
    //TODO: generate indexer
}
package(mscorlib) struct MetadataImport
{
    private IntPtr m_metadataImport2;
    private __DotNet__Object m_keepalive;
    package(mscorlib) static immutable MetadataImport EmptyImport/*todo: implement initializer*/ = MetadataImport();
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
package(mscorlib) class MetadataException : __DotNet__Exception
{
    private int m_hr;
    //TODO: generate constructor
    //TODO: generate method ToString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\MemberFilter.cs'
//
// Define the delegate
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public alias MemberFilter = bool delegate(MemberInfo m, __DotNet__Object filterCriteria);

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\MemberInfo.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_MemberInfo)*/)
// #pragma warning disable 618
@__DotNet__Attribute!(PermissionSetAttribute.stringof/*, SecurityAction.InheritanceDemand, Name = "FullTrust"*/)
// #pragma warning restore 618
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class MemberInfo : __DotNet__Object, ICustomAttributeProvider, _MemberInfo
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class MemberInfoSerializationHolder : __DotNet__Object, ISerializable, IObjectReference
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
// This Enum matchs the CorTypeAttr defined in CorHdr.h
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum MemberTypes
{
    // The following are the known classes which extend MemberInfo
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum MethodAttributes
{
    // NOTE: This Enum matchs the CorMethodAttr defined in CorHdr.h
    // member access mask - Use this mask to retrieve accessibility information.
    MemberAccessMask = 0x0007,
    PrivateScope = 0x0000,
    Private = 0x0001,
    FamANDAssem = 0x0002,
    Assembly = 0x0003,
    Family = 0x0004,
    FamORAssem = 0x0005,
    Public = 0x0006,
    // end member access mask
    // method contract attributes.
    Static = 0x0010,
    Final = 0x0020,
    Virtual = 0x0040,
    HideBySig = 0x0080,
    CheckAccessOnOverride = 0x0200,
    // vtable layout mask - Use this mask to retrieve vtable attributes.
    VtableLayoutMask = 0x0100,
    ReuseSlot = 0x0000,
    NewSlot = 0x0100,
    // end vtable layout mask
    // method implementation attributes.
    Abstract = 0x0400,
    SpecialName = 0x0800,
    // interop attributes
    PinvokeImpl = 0x2000,
    UnmanagedExport = 0x0008,
    RTSpecialName = 0x1000,
    // Reserved flags for runtime use only.
    ReservedMask = 0xd000,
    HasSecurity = 0x4000,
    RequireSecObject = 0x8000,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\MethodBase.cs'
//
//
// Invocation cached flags. Those are used in unmanaged code as well
// so be careful if you change them
//
@__DotNet__Attribute!(FlagsAttribute.stringof)
package(mscorlib) enum INVOCATION_FLAGS : uint
{
    INVOCATION_FLAGS_UNKNOWN = 0x00000000,
    INVOCATION_FLAGS_INITIALIZED = 0x00000001,
    // it's used for both method and field to signify that no access is allowed
    INVOCATION_FLAGS_NO_INVOKE = 0x00000002,
    INVOCATION_FLAGS_NEED_SECURITY = 0x00000004,
    // Set for static ctors and ctors on abstract types, which
    // can be invoked only if the "this" object is provided (even if it's null).
    INVOCATION_FLAGS_NO_CTOR_INVOKE = 0x00000008,
    // because field and method are different we can reuse the same bits
    // method
    INVOCATION_FLAGS_IS_CTOR = 0x00000010,
    INVOCATION_FLAGS_RISKY_METHOD = 0x00000020,
    INVOCATION_FLAGS_NON_W8P_FX_API = 0x00000040,
    INVOCATION_FLAGS_IS_DELEGATE_CTOR = 0x00000080,
    INVOCATION_FLAGS_CONTAINS_STACK_POINTERS = 0x00000100,
    // field
    INVOCATION_FLAGS_SPECIAL_FIELD = 0x00000010,
    INVOCATION_FLAGS_FIELD_SPECIAL_CAST = 0x00000020,
    // temporary flag used for flagging invocation of method vs ctor
    // this flag never appears on the instance m_invocationFlag and is simply
    // passed down from within ConstructorInfo.Invoke()
    INVOCATION_FLAGS_CONSTRUCTOR_INVOKE = 0x10000000,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_MethodBase)*/)
// #pragma warning disable 618
@__DotNet__Attribute!(PermissionSetAttribute.stringof/*, SecurityAction.InheritanceDemand, Name = "FullTrust"*/)
// #pragma warning restore 618
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum ExceptionHandlingClauseOptions : int
{
    Clause = 0x0,
    Filter = 0x1,
    Finally = 0x2,
    Fault = 0x4,
}
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class ExceptionHandlingClause : __DotNet__Object
{
    //TODO: generate constructor
    private MethodBody m_methodBody;
    @__DotNet__Attribute!(ContractPublicPropertyNameAttribute.stringof/*, "Flags"*/)
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
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class MethodBody : __DotNet__Object
{
    //TODO: generate constructor
    private ubyte[] m_IL;
    private ExceptionHandlingClause[] m_exceptionHandlingClauses;
    private LocalVariableInfo[] m_localVariables;
    package(mscorlib) MethodBase m_methodBase;
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
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class LocalVariableInfo : __DotNet__Object
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
// This Enum matchs the CorMethodImpl defined in CorHdr.h
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum MethodImplAttributes
{
    // code impl mask
    CodeTypeMask = 0x0003,
    IL = 0x0000,
    Native = 0x0001,
    /// <internalonly/>
    OPTIL = 0x0002,
    Runtime = 0x0003,
    // end code impl mask
    // managed mask
    ManagedMask = 0x0004,
    Unmanaged = 0x0004,
    Managed = 0x0000,
    // end managed mask
    // implementation info and interop
    ForwardRef = 0x0010,
    PreserveSig = 0x0080,
    InternalCall = 0x1000,
    Synchronized = 0x0020,
    NoInlining = 0x0008,
    AggressiveInlining = 0x0100,
    NoOptimization = 0x0040,
    MaxMethodImplVal = 0xFFFF,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\MethodInfo.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_MethodInfo)*/)
// #pragma warning disable 618
@__DotNet__Attribute!(PermissionSetAttribute.stringof/*, SecurityAction.InheritanceDemand, Name = "FullTrust"*/)
// #pragma warning restore 618
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class RuntimeMethodInfo : MethodInfo, ISerializable, IRuntimeMethodInfo
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
    private __DotNet__Object m_keepalive;
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
// This is not serializable because it is a reflection command.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class Missing : __DotNet__Object, ISerializable
{
    public static immutable Missing Value/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method GetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Module.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum PortableExecutableKinds
{
    NotAPortableExecutableImage = 0x0,
    ILOnly = 0x1,
    Required32Bit = 0x2,
    PE32Plus = 0x4,
    Unmanaged32Bit = 0x8,
    Preferred32Bit = 0x10,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum ImageFileMachine
{
    I386 = 0x014c,
    IA64 = 0x0200,
    AMD64 = 0x8664,
    ARM = 0x01c4,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_Module)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
// #pragma warning disable 618
@__DotNet__Attribute!(PermissionSetAttribute.stringof/*, SecurityAction.InheritanceDemand, Unrestricted = true*/)
public abstract class Module : __DotNet__Object, _Module, ISerializable, ICustomAttributeProvider
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class RuntimeModule : Module
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
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, AllowMultiple=false, Inherited=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Method | AttributeTargets.Parameter | AttributeTargets.Field | AttributeTargets.Property | AttributeTargets.Event | AttributeTargets.Interface | AttributeTargets.Enum | AttributeTargets.Delegate, AllowMultiple = true, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
// This Enum matchs the CorParamAttr defined in CorHdr.h
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum ParameterAttributes
{
    None = 0x0000,
    In = 0x0001,
    Out = 0x0002,
    Lcid = 0x0004,
    Retval = 0x0008,
    Optional = 0x0010,
    // Reserved flags for Runtime use only.
    ReservedMask = 0xf000,
    HasDefault = 0x1000,
    HasFieldMarshal = 0x2000,
    Reserved3 = 0x4000,
    Reserved4 = 0x8000,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\ParameterInfo.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_ParameterInfo)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class ParameterInfo : __DotNet__Object, _ParameterInfo, ICustomAttributeProvider, IObjectReference
{
    protected String NameImpl;
    protected Type ClassImpl;
    protected int PositionImpl;
    protected ParameterAttributes AttrsImpl;
    protected __DotNet__Object DefaultValueImpl;
    protected MemberInfo MemberImpl;
    // #endregion
    // #region Legacy Private Members
    // These are here only for backwards compatibility -- they are not set
    // until this instance is serialized, so don't rely on their values from
    // arbitrary code.
    // #pragma warning disable 169
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof)
    private IntPtr _importer;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof)
    private int _token;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class RuntimeParameterInfo : ParameterInfo, ISerializable
{
    //TODO: generate method GetParameters
    //TODO: generate method GetReturnParameter
    //TODO: generate method GetParameters
    private static immutable Type s_DecimalConstantAttributeType/*todo: implement initializer*/ = null;
    private static immutable Type s_CustomConstantAttributeType/*todo: implement initializer*/ = null;
    // #endregion
    // #region Private Data Members
    // These are new in Whidbey, so we cannot serialize them directly or we break backwards compatibility.
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private int m_tkParamDef;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private MetadataImport m_scope;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private Signature m_signature;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private /*todo: volatile*/ bool m_nameIsCached/*todo: implement initializer*/ = bool();
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private immutable bool m_noMetadata/*todo: implement initializer*/ = bool();
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private bool m_noDefaultValue/*todo: implement initializer*/ = bool();
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class Pointer : __DotNet__Object, ISerializable
{
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
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
// This Enum matchs the CorPropertyAttr defined in CorHdr.h
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum PropertyAttributes
{
    None = 0x0000,
    SpecialName = 0x0200,
    // Reserved flags for Runtime use only.
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_PropertyInfo)*/)
// #pragma warning disable 618
@__DotNet__Attribute!(PermissionSetAttribute.stringof/*, SecurityAction.InheritanceDemand, Name = "FullTrust"*/)
// #pragma warning restore 618
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class RuntimePropertyInfo : PropertyInfo, ISerializable
{
    private int m_token;
    private String m_name;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
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
public abstract class ReflectionContext : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method MapAssembly
    //TODO: generate method MapType
    //TODO: generate method GetTypeForObject
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\ReflectionTypeLoadException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ReflectionTypeLoadException : SystemException, ISerializable
{
    private Type[] _classes;
    private __DotNet__Exception[] _exceptions;
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum ResourceAttributes
{
    Public = 0x0001,
    Private = 0x0002,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\RuntimeReflectionExtensions.cs'
//
public class RuntimeReflectionExtensions : __DotNet__Object
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
public class StrongNameKeyPair : __DotNet__Object
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\TargetException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class TargetException : __DotNet__Exception
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\TargetInvocationException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class TargetInvocationException : __DotNet__Exception
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class TargetParameterCountException : __DotNet__Exception
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\TypeAttributes.cs'
//
// This Enum matchs the CorTypeAttr defined in CorHdr.h
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
    // Use this mask to retrieve class layout informaiton
    // 0 is AutoLayout, 0x2 is SequentialLayout, 4 is ExplicitLayout
    LayoutMask = 0x00000018,
    AutoLayout = 0x00000000,
    SequentialLayout = 0x00000008,
    ExplicitLayout = 0x00000010,
    // end layout mask
    // Use this mask to distinguish whether a type declaration is an interface.  (Class vs. ValueType done based on whether it subclasses S.ValueType)
    ClassSemanticsMask = 0x00000020,
    Class = 0x00000000,
    Interface = 0x00000020,
    // Special semantics in addition to class semantics.
    Abstract = 0x00000080,
    Sealed = 0x00000100,
    SpecialName = 0x00000400,
    // Implementation attributes.
    Import = 0x00001000,
    Serializable = 0x00002000,
    WindowsRuntime = 0x00004000,
    // Use tdStringFormatMask to retrieve string information for native interop
    StringFormatMask = 0x00030000,
    AnsiClass = 0x00000000,
    UnicodeClass = 0x00010000,
    AutoClass = 0x00020000,
    CustomFormatClass = 0x00030000,
    CustomFormatMask = 0x00C00000,
    // end string format mask
    BeforeFieldInit = 0x00100000,
    // Flags reserved for runtime use.
    ReservedMask = 0x00040800,
    RTSpecialName = 0x00000800,
    HasSecurity = 0x00040000,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\TypeDelegator.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class TypeDelegator : __DotNet__TypeInfo
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
// Define the delegate
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public alias TypeFilter = bool delegate(Type m, __DotNet__Object filterCriteria);

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\TypeInfo.cs'
//
//all today's runtime Type derivations derive now from TypeInfo
//we make TypeInfo implement IRCT - simplifies work
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public abstract class __DotNet__TypeInfo : Type, IReflectableType
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
package(mscorlib) struct CerHashtable2(K,V)
{
    private static class Table : __DotNet__Object
    {
        package(mscorlib) K[] m_keys;
        package(mscorlib) V[] m_values;
        package(mscorlib) int m_count;
        //TODO: generate constructor
        //TODO: generate method Insert
    }
    private Table m_Table;
    private enum int MinSize/*todo: implement initializer*/ = int();
    //TODO: generate method GetHashCodeHelper
    //TODO: generate method Rehash
    //TODO: generate indexer
}
