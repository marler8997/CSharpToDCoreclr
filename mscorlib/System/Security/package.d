module mscorlib.System.Security;

import mscorlib.System :
    Attribute,
    DotNetObject,
    String,
    SystemException,
    Void;
import mscorlib.System.Security.Permissions :
    SecurityPermission,
    HostProtectionResource;
import mscorlib.Microsoft.Win32.SafeHandles :
    SafeAccessTokenHandle;
import mscorlib.System.Collections :
    ArrayList,
    ICollection,
    IEnumerator,
    IEqualityComparer,
    Comparer,
    Hashtable;
import mscorlib.System.Security.Util :
    TokenBasedSet,
    TokenBasedSetEnumerator;
import mscorlib.System.Globalization :
    TextInfo;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Attributes.cs'
//
//// DynamicSecurityMethodAttribute:
//    //  Indicates that calling the target method requires space for a security
//    //  object to be allocated on the callers stack. This attribute is only ever
//    //  set on certain security methods defined within mscorlib.
//    [AttributeUsage(AttributeTargets.Method, AllowMultiple = true, Inherited = false )]
public final class DynamicSecurityMethodAttribute : Attribute
{
}
//// SuppressUnmanagedCodeSecurityAttribute:
//    //  Indicates that the target P/Invoke method(s) should skip the per-call
//    //  security checked for unmanaged code permission.
//    [AttributeUsage(AttributeTargets.Method | AttributeTargets.Class | AttributeTargets.Interface | AttributeTargets.Delegate, AllowMultiple = true, Inherited = false )]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class SuppressUnmanagedCodeSecurityAttribute : Attribute
{
}
//// UnverifiableCodeAttribute:
//    //  Indicates that the target module contains unverifiable code.
//    [AttributeUsage(AttributeTargets.Module, AllowMultiple = true, Inherited = false )]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class UnverifiableCodeAttribute : Attribute
{
}
//// AllowPartiallyTrustedCallersAttribute:
//    //  Indicates that the Assembly is secure and can be used by untrusted
//    //  and semitrusted clients
//    //  For v.1, this is valid only on Assemblies, but could be expanded to 
//    //  include Module, Method, class
//    [AttributeUsage(AttributeTargets.Assembly, AllowMultiple = false, Inherited = false )]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class AllowPartiallyTrustedCallersAttribute : Attribute
{
    private PartialTrustVisibilityLevel _visibilityLevel;
    //TODO: generate constructor
    //TODO: generate property 'PartialTrustVisibilityLevel'
}
public enum PartialTrustVisibilityLevel
{
    VisibleToAllHosts = 0,
    NotVisibleByDefault = 1,
}
//#if !FEATURE_CORECLR
//    [Obsolete("SecurityCriticalScope is only used for .NET 2.0 transparency compatibility.")]
//    public enum SecurityCriticalScope
//    {
//        Explicit = 0,
//        Everything = 0x1
//    }
//#endif // FEATURE_CORECLR
//
//    // SecurityCriticalAttribute
//    //  Indicates that the decorated code or assembly performs security critical operations (e.g. Assert, "unsafe", LinkDemand, etc.)
//    //  The attribute can be placed on most targets, except on arguments/return values.
//    [AttributeUsage(AttributeTargets.Assembly | 
//                    AttributeTargets.Class |
//                    AttributeTargets.Struct |
//                    AttributeTargets.Enum |
//                    AttributeTargets.Constructor |
//                    AttributeTargets.Method |
//                    AttributeTargets.Field |
//                    AttributeTargets.Interface  |
//                    AttributeTargets.Delegate,
//        AllowMultiple = false,
//        Inherited = false )]
public final class SecurityCriticalAttribute : Attribute
{
    //TODO: generate constructor
}
//// SecurityTreatAsSafeAttribute:
//    // Indicates that the code may contain violations to the security critical rules (e.g. transitions from
//    //      critical to non-public transparent, transparent to non-public critical, etc.), has been audited for
//    //      security concerns and is considered security clean.
//    // At assembly-scope, all rule checks will be suppressed within the assembly and for calls made against the assembly.
//    // At type-scope, all rule checks will be suppressed for members within the type and for calls made against the type.
//    // At member level (e.g. field and method) the code will be treated as public - i.e. no rule checks for the members.
//
//    [AttributeUsage(AttributeTargets.Assembly |
//                    AttributeTargets.Class |
//                    AttributeTargets.Struct |
//                    AttributeTargets.Enum |
//                    AttributeTargets.Constructor |
//                    AttributeTargets.Method |
//                    AttributeTargets.Field |
//                    AttributeTargets.Interface |
//                    AttributeTargets.Delegate,
//        AllowMultiple = false,
//        Inherited = false )]
//[Obsolete("SecurityTreatAsSafe is only used for .NET 2.0 transparency compatibility.  Please use the SecuritySafeCriticalAttribute instead.")]
public final class SecurityTreatAsSafeAttribute : Attribute
{
    //TODO: generate constructor
}
//// SecuritySafeCriticalAttribute: 
//    // Indicates that the code may contain violations to the security critical rules (e.g. transitions from
//    //      critical to non-public transparent, transparent to non-public critical, etc.), has been audited for
//    //      security concerns and is considered security clean. Also indicates that the code is considered SecurityCritical.
//    // The effect of this attribute is as if the code was marked [SecurityCritical][SecurityTreatAsSafe].
//    // At assembly-scope, all rule checks will be suppressed within the assembly and for calls made against the assembly.
//    // At type-scope, all rule checks will be suppressed for members within the type and for calls made against the type.
//    // At member level (e.g. field and method) the code will be treated as public - i.e. no rule checks for the members.
//
//    [AttributeUsage(AttributeTargets.Class |
//                    AttributeTargets.Struct |
//                    AttributeTargets.Enum |
//                    AttributeTargets.Constructor |
//                    AttributeTargets.Method |
//                    AttributeTargets.Field |
//                    AttributeTargets.Interface |
//                    AttributeTargets.Delegate,
//        AllowMultiple = false,
//        Inherited = false )]
public final class SecuritySafeCriticalAttribute : Attribute
{
    //TODO: generate constructor
}
//// SecurityTransparentAttribute:
//    // Indicates the assembly contains only transparent code.
//    // Security critical actions will be restricted or converted into less critical actions. For example,
//    // Assert will be restricted, SuppressUnmanagedCode, LinkDemand, unsafe, and unverifiable code will be converted
//    // into Full-Demands.
//
//    [AttributeUsage(AttributeTargets.Assembly, AllowMultiple = false, Inherited = false )]
public final class SecurityTransparentAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\BuiltInPermissionSets.cs'
//
public class BuiltInPermissionSets : DotNetObject
{
    private this() {} // prevent instantiation
    private static immutable String s_everythingXml/*todo: implement initializer*/ = null;
    private static immutable String s_executionXml/*todo: implement initializer*/ = null;
    private static immutable String s_fullTrustXml/*todo: implement initializer*/ = null;
    private static immutable String s_internetXml/*todo: implement initializer*/ = null;
    private static immutable String s_localIntranetXml/*todo: implement initializer*/ = null;
    private static immutable String s_nothingXml/*todo: implement initializer*/ = null;
    private static immutable String s_skipVerificationXml/*todo: implement initializer*/ = null;
    private static NamedPermissionSet s_everything;
    private static NamedPermissionSet s_execution;
    private static NamedPermissionSet s_fullTrust;
    private static NamedPermissionSet s_internet;
    private static NamedPermissionSet s_localIntranet;
    private static NamedPermissionSet s_nothing;
    private static NamedPermissionSet s_skipVerification;
    //TODO: generate property 'Everything'
    //TODO: generate property 'Execution'
    //TODO: generate property 'FullTrust'
    //TODO: generate property 'Internet'
    //TODO: generate property 'LocalIntranet'
    //TODO: generate property 'Nothing'
    //TODO: generate property 'SkipVerification'
    //TODO: generate method GetOrDeserializeExtendablePermissionSet
    //TODO: generate method GetOrDeserializePermissionSet
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\CodeAccessPermission.cs'
//
//[Serializable]
//#if !FEATURE_CORECLR
//    [SecurityPermissionAttribute( SecurityAction.InheritanceDemand, ControlEvidence = true, ControlPolicy = true )]
//#endif
//    [System.Runtime.InteropServices.ComVisible(true)]
public abstract class CodeAccessPermission : DotNetObject, IPermission, ISecurityEncodable, IStackWalk
{
    //TODO: generate method RevertAssert
    //TODO: generate method RevertDeny
    //TODO: generate method RevertPermitOnly
    //TODO: generate method RevertAll
    //TODO: generate method Demand
    //TODO: generate method Demand
    //TODO: generate method Assert
    //TODO: generate method Assert
    //TODO: generate method Deny
    //TODO: generate method PermitOnly
    //TODO: generate method Union
    //TODO: generate method VerifyType
    //TODO: generate method Copy
    //TODO: generate method Intersect
    //TODO: generate method IsSubsetOf
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method CheckDemand
    //TODO: generate method CheckPermitOnly
    //TODO: generate method CheckDeny
    //TODO: generate method CheckAssert
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\CodeAccessSecurityEngine.cs'
//
// Ignored: // Used in DemandInternal, to remember the result of previous demands
// Ignored: // KEEP IN SYNC WITH DEFINITIONS IN SECURITYPOLICY.H
// Ignored: [Serializable]
public enum PermissionType
{
    SecurityUnmngdCodeAccess = 0,
    SecuritySkipVerification = 1,
    ReflectionTypeInfo = 2,
    SecurityAssert = 3,
    ReflectionMemberAccess = 4,
    SecuritySerialization = 5,
    ReflectionRestrictedMemberAccess = 6,
    FullTrust = 7,
    SecurityBindingRedirects = 8,
    UIPermission = 9,
    EnvironmentPermission = 10,
    FileDialogPermission = 11,
    FileIOPermission = 12,
    ReflectionPermission = 13,
    SecurityPermission = 14,
    SecurityControlEvidence = 16,
    SecurityControlPrincipal = 17,
}
public class CodeAccessSecurityEngine : DotNetObject
{
    private this() {} // prevent instantiation
    public static SecurityPermission AssertPermission;
    public static PermissionToken AssertPermissionToken;
    //TODO: generate method SpecialDemand
    //TODO: generate method DEBUG_OUT
    private static bool debug_/*todo: implement initializer*/ = bool();
    private enum String file/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method ThrowSecurityException
    //TODO: generate method ThrowSecurityException
    //TODO: generate method CheckSetHelper
    //TODO: generate method CheckSetHelper
    //TODO: generate method CheckHelper
    //TODO: generate method CheckHelper
    //TODO: generate method Check
    //TODO: generate method Check
    //TODO: generate method CheckNReturnSO
    //TODO: generate method Assert
    //TODO: generate method Deny
    //TODO: generate method PermitOnly
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\FrameSecurityDescriptor.cs'
//
//#endif    
//     //FrameSecurityDescriptor.cs
//    //
//    // Internal use only.
//    // DO NOT DOCUMENT
//    //
//
//    [Serializable]
public class FrameSecurityDescriptor : DotNetObject
{
    private PermissionSet m_assertions;
    private PermissionSet m_denials;
    private PermissionSet m_restriction;
    private PermissionSet m_DeclarativeAssertions;
    private PermissionSet m_DeclarativeDenials;
    private PermissionSet m_DeclarativeRestrictions;
    // Ignored: #if !FEATURE_PAL
    // Ignored: // if this frame contains a call to any WindowsIdentity.Impersonate(),
    // Ignored: // we save the previous SafeTokenHandles here (in the next two fields)
    // Ignored: // Used during exceptionstackwalks to revert impersonation before calling filters
    // Ignored: [System.Security.SecurityCritical] // auto-generated
    // Ignored: [NonSerialized]
    private SafeAccessTokenHandle m_callerToken;
    // Ignored: [System.Security.SecurityCritical] // auto-generated
    // Ignored: [NonSerialized]
    private SafeAccessTokenHandle m_impToken;
    private bool m_AssertFT;
    private bool m_assertAllPossible;
    private bool m_declSecComputed;
    //TODO: generate method IncrementOverridesCount
    //TODO: generate method DecrementOverridesCount
    //TODO: generate method IncrementAssertCount
    //TODO: generate method DecrementAssertCount
    //TODO: generate constructor
    //TODO: generate method CreateSingletonSet
    //TODO: generate method HasImperativeAsserts
    //TODO: generate method HasImperativeDenials
    //TODO: generate method HasImperativeRestrictions
    //TODO: generate method SetAssert
    //TODO: generate method SetAssert
    //TODO: generate method GetAssertions
    //TODO: generate method SetAssertAllPossible
    //TODO: generate method GetAssertAllPossible
    //TODO: generate method SetDeny
    //TODO: generate method SetDeny
    //TODO: generate method GetDenials
    //TODO: generate method SetPermitOnly
    //TODO: generate method SetPermitOnly
    //TODO: generate method GetPermitOnly
    //TODO: generate method SetTokenHandles
    //TODO: generate method RevertAssert
    //TODO: generate method RevertAssertAllPossible
    //TODO: generate method RevertDeny
    //TODO: generate method RevertPermitOnly
    //TODO: generate method RevertAll
    //TODO: generate method CheckDemand
    //TODO: generate method CheckDemand2
    //TODO: generate method CheckSetDemand
    //TODO: generate method CheckSetDemand2
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\HostProtectionException.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public class HostProtectionException : SystemException
{
    private HostProtectionResource m_protected;
    private HostProtectionResource m_demanded;
    private enum String ProtectedResourcesName/*todo: implement initializer*/ = null;
    private enum String DemandedResourcesName/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'ProtectedResources'
    //TODO: generate property 'DemandedResources'
    //TODO: generate method ToStringHelper
    //TODO: generate method ToString
    //TODO: generate method GetObjectData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\HostSecurityManager.cs'
//
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum HostSecurityManagerOptions
{
    None = 0x0000,
    HostAppDomainEvidence = 0x0001,
    // Ignored: [Obsolete("AppDomain policy levels are obsolete and will be removed in a future release of the .NET Framework. See http://go.microsoft.com/fwlink/?LinkID=155570 for more information.")]
    HostPolicyLevel = 0x0002,
    HostAssemblyEvidence = 0x0004,
    HostDetermineApplicationTrust = 0x0008,
    HostResolvePolicy = 0x0010,
    AllFlags = 0x001F,
}
//[System.Security.SecurityCritical]  // auto-generated_required
//[Serializable]
//#if !FEATURE_CORECLR
//    [SecurityPermissionAttribute(SecurityAction.InheritanceDemand, Flags=SecurityPermissionFlag.Infrastructure)]
//#endif
//    [System.Runtime.InteropServices.ComVisible(true)]
public class HostSecurityManager : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate property 'Flags'
    //TODO: generate method ProvideAppDomainEvidence
    //TODO: generate method ProvideAssemblyEvidence
    //TODO: generate method GetHostSuppliedAppDomainEvidenceTypes
    //TODO: generate method GetHostSuppliedAssemblyEvidenceTypes
    //TODO: generate method GenerateAppDomainEvidence
    //TODO: generate method GenerateAssemblyEvidence
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\IEvidenceFactory.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public interface IEvidenceFactory
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\IPermission.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public interface IPermission : ISecurityEncodable
{
    //TODO: generate method Copy
    //TODO: generate method Intersect
    //TODO: generate method Union
    //TODO: generate method IsSubsetOf
    //TODO: generate method Demand
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\ISecurityEncodable.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public interface ISecurityEncodable
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\ISecurityPolicyEncodable.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public interface ISecurityPolicyEncodable
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\IStackWalk.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public interface IStackWalk
{
    //TODO: generate method Assert
    //TODO: generate method Demand
    //TODO: generate method Deny
    //TODO: generate method PermitOnly
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\NamedPermissionSet.cs'
//
//#else // FEATURE_CAS_POLICY
//    
//    using System.Threading;
//
//#endif // FEATURE_CAS_POLICY
//    
//    [Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class NamedPermissionSet : PermissionSet
{
    //TODO: generate method GetBuiltInSet
    //TODO: generate method CreateFullTrustSet
    //TODO: generate method CreateNothingSet
    //TODO: generate method CreateExecutionSet
    //TODO: generate method CreateSkipVerificationSet
    //TODO: generate method CreateInternetSet
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\PermissionListSet.cs'
//
//[Serializable]
public final class PermissionListSet : DotNetObject
{
    private PermissionSetTriple m_firstPermSetTriple;
    private ArrayList m_permSetTriples;
    //TODO: generate constructor
    //TODO: generate method EnsureTriplesListCreated
    //TODO: generate method Terminate
    //TODO: generate method Terminate
    //TODO: generate method Update
    //TODO: generate method Update
    //TODO: generate method Update2
    //TODO: generate method Update
    //TODO: generate method Update
    //TODO: generate method UpdatePermissions
    //TODO: generate method UpdateTripleListAndCreateNewTriple
    //TODO: generate method UpdateArrayList
    //TODO: generate method CheckDemandNoThrow
    //TODO: generate method CheckSetDemandNoThrow
    //TODO: generate method CheckDemand
    //TODO: generate method CheckSetDemand
    //TODO: generate method CheckSetDemandWithModification
    //TODO: generate method CheckFlags
    //TODO: generate method DemandFlagsOrGrantSet
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\PermissionSet.cs'
//
// Ignored: [Serializable]
public enum SpecialPermissionSetFlag
{
    Regular = 0,
    NoSet = 1,
    EmptySet = 2,
    SkipVerification = 3,
}
//#if FEATURE_SERIALIZATION
//    [Serializable]
//#endif
//#if !FEATURE_CORECLR
//    [StrongNameIdentityPermissionAttribute(SecurityAction.InheritanceDemand, Name = "mscorlib", PublicKey = "0x" + AssemblyRef.EcmaPublicKeyFull)]
//#endif
//    [System.Runtime.InteropServices.ComVisible(true)]
public class PermissionSet : DotNetObject, ISecurityEncodable, ICollection, IStackWalk
{
    public static immutable bool debug_;
    //TODO: generate method DEBUG_WRITE
    //TODO: generate method DEBUG_COND_WRITE
    //TODO: generate method DEBUG_PRINTSTACK
    private bool m_Unrestricted;
    // Ignored: [OptionalField(VersionAdded = 2)]
    private bool m_allPermissionsDecoded/*todo: implement initializer*/ = bool();
    // Ignored: [OptionalField(VersionAdded = 2)]
    public TokenBasedSet m_permSet/*todo: implement initializer*/ = null;
    // Ignored: // This is a workaround so that SQL can operate under default policy without actually
    // Ignored: // granting permissions in assemblies that they disallow.
    // Ignored: [OptionalField(VersionAdded = 2)]
    private bool m_ignoreTypeLoadFailures/*todo: implement initializer*/ = bool();
    // Ignored: // This field will be populated only for non X-AD scenarios where we create a XML-ised string of the PermissionSet
    // Ignored: [OptionalField(VersionAdded = 2)]
    private String m_serializedPermissionSet;
    // Ignored: [NonSerialized]
    private bool m_CheckedForNonCas;
    // Ignored: [NonSerialized]
    private bool m_ContainsCas;
    // Ignored: [NonSerialized]
    private bool m_ContainsNonCas;
    // Ignored: // only used during non X-AD serialization to save the m_permSet value (which we dont want serialized)
    // Ignored: [NonSerialized]
    private TokenBasedSet m_permSetSaved;
    private bool readableonly;
    private TokenBasedSet m_unrestrictedPermSet;
    private TokenBasedSet m_normalPermSet;
    // Ignored: [OptionalField(VersionAdded = 2)]
    private bool m_canUnrestrictedOverride;
    public static immutable PermissionSet s_fullTrust/*todo: implement initializer*/ = null;
    //TODO: generate method OnSerialized
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CopyTo
    //TODO: generate constructor
    //TODO: generate property 'SyncRoot'
    //TODO: generate property 'IsSynchronized'
    //TODO: generate property 'IsReadOnly'
    //TODO: generate method Reset
    //TODO: generate method CheckSet
    //TODO: generate method IsEmpty
    //TODO: generate method FastIsEmpty
    //TODO: generate property 'Count'
    //TODO: generate method GetPermission
    //TODO: generate method GetPermission
    //TODO: generate method GetPermission
    //TODO: generate method SetPermission
    //TODO: generate method SetPermissionImpl
    //TODO: generate method AddPermission
    //TODO: generate method AddPermissionImpl
    //TODO: generate method RemovePermission
    //TODO: generate method SetUnrestricted
    //TODO: generate method IsUnrestricted
    public enum IsSubsetOfType
    {
        Normal,
        CheckDemand,
        CheckPermitOnly,
        CheckAssertion,
    }
    //TODO: generate method IsSubsetOfHelper
    //TODO: generate method IsSubsetOf
    //TODO: generate method CheckDemand
    //TODO: generate method CheckPermitOnly
    //TODO: generate method CheckAssertion
    //TODO: generate method CheckDeny
    //TODO: generate method CheckDecoded
    //TODO: generate method CheckDecoded
    //TODO: generate method CheckDecoded
    //TODO: generate method InplaceIntersect
    //TODO: generate method Intersect
    //TODO: generate method InplaceUnion
    //TODO: generate method Union
    //TODO: generate method MergeDeniedSet
    //TODO: generate method Contains
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method Demand
    //TODO: generate method DemandNonCAS
    //TODO: generate method Assert
    //TODO: generate method Deny
    //TODO: generate method PermitOnly
    //TODO: generate method GetFirstPerm
    //TODO: generate method Copy
    //TODO: generate method CopyWithNoIdentityPermissions
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumeratorImpl
    //TODO: generate method GetEnumeratorInternal
    //TODO: generate method NormalizePermissionSet
    //TODO: generate method DecodeAllPermissions
    //TODO: generate method FilterHostProtectionPermissions
    //TODO: generate method ContainsNonCodeAccessPermissions
    //TODO: generate method GetCasOnlySet
    //TODO: generate method MergePermission
    //TODO: generate method CreateSerialized
    //TODO: generate method RevertAssert
    //TODO: generate method RemoveRefusedPermissionSet
    //TODO: generate method RemoveAssertedPermissionSet
    //TODO: generate method IsIntersectingAssertedPermissions
    //TODO: generate property 'IgnoreTypeLoadFailures'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\PermissionSetEnumerator.cs'
//
public class PermissionSetEnumerator : DotNetObject, IEnumerator
{
    private PermissionSetEnumeratorInternal enm;
    //TODO: generate property 'Current'
    //TODO: generate method MoveNext
    //TODO: generate method Reset
    //TODO: generate constructor
}
public struct PermissionSetEnumeratorInternal
{
    private PermissionSet m_permSet;
    private TokenBasedSetEnumerator enm;
    //TODO: generate property 'Current'
    //TODO: generate constructor
    //TODO: generate method GetCurrentIndex
    //TODO: generate method Reset
    //TODO: generate method MoveNext
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\PermissionSetTriple.cs'
//
//[Serializable]
public final class PermissionSetTriple : DotNetObject
{
    private static /*todo: volatile*/PermissionToken s_zoneToken;
    private static /*todo: volatile*/PermissionToken s_urlToken;
    public PermissionSet AssertSet;
    public PermissionSet GrantSet;
    public PermissionSet RefusedSet;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Reset
    //TODO: generate method IsEmpty
    //TODO: generate property 'ZoneToken'
    //TODO: generate property 'UrlToken'
    //TODO: generate method Update
    //TODO: generate method UpdateAssert
    //TODO: generate method UpdateGrant
    //TODO: generate method UpdateGrant
    //TODO: generate method UpdateRefused
    //TODO: generate method CheckAssert
    //TODO: generate method CheckAssert
    //TODO: generate method CheckDemand
    //TODO: generate method CheckSetDemand
    //TODO: generate method CheckDemandNoThrow
    //TODO: generate method CheckSetDemandNoThrow
    //TODO: generate method CheckFlags
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\PermissionToken.cs'
//
// Ignored: [Flags]
public enum PermissionTokenType
{
    Normal = 0x1,
    IUnrestricted = 0x2,
    DontKnow = 0x4,
    BuiltIn = 0x8,
}
//[Serializable]
public final class PermissionTokenKeyComparer : DotNetObject, IEqualityComparer
{
    private Comparer _caseSensitiveComparer;
    private TextInfo _info;
    //TODO: generate constructor
    //TODO: generate method Compare
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
//[Serializable]
public final class PermissionToken : DotNetObject, ISecurityEncodable
{
    private static immutable PermissionTokenFactory s_theTokenFactory;
    private enum String c_mscorlibName/*todo: implement initializer*/ = null;
    public int m_index;
    public /*todo: volatile*/PermissionTokenType m_type;
    public static TokenBasedSet s_tokenSet/*todo: implement initializer*/ = null;
    //TODO: generate method IsMscorlibClassName
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetToken
    //TODO: generate method GetToken
    //TODO: generate method FindTokenByIndex
    //TODO: generate method IsTokenProperlyAssigned
}
public class PermissionTokenFactory : DotNetObject
{
    private /*todo: volatile*/int m_size;
    private /*todo: volatile*/int m_index;
    private /*todo: volatile*/Hashtable m_tokenTable;
    private /*todo: volatile*/Hashtable m_handleTable;
    private /*todo: volatile*/Hashtable m_indexTable;
    private /*todo: volatile*/PermissionToken[] m_builtIn;
    private enum String s_unrestrictedPermissionInferfaceName/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method FindTokenByIndex
    //TODO: generate method GetToken
    //TODO: generate method GetToken
    //TODO: generate method BuiltInGetToken
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\SecurityContext.cs'
//
public enum SecurityContextSource
{
    CurrentAppDomain = 0,
    CurrentAssembly,
}
public enum SecurityContextDisableFlow
{
    Nothing = 0,
    WI = 0x1,
    All = 0x3FFF,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\SecurityElement.cs'
//
public enum SecurityElementType
{
    Regular = 0,
    Format = 1,
    Comment = 2,
}
public interface ISecurityElementFactory
{
    //TODO: generate method CreateSecurityElement
    //TODO: generate method Copy
    //TODO: generate method GetTag
    //TODO: generate method Attribute
}
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class SecurityElement : DotNetObject, ISecurityElementFactory
{
    public String m_strTag;
    public String m_strText;
    private ArrayList m_lChildren;
    public ArrayList m_lAttributes;
    public SecurityElementType m_type/*todo: implement initializer*/ = (cast(SecurityElementType)0);
    private static immutable wchar[] s_tagIllegalCharacters/*todo: implement initializer*/ = null;
    private static immutable wchar[] s_textIllegalCharacters/*todo: implement initializer*/ = null;
    private static immutable wchar[] s_valueIllegalCharacters/*todo: implement initializer*/ = null;
    private enum String s_strIndent/*todo: implement initializer*/ = null;
    private enum int c_AttributesTypical/*todo: implement initializer*/ = int();
    private enum int c_ChildrenTypical/*todo: implement initializer*/ = int();
    private static immutable String[] s_escapeStringPairs/*todo: implement initializer*/ = null;
    private static immutable wchar[] s_escapeChars/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method CreateSecurityElement
    //TODO: generate method GetTag
    //TODO: generate method Copy
    //TODO: generate method Attribute
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Tag'
    //TODO: generate property 'Attributes'
    //TODO: generate property 'Text'
    //TODO: generate property 'Children'
    //TODO: generate method ConvertSecurityElementFactories
    //TODO: generate property 'InternalChildren'
    //TODO: generate method AddAttributeSafe
    //TODO: generate method AddAttribute
    //TODO: generate method AddChild
    //TODO: generate method AddChild
    //TODO: generate method AddChildNoDuplicates
    //TODO: generate method Equal
    //TODO: generate method Copy
    //TODO: generate method IsValidTag
    //TODO: generate method IsValidText
    //TODO: generate method IsValidAttributeName
    //TODO: generate method IsValidAttributeValue
    //TODO: generate method GetEscapeSequence
    //TODO: generate method Escape
    //TODO: generate method GetUnescapeSequence
    //TODO: generate method Unescape
    private alias ToStringHelperFunc = void delegate(DotNetObject obj, String str);
    //TODO: generate method ToStringHelperStringBuilder
    //TODO: generate method ToStringHelperStreamWriter
    //TODO: generate method ToString
    //TODO: generate method ToWriter
    //TODO: generate method ToString
    //TODO: generate method Attribute
    //TODO: generate method SearchForChildByTag
    //TODO: generate method SearchForTextOfLocalName
    //TODO: generate method SearchForTextOfTag
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\SecurityException.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public class SecurityException : SystemException
{
    //TODO: generate method GetResString
    //TODO: generate method MakeSecurityException
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method ToString
    //TODO: generate method CanAccessSensitiveInfo
    //TODO: generate method GetObjectData
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Demanded'
    //TODO: generate property 'DenySetInstance'
    //TODO: generate property 'FailedAssemblyInfo'
    //TODO: generate property 'GrantedSet'
    //TODO: generate property 'Method'
    //TODO: generate property 'PermissionState'
    //TODO: generate property 'PermissionType'
    //TODO: generate property 'PermitOnlySetInstance'
    //TODO: generate property 'RefusedSet'
    //TODO: generate property 'Url'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\SecurityManager.cs'
//
// Ignored: [Serializable]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum PolicyLevelType
{
    User = 0,
    Machine = 1,
    Enterprise = 2,
    AppDomain = 3,
}
//[System.Runtime.InteropServices.ComVisible(true)]
public class SecurityManager : DotNetObject
{
    private this() {} // prevent instantiation
    private static int[][] s_BuiltInPermissionIndexMap/*todo: implement initializer*/ = null;
    private static CodeAccessPermission[] s_UnrestrictedSpecialPermissionMap/*todo: implement initializer*/ = null;
    //TODO: generate method GetSpecialFlags
    //TODO: generate method MapToSpecialFlags
    //TODO: generate method IsSameType
    //TODO: generate method _SetThreadSecurity
    //TODO: generate method GetGrantedPermissions
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\SecurityRuntime.cs'
//
public class SecurityRuntime : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method GetSecurityObjectForFrame
    public enum bool StackContinue/*todo: implement initializer*/ = bool();
    public enum bool StackHalt/*todo: implement initializer*/ = bool();
    //TODO: generate method GetMethodInfo
    //TODO: generate method FrameDescSetHelper
    //TODO: generate method FrameDescHelper
    //TODO: generate method Assert
    //TODO: generate method AssertAllPossible
    //TODO: generate method Deny
    //TODO: generate method PermitOnly
    //TODO: generate method RevertAssert
    //TODO: generate method RevertDeny
    //TODO: generate method RevertPermitOnly
    //TODO: generate method RevertAll
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\SecurityState.cs'
//
//[System.Security.SecurityCritical]  // auto-generated_required
//#pragma warning disable 618
//    [PermissionSet(SecurityAction.InheritanceDemand, Unrestricted = true)]
public abstract class SecurityState : DotNetObject
{
    //TODO: generate constructor
    //TODO: generate method IsStateAvailable
    //TODO: generate method EnsureState
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\SecurityZone.cs'
//
// Ignored: // The quick cache code depends on the values in this enumeration. Any change to this enumeration should
// Ignored: // be reflected in PolicyManager.GenerateQuickCache as well.
// Ignored: [ComVisible(true)]
// Ignored: [Serializable]
public enum SecurityZone
{
    MyComputer = 0,
    Intranet = 1,
    Trusted = 2,
    Internet = 3,
    Untrusted = 4,
    NoZone = -1,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\VerificationException.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public class VerificationException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}
