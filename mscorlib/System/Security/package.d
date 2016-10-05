module mscorlib.System.Security;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    AttributeUsageAttribute,
    Attribute,
    ObsoleteAttribute,
    __DotNet__Object,
    String,
    Environment,
    SerializableAttribute,
    NonSerializedAttribute,
    SystemException,
    FlagsAttribute,
    CoreLib,
    Void;
import mscorlib.System.Runtime.InteropServices :
    ComVisibleAttribute;
import mscorlib :
    AssemblyRef;
import mscorlib.System.Security.Permissions :
    SecurityPermission,
    HostProtectionResource,
    BuiltInPermissionIndex,
    PermissionState,
    PermissionSetAttribute;
import mscorlib.Microsoft.Win32.SafeHandles :
    SafeAccessTokenHandle;
import mscorlib.System.Collections :
    ArrayList,
    ICollection,
    IEnumerator,
    IEqualityComparer,
    Comparer,
    Hashtable;
import mscorlib.System.Runtime.Serialization :
    OptionalFieldAttribute;
import mscorlib.System.Security.Util :
    TokenBasedSet,
    TokenBasedSetEnumerator;
import mscorlib.System.Globalization :
    TextInfo;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Attributes.cs'
//
// DynamicSecurityMethodAttribute:
//  Indicates that calling the target method requires space for a security
//  object to be allocated on the callers stack. This attribute is only ever
//  set on certain security methods defined within mscorlib.
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, AllowMultiple = true, Inherited = false*/)
package(mscorlib) final class DynamicSecurityMethodAttribute : Attribute
{
}
// SuppressUnmanagedCodeSecurityAttribute:
//  Indicates that the target P/Invoke method(s) should skip the per-call
//  security checked for unmanaged code permission.
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method | AttributeTargets.Class | AttributeTargets.Interface | AttributeTargets.Delegate, AllowMultiple = true, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class SuppressUnmanagedCodeSecurityAttribute : Attribute
{
}
// UnverifiableCodeAttribute:
//  Indicates that the target module contains unverifiable code.
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Module, AllowMultiple = true, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class UnverifiableCodeAttribute : Attribute
{
}
// AllowPartiallyTrustedCallersAttribute:
//  Indicates that the Assembly is secure and can be used by untrusted
//  and semitrusted clients
//  For v.1, this is valid only on Assemblies, but could be expanded to 
//  include Module, Method, class
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, AllowMultiple = false, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
// #if !FEATURE_CORECLR
// [Obsolete("SecurityCriticalScope is only used for .NET 2.0 transparency compatibility.")]
// public enum SecurityCriticalScope
// {
// Explicit = 0,
// Everything = 0x1
// }
// #endif // FEATURE_CORECLR
// SecurityCriticalAttribute
//  Indicates that the decorated code or assembly performs security critical operations (e.g. Assert, "unsafe", LinkDemand, etc.)
//  The attribute can be placed on most targets, except on arguments/return values.
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly | 
                    AttributeTargets.Class |
                    AttributeTargets.Struct |
                    AttributeTargets.Enum |
                    AttributeTargets.Constructor |
                    AttributeTargets.Method |
                    AttributeTargets.Field |
                    AttributeTargets.Interface  |
                    AttributeTargets.Delegate, AllowMultiple = false, Inherited = false*/)
public final class SecurityCriticalAttribute : Attribute
{
    //TODO: generate constructor
}
// SecurityTreatAsSafeAttribute:
// Indicates that the code may contain violations to the security critical rules (e.g. transitions from
//      critical to non-public transparent, transparent to non-public critical, etc.), has been audited for
//      security concerns and is considered security clean.
// At assembly-scope, all rule checks will be suppressed within the assembly and for calls made against the assembly.
// At type-scope, all rule checks will be suppressed for members within the type and for calls made against the type.
// At member level (e.g. field and method) the code will be treated as public - i.e. no rule checks for the members.
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly |
                    AttributeTargets.Class |
                    AttributeTargets.Struct |
                    AttributeTargets.Enum |
                    AttributeTargets.Constructor |
                    AttributeTargets.Method |
                    AttributeTargets.Field |
                    AttributeTargets.Interface |
                    AttributeTargets.Delegate, AllowMultiple = false, Inherited = false*/)
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "SecurityTreatAsSafe is only used for .NET 2.0 transparency compatibility.  Please use the SecuritySafeCriticalAttribute instead."*/)
public final class SecurityTreatAsSafeAttribute : Attribute
{
    //TODO: generate constructor
}
// SecuritySafeCriticalAttribute: 
// Indicates that the code may contain violations to the security critical rules (e.g. transitions from
//      critical to non-public transparent, transparent to non-public critical, etc.), has been audited for
//      security concerns and is considered security clean. Also indicates that the code is considered SecurityCritical.
// The effect of this attribute is as if the code was marked [SecurityCritical][SecurityTreatAsSafe].
// At assembly-scope, all rule checks will be suppressed within the assembly and for calls made against the assembly.
// At type-scope, all rule checks will be suppressed for members within the type and for calls made against the type.
// At member level (e.g. field and method) the code will be treated as public - i.e. no rule checks for the members.
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class |
                    AttributeTargets.Struct |
                    AttributeTargets.Enum |
                    AttributeTargets.Constructor |
                    AttributeTargets.Method |
                    AttributeTargets.Field |
                    AttributeTargets.Interface |
                    AttributeTargets.Delegate, AllowMultiple = false, Inherited = false*/)
public final class SecuritySafeCriticalAttribute : Attribute
{
    //TODO: generate constructor
}
// SecurityTransparentAttribute:
// Indicates the assembly contains only transparent code.
// Security critical actions will be restricted or converted into less critical actions. For example,
// Assert will be restricted, SuppressUnmanagedCode, LinkDemand, unsafe, and unverifiable code will be converted
// into Full-Demands.
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, AllowMultiple = false, Inherited = false*/)
public final class SecurityTransparentAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\BuiltInPermissionSets.cs'
//
package(mscorlib) class BuiltInPermissionSets : __DotNet__Object
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
// #if !FEATURE_CORECLR
// [SecurityPermissionAttribute( SecurityAction.InheritanceDemand, ControlEvidence = true, ControlPolicy = true )]
// #endif
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public abstract class CodeAccessPermission : __DotNet__Object, IPermission, ISecurityEncodable, IStackWalk
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
// Used in DemandInternal, to remember the result of previous demands
// KEEP IN SYNC WITH DEFINITIONS IN SECURITYPOLICY.H
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) enum PermissionType
{
    // special flags
    SecurityUnmngdCodeAccess = 0,
    SecuritySkipVerification = 1,
    ReflectionTypeInfo = 2,
    SecurityAssert = 3,
    ReflectionMemberAccess = 4,
    SecuritySerialization = 5,
    ReflectionRestrictedMemberAccess = 6,
    FullTrust = 7,
    SecurityBindingRedirects = 8,
    // special permissions
    UIPermission = 9,
    EnvironmentPermission = 10,
    FileDialogPermission = 11,
    FileIOPermission = 12,
    ReflectionPermission = 13,
    SecurityPermission = 14,
    // additional special flags
    SecurityControlEvidence = 16,
    SecurityControlPrincipal = 17,
}
package(mscorlib) class CodeAccessSecurityEngine : __DotNet__Object
{
    private this() {} // prevent instantiation
    package(mscorlib) static SecurityPermission AssertPermission;
    package(mscorlib) static PermissionToken AssertPermissionToken;
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
// #endif    
//FrameSecurityDescriptor.cs
//
// Internal use only.
// DO NOT DOCUMENT
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class FrameSecurityDescriptor : __DotNet__Object
{
    private PermissionSet m_assertions;
    private PermissionSet m_denials;
    private PermissionSet m_restriction;
    private PermissionSet m_DeclarativeAssertions;
    private PermissionSet m_DeclarativeDenials;
    private PermissionSet m_DeclarativeRestrictions;
    // #if !FEATURE_PAL
    // if this frame contains a call to any WindowsIdentity.Impersonate(), 
    // we save the previous SafeTokenHandles here (in the next two fields)
    // Used during exceptionstackwalks to revert impersonation before calling filters        
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private SafeAccessTokenHandle m_callerToken;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
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
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum HostSecurityManagerOptions
{
    None = 0x0000,
    HostAppDomainEvidence = 0x0001,
    HostPolicyLevel = 0x0002,
    HostAssemblyEvidence = 0x0004,
    HostDetermineApplicationTrust = 0x0008,
    HostResolvePolicy = 0x0010,
    AllFlags = 0x001F,
}
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
@__DotNet__Attribute!(SerializableAttribute.stringof)
// #if !FEATURE_CORECLR
// [SecurityPermissionAttribute(SecurityAction.InheritanceDemand, Flags=SecurityPermissionFlag.Infrastructure)]
// #endif
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class HostSecurityManager : __DotNet__Object
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
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IEvidenceFactory
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\IPermission.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface ISecurityEncodable
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\ISecurityPolicyEncodable.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface ISecurityPolicyEncodable
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\IStackWalk.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
// #else // FEATURE_CAS_POLICY
// using System.Threading;
// #endif // FEATURE_CAS_POLICY
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class PermissionListSet : __DotNet__Object
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) enum SpecialPermissionSetFlag
{
    // These also appear in clr/src/vm/permset.h
    Regular = 0,
    NoSet = 1,
    EmptySet = 2,
    SkipVerification = 3,
}
// #if FEATURE_SERIALIZATION
// [Serializable]
// #endif
// #if !FEATURE_CORECLR
// [StrongNameIdentityPermissionAttribute(SecurityAction.InheritanceDemand, Name = "mscorlib", PublicKey = "0x" + AssemblyRef.EcmaPublicKeyFull)]
// #endif
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class PermissionSet : __DotNet__Object, ISecurityEncodable, ICollection, IStackWalk
{
    package(mscorlib) static immutable bool debug_;
    //TODO: generate method DEBUG_WRITE
    //TODO: generate method DEBUG_COND_WRITE
    //TODO: generate method DEBUG_PRINTSTACK
    private bool m_Unrestricted;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    private bool m_allPermissionsDecoded/*todo: implement initializer*/ = bool();
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    package(mscorlib) TokenBasedSet m_permSet/*todo: implement initializer*/ = null;
    // This is a workaround so that SQL can operate under default policy without actually
    // granting permissions in assemblies that they disallow.
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    private bool m_ignoreTypeLoadFailures/*todo: implement initializer*/ = bool();
    // This field will be populated only for non X-AD scenarios where we create a XML-ised string of the PermissionSet
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    private String m_serializedPermissionSet;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private bool m_CheckedForNonCas;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private bool m_ContainsCas;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private bool m_ContainsNonCas;
    // only used during non X-AD serialization to save the m_permSet value (which we dont want serialized)
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private TokenBasedSet m_permSetSaved;
    private bool readableonly;
    private TokenBasedSet m_unrestrictedPermSet;
    private TokenBasedSet m_normalPermSet;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    private bool m_canUnrestrictedOverride;
    package(mscorlib) static immutable PermissionSet s_fullTrust/*todo: implement initializer*/ = null;
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
    package(mscorlib) enum IsSubsetOfType
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
package(mscorlib) class PermissionSetEnumerator : __DotNet__Object, IEnumerator
{
    private PermissionSetEnumeratorInternal enm;
    //TODO: generate property 'Current'
    //TODO: generate method MoveNext
    //TODO: generate method Reset
    //TODO: generate constructor
}
package(mscorlib) struct PermissionSetEnumeratorInternal
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class PermissionSetTriple : __DotNet__Object
{
    private static /*todo: volatile*/ PermissionToken s_zoneToken;
    private static /*todo: volatile*/ PermissionToken s_urlToken;
    package(mscorlib) PermissionSet AssertSet;
    package(mscorlib) PermissionSet GrantSet;
    package(mscorlib) PermissionSet RefusedSet;
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
@__DotNet__Attribute!(FlagsAttribute.stringof)
package(mscorlib) enum PermissionTokenType
{
    Normal = 0x1,
    IUnrestricted = 0x2,
    DontKnow = 0x4,
    BuiltIn = 0x8,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class PermissionTokenKeyComparer : __DotNet__Object, IEqualityComparer
{
    private Comparer _caseSensitiveComparer;
    private TextInfo _info;
    //TODO: generate constructor
    //TODO: generate method Compare
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class PermissionToken : __DotNet__Object, ISecurityEncodable
{
    private static immutable PermissionTokenFactory s_theTokenFactory;
    private enum String c_mscorlibName/*todo: implement initializer*/ = null;
    package(mscorlib) int m_index;
    package(mscorlib) /*todo: volatile*/ PermissionTokenType m_type;
    package(mscorlib) static TokenBasedSet s_tokenSet/*todo: implement initializer*/ = null;
    //TODO: generate method IsMscorlibClassName
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetToken
    //TODO: generate method GetToken
    //TODO: generate method FindTokenByIndex
    //TODO: generate method IsTokenProperlyAssigned
}
package(mscorlib) class PermissionTokenFactory : __DotNet__Object
{
    private /*todo: volatile*/ int m_size;
    private /*todo: volatile*/ int m_index;
    private /*todo: volatile*/ Hashtable m_tokenTable;
    private /*todo: volatile*/ Hashtable m_handleTable;
    private /*todo: volatile*/ Hashtable m_indexTable;
    private /*todo: volatile*/ PermissionToken[] m_builtIn;
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
package(mscorlib) enum SecurityContextDisableFlow
{
    Nothing = 0,
    WI = 0x1,
    All = 0x3FFF,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\SecurityElement.cs'
//
package(mscorlib) enum SecurityElementType
{
    Regular = 0,
    Format = 1,
    Comment = 2,
}
package(mscorlib) interface ISecurityElementFactory
{
    //TODO: generate method CreateSecurityElement
    //TODO: generate method Copy
    //TODO: generate method GetTag
    //TODO: generate method Attribute
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class SecurityElement : __DotNet__Object, ISecurityElementFactory
{
    package(mscorlib) String m_strTag;
    package(mscorlib) String m_strText;
    private ArrayList m_lChildren;
    package(mscorlib) ArrayList m_lAttributes;
    package(mscorlib) SecurityElementType m_type/*todo: implement initializer*/ = (cast(SecurityElementType)0);
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
    private alias ToStringHelperFunc = void delegate(__DotNet__Object obj, String str);
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
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum PolicyLevelType
{
    User = 0,
    Machine = 1,
    Enterprise = 2,
    AppDomain = 3,
}
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class SecurityManager : __DotNet__Object
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
package(mscorlib) class SecurityRuntime : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method GetSecurityObjectForFrame
    package(mscorlib) enum bool StackContinue/*todo: implement initializer*/ = bool();
    package(mscorlib) enum bool StackHalt/*todo: implement initializer*/ = bool();
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
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
// #pragma warning disable 618
@__DotNet__Attribute!(PermissionSetAttribute.stringof/*, SecurityAction.InheritanceDemand, Unrestricted = true*/)
public abstract class SecurityState : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method IsStateAvailable
    //TODO: generate method EnsureState
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\SecurityZone.cs'
//
// The quick cache code depends on the values in this enumeration. Any change to this enumeration should
// be reflected in PolicyManager.GenerateQuickCache as well.
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
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
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class VerificationException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}
