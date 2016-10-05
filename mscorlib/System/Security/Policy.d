module mscorlib.System.Security.Policy;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    SerializableAttribute,
    NonSerializedAttribute,
    __DotNet__Object,
    Type,
    SystemException,
    FlagsAttribute,
    String,
    Version;
import mscorlib.System.Runtime.InteropServices :
    ComVisibleAttribute;
import mscorlib.System.Security :
    ISecurityEncodable,
    ISecurityPolicyEncodable,
    PermissionSet,
    SecurityZone;
import mscorlib.System.Collections.Generic :
    IList1,
    IEnumerable1,
    List1;
import mscorlib.System.Security.Permissions :
    PermissionSetAttribute,
    StrongNamePublicKeyBlob;
import mscorlib.System.Security.Util :
    SiteString,
    URLString;
import mscorlib.System.Reflection :
    RuntimeAssembly;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Policy\ApplicationTrust.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum ApplicationVersionMatch
{
    MatchExactVersion,
    MatchAllVersions,
}
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class ApplicationTrust : EvidenceBase, ISecurityEncodable
{
    private PolicyStatement m_psDefaultGrant;
    private IList1!(StrongName) m_fullTrustAssemblies;
    // Permission special flags for the default grant set in this ApplicationTrust.  This should be
    // updated in sync with any updates to the default grant set.
    // 
    // In the general case, these values cannot be trusted - we only store a reference to the
    // DefaultGrantSet, and return the reference directly, which means that code can update the
    // permission set without our knowledge.  That would lead to the flags getting out of sync with the
    // grant set.
    // 
    // However, we only care about these flags when we're creating a homogenous AppDomain, and in that
    // case we control the ApplicationTrust object end-to-end, and know that the permission set will not
    // change after the flags are calculated.
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private int m_grantSetSpecialFlags;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method InitDefaultGrantSet
    //TODO: generate property 'DefaultGrantSet'
    //TODO: generate property 'FullTrustAssemblies'
    //TODO: generate method Clone
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Policy\Evidence.cs'
//
/// <summary>
///     The Evidence class keeps track of information that can be used to make security decisions about
///     an assembly or an AppDomain.  There are two types of evidence, one is supplied by the CLR or a
///     host, the other supplied by the assembly itself.
///     
///     We keep a dictionary that maps each type of possbile evidence to an EvidenceTypeDescriptor which
///     contains the evidence objects themselves if they exist as well as some extra metadata about that
///     type of evidence.  This dictionary is fully populated with keys for host evidence at all times and
///     for assembly evidence the first time the application evidence is touched.  This means that if a
///     Type key does not exist in the dictionary, then that particular type of evidence will never be
///     given to the assembly or AppDomain in question as host evidence.  The only exception is if the
///     user later manually adds host evidence via the AddHostEvidence API.
///     
///     Assembly supplied evidence is created up front, however host supplied evidence may be lazily
///     created.  In the lazy creation case, the Type will map to either an EvidenceTypeDescriptor that does
///     not contain any evidence data or null.  As requests come in for that evidence, we'll populate the
///     EvidenceTypeDescriptor appropriately.
/// </summary>
// #if FEATURE_SERIALIZATION
// [Serializable]
// #endif
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class Evidence : __DotNet__Object
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Policy\EvidenceBase.cs'
//
/// <summary>
///     Base class from which all objects to be used as Evidence must derive
/// </summary>
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
// #pragma warning disable 618
@__DotNet__Attribute!(PermissionSetAttribute.stringof/*, SecurityAction.InheritanceDemand, Unrestricted = true*/)
public abstract class EvidenceBase : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method Clone
}
package(mscorlib) interface ILegacyEvidenceAdapter
{
    //TODO: generate property 'EvidenceObject'
    //TODO: generate property 'EvidenceType'
}
/// <summary>
///     Wrapper class to hold legacy evidence objects which do not derive from EvidenceBase, and allow
///     them to be held in the Evidence collection which expects to maintain lists of EvidenceBase only
/// </summary>
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class LegacyEvidenceWrapper : EvidenceBase, ILegacyEvidenceAdapter
{
    private __DotNet__Object m_legacyEvidence;
    //TODO: generate constructor
    //TODO: generate property 'EvidenceObject'
    //TODO: generate property 'EvidenceType'
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method Clone
}
/// <summary>
///     Pre-v4 versions of the runtime allow multiple pieces of evidence that all have the same type.
///     This type wraps those evidence objects into a single type of list, allowing legacy code to continue
///     to work with the Evidence collection that does not expect multiple evidences of the same type.
///     
///     This may not be limited to LegacyEvidenceWrappers, since it's valid for legacy code to add multiple
///     objects of built-in evidence to an Evidence collection.  The built-in evidence now derives from
///     EvienceObject, so when the legacy code runs on v4, it may end up attempting to add multiple
///     Hash evidences for intsance.
/// </summary>
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class LegacyEvidenceList : EvidenceBase, IEnumerable1!(EvidenceBase), ILegacyEvidenceAdapter
{
    private List1!(EvidenceBase) m_legacyEvidenceList/*todo: implement initializer*/ = null;
    //TODO: generate property 'EvidenceObject'
    //TODO: generate property 'EvidenceType'
    //TODO: generate method Add
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    //TODO: generate method Clone
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Policy\EvidenceTypeDescriptor.cs'
//
/// <summary>
///     Descriptor stored in the Evidence collection to detail the information we have about a type of
///     evidence. This descriptor also stores any evidence that's been generated of the specific type.
/// </summary>
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) final class EvidenceTypeDescriptor : __DotNet__Object
{
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private bool m_hostCanGenerate;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private bool m_generated;
    private EvidenceBase m_hostEvidence;
    private EvidenceBase m_assemblyEvidence;
    // EvidenceTypeDescriptors are stored in Evidence indexed by the type they describe, so this
    // information is redundant.  We keep it around in checked builds to help debugging, but we can drop
    // it from retial builds.
    // #if _DEBUG
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private Type m_evidenceType;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'AssemblyEvidence'
    //TODO: generate property 'Generated'
    //TODO: generate property 'HostCanGenerate'
    //TODO: generate property 'HostEvidence'
    //TODO: generate method CheckEvidenceType
    //TODO: generate method Clone
    //TODO: generate method SetEvidenceType
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Policy\IDelayEvaluatedEvidence.cs'
//
package(mscorlib) interface IDelayEvaluatedEvidence
{
    //TODO: generate property 'IsVerified'
    //TODO: generate property 'WasUsed'
    //TODO: generate method MarkUsed
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Policy\IIdentityPermissionFactory.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IIdentityPermissionFactory
{
    //TODO: generate method CreateIdentityPermission
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Policy\IRuntimeEvidenceFactory.cs'
//
package(mscorlib) interface IRuntimeEvidenceFactory
{
    //TODO: generate property 'Target'
    //TODO: generate method GetFactorySuppliedEvidence
    //TODO: generate method GenerateEvidence
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Policy\PolicyException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class PolicyException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Policy\PolicyStatement.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum PolicyStatementAttribute
{
    Nothing = 0x0,
    Exclusive = 0x01,
    LevelFinal = 0x02,
    All = 0x03,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class PolicyStatement : __DotNet__Object, ISecurityPolicyEncodable, ISecurityEncodable
{
    package(mscorlib) PermissionSet m_permSet;
    package(mscorlib) PolicyStatementAttribute m_attributes;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'PermissionSet'
    //TODO: generate method SetPermissionSetNoCopy
    //TODO: generate method GetPermissionSetNoCopy
    //TODO: generate property 'Attributes'
    //TODO: generate method Copy
    //TODO: generate property 'AttributeString'
    //TODO: generate method ValidProperties
    //TODO: generate method GetFlag
    //TODO: generate method InplaceUnion
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Policy\Site.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class Site : EvidenceBase, IIdentityPermissionFactory
{
    private SiteString m_name;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CreateFromUrl
    //TODO: generate method ParseSiteFromUrl
    //TODO: generate property 'Name'
    //TODO: generate method GetSiteString
    //TODO: generate method CreateIdentityPermission
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method Clone
    //TODO: generate method Copy
    //TODO: generate method Normalize
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Policy\StrongName.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class StrongName : EvidenceBase, IIdentityPermissionFactory, IDelayEvaluatedEvidence
{
    private StrongNamePublicKeyBlob m_publicKeyBlob;
    private String m_name;
    private Version m_version;
    // Delay evaluated evidence is for policy resolution only, so it doesn't make sense to save that
    // state away and then try to evaluate the strong name later.
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private RuntimeAssembly m_assembly/*todo: implement initializer*/ = null;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private bool m_wasUsed/*todo: implement initializer*/ = bool();
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'PublicKey'
    //TODO: generate property 'Name'
    //TODO: generate property 'Version'
    //TODO: generate property 'IsVerified'
    //TODO: generate property 'WasUsed'
    //TODO: generate method MarkUsed
    //TODO: generate method CompareNames
    //TODO: generate method CreateIdentityPermission
    //TODO: generate method Clone
    //TODO: generate method Copy
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method Normalize
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Policy\URL.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class Url : EvidenceBase, IIdentityPermissionFactory
{
    private URLString m_url;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Value'
    //TODO: generate method GetURLString
    //TODO: generate method CreateIdentityPermission
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method Clone
    //TODO: generate method Copy
    //TODO: generate method Normalize
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Policy\Zone.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class Zone : EvidenceBase, IIdentityPermissionFactory
{
    private SecurityZone m_zone;
    private static immutable String[] s_names/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CreateIdentityPermission
    //TODO: generate property 'SecurityZone'
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method Clone
    //TODO: generate method Copy
    //TODO: generate method Normalize
}
