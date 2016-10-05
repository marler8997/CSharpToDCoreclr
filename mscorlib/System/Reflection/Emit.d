module mscorlib.System.Reflection.Emit;

import mscorlib.System :
    __DotNet__Object,
    IntPtr,
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    FlagsAttribute,
    String,
    SerializableAttribute,
    Type,
    Resolver,
    RuntimeMethodHandleInternal,
    RuntimeMethodHandle,
    RuntimeTypeHandle,
    RuntimeFieldHandle,
    RuntimeType,
    IRuntimeMethodInfo,
    Guid,
    Void,
    IEquatable1,
    NonSerializedAttribute,
    ObsoleteAttribute;
import mscorlib.System.Reflection :
    RuntimeAssembly,
    Assembly,
    ConstructorInfo,
    MethodInfo,
    ResourceAttributes,
    RuntimeMethodInfo,
    RuntimeModule,
    ParameterInfo,
    MethodAttributes,
    CallingConventions,
    ICustomAttributeProvider,
    __DotNet__TypeInfo,
    EventAttributes,
    FieldInfo,
    FieldAttributes,
    LocalVariableInfo,
    MethodImplAttributes,
    ExceptionHandlingClauseOptions,
    Module,
    ParameterAttributes,
    PropertyInfo,
    PropertyAttributes,
    TypeAttributes,
    GenericParameterAttributes;
import mscorlib.System.Security.Permissions :
    HostProtectionAttribute;
import mscorlib.System.Runtime.InteropServices :
    ClassInterfaceAttribute,
    ComDefaultInterfaceAttribute,
    ComVisibleAttribute,
    _AssemblyBuilder,
    _ConstructorBuilder,
    _CustomAttributeBuilder,
    _EnumBuilder,
    _EventBuilder,
    _FieldBuilder,
    _ILGenerator,
    StructLayoutAttribute,
    SafeHandle,
    _LocalBuilder,
    _MethodBuilder,
    _ModuleBuilder,
    _ParameterBuilder,
    _PropertyBuilder,
    _SignatureHelper,
    _TypeBuilder,
    UnmanagedType;
import mscorlib.System.Collections.Generic :
    List1,
    Dictionary2;
import mscorlib.System.Security :
    PermissionSet,
    SecurityCriticalAttribute;
import mscorlib.System.Resources :
    IResourceWriter;
import mscorlib.System.IO :
    Stream;
import mscorlib.System.Diagnostics.SymbolStore :
    ISymbolDocumentWriter,
    ISymbolWriter;
import mscorlib.System.Collections :
    Hashtable;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\AQNBuilder.cs'
//
package(mscorlib) class TypeNameBuilder : __DotNet__Object
{
    package(mscorlib) enum Format
    {
        ToString,
        FullName,
        AssemblyQualifiedName,
    }
    //TODO: generate method CreateTypeNameBuilder
    //TODO: generate method ReleaseTypeNameBuilder
    //TODO: generate method OpenGenericArguments
    //TODO: generate method CloseGenericArguments
    //TODO: generate method OpenGenericArgument
    //TODO: generate method CloseGenericArgument
    //TODO: generate method AddName
    //TODO: generate method AddPointer
    //TODO: generate method AddByRef
    //TODO: generate method AddSzArray
    //TODO: generate method AddArray
    //TODO: generate method AddAssemblySpec
    //TODO: generate method ToString
    //TODO: generate method Clear
    //TODO: generate method ToString
    private IntPtr m_typeNameBuilder;
    //TODO: generate constructor
    //TODO: generate method Dispose
    //TODO: generate method AddElementType
    //TODO: generate method ConstructAssemblyQualifiedNameWorker
    //TODO: generate method OpenGenericArguments
    //TODO: generate method CloseGenericArguments
    //TODO: generate method OpenGenericArgument
    //TODO: generate method CloseGenericArgument
    //TODO: generate method AddName
    //TODO: generate method AddPointer
    //TODO: generate method AddByRef
    //TODO: generate method AddSzArray
    //TODO: generate method AddArray
    //TODO: generate method AddAssemblySpec
    //TODO: generate method ToString
    //TODO: generate method Clear
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\AssemblyBuilder.cs'
//
// These must match the definitions in Assembly.hpp
@__DotNet__Attribute!(FlagsAttribute.stringof)
package(mscorlib) enum DynamicAssemblyFlags
{
    None = 0x00000000,
    // Security attributes which affect the module security descriptor
    AllCritical = 0x00000001,
    Aptca = 0x00000002,
    Critical = 0x00000004,
    Transparent = 0x00000008,
    TreatAsSafe = 0x00000010,
}
package(mscorlib) final class InternalAssemblyBuilder : RuntimeAssembly
{
    //TODO: generate constructor
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetManifestResourceNames
    //TODO: generate method GetFile
    //TODO: generate method GetFiles
    //TODO: generate method GetManifestResourceStream
    //TODO: generate method GetManifestResourceStream
    //TODO: generate method GetManifestResourceInfo
    //TODO: generate property 'Location'
    //TODO: generate property 'CodeBase'
    //TODO: generate method GetExportedTypes
    //TODO: generate property 'ImageRuntimeVersion'
}
// AssemblyBuilder class.
// deliberately not [serializable]
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_AssemblyBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AssemblyBuilder : Assembly, _AssemblyBuilder
{
    //TODO: generate method GetInMemoryAssemblyModule
    //TODO: generate method nGetInMemoryAssemblyModule
    package(mscorlib) AssemblyBuilderData m_assemblyData;
    private InternalAssemblyBuilder m_internalAssemblyBuilder;
    private ModuleBuilder m_manifestModuleBuilder;
    private bool m_fManifestModuleUsedAsDefinedModule;
    package(mscorlib) enum String MANIFEST_MODULE_NAME/*todo: implement initializer*/ = null;
    private bool m_profileAPICheck;
    //TODO: generate method GetModuleBuilder
    //TODO: generate property 'SyncRoot'
    //TODO: generate property 'InternalAssembly'
    //TODO: generate method GetNativeHandle
    //TODO: generate method GetVersion
    //TODO: generate property 'ProfileAPICheck'
    //TODO: generate constructor
    //TODO: generate method InitManifestModule
    //TODO: generate method DefineDynamicAssembly
    //TODO: generate method DefineDynamicAssembly
    //TODO: generate method nCreateDynamicAssembly
    private static class AssemblyBuilderLock : __DotNet__Object
    {
    }
    //TODO: generate method InternalDefineDynamicAssembly
    //TODO: generate method DefineDynamicModule
    //TODO: generate method DefineDynamicModule
    //TODO: generate method DefineDynamicModuleInternal
    //TODO: generate method DefineDynamicModuleInternalNoLock
    //TODO: generate method LoadISymWrapper
    //TODO: generate method CheckContext
    //TODO: generate method CheckContext
    //TODO: generate method AddResourceFile
    //TODO: generate method AddResourceFile
    //TODO: generate method AddResourceFileNoLock
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributesData
    //TODO: generate method GetManifestResourceNames
    //TODO: generate method GetFile
    //TODO: generate method GetFiles
    //TODO: generate method GetManifestResourceStream
    //TODO: generate method GetManifestResourceStream
    //TODO: generate method GetManifestResourceInfo
    //TODO: generate property 'Location'
    //TODO: generate property 'ImageRuntimeVersion'
    //TODO: generate property 'CodeBase'
    //TODO: generate property 'EntryPoint'
    //TODO: generate method GetExportedTypes
    //TODO: generate method GetName
    //TODO: generate property 'FullName'
    //TODO: generate method GetType
    //TODO: generate property 'ManifestModule'
    //TODO: generate property 'ReflectionOnly'
    //TODO: generate method GetModule
    //TODO: generate method GetReferencedAssemblies
    //TODO: generate property 'GlobalAssemblyCache'
    //TODO: generate property 'HostContext'
    //TODO: generate method GetModules
    //TODO: generate method GetLoadedModules
    //TODO: generate method GetSatelliteAssembly
    //TODO: generate method GetSatelliteAssembly
    //TODO: generate property 'IsDynamic'
    //TODO: generate method DefineVersionInfoResource
    //TODO: generate method DefineVersionInfoResourceNoLock
    //TODO: generate method DefineVersionInfoResource
    //TODO: generate method DefineVersionInfoResourceNoLock
    //TODO: generate method DefineUnmanagedResource
    //TODO: generate method DefineUnmanagedResourceNoLock
    //TODO: generate method DefineUnmanagedResource
    //TODO: generate method DefineUnmanagedResourceNoLock
    //TODO: generate method GetDynamicModule
    //TODO: generate method GetDynamicModuleNoLock
    //TODO: generate method SetEntryPoint
    //TODO: generate method SetEntryPoint
    //TODO: generate method SetEntryPointNoLock
    //TODO: generate method SetCustomAttribute
    //TODO: generate method SetCustomAttributeNoLock
    //TODO: generate method SetCustomAttribute
    //TODO: generate method SetCustomAttributeNoLock
    //TODO: generate method Save
    //TODO: generate method Save
    //TODO: generate method SaveNoLock
    //TODO: generate method IsPersistable
    //TODO: generate method DefineNestedComType
    //TODO: generate method DefineExportedTypeInMemory
    //TODO: generate constructor
    //TODO: generate method DefineDynamicModule
    //TODO: generate method DefineDynamicModule
    //TODO: generate method PrepareForSavingManifestToDisk
    //TODO: generate method SaveManifestToDisk
    //TODO: generate method AddFile
    //TODO: generate method SetFileHashValue
    //TODO: generate method AddExportedTypeInMemory
    //TODO: generate method AddExportedTypeOnDisk
    //TODO: generate method AddStandAloneResource
    //TODO: generate method AddDeclarativeSecurity
    //TODO: generate method CreateVersionInfoResource
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\AssemblyBuilderAccess.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(FlagsAttribute.stringof)
public enum AssemblyBuilderAccess
{
    Run = 1,
    // #if !FEATURE_CORECLR // these are unsupported
    // Save = 2,
    // RunAndSave = Run | Save,
    // #endif // !FEATURE_CORECLR
    // #if FEATURE_REFLECTION_ONLY_LOAD
    // ReflectionOnly = 6, // 4 | Save,
    // #endif // FEATURE_REFLECTION_ONLY_LOAD
    // #if FEATURE_COLLECTIBLE_TYPES
    RunAndCollect = 8 | Run,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\AssemblyBuilderData.cs'
//
package(mscorlib) class AssemblyBuilderData : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method AddModule
    //TODO: generate method AddResWriter
    //TODO: generate method AddCustomAttribute
    //TODO: generate method AddCustomAttribute
    //TODO: generate method FillUnmanagedVersionInfo
    //TODO: generate method CheckResNameConflict
    //TODO: generate method CheckNameConflict
    //TODO: generate method CheckTypeNameConflict
    //TODO: generate method CheckFileNameConflict
    //TODO: generate method FindModuleWithFileName
    //TODO: generate method FindModuleWithName
    //TODO: generate method AddPublicComType
    //TODO: generate method AddPermissionRequests
    //TODO: generate method EnsurePublicComTypeCapacity
    package(mscorlib) List1!(ModuleBuilder) m_moduleBuilderList;
    package(mscorlib) List1!(ResWriterData) m_resWriterList;
    package(mscorlib) String m_strAssemblyName;
    package(mscorlib) AssemblyBuilderAccess m_access;
    private InternalAssemblyBuilder m_assembly;
    package(mscorlib) Type[] m_publicComTypeList;
    package(mscorlib) int m_iPublicComTypeCount;
    package(mscorlib) bool m_isSaved;
    package(mscorlib) enum int m_iInitialSize/*todo: implement initializer*/ = int();
    package(mscorlib) String m_strDir;
    package(mscorlib) enum int m_tkAssembly/*todo: implement initializer*/ = int();
    package(mscorlib) PermissionSet m_RequiredPset;
    package(mscorlib) PermissionSet m_OptionalPset;
    package(mscorlib) PermissionSet m_RefusedPset;
    package(mscorlib) CustomAttributeBuilder[] m_CABuilders;
    package(mscorlib) int m_iCABuilder;
    package(mscorlib) ubyte[][] m_CABytes;
    package(mscorlib) ConstructorInfo[] m_CACons;
    package(mscorlib) int m_iCAs;
    package(mscorlib) PEFileKinds m_peFileKind;
    package(mscorlib) MethodInfo m_entryPointMethod;
    package(mscorlib) Assembly m_ISymWrapperAssembly;
    package(mscorlib) String m_strResourceFileName;
    package(mscorlib) ubyte[] m_resourceBytes;
    package(mscorlib) NativeVersionInfo m_nativeVersion;
    package(mscorlib) bool m_hasUnmanagedVersionInfo;
    package(mscorlib) bool m_OverrideUnmanagedVersionInfo;
}
package(mscorlib) class ResWriterData : __DotNet__Object
{
    //TODO: generate constructor
    package(mscorlib) IResourceWriter m_resWriter;
    package(mscorlib) String m_strName;
    package(mscorlib) String m_strFileName;
    package(mscorlib) String m_strFullFileName;
    package(mscorlib) Stream m_memoryStream;
    package(mscorlib) ResWriterData m_nextResWriter;
    package(mscorlib) ResourceAttributes m_attribute;
}
package(mscorlib) class NativeVersionInfo : __DotNet__Object
{
    //TODO: generate constructor
    package(mscorlib) String m_strDescription;
    package(mscorlib) String m_strCompany;
    package(mscorlib) String m_strTitle;
    package(mscorlib) String m_strCopyright;
    package(mscorlib) String m_strTrademark;
    package(mscorlib) String m_strProduct;
    package(mscorlib) String m_strProductVersion;
    package(mscorlib) String m_strFileVersion;
    package(mscorlib) int m_lcid;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\ConstructorBuilder.cs'
//
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_ConstructorBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ConstructorBuilder : ConstructorInfo, _ConstructorBuilder
{
    private immutable MethodBuilder m_methodBuilder;
    package(mscorlib) bool m_isDefaultConstructor;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetParameterTypes
    //TODO: generate method GetTypeBuilder
    //TODO: generate method GetModuleBuilder
    //TODO: generate method ToString
    //TODO: generate property 'MetadataTokenInternal'
    //TODO: generate property 'Module'
    //TODO: generate property 'ReflectedType'
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'Name'
    //TODO: generate method Invoke
    //TODO: generate method GetParameters
    //TODO: generate property 'Attributes'
    //TODO: generate method GetMethodImplementationFlags
    //TODO: generate property 'MethodHandle'
    //TODO: generate method Invoke
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetToken
    //TODO: generate method DefineParameter
    //TODO: generate method SetSymCustomAttribute
    //TODO: generate method GetILGenerator
    //TODO: generate method GetILGenerator
    //TODO: generate method SetMethodBody
    //TODO: generate property 'CallingConvention'
    //TODO: generate method GetModule
    //TODO: generate property 'ReturnType'
    //TODO: generate method GetReturnType
    //TODO: generate property 'Signature'
    //TODO: generate method SetCustomAttribute
    //TODO: generate method SetCustomAttribute
    //TODO: generate method SetImplementationFlags
    //TODO: generate property 'InitLocals'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\CustomAttributeBuilder.cs'
//
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_CustomAttributeBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class CustomAttributeBuilder : __DotNet__Object, _CustomAttributeBuilder
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method ValidateType
    //TODO: generate method InitCustomAttributeBuilder
    //TODO: generate method EmitType
    //TODO: generate method EmitString
    //TODO: generate method EmitValue
    //TODO: generate method CreateCustomAttribute
    //TODO: generate method PrepareCreateCustomAttributeToDisk
    //TODO: generate method CreateCustomAttribute
    package(mscorlib) ConstructorInfo m_con;
    package(mscorlib) __DotNet__Object[] m_constructorArgs;
    package(mscorlib) ubyte[] m_blob;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\DynamicILGenerator.cs'
//
package(mscorlib) class DynamicILGenerator : ILGenerator
{
    package(mscorlib) DynamicScope m_scope;
    private int m_methodSigToken;
    //TODO: generate constructor
    //TODO: generate method GetCallableMethod
    //TODO: generate property 'ProfileAPICheck'
    //TODO: generate method DeclareLocal
    //TODO: generate method Emit
    //TODO: generate method Emit
    //TODO: generate method Emit
    //TODO: generate method Emit
    //TODO: generate method Emit
    //TODO: generate method EmitCalli
    //TODO: generate method EmitCalli
    //TODO: generate method EmitCall
    //TODO: generate method Emit
    //TODO: generate method BeginExceptionBlock
    //TODO: generate method EndExceptionBlock
    //TODO: generate method BeginExceptFilterBlock
    //TODO: generate method BeginCatchBlock
    //TODO: generate method BeginFaultBlock
    //TODO: generate method BeginFinallyBlock
    //TODO: generate method UsingNamespace
    //TODO: generate method MarkSequencePoint
    //TODO: generate method BeginScope
    //TODO: generate method EndScope
    //TODO: generate method GetMemberRefToken
    //TODO: generate method GetMemberRefSignature
    //TODO: generate method RecordTokenFixup
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenForVarArgMethod
    //TODO: generate method GetTokenForVarArgMethod
    //TODO: generate method GetTokenForString
    //TODO: generate method GetTokenForSig
}
package(mscorlib) class DynamicResolver : Resolver
{
    private __ExceptionInfo[] m_exceptions;
    private ubyte[] m_exceptionHeader;
    private DynamicMethod m_method;
    private ubyte[] m_code;
    private ubyte[] m_localSignature;
    private int m_stackSize;
    private DynamicScope m_scope;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate destructor
    private static class DestroyScout : __DotNet__Object
    {
        package(mscorlib) RuntimeMethodHandleInternal m_methodHandle;
        //TODO: generate destructor
    }
    // Keep in sync with vm/dynamicmethod.h
    @__DotNet__Attribute!(FlagsAttribute.stringof)
    package(mscorlib) enum SecurityControlFlags
    {
        Default = 0x0,
        SkipVisibilityChecks = 0x1,
        RestrictedSkipVisibilityChecks = 0x2,
        HasCreationContext = 0x4,
        CanSkipCSEvaluation = 0x8,
    }
    //TODO: generate method GetJitContext
    //TODO: generate method CalculateNumberOfExceptions
    //TODO: generate method GetCodeInfo
    //TODO: generate method GetLocalsSignature
    //TODO: generate method GetRawEHInfo
    //TODO: generate method GetEHInfo
    //TODO: generate method GetStringLiteral
    //TODO: generate method ResolveToken
    //TODO: generate method ResolveSignature
    //TODO: generate method GetDynamicMethod
}
// #if FEATURE_CORECLR
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
// #endif
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class DynamicILInfo : __DotNet__Object
{
    private DynamicMethod m_method;
    private DynamicScope m_scope;
    private ubyte[] m_exceptions;
    private ubyte[] m_code;
    private ubyte[] m_localSignature;
    private int m_maxStackSize;
    private int m_methodSignature;
    //TODO: generate constructor
    //TODO: generate method GetCallableMethod
    //TODO: generate property 'LocalSignature'
    //TODO: generate property 'Exceptions'
    //TODO: generate property 'Code'
    //TODO: generate property 'MaxStackSize'
    //TODO: generate property 'DynamicMethod'
    //TODO: generate property 'DynamicScope'
    //TODO: generate method SetCode
    //TODO: generate method SetCode
    //TODO: generate method SetExceptions
    //TODO: generate method SetExceptions
    //TODO: generate method SetLocalSignature
    //TODO: generate method SetLocalSignature
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
}
package(mscorlib) class DynamicScope : __DotNet__Object
{
    package(mscorlib) List1!(__DotNet__Object) m_tokens;
    //TODO: generate constructor
    //TODO: generate indexer
    //TODO: generate method GetTokenFor
    //TODO: generate method GetString
    //TODO: generate method ResolveSignature
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
    //TODO: generate method GetTokenFor
}
package(mscorlib) final class GenericMethodInfo : __DotNet__Object
{
    package(mscorlib) RuntimeMethodHandle m_methodHandle;
    package(mscorlib) RuntimeTypeHandle m_context;
    //TODO: generate constructor
}
package(mscorlib) final class GenericFieldInfo : __DotNet__Object
{
    package(mscorlib) RuntimeFieldHandle m_fieldHandle;
    package(mscorlib) RuntimeTypeHandle m_context;
    //TODO: generate constructor
}
package(mscorlib) final class VarArgMethod : __DotNet__Object
{
    package(mscorlib) RuntimeMethodInfo m_method;
    package(mscorlib) DynamicMethod m_dynamicMethod;
    package(mscorlib) SignatureHelper m_signature;
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\DynamicMethod.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class DynamicMethod : MethodInfo
{
    private RuntimeType[] m_parameterTypes;
    package(mscorlib) IRuntimeMethodInfo m_methodHandle;
    private RuntimeType m_returnType;
    private DynamicILGenerator m_ilGenerator;
    // #if FEATURE_CORECLR
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private DynamicILInfo m_DynamicILInfo;
    private bool m_fInitLocals;
    private RuntimeModule m_module;
    package(mscorlib) bool m_skipVisibility;
    package(mscorlib) RuntimeType m_typeOwner;
    private RTDynamicMethod m_dynMethod;
    package(mscorlib) DynamicResolver m_resolver;
    private bool m_profileAPICheck;
    private RuntimeAssembly m_creatorAssembly;
    package(mscorlib) bool m_restrictedSkipVisibility;
    private static /*todo: volatile*/ InternalModuleBuilder s_anonymouslyHostedDynamicMethodsModule;
    private static immutable __DotNet__Object s_anonymouslyHostedDynamicMethodsModuleLock/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CheckConsistency
    //TODO: generate method GetDynamicMethodsModule
    //TODO: generate method Init
    //TODO: generate method PerformSecurityCheck
    //TODO: generate method PerformSecurityCheck
    //TODO: generate method CreateDelegate
    //TODO: generate method CreateDelegate
    //TODO: generate property 'ProfileAPICheck'
    //TODO: generate method GetMethodDescriptor
    //TODO: generate method ToString
    //TODO: generate property 'Name'
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'ReflectedType'
    //TODO: generate property 'Module'
    //TODO: generate property 'MethodHandle'
    //TODO: generate property 'Attributes'
    //TODO: generate property 'CallingConvention'
    //TODO: generate method GetBaseDefinition
    //TODO: generate method GetParameters
    //TODO: generate method GetMethodImplementationFlags
    //TODO: generate property 'IsSecurityCritical'
    //TODO: generate property 'IsSecuritySafeCritical'
    //TODO: generate property 'IsSecurityTransparent'
    //TODO: generate method Invoke
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate property 'ReturnType'
    //TODO: generate property 'ReturnParameter'
    //TODO: generate property 'ReturnTypeCustomAttributes'
    //TODO: generate method DefineParameter
    //TODO: generate method GetDynamicILInfo
    //TODO: generate method GetDynamicILInfo
    //TODO: generate method GetILGenerator
    //TODO: generate method GetILGenerator
    //TODO: generate property 'InitLocals'
    //TODO: generate method GetMethodInfo
    package(mscorlib) static class RTDynamicMethod : MethodInfo
    {
        package(mscorlib) DynamicMethod m_owner;
        private ParameterInfo[] m_parameters;
        private String m_name;
        private MethodAttributes m_attributes;
        private CallingConventions m_callingConvention;
        //TODO: generate constructor
        //TODO: generate constructor
        //TODO: generate method ToString
        //TODO: generate property 'Name'
        //TODO: generate property 'DeclaringType'
        //TODO: generate property 'ReflectedType'
        //TODO: generate property 'Module'
        //TODO: generate property 'MethodHandle'
        //TODO: generate property 'Attributes'
        //TODO: generate property 'CallingConvention'
        //TODO: generate method GetBaseDefinition
        //TODO: generate method GetParameters
        //TODO: generate method GetMethodImplementationFlags
        //TODO: generate method Invoke
        //TODO: generate method GetCustomAttributes
        //TODO: generate method GetCustomAttributes
        //TODO: generate method IsDefined
        //TODO: generate property 'IsSecurityCritical'
        //TODO: generate property 'IsSecuritySafeCritical'
        //TODO: generate property 'IsSecurityTransparent'
        //TODO: generate property 'ReturnType'
        //TODO: generate property 'ReturnParameter'
        //TODO: generate property 'ReturnTypeCustomAttributes'
        //TODO: generate method LoadParameters
        //TODO: generate method GetEmptyCAHolder
        private static class EmptyCAHolder : __DotNet__Object, ICustomAttributeProvider
        {
            //TODO: generate constructor
            //TODO: generate method GetCustomAttributes
            //TODO: generate method GetCustomAttributes
            //TODO: generate method IsDefined
        }
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\EnumBuilder.cs'
//
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_EnumBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class EnumBuilder : __DotNet__TypeInfo, _EnumBuilder
{
    //TODO: generate method IsAssignableFrom
    //TODO: generate method DefineLiteral
    //TODO: generate method CreateTypeInfo
    //TODO: generate method CreateType
    //TODO: generate property 'TypeToken'
    //TODO: generate property 'UnderlyingField'
    //TODO: generate property 'Name'
    //TODO: generate property 'GUID'
    //TODO: generate method InvokeMember
    //TODO: generate property 'Module'
    //TODO: generate property 'Assembly'
    //TODO: generate property 'TypeHandle'
    //TODO: generate property 'FullName'
    //TODO: generate property 'AssemblyQualifiedName'
    //TODO: generate property 'Namespace'
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
    //TODO: generate method GetNestedTypes
    //TODO: generate method GetNestedType
    //TODO: generate method GetMember
    //TODO: generate method GetMembers
    //TODO: generate method GetInterfaceMap
    //TODO: generate method GetEvents
    //TODO: generate method GetAttributeFlagsImpl
    //TODO: generate method IsArrayImpl
    //TODO: generate method IsPrimitiveImpl
    //TODO: generate method IsValueTypeImpl
    //TODO: generate method IsByRefImpl
    //TODO: generate method IsPointerImpl
    //TODO: generate method IsCOMObjectImpl
    //TODO: generate property 'IsConstructedGenericType'
    //TODO: generate method GetElementType
    //TODO: generate method HasElementTypeImpl
    //TODO: generate method GetEnumUnderlyingType
    //TODO: generate property 'UnderlyingSystemType'
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method SetCustomAttribute
    //TODO: generate method SetCustomAttribute
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'ReflectedType'
    //TODO: generate method IsDefined
    //TODO: generate property 'MetadataTokenInternal'
    //TODO: generate constructor
    //TODO: generate method MakePointerType
    //TODO: generate method MakeByRefType
    //TODO: generate method MakeArrayType
    //TODO: generate method MakeArrayType
    //TODO: generate constructor
    package(mscorlib) TypeBuilder m_typeBuilder;
    private FieldBuilder m_underlyingField;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\EventBuilder.cs'
//
// 
// A EventBuilder is always associated with a TypeBuilder.  The TypeBuilder.DefineEvent
// method will return a new EventBuilder to a client.
// 
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_EventBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class EventBuilder : __DotNet__Object, _EventBuilder
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetEventToken
    //TODO: generate method SetMethodSemantics
    //TODO: generate method SetAddOnMethod
    //TODO: generate method SetRemoveOnMethod
    //TODO: generate method SetRaiseMethod
    //TODO: generate method AddOtherMethod
    //TODO: generate method SetCustomAttribute
    //TODO: generate method SetCustomAttribute
    private String m_name;
    private EventToken m_evToken;
    private ModuleBuilder m_module;
    private EventAttributes m_attributes;
    private TypeBuilder m_type;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\EventToken.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct EventToken
{
    public static immutable EventToken Empty/*todo: implement initializer*/ = EventToken();
    package(mscorlib) int m_event;
    //TODO: generate constructor
    //TODO: generate property 'Token'
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\FieldBuilder.cs'
//
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_FieldBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class FieldBuilder : FieldInfo, _FieldBuilder
{
    private int m_fieldTok;
    private FieldToken m_tkField;
    private TypeBuilder m_typeBuilder;
    private String m_fieldName;
    private FieldAttributes m_Attributes;
    private Type m_fieldType;
    //TODO: generate constructor
    //TODO: generate method SetData
    //TODO: generate method GetTypeBuilder
    //TODO: generate property 'MetadataTokenInternal'
    //TODO: generate property 'Module'
    //TODO: generate property 'Name'
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'ReflectedType'
    //TODO: generate property 'FieldType'
    //TODO: generate method GetValue
    //TODO: generate method SetValue
    //TODO: generate property 'FieldHandle'
    //TODO: generate property 'Attributes'
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetToken
    //TODO: generate method SetOffset
    //TODO: generate method SetMarshal
    //TODO: generate method SetConstant
    //TODO: generate method SetCustomAttribute
    //TODO: generate method SetCustomAttribute
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\FieldToken.cs'
//
// The FieldToken class is an opaque representation of the Token returned
// by the Metadata to represent the field.  FieldTokens are generated by 
// Module.GetFieldToken().  There are no meaningful accessors on this class,
// but it can be passed to ILGenerator which understands it's internals.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct FieldToken
{
    public static immutable FieldToken Empty/*todo: implement initializer*/ = FieldToken();
    package(mscorlib) int m_fieldTok;
    package(mscorlib) __DotNet__Object m_class;
    //TODO: generate constructor
    //TODO: generate property 'Token'
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\FlowControl.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum FlowControl
{
    Branch = 0,
    Break = 1,
    Call = 2,
    Cond_Branch = 3,
    Meta = 4,
    Next = 5,
    // #if !FEATURE_CORECLR
    /// <internalonly/>
    // [Obsolete("This API has been deprecated. http://go.microsoft.com/fwlink/?linkid=14202")]
    // Phi          = 6,
    // #endif
    Return = 7,
    Throw = 8,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\GenericTypeParameterBuilder.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class GenericTypeParameterBuilder : __DotNet__TypeInfo
{
    //TODO: generate method IsAssignableFrom
    package(mscorlib) TypeBuilder m_type;
    //TODO: generate constructor
    //TODO: generate method ToString
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'ReflectedType'
    //TODO: generate property 'Name'
    //TODO: generate property 'Module'
    //TODO: generate property 'MetadataTokenInternal'
    //TODO: generate method MakePointerType
    //TODO: generate method MakeByRefType
    //TODO: generate method MakeArrayType
    //TODO: generate method MakeArrayType
    //TODO: generate property 'GUID'
    //TODO: generate method InvokeMember
    //TODO: generate property 'Assembly'
    //TODO: generate property 'TypeHandle'
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
    //TODO: generate method GetNestedTypes
    //TODO: generate method GetNestedType
    //TODO: generate method GetMember
    //TODO: generate method GetInterfaceMap
    //TODO: generate method GetEvents
    //TODO: generate method GetMembers
    //TODO: generate method GetAttributeFlagsImpl
    //TODO: generate method IsArrayImpl
    //TODO: generate method IsByRefImpl
    //TODO: generate method IsPointerImpl
    //TODO: generate method IsPrimitiveImpl
    //TODO: generate method IsCOMObjectImpl
    //TODO: generate method GetElementType
    //TODO: generate method HasElementTypeImpl
    //TODO: generate property 'UnderlyingSystemType'
    //TODO: generate method GetGenericArguments
    //TODO: generate property 'IsGenericTypeDefinition'
    //TODO: generate property 'IsGenericType'
    //TODO: generate property 'IsGenericParameter'
    //TODO: generate property 'IsConstructedGenericType'
    //TODO: generate property 'GenericParameterPosition'
    //TODO: generate property 'ContainsGenericParameters'
    //TODO: generate property 'GenericParameterAttributes'
    //TODO: generate property 'DeclaringMethod'
    //TODO: generate method GetGenericTypeDefinition
    //TODO: generate method MakeGenericType
    //TODO: generate method IsValueTypeImpl
    //TODO: generate method IsAssignableFrom
    //TODO: generate method IsSubclassOf
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method SetCustomAttribute
    //TODO: generate method SetCustomAttribute
    //TODO: generate method SetBaseTypeConstraint
    //TODO: generate method SetInterfaceConstraints
    //TODO: generate method SetGenericParameterAttributes
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\ILGenerator.cs'
//
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_ILGenerator)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class ILGenerator : __DotNet__Object, _ILGenerator
{
    private enum int defaultSize/*todo: implement initializer*/ = int();
    private enum int DefaultFixupArraySize/*todo: implement initializer*/ = int();
    private enum int DefaultLabelArraySize/*todo: implement initializer*/ = int();
    private enum int DefaultExceptionArraySize/*todo: implement initializer*/ = int();
    //TODO: generate method EnlargeArray
    //TODO: generate method EnlargeArray
    //TODO: generate method EnlargeArray
    //TODO: generate method EnlargeArray
    private int m_length;
    private ubyte[] m_ILStream;
    private int[] m_labelList;
    private int m_labelCount;
    private __FixupData[] m_fixupData;
    private int m_fixupCount;
    private int[] m_RelocFixupList;
    private int m_RelocFixupCount;
    private int m_exceptionCount;
    private int m_currExcStackCount;
    private __ExceptionInfo[] m_exceptions;
    private __ExceptionInfo[] m_currExcStack;
    package(mscorlib) ScopeTree m_ScopeTree;
    package(mscorlib) LineNumberInfo m_LineNumberInfo;
    package(mscorlib) MethodInfo m_methodBuilder;
    package(mscorlib) int m_localCount;
    package(mscorlib) SignatureHelper m_localSignature;
    private int m_maxStackSize/*todo: implement initializer*/ = int();
    private int m_maxMidStack/*todo: implement initializer*/ = int();
    private int m_maxMidStackCur/*todo: implement initializer*/ = int();
    //TODO: generate property 'CurrExcStackCount'
    //TODO: generate property 'CurrExcStack'
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method RecordTokenFixup
    //TODO: generate method InternalEmit
    //TODO: generate method UpdateStackSize
    //TODO: generate method GetMethodToken
    //TODO: generate method GetMemberRefSignature
    //TODO: generate method GetMemberRefSignature
    //TODO: generate method BakeByteArray
    //TODO: generate method GetExceptions
    //TODO: generate method EnsureCapacity
    //TODO: generate method PutInteger4
    //TODO: generate method PutInteger4InArray
    //TODO: generate method GetLabelPos
    //TODO: generate method AddFixup
    //TODO: generate method GetMaxStackSize
    //TODO: generate method SortExceptions
    //TODO: generate method GetTokenFixups
    //TODO: generate method Emit
    //TODO: generate method Emit
    //TODO: generate method Emit
    //TODO: generate method Emit
    //TODO: generate method Emit
    //TODO: generate method Emit
    //TODO: generate method EmitCalli
    //TODO: generate method EmitCalli
    //TODO: generate method EmitCall
    //TODO: generate method Emit
    //TODO: generate method Emit
    //TODO: generate method Emit
    //TODO: generate method Emit
    //TODO: generate method Emit
    //TODO: generate method Emit
    //TODO: generate method Emit
    //TODO: generate method Emit
    //TODO: generate method Emit
    //TODO: generate method Emit
    //TODO: generate method Emit
    //TODO: generate method BeginExceptionBlock
    //TODO: generate method EndExceptionBlock
    //TODO: generate method BeginExceptFilterBlock
    //TODO: generate method BeginCatchBlock
    //TODO: generate method BeginFaultBlock
    //TODO: generate method BeginFinallyBlock
    //TODO: generate method DefineLabel
    //TODO: generate method MarkLabel
    //TODO: generate method ThrowException
    //TODO: generate method GetConsoleType
    //TODO: generate method EmitWriteLine
    //TODO: generate method EmitWriteLine
    //TODO: generate method EmitWriteLine
    //TODO: generate method DeclareLocal
    //TODO: generate method DeclareLocal
    //TODO: generate method UsingNamespace
    //TODO: generate method MarkSequencePoint
    //TODO: generate method BeginScope
    //TODO: generate method EndScope
    //TODO: generate property 'ILOffset'
}
package(mscorlib) struct __FixupData
{
    package(mscorlib) Label m_fixupLabel;
    package(mscorlib) int m_fixupPos;
    package(mscorlib) int m_fixupInstSize;
}
package(mscorlib) final class __ExceptionInfo : __DotNet__Object
{
    package(mscorlib) enum int None/*todo: implement initializer*/ = int();
    package(mscorlib) enum int Filter/*todo: implement initializer*/ = int();
    package(mscorlib) enum int Finally/*todo: implement initializer*/ = int();
    package(mscorlib) enum int Fault/*todo: implement initializer*/ = int();
    package(mscorlib) enum int PreserveStack/*todo: implement initializer*/ = int();
    package(mscorlib) enum int State_Try/*todo: implement initializer*/ = int();
    package(mscorlib) enum int State_Filter/*todo: implement initializer*/ = int();
    package(mscorlib) enum int State_Catch/*todo: implement initializer*/ = int();
    package(mscorlib) enum int State_Finally/*todo: implement initializer*/ = int();
    package(mscorlib) enum int State_Fault/*todo: implement initializer*/ = int();
    package(mscorlib) enum int State_Done/*todo: implement initializer*/ = int();
    package(mscorlib) int m_startAddr;
    package(mscorlib) int[] m_filterAddr;
    package(mscorlib) int[] m_catchAddr;
    package(mscorlib) int[] m_catchEndAddr;
    package(mscorlib) int[] m_type;
    package(mscorlib) Type[] m_catchClass;
    package(mscorlib) Label m_endLabel;
    package(mscorlib) Label m_finallyEndLabel;
    package(mscorlib) int m_endAddr;
    package(mscorlib) int m_endFinally;
    package(mscorlib) int m_currentCatch;
    private int m_currentState;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method MarkHelper
    //TODO: generate method MarkFilterAddr
    //TODO: generate method MarkFaultAddr
    //TODO: generate method MarkCatchAddr
    //TODO: generate method MarkFinallyAddr
    //TODO: generate method Done
    //TODO: generate method GetStartAddress
    //TODO: generate method GetEndAddress
    //TODO: generate method GetFinallyEndAddress
    //TODO: generate method GetEndLabel
    //TODO: generate method GetFilterAddresses
    //TODO: generate method GetCatchAddresses
    //TODO: generate method GetCatchEndAddresses
    //TODO: generate method GetCatchClass
    //TODO: generate method GetNumberOfCatches
    //TODO: generate method GetExceptionTypes
    //TODO: generate method SetFinallyEndLabel
    //TODO: generate method GetFinallyEndLabel
    //TODO: generate method IsInner
    //TODO: generate method GetCurrentState
}
// **************************
// *
// * Scope Tree is a class that track the scope structure within a method body
// * It keeps track two parallel array. m_ScopeAction keeps track the action. It can be
// * OpenScope or CloseScope. m_iOffset records the offset where the action
// * takes place.
// *
// **************************
@__DotNet__Attribute!(SerializableAttribute.stringof)
private enum ScopeAction
{
    Open = 0x0,
    Close = 0x1,
}
package(mscorlib) final class ScopeTree : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method GetCurrentActiveScopeIndex
    //TODO: generate method AddLocalSymInfoToCurrentScope
    //TODO: generate method AddUsingNamespaceToCurrentScope
    //TODO: generate method AddScopeInfo
    //TODO: generate method EnsureCapacity
    //TODO: generate method EmitScopeTree
    package(mscorlib) int[] m_iOffsets;
    package(mscorlib) ScopeAction[] m_ScopeActions;
    package(mscorlib) int m_iCount;
    package(mscorlib) int m_iOpenScopeCount;
    package(mscorlib) enum int InitialSize/*todo: implement initializer*/ = int();
    package(mscorlib) LocalSymInfo[] m_localSymInfos;
}
package(mscorlib) final class LineNumberInfo : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method AddLineNumberInfo
    //TODO: generate method FindDocument
    //TODO: generate method EnsureCapacity
    //TODO: generate method EmitLineNumberInfo
    private int m_DocumentCount;
    private REDocument[] m_Documents;
    private enum int InitialSize/*todo: implement initializer*/ = int();
    private int m_iLastFound;
}
package(mscorlib) final class REDocument : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method AddLineNumberInfo
    //TODO: generate method EnsureCapacity
    //TODO: generate method EmitLineNumberInfo
    private int[] m_iOffsets;
    private int[] m_iLines;
    private int[] m_iColumns;
    private int[] m_iEndLines;
    private int[] m_iEndColumns;
    package(mscorlib) ISymbolDocumentWriter m_document;
    private int m_iLineNumberCount;
    private enum int InitialSize/*todo: implement initializer*/ = int();
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\ISymWrapperCore.cs'
//
private class SymWrapperCore : __DotNet__Object
{
    //TODO: generate constructor
    private static class SymDocumentWriter : __DotNet__Object, ISymbolDocumentWriter
    {
        //TODO: generate constructor
        //TODO: generate method GetUnmanaged
        //TODO: generate method SetSource
        //TODO: generate method SetCheckSum
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private alias DSetCheckSum = int delegate(ISymUnmanagedDocumentWriter* pThis, Guid algorithmId, uint checkSumSize, /*todo: param attributes*/ubyte[] checkSum);
        //------------------------------------------------------------------------------
        // This layout must match the unmanaged ISymUnmanagedDocumentWriter* COM vtable
        // exactly. If a member is declared as an IntPtr rather than a delegate, it means
        // we don't call that particular member.
        //------------------------------------------------------------------------------
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
        private static struct ISymUnmanagedDocumentWriterVTable
        {
            package(mscorlib) IntPtr QueryInterface;
            package(mscorlib) IntPtr AddRef;
            package(mscorlib) IntPtr Release;
            package(mscorlib) IntPtr SetSource;
            // #if FEATURE_CORECLR
            @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
            package(mscorlib) DSetCheckSum SetCheckSum;
        }
        //------------------------------------------------------------------------------
        // This layout must match the (start) of the unmanaged ISymUnmanagedDocumentWriter
        // COM object.
        //------------------------------------------------------------------------------
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
        private static struct ISymUnmanagedDocumentWriter
        {
            package(mscorlib) IntPtr m_unmanagedVTable;
        }
        //------------------------------------------------------------------------------
        // Stores underlying ISymUnmanagedDocumentWriter* pointer (wrapped in a safehandle.)
        //------------------------------------------------------------------------------
        // #if FEATURE_CORECLR
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private PunkSafeHandle m_pDocumentWriterSafeHandle;
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private ISymUnmanagedDocumentWriter* m_pDocWriter;
        //------------------------------------------------------------------------------
        // Stores the "managed vtable" (actually a structure full of delegates that
        // P/Invoke to the corresponding unmanaged COM methods.)
        //------------------------------------------------------------------------------
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private ISymUnmanagedDocumentWriterVTable m_vtable;
    }
    package(mscorlib) static class SymWriter : __DotNet__Object, ISymbolWriter
    {
        //TODO: generate method CreateSymWriter
        //TODO: generate constructor
        //TODO: generate method Initialize
        //TODO: generate method DefineDocument
        //TODO: generate method SetUserEntryPoint
        //TODO: generate method OpenMethod
        //TODO: generate method CloseMethod
        //TODO: generate method DefineSequencePoints
        //TODO: generate method OpenScope
        //TODO: generate method CloseScope
        //TODO: generate method SetScopeRange
        //TODO: generate method DefineLocalVariable
        //TODO: generate method DefineParameter
        //TODO: generate method DefineField
        //TODO: generate method DefineGlobalVariable
        //TODO: generate method Close
        //TODO: generate method SetSymAttribute
        //TODO: generate method OpenNamespace
        //TODO: generate method CloseNamespace
        //TODO: generate method UsingNamespace
        //TODO: generate method SetMethodSourceRange
        //TODO: generate method SetUnderlyingWriter
        //TODO: generate method InternalSetUnderlyingWriter
        //------------------------------------------------------------------------------
        // Define delegates for the unmanaged COM methods we invoke.
        //------------------------------------------------------------------------------
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private alias DInitialize = int delegate(ISymUnmanagedWriter* pthis, IntPtr emitter, /*todo: param attributes*/String filename, IntPtr pIStream, /*todo: param attributes*/bool fFullBuild);
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private alias DDefineDocument = int delegate(ISymUnmanagedWriter* pthis, /*todo: param attributes*/String url, /*todo: param attributes*/ref Guid language, /*todo: param attributes*/ref Guid languageVender, /*todo: param attributes*/ref Guid documentType, /*todo: param attributes*/out PunkSafeHandle ppsymUnmanagedDocumentWriter);
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private alias DSetUserEntryPoint = int delegate(ISymUnmanagedWriter* pthis, int entryMethod);
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private alias DOpenMethod = int delegate(ISymUnmanagedWriter* pthis, int entryMethod);
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private alias DCloseMethod = int delegate(ISymUnmanagedWriter* pthis);
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private alias DDefineSequencePoints = int delegate(ISymUnmanagedWriter* pthis, PunkSafeHandle document, int spCount, /*todo: param attributes*/int[] offsets, /*todo: param attributes*/int[] lines, /*todo: param attributes*/int[] columns, /*todo: param attributes*/int[] endLines, /*todo: param attributes*/int[] endColumns);
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private alias DOpenScope = int delegate(ISymUnmanagedWriter* pthis, int startOffset, /*todo: param attributes*/out int pretval);
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private alias DCloseScope = int delegate(ISymUnmanagedWriter* pthis, int endOffset);
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private alias DSetScopeRange = int delegate(ISymUnmanagedWriter* pthis, int scopeID, int startOffset, int endOffset);
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private alias DDefineLocalVariable = int delegate(ISymUnmanagedWriter* pthis, /*todo: param attributes*/String name, int attributes, int cSig, /*todo: param attributes*/ubyte[] signature, int addrKind, int addr1, int addr2, int addr3, int startOffset, int endOffset);
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private alias DClose = int delegate(ISymUnmanagedWriter* pthis);
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private alias DSetSymAttribute = int delegate(ISymUnmanagedWriter* pthis, int parent, /*todo: param attributes*/String name, int cData, /*todo: param attributes*/ubyte[] data);
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private alias DOpenNamespace = int delegate(ISymUnmanagedWriter* pthis, /*todo: param attributes*/String name);
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private alias DCloseNamespace = int delegate(ISymUnmanagedWriter* pthis);
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private alias DUsingNamespace = int delegate(ISymUnmanagedWriter* pthis, /*todo: param attributes*/String name);
        //------------------------------------------------------------------------------
        // This layout must match the unmanaged ISymUnmanagedWriter* COM vtable
        // exactly. If a member is declared as an IntPtr rather than a delegate, it means
        // we don't call that particular member.
        //------------------------------------------------------------------------------
        @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
        private static struct ISymUnmanagedWriterVTable
        {
            package(mscorlib) IntPtr QueryInterface;
            package(mscorlib) IntPtr AddRef;
            package(mscorlib) IntPtr Release;
            // #if FEATURE_CORECLR
            @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
            package(mscorlib) DDefineDocument DefineDocument;
            // #if FEATURE_CORECLR
            @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
            package(mscorlib) DSetUserEntryPoint SetUserEntryPoint;
            // #if FEATURE_CORECLR
            @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
            package(mscorlib) DOpenMethod OpenMethod;
            // #if FEATURE_CORECLR
            @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
            package(mscorlib) DCloseMethod CloseMethod;
            // #if FEATURE_CORECLR
            @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
            package(mscorlib) DOpenScope OpenScope;
            // #if FEATURE_CORECLR
            @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
            package(mscorlib) DCloseScope CloseScope;
            // #if FEATURE_CORECLR
            @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
            package(mscorlib) DSetScopeRange SetScopeRange;
            // #if FEATURE_CORECLR
            @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
            package(mscorlib) DDefineLocalVariable DefineLocalVariable;
            package(mscorlib) IntPtr DefineParameter;
            package(mscorlib) IntPtr DefineField;
            package(mscorlib) IntPtr DefineGlobalVariable;
            // #if FEATURE_CORECLR
            @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
            package(mscorlib) DClose Close;
            // #if FEATURE_CORECLR
            @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
            package(mscorlib) DSetSymAttribute SetSymAttribute;
            // #if FEATURE_CORECLR
            @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
            package(mscorlib) DOpenNamespace OpenNamespace;
            // #if FEATURE_CORECLR
            @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
            package(mscorlib) DCloseNamespace CloseNamespace;
            // #if FEATURE_CORECLR
            @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
            package(mscorlib) DUsingNamespace UsingNamespace;
            package(mscorlib) IntPtr SetMethodSourceRange;
            // #if FEATURE_CORECLR
            @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
            package(mscorlib) DInitialize Initialize;
            package(mscorlib) IntPtr GetDebugInfo;
            // #if FEATURE_CORECLR
            @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
            package(mscorlib) DDefineSequencePoints DefineSequencePoints;
        }
        //------------------------------------------------------------------------------
        // This layout must match the (start) of the unmanaged ISymUnmanagedWriter
        // COM object.
        //------------------------------------------------------------------------------
        @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
        private static struct ISymUnmanagedWriter
        {
            package(mscorlib) IntPtr m_unmanagedVTable;
        }
        //------------------------------------------------------------------------------
        // Stores native ISymUnmanagedWriter* pointer.
        //
        // As with the real ISymWrapper.dll, ISymWrapper performs *no* Release (or AddRef) on this pointer.
        // Managing lifetime is up to the caller (coreclr.dll).
        //------------------------------------------------------------------------------
        @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
        private ISymUnmanagedWriter* m_pWriter;
        private ISymUnmanagedWriterVTable m_vtable;
    }
}
//--------------------------------------------------------------------------------------
// SafeHandle for RAW MTA IUnknown's.
//
// ! Because the Release occurs in the finalizer thread, this safehandle really takes
// ! an ostrich approach to apartment issues. We only tolerate this here because we're emulating
// ! the desktop CLR's use of ISymWrapper which also pays lip service to COM apartment rules.
// !
// ! However, think twice about pulling this safehandle out for other uses.
//
// Had to make this a non-nested class since FCall's don't like to bind to nested classes.
//--------------------------------------------------------------------------------------
// #if FEATURE_CORECLR
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
private final class PunkSafeHandle : SafeHandle
{
    //TODO: generate constructor
    //TODO: generate method ReleaseHandle
    //TODO: generate property 'IsInvalid'
    private alias DRelease = void delegate(IntPtr punk);
    private static DRelease m_Release;
    //TODO: generate method nGetDReleaseTarget
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\Label.cs'
//
// The Label class is an opaque representation of a label used by the 
// ILGenerator class.  The token is used to mark where labels occur in the IL
// stream and then the necessary offsets are put back in the code when the ILGenerator 
// is passed to the MethodWriter.
// Labels are created by using ILGenerator.CreateLabel and their position is set
// by using ILGenerator.MarkLabel.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct Label
{
    package(mscorlib) int m_label;
    //TODO: generate constructor
    //TODO: generate method GetLabelValue
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\LocalBuilder.cs'
//
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_LocalBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class LocalBuilder : LocalVariableInfo, _LocalBuilder
{
    private int m_localIndex;
    private Type m_localType;
    private MethodInfo m_methodBuilder;
    private bool m_isPinned;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetLocalIndex
    //TODO: generate method GetMethodBuilder
    //TODO: generate property 'IsPinned'
    //TODO: generate property 'LocalType'
    //TODO: generate property 'LocalIndex'
    //TODO: generate method SetLocalSymInfo
    //TODO: generate method SetLocalSymInfo
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\MethodBuilder.cs'
//
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_MethodBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class MethodBuilder : MethodInfo, _MethodBuilder
{
    package(mscorlib) String m_strName;
    private MethodToken m_tkMethod;
    private ModuleBuilder m_module;
    package(mscorlib) TypeBuilder m_containingType;
    private int[] m_mdMethodFixups;
    private ubyte[] m_localSignature;
    package(mscorlib) LocalSymInfo m_localSymInfo;
    package(mscorlib) ILGenerator m_ilGenerator;
    private ubyte[] m_ubBody;
    private ExceptionHandler[] m_exceptions;
    private enum int DefaultMaxStack/*todo: implement initializer*/ = int();
    private int m_maxStack/*todo: implement initializer*/ = int();
    package(mscorlib) bool m_bIsBaked;
    private bool m_bIsGlobalMethod;
    private bool m_fInitLocals;
    private MethodAttributes m_iAttributes;
    private CallingConventions m_callingConvention;
    private MethodImplAttributes m_dwMethodImplFlags;
    private SignatureHelper m_signature;
    package(mscorlib) Type[] m_parameterTypes;
    private ParameterBuilder m_retParam;
    private Type m_returnType;
    private Type[] m_returnTypeRequiredCustomModifiers;
    private Type[] m_returnTypeOptionalCustomModifiers;
    private Type[][] m_parameterTypeRequiredCustomModifiers;
    private Type[][] m_parameterTypeOptionalCustomModifiers;
    private GenericTypeParameterBuilder[] m_inst;
    private bool m_bIsGenMethDef;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Init
    //TODO: generate method CheckContext
    //TODO: generate method CheckContext
    //TODO: generate method CreateMethodBodyHelper
    //TODO: generate method ReleaseBakedStructures
    //TODO: generate method GetParameterTypes
    //TODO: generate method GetMethodBaseReturnType
    //TODO: generate method SetToken
    //TODO: generate method GetBody
    //TODO: generate method GetTokenFixups
    //TODO: generate method GetMethodSignature
    //TODO: generate method GetLocalSignature
    //TODO: generate method GetMaxStack
    //TODO: generate method GetExceptionHandlers
    //TODO: generate property 'ExceptionHandlerCount'
    //TODO: generate method CalculateNumberOfExceptions
    //TODO: generate method IsTypeCreated
    //TODO: generate method GetTypeBuilder
    //TODO: generate method GetModuleBuilder
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
    //TODO: generate property 'Name'
    //TODO: generate property 'MetadataTokenInternal'
    //TODO: generate property 'Module'
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'ReturnTypeCustomAttributes'
    //TODO: generate property 'ReflectedType'
    //TODO: generate method Invoke
    //TODO: generate method GetMethodImplementationFlags
    //TODO: generate property 'Attributes'
    //TODO: generate property 'CallingConvention'
    //TODO: generate property 'MethodHandle'
    //TODO: generate property 'IsSecurityCritical'
    //TODO: generate property 'IsSecuritySafeCritical'
    //TODO: generate property 'IsSecurityTransparent'
    //TODO: generate method GetBaseDefinition
    //TODO: generate property 'ReturnType'
    //TODO: generate method GetParameters
    //TODO: generate property 'ReturnParameter'
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate property 'IsGenericMethodDefinition'
    //TODO: generate property 'ContainsGenericParameters'
    //TODO: generate method GetGenericMethodDefinition
    //TODO: generate property 'IsGenericMethod'
    //TODO: generate method GetGenericArguments
    //TODO: generate method MakeGenericMethod
    //TODO: generate method DefineGenericParameters
    //TODO: generate method ThrowIfGeneric
    //TODO: generate method GetToken
    //TODO: generate method GetTokenNoLock
    //TODO: generate method SetParameters
    //TODO: generate method SetReturnType
    //TODO: generate method SetSignature
    //TODO: generate method DefineParameter
    //TODO: generate method SetMarshal
    private List1!(SymCustomAttr) m_symCustomAttrs;
    private static struct SymCustomAttr
    {
        //TODO: generate constructor
        public String m_name;
        public ubyte[] m_data;
    }
    //TODO: generate method SetSymCustomAttribute
    //TODO: generate method SetMethodBody
    //TODO: generate method ToArray
    //TODO: generate method CheckExceptionHandlerRanges
    //TODO: generate method CreateMethodBody
    //TODO: generate method SetImplementationFlags
    //TODO: generate method GetILGenerator
    //TODO: generate method GetILGenerator
    //TODO: generate method ThrowIfShouldNotHaveBody
    //TODO: generate property 'InitLocals'
    //TODO: generate method GetModule
    //TODO: generate property 'Signature'
    //TODO: generate method SetCustomAttribute
    //TODO: generate method SetCustomAttribute
    //TODO: generate method IsKnownCA
    //TODO: generate method ParseCA
    package(mscorlib) bool m_canBeRuntimeImpl/*todo: implement initializer*/ = bool();
    package(mscorlib) bool m_isDllImport/*todo: implement initializer*/ = bool();
}
package(mscorlib) class LocalSymInfo : __DotNet__Object
{
    package(mscorlib) String[] m_strName;
    package(mscorlib) ubyte[][] m_ubSignature;
    package(mscorlib) int[] m_iLocalSlot;
    package(mscorlib) int[] m_iStartOffset;
    package(mscorlib) int[] m_iEndOffset;
    package(mscorlib) int m_iLocalSymCount;
    package(mscorlib) String[] m_namespace;
    package(mscorlib) int m_iNameSpaceCount;
    package(mscorlib) enum int InitialSize/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate method EnsureCapacityNamespace
    //TODO: generate method EnsureCapacity
    //TODO: generate method AddLocalSymInfo
    //TODO: generate method AddUsingNamespace
    //TODO: generate method EmitLocalSymInfo
}
/// <summary>
/// Describes exception handler in a method body.
/// </summary>
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
public struct ExceptionHandler
{
    package(mscorlib) immutable int m_exceptionClass;
    package(mscorlib) immutable int m_tryStartOffset;
    package(mscorlib) immutable int m_tryEndOffset;
    package(mscorlib) immutable int m_filterOffset;
    package(mscorlib) immutable int m_handlerStartOffset;
    package(mscorlib) immutable int m_handlerEndOffset;
    package(mscorlib) immutable ExceptionHandlingClauseOptions m_kind;
    //TODO: generate property 'ExceptionTypeToken'
    //TODO: generate property 'TryOffset'
    //TODO: generate property 'TryLength'
    //TODO: generate property 'FilterOffset'
    //TODO: generate property 'HandlerOffset'
    //TODO: generate property 'HandlerLength'
    //TODO: generate property 'Kind'
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method IsValidKind
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
}
public class __Boxed__ExceptionHandler : __DotNet__Object, IEquatable1!(ExceptionHandler)
{
    ExceptionHandler value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\MethodBuilderInstantiation.cs'
//
package(mscorlib) final class MethodBuilderInstantiation : MethodInfo
{
    //TODO: generate method MakeGenericMethod
    package(mscorlib) MethodInfo m_method;
    private Type[] m_inst;
    //TODO: generate constructor
    //TODO: generate method GetParameterTypes
    //TODO: generate property 'MemberType'
    //TODO: generate property 'Name'
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'ReflectedType'
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate property 'Module'
    //TODO: generate method GetType
    //TODO: generate method GetParameters
    //TODO: generate method GetMethodImplementationFlags
    //TODO: generate property 'MethodHandle'
    //TODO: generate property 'Attributes'
    //TODO: generate method Invoke
    //TODO: generate property 'CallingConvention'
    //TODO: generate method GetGenericArguments
    //TODO: generate method GetGenericMethodDefinition
    //TODO: generate property 'IsGenericMethodDefinition'
    //TODO: generate property 'ContainsGenericParameters'
    //TODO: generate method MakeGenericMethod
    //TODO: generate property 'IsGenericMethod'
    //TODO: generate property 'ReturnType'
    //TODO: generate property 'ReturnParameter'
    //TODO: generate property 'ReturnTypeCustomAttributes'
    //TODO: generate method GetBaseDefinition
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\MethodToken.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct MethodToken
{
    public static immutable MethodToken Empty/*todo: implement initializer*/ = MethodToken();
    package(mscorlib) int m_method;
    //TODO: generate constructor
    //TODO: generate property 'Token'
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\ModuleBuilder.cs'
//
package(mscorlib) final class InternalModuleBuilder : RuntimeModule
{
    //TODO: generate constructor
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
// deliberately not [serializable]
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_ModuleBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class ModuleBuilder : Module, _ModuleBuilder
{
    //TODO: generate method nCreateISymWriterForDynamicModule
    //TODO: generate method UnmangleTypeName
    private Dictionary2!(String,Type) m_TypeBuilderDict;
    private ISymbolWriter m_iSymWriter;
    package(mscorlib) ModuleBuilderData m_moduleData;
    package(mscorlib) InternalModuleBuilder m_internalModuleBuilder;
    private AssemblyBuilder m_assemblyBuilder;
    //TODO: generate property 'ContainingAssemblyBuilder'
    //TODO: generate constructor
    //TODO: generate method AddType
    //TODO: generate method CheckTypeNameConflict
    //TODO: generate method GetType
    //TODO: generate method CheckContext
    //TODO: generate method CheckContext
    //TODO: generate method GetTypeRef
    //TODO: generate method GetMemberRef
    //TODO: generate method GetMemberRef
    //TODO: generate method GetMemberRefFromSignature
    //TODO: generate method GetMemberRefFromSignature
    //TODO: generate method GetMemberRefOfMethodInfo
    //TODO: generate method GetMemberRefOfMethodInfo
    //TODO: generate method GetMemberRefOfMethodInfo
    //TODO: generate method GetMemberRefOfFieldInfo
    //TODO: generate method GetMemberRefOfFieldInfo
    //TODO: generate method GetTokenFromTypeSpec
    //TODO: generate method GetTokenFromTypeSpec
    //TODO: generate method GetArrayMethodToken
    //TODO: generate method GetStringConstant
    //TODO: generate method PreSavePEFile
    //TODO: generate method SavePEFile
    //TODO: generate method AddResource
    //TODO: generate method SetModuleName
    //TODO: generate method SetFieldRVAContent
    //TODO: generate method DefineNativeResourceFile
    //TODO: generate method DefineNativeResourceBytes
    //TODO: generate method DefineNativeResource
    //TODO: generate method FindTypeBuilderWithName
    //TODO: generate method GetTypeRefNested
    //TODO: generate method InternalGetConstructorToken
    //TODO: generate method Init
    //TODO: generate method ModifyModuleName
    //TODO: generate method SetSymWriter
    //TODO: generate property 'SyncRoot'
    //TODO: generate property 'InternalModule'
    //TODO: generate method GetModuleHandle
    //TODO: generate method GetNativeHandle
    //TODO: generate method GetRuntimeModuleFromModule
    //TODO: generate method GetMemberRefToken
    //TODO: generate method GetMemberRefSignature
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttributesData
    //TODO: generate method GetTypes
    //TODO: generate method GetTypesNoLock
    //TODO: generate method GetType
    //TODO: generate method GetType
    //TODO: generate method GetType
    //TODO: generate method GetTypeNoLock
    //TODO: generate property 'FullyQualifiedName'
    //TODO: generate method ResolveSignature
    //TODO: generate method ResolveMethod
    //TODO: generate method ResolveField
    //TODO: generate method ResolveType
    //TODO: generate method ResolveMember
    //TODO: generate method ResolveString
    //TODO: generate method GetPEKind
    //TODO: generate property 'MDStreamVersion'
    //TODO: generate property 'ModuleVersionId'
    //TODO: generate property 'MetadataToken'
    //TODO: generate method IsResource
    //TODO: generate method GetFields
    //TODO: generate method GetField
    //TODO: generate method GetMethods
    //TODO: generate method GetMethodImpl
    //TODO: generate property 'ScopeName'
    //TODO: generate property 'Name'
    //TODO: generate property 'Assembly'
    //TODO: generate method DefineType
    //TODO: generate method DefineType
    //TODO: generate method DefineType
    //TODO: generate method DefineType
    //TODO: generate method DefineType
    //TODO: generate method DefineType
    //TODO: generate method DefineTypeNoLock
    //TODO: generate method DefineType
    //TODO: generate method DefineTypeNoLock
    //TODO: generate method DefineEnum
    //TODO: generate method DefineEnumNoLock
    //TODO: generate method DefineManifestResource
    //TODO: generate method DefineManifestResourceNoLock
    //TODO: generate method DefineUnmanagedResource
    //TODO: generate method DefineUnmanagedResourceInternalNoLock
    //TODO: generate method DefineUnmanagedResource
    //TODO: generate method DefineUnmanagedResourceFileInternalNoLock
    //TODO: generate method DefineGlobalMethod
    //TODO: generate method DefineGlobalMethod
    //TODO: generate method DefineGlobalMethod
    //TODO: generate method DefineGlobalMethodNoLock
    //TODO: generate method DefinePInvokeMethod
    //TODO: generate method DefinePInvokeMethod
    //TODO: generate method DefinePInvokeMethodNoLock
    //TODO: generate method CreateGlobalFunctions
    //TODO: generate method CreateGlobalFunctionsNoLock
    //TODO: generate method DefineInitializedData
    //TODO: generate method DefineInitializedDataNoLock
    //TODO: generate method DefineUninitializedData
    //TODO: generate method DefineUninitializedDataNoLock
    //TODO: generate method GetTypeTokenInternal
    //TODO: generate method GetTypeTokenInternal
    //TODO: generate method GetTypeToken
    //TODO: generate method GetTypeTokenWorkerNoLock
    //TODO: generate method GetTypeToken
    //TODO: generate method GetMethodToken
    //TODO: generate method GetMethodTokenInternal
    //TODO: generate method GetMethodTokenNoLock
    //TODO: generate method GetConstructorToken
    //TODO: generate method GetMethodToken
    //TODO: generate method GetMethodTokenInternal
    //TODO: generate method GetArrayMethodToken
    //TODO: generate method GetArrayMethodTokenNoLock
    //TODO: generate method GetArrayMethod
    //TODO: generate method GetConstructorToken
    //TODO: generate method GetFieldToken
    //TODO: generate method GetFieldTokenNoLock
    //TODO: generate method GetStringConstant
    //TODO: generate method GetSignatureToken
    //TODO: generate method GetSignatureToken
    //TODO: generate method SetCustomAttribute
    //TODO: generate method SetCustomAttribute
    //TODO: generate method GetSymWriter
    //TODO: generate method DefineDocument
    //TODO: generate method DefineDocumentNoLock
    //TODO: generate method SetUserEntryPoint
    //TODO: generate method SetUserEntryPointNoLock
    //TODO: generate method SetSymCustomAttribute
    //TODO: generate method SetSymCustomAttributeNoLock
    //TODO: generate method IsTransient
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\ModuleBuilderData.cs'
//
// This is a package private class. This class hold all of the managed
// data member for ModuleBuilder. Note that what ever data members added to
// this class cannot be accessed from the EE.
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class ModuleBuilderData : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method InitNames
    //TODO: generate method ModifyModuleName
    //TODO: generate property 'FileToken'
    package(mscorlib) String m_strModuleName;
    package(mscorlib) String m_strFileName;
    package(mscorlib) bool m_fGlobalBeenCreated;
    package(mscorlib) bool m_fHasGlobal;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    package(mscorlib) TypeBuilder m_globalTypeBuilder;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    package(mscorlib) ModuleBuilder m_module;
    private int m_tkFile;
    package(mscorlib) bool m_isSaved;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    package(mscorlib) ResWriterData m_embeddedRes;
    package(mscorlib) enum String MULTI_BYTE_VALUE_CLASS/*todo: implement initializer*/ = null;
    package(mscorlib) String m_strResourceFileName;
    package(mscorlib) ubyte[] m_resourceBytes;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\Opcode.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct OpCode
{
    package(mscorlib) enum int OperandTypeMask/*todo: implement initializer*/ = int();
    package(mscorlib) enum int FlowControlShift/*todo: implement initializer*/ = int();
    package(mscorlib) enum int FlowControlMask/*todo: implement initializer*/ = int();
    package(mscorlib) enum int OpCodeTypeShift/*todo: implement initializer*/ = int();
    package(mscorlib) enum int OpCodeTypeMask/*todo: implement initializer*/ = int();
    package(mscorlib) enum int StackBehaviourPopShift/*todo: implement initializer*/ = int();
    package(mscorlib) enum int StackBehaviourPushShift/*todo: implement initializer*/ = int();
    package(mscorlib) enum int StackBehaviourMask/*todo: implement initializer*/ = int();
    package(mscorlib) enum int SizeShift/*todo: implement initializer*/ = int();
    package(mscorlib) enum int SizeMask/*todo: implement initializer*/ = int();
    package(mscorlib) enum int EndsUncondJmpBlkFlag/*todo: implement initializer*/ = int();
    package(mscorlib) enum int StackChangeShift/*todo: implement initializer*/ = int();
    private OpCodeValues m_value;
    private int m_flags;
    //TODO: generate constructor
    //TODO: generate method EndsUncondJmpBlk
    //TODO: generate method StackChange
    //TODO: generate property 'OperandType'
    //TODO: generate property 'FlowControl'
    //TODO: generate property 'OpCodeType'
    //TODO: generate property 'StackBehaviourPop'
    //TODO: generate property 'StackBehaviourPush'
    //TODO: generate property 'Size'
    //TODO: generate property 'Value'
    private static /*todo: volatile*/ String[] g_nameCache;
    //TODO: generate property 'Name'
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\OpCodes.cs'
//
package(mscorlib) enum OpCodeValues
{
    Nop = 0x00,
    Break = 0x01,
    Ldarg_0 = 0x02,
    Ldarg_1 = 0x03,
    Ldarg_2 = 0x04,
    Ldarg_3 = 0x05,
    Ldloc_0 = 0x06,
    Ldloc_1 = 0x07,
    Ldloc_2 = 0x08,
    Ldloc_3 = 0x09,
    Stloc_0 = 0x0a,
    Stloc_1 = 0x0b,
    Stloc_2 = 0x0c,
    Stloc_3 = 0x0d,
    Ldarg_S = 0x0e,
    Ldarga_S = 0x0f,
    Starg_S = 0x10,
    Ldloc_S = 0x11,
    Ldloca_S = 0x12,
    Stloc_S = 0x13,
    Ldnull = 0x14,
    Ldc_I4_M1 = 0x15,
    Ldc_I4_0 = 0x16,
    Ldc_I4_1 = 0x17,
    Ldc_I4_2 = 0x18,
    Ldc_I4_3 = 0x19,
    Ldc_I4_4 = 0x1a,
    Ldc_I4_5 = 0x1b,
    Ldc_I4_6 = 0x1c,
    Ldc_I4_7 = 0x1d,
    Ldc_I4_8 = 0x1e,
    Ldc_I4_S = 0x1f,
    Ldc_I4 = 0x20,
    Ldc_I8 = 0x21,
    Ldc_R4 = 0x22,
    Ldc_R8 = 0x23,
    Dup = 0x25,
    Pop = 0x26,
    Jmp = 0x27,
    Call = 0x28,
    Calli = 0x29,
    Ret = 0x2a,
    Br_S = 0x2b,
    Brfalse_S = 0x2c,
    Brtrue_S = 0x2d,
    Beq_S = 0x2e,
    Bge_S = 0x2f,
    Bgt_S = 0x30,
    Ble_S = 0x31,
    Blt_S = 0x32,
    Bne_Un_S = 0x33,
    Bge_Un_S = 0x34,
    Bgt_Un_S = 0x35,
    Ble_Un_S = 0x36,
    Blt_Un_S = 0x37,
    Br = 0x38,
    Brfalse = 0x39,
    Brtrue = 0x3a,
    Beq = 0x3b,
    Bge = 0x3c,
    Bgt = 0x3d,
    Ble = 0x3e,
    Blt = 0x3f,
    Bne_Un = 0x40,
    Bge_Un = 0x41,
    Bgt_Un = 0x42,
    Ble_Un = 0x43,
    Blt_Un = 0x44,
    Switch = 0x45,
    Ldind_I1 = 0x46,
    Ldind_U1 = 0x47,
    Ldind_I2 = 0x48,
    Ldind_U2 = 0x49,
    Ldind_I4 = 0x4a,
    Ldind_U4 = 0x4b,
    Ldind_I8 = 0x4c,
    Ldind_I = 0x4d,
    Ldind_R4 = 0x4e,
    Ldind_R8 = 0x4f,
    Ldind_Ref = 0x50,
    Stind_Ref = 0x51,
    Stind_I1 = 0x52,
    Stind_I2 = 0x53,
    Stind_I4 = 0x54,
    Stind_I8 = 0x55,
    Stind_R4 = 0x56,
    Stind_R8 = 0x57,
    Add = 0x58,
    Sub = 0x59,
    Mul = 0x5a,
    Div = 0x5b,
    Div_Un = 0x5c,
    Rem = 0x5d,
    Rem_Un = 0x5e,
    And = 0x5f,
    Or = 0x60,
    Xor = 0x61,
    Shl = 0x62,
    Shr = 0x63,
    Shr_Un = 0x64,
    Neg = 0x65,
    Not = 0x66,
    Conv_I1 = 0x67,
    Conv_I2 = 0x68,
    Conv_I4 = 0x69,
    Conv_I8 = 0x6a,
    Conv_R4 = 0x6b,
    Conv_R8 = 0x6c,
    Conv_U4 = 0x6d,
    Conv_U8 = 0x6e,
    Callvirt = 0x6f,
    Cpobj = 0x70,
    Ldobj = 0x71,
    Ldstr = 0x72,
    Newobj = 0x73,
    Castclass = 0x74,
    Isinst = 0x75,
    Conv_R_Un = 0x76,
    Unbox = 0x79,
    Throw = 0x7a,
    Ldfld = 0x7b,
    Ldflda = 0x7c,
    Stfld = 0x7d,
    Ldsfld = 0x7e,
    Ldsflda = 0x7f,
    Stsfld = 0x80,
    Stobj = 0x81,
    Conv_Ovf_I1_Un = 0x82,
    Conv_Ovf_I2_Un = 0x83,
    Conv_Ovf_I4_Un = 0x84,
    Conv_Ovf_I8_Un = 0x85,
    Conv_Ovf_U1_Un = 0x86,
    Conv_Ovf_U2_Un = 0x87,
    Conv_Ovf_U4_Un = 0x88,
    Conv_Ovf_U8_Un = 0x89,
    Conv_Ovf_I_Un = 0x8a,
    Conv_Ovf_U_Un = 0x8b,
    Box = 0x8c,
    Newarr = 0x8d,
    Ldlen = 0x8e,
    Ldelema = 0x8f,
    Ldelem_I1 = 0x90,
    Ldelem_U1 = 0x91,
    Ldelem_I2 = 0x92,
    Ldelem_U2 = 0x93,
    Ldelem_I4 = 0x94,
    Ldelem_U4 = 0x95,
    Ldelem_I8 = 0x96,
    Ldelem_I = 0x97,
    Ldelem_R4 = 0x98,
    Ldelem_R8 = 0x99,
    Ldelem_Ref = 0x9a,
    Stelem_I = 0x9b,
    Stelem_I1 = 0x9c,
    Stelem_I2 = 0x9d,
    Stelem_I4 = 0x9e,
    Stelem_I8 = 0x9f,
    Stelem_R4 = 0xa0,
    Stelem_R8 = 0xa1,
    Stelem_Ref = 0xa2,
    Ldelem = 0xa3,
    Stelem = 0xa4,
    Unbox_Any = 0xa5,
    Conv_Ovf_I1 = 0xb3,
    Conv_Ovf_U1 = 0xb4,
    Conv_Ovf_I2 = 0xb5,
    Conv_Ovf_U2 = 0xb6,
    Conv_Ovf_I4 = 0xb7,
    Conv_Ovf_U4 = 0xb8,
    Conv_Ovf_I8 = 0xb9,
    Conv_Ovf_U8 = 0xba,
    Refanyval = 0xc2,
    Ckfinite = 0xc3,
    Mkrefany = 0xc6,
    Ldtoken = 0xd0,
    Conv_U2 = 0xd1,
    Conv_U1 = 0xd2,
    Conv_I = 0xd3,
    Conv_Ovf_I = 0xd4,
    Conv_Ovf_U = 0xd5,
    Add_Ovf = 0xd6,
    Add_Ovf_Un = 0xd7,
    Mul_Ovf = 0xd8,
    Mul_Ovf_Un = 0xd9,
    Sub_Ovf = 0xda,
    Sub_Ovf_Un = 0xdb,
    Endfinally = 0xdc,
    Leave = 0xdd,
    Leave_S = 0xde,
    Stind_I = 0xdf,
    Conv_U = 0xe0,
    Prefix7 = 0xf8,
    Prefix6 = 0xf9,
    Prefix5 = 0xfa,
    Prefix4 = 0xfb,
    Prefix3 = 0xfc,
    Prefix2 = 0xfd,
    Prefix1 = 0xfe,
    Prefixref = 0xff,
    Arglist = 0xfe00,
    Ceq = 0xfe01,
    Cgt = 0xfe02,
    Cgt_Un = 0xfe03,
    Clt = 0xfe04,
    Clt_Un = 0xfe05,
    Ldftn = 0xfe06,
    Ldvirtftn = 0xfe07,
    Ldarg = 0xfe09,
    Ldarga = 0xfe0a,
    Starg = 0xfe0b,
    Ldloc = 0xfe0c,
    Ldloca = 0xfe0d,
    Stloc = 0xfe0e,
    Localloc = 0xfe0f,
    Endfilter = 0xfe11,
    Unaligned_ = 0xfe12,
    Volatile_ = 0xfe13,
    Tail_ = 0xfe14,
    Initobj = 0xfe15,
    Constrained_ = 0xfe16,
    Cpblk = 0xfe17,
    Initblk = 0xfe18,
    Rethrow = 0xfe1a,
    Sizeof = 0xfe1c,
    Refanytype = 0xfe1d,
    Readonly_ = 0xfe1e,
}
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class OpCodes : __DotNet__Object
{
    //TODO: generate constructor
    public static immutable OpCode Nop/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Break/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldarg_0/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldarg_1/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldarg_2/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldarg_3/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldloc_0/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldloc_1/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldloc_2/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldloc_3/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stloc_0/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stloc_1/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stloc_2/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stloc_3/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldarg_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldarga_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Starg_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldloc_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldloca_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stloc_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldnull/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldc_I4_M1/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldc_I4_0/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldc_I4_1/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldc_I4_2/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldc_I4_3/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldc_I4_4/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldc_I4_5/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldc_I4_6/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldc_I4_7/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldc_I4_8/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldc_I4_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldc_I4/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldc_I8/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldc_R4/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldc_R8/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Dup/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Pop/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Jmp/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Call/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Calli/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ret/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Br_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Brfalse_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Brtrue_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Beq_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Bge_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Bgt_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ble_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Blt_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Bne_Un_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Bge_Un_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Bgt_Un_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ble_Un_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Blt_Un_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Br/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Brfalse/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Brtrue/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Beq/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Bge/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Bgt/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ble/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Blt/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Bne_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Bge_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Bgt_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ble_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Blt_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Switch/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldind_I1/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldind_U1/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldind_I2/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldind_U2/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldind_I4/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldind_U4/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldind_I8/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldind_I/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldind_R4/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldind_R8/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldind_Ref/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stind_Ref/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stind_I1/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stind_I2/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stind_I4/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stind_I8/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stind_R4/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stind_R8/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Add/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Sub/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Mul/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Div/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Div_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Rem/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Rem_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode And/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Or/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Xor/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Shl/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Shr/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Shr_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Neg/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Not/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_I1/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_I2/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_I4/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_I8/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_R4/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_R8/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_U4/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_U8/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Callvirt/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Cpobj/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldobj/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldstr/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Newobj/*todo: implement initializer*/ = OpCode();
    @__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
    public static immutable OpCode Castclass/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Isinst/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_R_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Unbox/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Throw/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldfld/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldflda/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stfld/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldsfld/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldsflda/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stsfld/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stobj/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_I1_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_I2_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_I4_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_I8_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_U1_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_U2_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_U4_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_U8_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_I_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_U_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Box/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Newarr/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldlen/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldelema/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldelem_I1/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldelem_U1/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldelem_I2/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldelem_U2/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldelem_I4/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldelem_U4/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldelem_I8/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldelem_I/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldelem_R4/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldelem_R8/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldelem_Ref/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stelem_I/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stelem_I1/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stelem_I2/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stelem_I4/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stelem_I8/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stelem_R4/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stelem_R8/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stelem_Ref/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldelem/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stelem/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Unbox_Any/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_I1/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_U1/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_I2/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_U2/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_I4/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_U4/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_I8/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_U8/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Refanyval/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ckfinite/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Mkrefany/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldtoken/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_U2/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_U1/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_I/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_I/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_Ovf_U/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Add_Ovf/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Add_Ovf_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Mul_Ovf/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Mul_Ovf_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Sub_Ovf/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Sub_Ovf_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Endfinally/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Leave/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Leave_S/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stind_I/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Conv_U/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Prefix7/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Prefix6/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Prefix5/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Prefix4/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Prefix3/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Prefix2/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Prefix1/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Prefixref/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Arglist/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ceq/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Cgt/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Cgt_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Clt/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Clt_Un/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldftn/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldvirtftn/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldarg/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldarga/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Starg/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldloc/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Ldloca/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Stloc/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Localloc/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Endfilter/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Unaligned/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Volatile/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Tailcall/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Initobj/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Constrained/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Cpblk/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Initblk/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Rethrow/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Sizeof/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Refanytype/*todo: implement initializer*/ = OpCode();
    public static immutable OpCode Readonly/*todo: implement initializer*/ = OpCode();
    //TODO: generate method TakesSingleByteArgument
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\OpcodeType.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum OpCodeType
{
    // #if !FEATURE_CORECLR
    /// <internalonly/>
    // [Obsolete("This API has been deprecated. http://go.microsoft.com/fwlink/?linkid=14202")]
    // Annotation  = 0,
    // #endif
    Macro = 1,
    Nternal = 2,
    Objmodel = 3,
    Prefix = 4,
    Primitive = 5,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\OperandType.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum OperandType
{
    InlineBrTarget = 0,
    InlineField = 1,
    InlineI = 2,
    InlineI8 = 3,
    InlineMethod = 4,
    InlineNone = 5,
    // #if !FEATURE_CORECLR
    /// <internalonly/>
    // [Obsolete("This API has been deprecated. http://go.microsoft.com/fwlink/?linkid=14202")]
    // InlinePhi       = 6,
    // #endif
    InlineR = 7,
    InlineSig = 9,
    InlineString = 10,
    InlineSwitch = 11,
    InlineTok = 12,
    InlineType = 13,
    InlineVar = 14,
    ShortInlineBrTarget = 15,
    ShortInlineI = 16,
    ShortInlineR = 17,
    ShortInlineVar = 18,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\ParameterBuilder.cs'
//
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_ParameterBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class ParameterBuilder : __DotNet__Object, _ParameterBuilder
{
    //TODO: generate method SetMarshal
    //TODO: generate method SetConstant
    //TODO: generate method SetCustomAttribute
    //TODO: generate method SetCustomAttribute
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetToken
    //TODO: generate property 'MetadataTokenInternal'
    //TODO: generate property 'Name'
    //TODO: generate property 'Position'
    //TODO: generate property 'Attributes'
    //TODO: generate property 'IsIn'
    //TODO: generate property 'IsOut'
    //TODO: generate property 'IsOptional'
    private String m_strParamName;
    private int m_iPosition;
    private ParameterAttributes m_attributes;
    private MethodBuilder m_methodBuilder;
    private ParameterToken m_pdToken;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\ParameterToken.cs'
//
// The ParameterToken class is an opaque representation of the Token returned
// by the Metadata to represent the parameter. 
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct ParameterToken
{
    public static immutable ParameterToken Empty/*todo: implement initializer*/ = ParameterToken();
    package(mscorlib) int m_tkParameter;
    //TODO: generate constructor
    //TODO: generate property 'Token'
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\PEFileKinds.cs'
//
// This Enum matchs the CorFieldAttr defined in CorHdr.h
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum PEFileKinds
{
    Dll = 0x0001,
    ConsoleApplication = 0x0002,
    WindowApplication = 0x0003,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\PropertyBuilder.cs'
//
// 
// A PropertyBuilder is always associated with a TypeBuilder.  The TypeBuilder.DefineProperty
// method will return a new PropertyBuilder to a client.
// 
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_PropertyBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class PropertyBuilder : PropertyInfo, _PropertyBuilder
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method SetConstant
    //TODO: generate property 'PropertyToken'
    //TODO: generate property 'MetadataTokenInternal'
    //TODO: generate property 'Module'
    //TODO: generate method SetMethodSemantics
    //TODO: generate method SetGetMethod
    //TODO: generate method SetSetMethod
    //TODO: generate method AddOtherMethod
    //TODO: generate method SetCustomAttribute
    //TODO: generate method SetCustomAttribute
    //TODO: generate method GetValue
    //TODO: generate method GetValue
    //TODO: generate method SetValue
    //TODO: generate method SetValue
    //TODO: generate method GetAccessors
    //TODO: generate method GetGetMethod
    //TODO: generate method GetSetMethod
    //TODO: generate method GetIndexParameters
    //TODO: generate property 'PropertyType'
    //TODO: generate property 'Attributes'
    //TODO: generate property 'CanRead'
    //TODO: generate property 'CanWrite'
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate property 'Name'
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'ReflectedType'
    private String m_name;
    private PropertyToken m_prToken;
    private int m_tkProperty;
    private ModuleBuilder m_moduleBuilder;
    private SignatureHelper m_signature;
    private PropertyAttributes m_attributes;
    private Type m_returnType;
    private MethodInfo m_getMethod;
    private MethodInfo m_setMethod;
    private TypeBuilder m_containingType;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\PropertyToken.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct PropertyToken
{
    public static immutable PropertyToken Empty/*todo: implement initializer*/ = PropertyToken();
    package(mscorlib) int m_property;
    //TODO: generate constructor
    //TODO: generate property 'Token'
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\SignatureHelper.cs'
//
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_SignatureHelper)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class SignatureHelper : __DotNet__Object, _SignatureHelper
{
    private enum int NO_SIZE_IN_SIG/*todo: implement initializer*/ = int();
    //TODO: generate method GetMethodSigHelper
    //TODO: generate method GetMethodSigHelper
    //TODO: generate method GetMethodSigHelper
    //TODO: generate method GetMethodSpecSigHelper
    //TODO: generate method GetMethodSigHelper
    //TODO: generate method GetMethodSigHelper
    //TODO: generate method GetMethodSigHelper
    //TODO: generate method GetLocalVarSigHelper
    //TODO: generate method GetMethodSigHelper
    //TODO: generate method GetMethodSigHelper
    //TODO: generate method GetLocalVarSigHelper
    //TODO: generate method GetFieldSigHelper
    //TODO: generate method GetPropertySigHelper
    //TODO: generate method GetPropertySigHelper
    //TODO: generate method GetPropertySigHelper
    //TODO: generate method GetTypeSigToken
    private ubyte[] m_signature;
    private int m_currSig;
    private int m_sizeLoc;
    private ModuleBuilder m_module;
    private bool m_sigDone;
    private int m_argCount;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Init
    //TODO: generate method Init
    //TODO: generate method Init
    //TODO: generate method AddOneArgTypeHelper
    //TODO: generate method AddOneArgTypeHelper
    //TODO: generate method AddOneArgTypeHelper
    //TODO: generate method AddOneArgTypeHelperWorker
    //TODO: generate method AddData
    //TODO: generate method AddData
    //TODO: generate method AddData
    //TODO: generate method AddElementType
    //TODO: generate method AddToken
    //TODO: generate method InternalAddTypeToken
    //TODO: generate method InternalAddRuntimeType
    //TODO: generate method ExpandArray
    //TODO: generate method ExpandArray
    //TODO: generate method IncrementArgCounts
    //TODO: generate method SetNumberOfSignatureElements
    //TODO: generate property 'ArgumentCount'
    //TODO: generate method IsSimpleType
    //TODO: generate method InternalGetSignature
    //TODO: generate method InternalGetSignatureArray
    //TODO: generate method AddArgument
    //TODO: generate method AddArgument
    //TODO: generate method AddArguments
    //TODO: generate method AddArgument
    //TODO: generate method AddSentinel
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method GetSignature
    //TODO: generate method GetSignature
    //TODO: generate method ToString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\SignatureToken.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct SignatureToken
{
    public static immutable SignatureToken Empty/*todo: implement initializer*/ = SignatureToken();
    package(mscorlib) int m_signature;
    package(mscorlib) ModuleBuilder m_moduleBuilder;
    //TODO: generate constructor
    //TODO: generate property 'Token'
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\StackBehaviour.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum StackBehaviour
{
    Pop0 = 0,
    Pop1 = 1,
    Pop1_pop1 = 2,
    Popi = 3,
    Popi_pop1 = 4,
    Popi_popi = 5,
    Popi_popi8 = 6,
    Popi_popi_popi = 7,
    Popi_popr4 = 8,
    Popi_popr8 = 9,
    Popref = 10,
    Popref_pop1 = 11,
    Popref_popi = 12,
    Popref_popi_popi = 13,
    Popref_popi_popi8 = 14,
    Popref_popi_popr4 = 15,
    Popref_popi_popr8 = 16,
    Popref_popi_popref = 17,
    Push0 = 18,
    Push1 = 19,
    Push1_push1 = 20,
    Pushi = 21,
    Pushi8 = 22,
    Pushr4 = 23,
    Pushr8 = 24,
    Pushref = 25,
    Varpop = 26,
    Varpush = 27,
    Popref_popi_pop1 = 28,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\StringToken.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct StringToken
{
    package(mscorlib) int m_string;
    //TODO: generate constructor
    //TODO: generate property 'Token'
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\SymbolMethod.cs'
//
package(mscorlib) final class SymbolMethod : MethodInfo
{
    private ModuleBuilder m_module;
    private Type m_containingType;
    private String m_name;
    private CallingConventions m_callingConvention;
    private Type m_returnType;
    private MethodToken m_mdMethod;
    private Type[] m_parameterTypes;
    private SignatureHelper m_signature;
    //TODO: generate constructor
    //TODO: generate method GetParameterTypes
    //TODO: generate method GetToken
    //TODO: generate property 'Module'
    //TODO: generate property 'ReflectedType'
    //TODO: generate property 'Name'
    //TODO: generate property 'DeclaringType'
    //TODO: generate method GetParameters
    //TODO: generate method GetMethodImplementationFlags
    //TODO: generate property 'Attributes'
    //TODO: generate property 'CallingConvention'
    //TODO: generate property 'MethodHandle'
    //TODO: generate property 'ReturnType'
    //TODO: generate property 'ReturnTypeCustomAttributes'
    //TODO: generate method Invoke
    //TODO: generate method GetBaseDefinition
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate method GetModule
    //TODO: generate method GetToken
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\SymbolType.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) enum TypeKind
{
    IsArray = 1,
    IsPointer = 2,
    IsByRef = 3,
}
package(mscorlib) final class SymbolType : __DotNet__TypeInfo
{
    //TODO: generate method IsAssignableFrom
    //TODO: generate method FormCompoundType
    package(mscorlib) TypeKind m_typeKind;
    package(mscorlib) Type m_baseType;
    package(mscorlib) int m_cRank;
    package(mscorlib) int[] m_iaLowerBound;
    package(mscorlib) int[] m_iaUpperBound;
    private String m_format;
    private bool m_isSzArray/*todo: implement initializer*/ = bool();
    //TODO: generate constructor
    //TODO: generate method SetElementType
    //TODO: generate method SetBounds
    //TODO: generate method SetFormat
    //TODO: generate property 'IsSzArray'
    //TODO: generate method MakePointerType
    //TODO: generate method MakeByRefType
    //TODO: generate method MakeArrayType
    //TODO: generate method MakeArrayType
    //TODO: generate method GetArrayRank
    //TODO: generate property 'GUID'
    //TODO: generate method InvokeMember
    //TODO: generate property 'Module'
    //TODO: generate property 'Assembly'
    //TODO: generate property 'TypeHandle'
    //TODO: generate property 'Name'
    //TODO: generate property 'FullName'
    //TODO: generate property 'AssemblyQualifiedName'
    //TODO: generate method ToString
    //TODO: generate property 'Namespace'
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
    //TODO: generate method GetNestedTypes
    //TODO: generate method GetNestedType
    //TODO: generate method GetMember
    //TODO: generate method GetMembers
    //TODO: generate method GetInterfaceMap
    //TODO: generate method GetEvents
    //TODO: generate method GetAttributeFlagsImpl
    //TODO: generate method IsArrayImpl
    //TODO: generate method IsPointerImpl
    //TODO: generate method IsByRefImpl
    //TODO: generate method IsPrimitiveImpl
    //TODO: generate method IsValueTypeImpl
    //TODO: generate method IsCOMObjectImpl
    //TODO: generate property 'IsConstructedGenericType'
    //TODO: generate method GetElementType
    //TODO: generate method HasElementTypeImpl
    //TODO: generate property 'UnderlyingSystemType'
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\TypeBuilder.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum PackingSize
{
    Unspecified = 0,
    Size1 = 1,
    Size2 = 2,
    Size4 = 4,
    Size8 = 8,
    Size16 = 16,
    Size32 = 32,
    Size64 = 64,
    Size128 = 128,
}
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComDefaultInterfaceAttribute.stringof/*, typeof(_TypeBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class TypeBuilder : __DotNet__TypeInfo, _TypeBuilder
{
    //TODO: generate method IsAssignableFrom
    private static class CustAttr : __DotNet__Object
    {
        private ConstructorInfo m_con;
        private ubyte[] m_binaryAttribute;
        private CustomAttributeBuilder m_customBuilder;
        //TODO: generate constructor
        //TODO: generate constructor
        //TODO: generate method Bake
    }
    //TODO: generate method GetMethod
    //TODO: generate method GetConstructor
    //TODO: generate method GetField
    public enum int UnspecifiedTypeSize/*todo: implement initializer*/ = int();
    //TODO: generate method SetParentType
    //TODO: generate method AddInterfaceImpl
    //TODO: generate method DefineMethod
    //TODO: generate method DefineMethodSpec
    //TODO: generate method DefineField
    //TODO: generate method SetMethodIL
    //TODO: generate method DefineCustomAttribute
    //TODO: generate method DefineCustomAttribute
    //TODO: generate method SetPInvokeData
    //TODO: generate method DefineProperty
    //TODO: generate method DefineEvent
    //TODO: generate method DefineMethodSemantics
    //TODO: generate method DefineMethodImpl
    //TODO: generate method SetMethodImpl
    //TODO: generate method SetParamInfo
    //TODO: generate method GetTokenFromSig
    //TODO: generate method SetFieldLayoutOffset
    //TODO: generate method SetClassLayout
    //TODO: generate method SetFieldMarshal
    //TODO: generate method SetConstantValue
    //TODO: generate method IsPublicComType
    //TODO: generate method IsTypeEqual
    //TODO: generate method SetConstantValue
    private List1!(CustAttr) m_ca;
    private TypeToken m_tdType;
    private ModuleBuilder m_module;
    private String m_strName;
    private String m_strNameSpace;
    private String m_strFullQualName;
    private Type m_typeParent;
    private List1!(Type) m_typeInterfaces;
    private TypeAttributes m_iAttr;
    private GenericParameterAttributes m_genParamAttributes;
    package(mscorlib) List1!(MethodBuilder) m_listMethods;
    package(mscorlib) int m_lastTokenizedMethod;
    private int m_constructorCount;
    private int m_iTypeSize;
    private PackingSize m_iPackingSize;
    private TypeBuilder m_DeclaringType;
    private Type m_enumUnderlyingType;
    package(mscorlib) bool m_isHiddenGlobalType;
    private bool m_hasBeenCreated;
    private RuntimeType m_bakedRuntimeType;
    private int m_genParamPos;
    private GenericTypeParameterBuilder[] m_inst;
    private bool m_bIsGenParam;
    private MethodBuilder m_declMeth;
    private TypeBuilder m_genTypeDef;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method InitAsGenericParam
    //TODO: generate constructor
    //TODO: generate method Init
    //TODO: generate method DefinePInvokeMethodHelper
    //TODO: generate method DefinePInvokeMethodHelperNoLock
    //TODO: generate method DefineDataHelper
    //TODO: generate method VerifyTypeAttributes
    //TODO: generate method IsCreated
    //TODO: generate method DefineType
    //TODO: generate method DefineGenericParam
    //TODO: generate method TermCreateClass
    //TODO: generate method ThrowIfCreated
    //TODO: generate property 'SyncRoot'
    //TODO: generate method GetModuleBuilder
    //TODO: generate property 'BakedRuntimeType'
    //TODO: generate method SetGenParamAttributes
    //TODO: generate method SetGenParamCustomAttribute
    //TODO: generate method SetGenParamCustomAttribute
    //TODO: generate method SetGenParamCustomAttributeNoLock
    //TODO: generate method ToString
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'ReflectedType'
    //TODO: generate property 'Name'
    //TODO: generate property 'Module'
    //TODO: generate property 'MetadataTokenInternal'
    //TODO: generate property 'GUID'
    //TODO: generate method InvokeMember
    //TODO: generate property 'Assembly'
    //TODO: generate property 'TypeHandle'
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
    //TODO: generate method GetNestedTypes
    //TODO: generate method GetNestedType
    //TODO: generate method GetMember
    //TODO: generate method GetInterfaceMap
    //TODO: generate method GetEvents
    //TODO: generate method GetMembers
    //TODO: generate method IsAssignableFrom
    //TODO: generate method GetAttributeFlagsImpl
    //TODO: generate method IsArrayImpl
    //TODO: generate method IsByRefImpl
    //TODO: generate method IsPointerImpl
    //TODO: generate method IsPrimitiveImpl
    //TODO: generate method IsCOMObjectImpl
    //TODO: generate method GetElementType
    //TODO: generate method HasElementTypeImpl
    //TODO: generate property 'IsSecurityCritical'
    //TODO: generate property 'IsSecuritySafeCritical'
    //TODO: generate property 'IsSecurityTransparent'
    //TODO: generate method IsSubclassOf
    //TODO: generate property 'UnderlyingSystemType'
    //TODO: generate method MakePointerType
    //TODO: generate method MakeByRefType
    //TODO: generate method MakeArrayType
    //TODO: generate method MakeArrayType
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate property 'GenericParameterAttributes'
    //TODO: generate method SetInterfaces
    //TODO: generate method DefineGenericParameters
    //TODO: generate method MakeGenericType
    //TODO: generate method GetGenericArguments
    //TODO: generate property 'IsGenericTypeDefinition'
    //TODO: generate property 'IsGenericType'
    //TODO: generate property 'IsGenericParameter'
    //TODO: generate property 'IsConstructedGenericType'
    //TODO: generate property 'GenericParameterPosition'
    //TODO: generate property 'DeclaringMethod'
    //TODO: generate method GetGenericTypeDefinition
    //TODO: generate method DefineMethodOverride
    //TODO: generate method DefineMethodOverrideNoLock
    //TODO: generate method DefineMethod
    //TODO: generate method DefineMethod
    //TODO: generate method DefineMethod
    //TODO: generate method DefineMethod
    //TODO: generate method DefineMethod
    //TODO: generate method DefineMethodNoLock
    //TODO: generate method DefineTypeInitializer
    //TODO: generate method DefineTypeInitializerNoLock
    //TODO: generate method DefineDefaultConstructor
    //TODO: generate method DefineDefaultConstructorNoLock
    //TODO: generate method DefineConstructor
    //TODO: generate method DefineConstructor
    //TODO: generate method DefineConstructorNoLock
    //TODO: generate method DefinePInvokeMethod
    //TODO: generate method DefinePInvokeMethod
    //TODO: generate method DefinePInvokeMethod
    //TODO: generate method DefineNestedType
    //TODO: generate method DefineNestedType
    //TODO: generate method DefineNestedType
    //TODO: generate method DefineNestedType
    //TODO: generate method DefineNestedType
    //TODO: generate method DefineNestedType
    //TODO: generate method DefineNestedType
    //TODO: generate method DefineNestedTypeNoLock
    //TODO: generate method DefineField
    //TODO: generate method DefineField
    //TODO: generate method DefineFieldNoLock
    //TODO: generate method DefineInitializedData
    //TODO: generate method DefineInitializedDataNoLock
    //TODO: generate method DefineUninitializedData
    //TODO: generate method DefineUninitializedDataNoLock
    //TODO: generate method DefineProperty
    //TODO: generate method DefineProperty
    //TODO: generate method DefineProperty
    //TODO: generate method DefineProperty
    //TODO: generate method DefinePropertyNoLock
    //TODO: generate method DefineEvent
    //TODO: generate method DefineEventNoLock
    //TODO: generate method CreateTypeInfo
    //TODO: generate method CreateType
    //TODO: generate method CheckContext
    //TODO: generate method CheckContext
    //TODO: generate method CreateTypeNoLock
    //TODO: generate property 'Size'
    //TODO: generate property 'PackingSize'
    //TODO: generate method SetParent
    //TODO: generate method AddInterfaceImplementation
    //TODO: generate property 'TypeToken'
    //TODO: generate method SetCustomAttribute
    //TODO: generate method SetCustomAttribute
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\TypeBuilderInstantiation.cs'
//
package(mscorlib) final class TypeBuilderInstantiation : __DotNet__TypeInfo
{
    //TODO: generate method IsAssignableFrom
    //TODO: generate method MakeGenericType
    private Type m_type;
    private Type[] m_inst;
    private String m_strFullQualName;
    package(mscorlib) Hashtable m_hashtable/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method ToString
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'ReflectedType'
    //TODO: generate property 'Name'
    //TODO: generate property 'Module'
    //TODO: generate method MakePointerType
    //TODO: generate method MakeByRefType
    //TODO: generate method MakeArrayType
    //TODO: generate method MakeArrayType
    //TODO: generate property 'GUID'
    //TODO: generate method InvokeMember
    //TODO: generate property 'Assembly'
    //TODO: generate property 'TypeHandle'
    //TODO: generate property 'FullName'
    //TODO: generate property 'Namespace'
    //TODO: generate property 'AssemblyQualifiedName'
    //TODO: generate method Substitute
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
    //TODO: generate method GetNestedTypes
    //TODO: generate method GetNestedType
    //TODO: generate method GetMember
    //TODO: generate method GetInterfaceMap
    //TODO: generate method GetEvents
    //TODO: generate method GetMembers
    //TODO: generate method GetAttributeFlagsImpl
    //TODO: generate method IsArrayImpl
    //TODO: generate method IsByRefImpl
    //TODO: generate method IsPointerImpl
    //TODO: generate method IsPrimitiveImpl
    //TODO: generate method IsCOMObjectImpl
    //TODO: generate method GetElementType
    //TODO: generate method HasElementTypeImpl
    //TODO: generate property 'UnderlyingSystemType'
    //TODO: generate method GetGenericArguments
    //TODO: generate property 'IsGenericTypeDefinition'
    //TODO: generate property 'IsGenericType'
    //TODO: generate property 'IsConstructedGenericType'
    //TODO: generate property 'IsGenericParameter'
    //TODO: generate property 'GenericParameterPosition'
    //TODO: generate method IsValueTypeImpl
    //TODO: generate property 'ContainsGenericParameters'
    //TODO: generate property 'DeclaringMethod'
    //TODO: generate method GetGenericTypeDefinition
    //TODO: generate method MakeGenericType
    //TODO: generate method IsAssignableFrom
    //TODO: generate method IsSubclassOf
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\TypeToken.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct TypeToken
{
    public static immutable TypeToken Empty/*todo: implement initializer*/ = TypeToken();
    package(mscorlib) int m_class;
    //TODO: generate constructor
    //TODO: generate property 'Token'
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\UnmanagedMarshal.cs'
//
// This class is describing the fieldmarshal.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(HostProtectionAttribute.stringof/*, MayLeakOnAbort = true*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "An alternate API is available: Emit the MarshalAs custom attribute instead. http://go.microsoft.com/fwlink/?linkid=14202"*/)
public final class UnmanagedMarshal : __DotNet__Object
{
    //TODO: generate method DefineUnmanagedMarshal
    //TODO: generate method DefineByValTStr
    //TODO: generate method DefineSafeArray
    //TODO: generate method DefineByValArray
    //TODO: generate method DefineLPArray
    //TODO: generate property 'GetUnmanagedType'
    //TODO: generate property 'IIDGuid'
    //TODO: generate property 'ElementCount'
    //TODO: generate property 'BaseType'
    //TODO: generate constructor
    package(mscorlib) UnmanagedType m_unmanagedType;
    package(mscorlib) Guid m_guid;
    package(mscorlib) int m_numElem;
    package(mscorlib) UnmanagedType m_baseType;
    //TODO: generate method InternalGetBytes
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\XXXOnTypeBuilderInstantiation.cs'
//
package(mscorlib) final class MethodOnTypeBuilderInstantiation : MethodInfo
{
    //TODO: generate method GetMethod
    package(mscorlib) MethodInfo m_method;
    private TypeBuilderInstantiation m_type;
    //TODO: generate constructor
    //TODO: generate method GetParameterTypes
    //TODO: generate property 'MemberType'
    //TODO: generate property 'Name'
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'ReflectedType'
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate property 'MetadataTokenInternal'
    //TODO: generate property 'Module'
    //TODO: generate method GetType
    //TODO: generate method GetParameters
    //TODO: generate method GetMethodImplementationFlags
    //TODO: generate property 'MethodHandle'
    //TODO: generate property 'Attributes'
    //TODO: generate method Invoke
    //TODO: generate property 'CallingConvention'
    //TODO: generate method GetGenericArguments
    //TODO: generate method GetGenericMethodDefinition
    //TODO: generate property 'IsGenericMethodDefinition'
    //TODO: generate property 'ContainsGenericParameters'
    //TODO: generate method MakeGenericMethod
    //TODO: generate property 'IsGenericMethod'
    //TODO: generate property 'ReturnType'
    //TODO: generate property 'ReturnParameter'
    //TODO: generate property 'ReturnTypeCustomAttributes'
    //TODO: generate method GetBaseDefinition
}
package(mscorlib) final class ConstructorOnTypeBuilderInstantiation : ConstructorInfo
{
    //TODO: generate method GetConstructor
    package(mscorlib) ConstructorInfo m_ctor;
    private TypeBuilderInstantiation m_type;
    //TODO: generate constructor
    //TODO: generate method GetParameterTypes
    //TODO: generate method GetReturnType
    //TODO: generate property 'MemberType'
    //TODO: generate property 'Name'
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'ReflectedType'
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate property 'MetadataTokenInternal'
    //TODO: generate property 'Module'
    //TODO: generate method GetType
    //TODO: generate method GetParameters
    //TODO: generate method GetMethodImplementationFlags
    //TODO: generate property 'MethodHandle'
    //TODO: generate property 'Attributes'
    //TODO: generate method Invoke
    //TODO: generate property 'CallingConvention'
    //TODO: generate method GetGenericArguments
    //TODO: generate property 'IsGenericMethodDefinition'
    //TODO: generate property 'ContainsGenericParameters'
    //TODO: generate property 'IsGenericMethod'
    //TODO: generate method Invoke
}
package(mscorlib) final class FieldOnTypeBuilderInstantiation : FieldInfo
{
    //TODO: generate method GetField
    private FieldInfo m_field;
    private TypeBuilderInstantiation m_type;
    //TODO: generate constructor
    //TODO: generate property 'FieldInfo'
    //TODO: generate property 'MemberType'
    //TODO: generate property 'Name'
    //TODO: generate property 'DeclaringType'
    //TODO: generate property 'ReflectedType'
    //TODO: generate method GetCustomAttributes
    //TODO: generate method GetCustomAttributes
    //TODO: generate method IsDefined
    //TODO: generate property 'MetadataTokenInternal'
    //TODO: generate property 'Module'
    //TODO: generate method GetType
    //TODO: generate method GetRequiredCustomModifiers
    //TODO: generate method GetOptionalCustomModifiers
    //TODO: generate method SetValueDirect
    //TODO: generate method GetValueDirect
    //TODO: generate property 'FieldHandle'
    //TODO: generate property 'FieldType'
    //TODO: generate method GetValue
    //TODO: generate method SetValue
    //TODO: generate property 'Attributes'
}
