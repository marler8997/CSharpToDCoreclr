module mscorlib.System.Security.Permissions;

import mscorlib.System.Security.Util :
    StringExpressionSet,
    SiteString,
    URLString;
import mscorlib.System.Security :
    CodeAccessPermission,
    SecurityZone;
import mscorlib.System :
    DotNetObject,
    String,
    Attribute,
    Version;
import mscorlib.System.Collections :
    ICollection,
    ArrayList,
    IEnumerator;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\EnvironmentPermission.cs'
//
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum EnvironmentPermissionAccess
{
    NoAccess = 0x00,
    Read = 0x01,
    Write = 0x02,
    AllAccess = 0x03,
}
//[Serializable]
public class EnvironmentStringExpressionSet : StringExpressionSet
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CreateNewEmpty
    //TODO: generate method StringSubsetString
    //TODO: generate method ProcessWholeString
    //TODO: generate method ProcessSingleString
    //TODO: generate method ToString
}
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public final class EnvironmentPermission : CodeAccessPermission, IUnrestrictedPermission, IBuiltInPermission
{
    private StringExpressionSet m_read;
    private StringExpressionSet m_write;
    private bool m_unrestricted;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method SetPathList
    //TODO: generate method AddPathList
    //TODO: generate method GetPathList
    //TODO: generate method VerifyFlag
    //TODO: generate method ExclusiveFlag
    //TODO: generate method FlagIsSet
    //TODO: generate method IsEmpty
    //TODO: generate method IsUnrestricted
    //TODO: generate method IsSubsetOf
    //TODO: generate method Intersect
    //TODO: generate method Union
    //TODO: generate method Copy
    //TODO: generate method GetTokenIndex
    //TODO: generate method GetTokenIndex
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\FileDialogPermission.cs'
//
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum FileDialogPermissionAccess
{
    None = 0x00,
    Open = 0x01,
    Save = 0x02,
    OpenSave = Open | Save,
}
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class FileDialogPermission : CodeAccessPermission, IUnrestrictedPermission, IBuiltInPermission
{
    private FileDialogPermissionAccess access;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Access'
    //TODO: generate method Copy
    //TODO: generate method GetTokenIndex
    //TODO: generate method GetTokenIndex
    //TODO: generate method Intersect
    //TODO: generate method IsSubsetOf
    //TODO: generate method IsUnrestricted
    //TODO: generate method Reset
    //TODO: generate method SetUnrestricted
    //TODO: generate method Union
    //TODO: generate method VerifyAccess
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\FileIOPermission.cs'
//
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum FileIOPermissionAccess
{
    NoAccess = 0x00,
    Read = 0x01,
    Write = 0x02,
    Append = 0x04,
    PathDiscovery = 0x08,
    AllAccess = 0x0F,
}
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public final class FileIOPermission : CodeAccessPermission, IUnrestrictedPermission, IBuiltInPermission
{
    private FileIOAccess m_read;
    private FileIOAccess m_write;
    private FileIOAccess m_append;
    private FileIOAccess m_pathDiscovery;
    // Ignored: [OptionalField(VersionAdded = 2)]
    private FileIOAccess m_viewAcl;
    // Ignored: [OptionalField(VersionAdded = 2)]
    private FileIOAccess m_changeAcl;
    private bool m_unrestricted;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method SetPathList
    //TODO: generate method SetPathList
    //TODO: generate method SetPathList
    //TODO: generate method SetPathList
    //TODO: generate method AddPathList
    //TODO: generate method AddPathList
    //TODO: generate method AddPathList
    //TODO: generate method AddPathList
    //TODO: generate method GetPathList
    //TODO: generate property 'AllLocalFiles'
    //TODO: generate property 'AllFiles'
    //TODO: generate method VerifyAccess
    //TODO: generate method ExclusiveAccess
    //TODO: generate method CheckIllegalCharacters
    //TODO: generate method CheckExtraPathCharacters
    //TODO: generate method AccessIsSet
    //TODO: generate method IsEmpty
    //TODO: generate method IsUnrestricted
    //TODO: generate method IsSubsetOf
    //TODO: generate method Intersect
    //TODO: generate method Union
    //TODO: generate method Copy
    //TODO: generate method GetTokenIndex
    //TODO: generate method GetTokenIndex
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method QuickDemand
    //TODO: generate method QuickDemand
    //TODO: generate method QuickDemand
    //TODO: generate method EmulateFileIOPermissionChecks
}
//[Serializable]
public final class FileIOAccess : DotNetObject
{
    private bool m_ignoreCase/*todo: implement initializer*/ = bool();
    private StringExpressionSet m_set;
    private bool m_allFiles;
    private bool m_allLocalFiles;
    private bool m_pathDiscovery;
    private enum String m_strAllFiles/*todo: implement initializer*/ = null;
    private enum String m_strAllLocalFiles/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method AddExpressions
    //TODO: generate property 'AllFiles'
    //TODO: generate property 'AllLocalFiles'
    //TODO: generate property 'PathDiscovery'
    //TODO: generate method IsEmpty
    //TODO: generate method Copy
    //TODO: generate method Union
    //TODO: generate method Intersect
    //TODO: generate method IsSubsetOf
    //TODO: generate method GetRoot
    //TODO: generate method ToString
    //TODO: generate method ToStringArray
    //TODO: generate method IsLocalDrive
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\GACIdentityPermission.cs'
//
//[AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly, AllowMultiple = true, Inherited = false )]
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public final class GacIdentityPermissionAttribute : CodeAccessSecurityAttribute
{
    //TODO: generate constructor
    //TODO: generate method CreatePermission
}
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public final class GacIdentityPermission : CodeAccessPermission, IBuiltInPermission
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Copy
    //TODO: generate method IsSubsetOf
    //TODO: generate method Intersect
    //TODO: generate method Union
    //TODO: generate method GetTokenIndex
    //TODO: generate method GetTokenIndex
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\HostProtectionPermission.cs'
//
// Ignored: // Keep this enum in sync with tools\ngen\ngen.cpp and inc\mscoree.idl
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum HostProtectionResource
{
    None = 0x0,
    Synchronization = 0x1,
    SharedState = 0x2,
    ExternalProcessMgmt = 0x4,
    SelfAffectingProcessMgmt = 0x8,
    ExternalThreading = 0x10,
    SelfAffectingThreading = 0x20,
    SecurityInfrastructure = 0x40,
    UI = 0x80,
    MayLeakOnAbort = 0x100,
    All = 0x1ff,
}
//[AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly | AttributeTargets.Delegate, AllowMultiple = true, Inherited = false )]
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
//#if FEATURE_CORECLR
//    // This needs to be in the asmmeta to enable SecAnnotate to successfully resolve and run the security rules. It gets marked
//    // as internal by BCLRewriter so we are simply marking it as FriendAccessAllowed so it stays in the asmmeta.
//    [System.Runtime.CompilerServices.FriendAccessAllowedAttribute]
public final class HostProtectionAttribute : CodeAccessSecurityAttribute
{
    private HostProtectionResource m_resources/*todo: implement initializer*/ = (cast(HostProtectionResource)0);
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Resources'
    //TODO: generate property 'Synchronization'
    //TODO: generate property 'SharedState'
    //TODO: generate property 'ExternalProcessMgmt'
    //TODO: generate property 'SelfAffectingProcessMgmt'
    //TODO: generate property 'ExternalThreading'
    //TODO: generate property 'SelfAffectingThreading'
    //TODO: generate property 'SecurityInfrastructure'
    //TODO: generate property 'UI'
    //TODO: generate property 'MayLeakOnAbort'
    //TODO: generate method CreatePermission
}
//[Serializable]
public final class HostProtectionPermission : CodeAccessPermission, IUnrestrictedPermission, IBuiltInPermission
{
    public static /*todo: volatile*/HostProtectionResource protectedResources/*todo: implement initializer*/ = (cast(HostProtectionResource)0);
    private HostProtectionResource m_resources;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method IsUnrestricted
    //TODO: generate property 'Resources'
    //TODO: generate method IsSubsetOf
    //TODO: generate method Union
    //TODO: generate method Intersect
    //TODO: generate method Copy
    //TODO: generate method GetTokenIndex
    //TODO: generate method GetTokenIndex
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\IBuiltInPermission.cs'
//
public interface IBuiltInPermission
{
    //TODO: generate method GetTokenIndex
}
public class BuiltInPermissionIndex : DotNetObject
{
    private this() {} // prevent instantiation
    public enum int NUM_BUILTIN_UNRESTRICTED/*todo: implement initializer*/ = int();
    public enum int NUM_BUILTIN_NORMAL/*todo: implement initializer*/ = int();
    public enum int EnvironmentPermissionIndex/*todo: implement initializer*/ = int();
    public enum int FileDialogPermissionIndex/*todo: implement initializer*/ = int();
    public enum int FileIOPermissionIndex/*todo: implement initializer*/ = int();
    public enum int IsolatedStorageFilePermissionIndex/*todo: implement initializer*/ = int();
    public enum int ReflectionPermissionIndex/*todo: implement initializer*/ = int();
    public enum int RegistryPermissionIndex/*todo: implement initializer*/ = int();
    public enum int SecurityPermissionIndex/*todo: implement initializer*/ = int();
    public enum int UIPermissionIndex/*todo: implement initializer*/ = int();
    public enum int PrincipalPermissionIndex/*todo: implement initializer*/ = int();
    public enum int HostProtectionPermissionIndex/*todo: implement initializer*/ = int();
    public enum int PublisherIdentityPermissionIndex/*todo: implement initializer*/ = int();
    public enum int SiteIdentityPermissionIndex/*todo: implement initializer*/ = int();
    public enum int StrongNameIdentityPermissionIndex/*todo: implement initializer*/ = int();
    public enum int UrlIdentityPermissionIndex/*todo: implement initializer*/ = int();
    public enum int ZoneIdentityPermissionIndex/*todo: implement initializer*/ = int();
    public enum int GacIdentityPermissionIndex/*todo: implement initializer*/ = int();
    public enum int KeyContainerPermissionIndex/*todo: implement initializer*/ = int();
}
// Ignored: [Serializable]
public enum BuiltInPermissionFlag
{
    EnvironmentPermission = 0x1,
    FileDialogPermission = 0x2,
    FileIOPermission = 0x4,
    IsolatedStorageFilePermission = 0x8,
    ReflectionPermission = 0x10,
    RegistryPermission = 0x20,
    SecurityPermission = 0x40,
    UIPermission = 0x80,
    PrincipalPermission = 0x100,
    PublisherIdentityPermission = 0x200,
    SiteIdentityPermission = 0x400,
    StrongNameIdentityPermission = 0x800,
    UrlIdentityPermission = 0x1000,
    ZoneIdentityPermission = 0x2000,
    KeyContainerPermission = 0x4000,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\IsolatedStorageFilePermission.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class IsolatedStorageFilePermission : IsolatedStoragePermission, IBuiltInPermission
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Union
    //TODO: generate method IsSubsetOf
    //TODO: generate method Intersect
    //TODO: generate method Copy
    //TODO: generate method GetTokenIndex
    //TODO: generate method GetTokenIndex
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\IsolatedStoragePermission.cs'
//
// Ignored: [Serializable]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum IsolatedStorageContainment
{
    None = 0x00,
    DomainIsolationByUser = 0x10,
    ApplicationIsolationByUser = 0x15,
    AssemblyIsolationByUser = 0x20,
    DomainIsolationByMachine = 0x30,
    AssemblyIsolationByMachine = 0x40,
    ApplicationIsolationByMachine = 0x45,
    DomainIsolationByRoamingUser = 0x50,
    AssemblyIsolationByRoamingUser = 0x60,
    ApplicationIsolationByRoamingUser = 0x65,
    AdministerIsolatedStorageByUser = 0x70,
    UnrestrictedIsolatedStorage = 0xF0,
}
//[Serializable]
//#if !FEATURE_CORECLR
//    [SecurityPermissionAttribute( SecurityAction.InheritanceDemand, ControlEvidence = true, ControlPolicy = true )]
//#endif
//    [System.Runtime.InteropServices.ComVisible(true)]
public abstract class IsolatedStoragePermission : CodeAccessPermission, IUnrestrictedPermission
{
    public long m_userQuota;
    public long m_machineQuota;
    public long m_expirationDays;
    public bool m_permanentData;
    public IsolatedStorageContainment m_allowed;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'UserQuota'
    //TODO: generate property 'UsageAllowed'
    //TODO: generate method IsUnrestricted
    //TODO: generate method min
    //TODO: generate method max
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\IUnrestrictedPermission.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public interface IUnrestrictedPermission
{
    //TODO: generate method IsUnrestricted
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\keycontainerpermission.cs'
//
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum KeyContainerPermissionFlags
{
    NoFlags = 0x0000,
    Create = 0x0001,
    Open = 0x0002,
    Delete = 0x0004,
    Import = 0x0010,
    Export = 0x0020,
    Sign = 0x0100,
    Decrypt = 0x0200,
    ViewAcl = 0x1000,
    ChangeAcl = 0x2000,
    AllFlags = 0x3337,
}
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class KeyContainerPermissionAccessEntry : DotNetObject
{
    private String m_keyStore;
    private String m_providerName;
    private int m_providerType;
    private String m_keyContainerName;
    private int m_keySpec;
    private KeyContainerPermissionFlags m_flags;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'KeyStore'
    //TODO: generate property 'ProviderName'
    //TODO: generate property 'ProviderType'
    //TODO: generate property 'KeyContainerName'
    //TODO: generate property 'KeySpec'
    //TODO: generate property 'Flags'
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method IsSubsetOf
    //TODO: generate method IsUnrestrictedEntry
}
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class KeyContainerPermissionAccessEntryCollection : DotNetObject, ICollection
{
    private ArrayList m_list;
    private KeyContainerPermissionFlags m_globalFlags;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate indexer
    //TODO: generate property 'Count'
    //TODO: generate method Add
    //TODO: generate method Clear
    //TODO: generate method IndexOf
    //TODO: generate method Remove
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    //TODO: generate method CopyTo
    //TODO: generate method CopyTo
    //TODO: generate property 'IsSynchronized'
    //TODO: generate property 'SyncRoot'
}
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class KeyContainerPermissionAccessEntryEnumerator : DotNetObject, IEnumerator
{
    private KeyContainerPermissionAccessEntryCollection m_entries;
    private int m_current;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Current'
    //TODO: generate property 'Current'
    //TODO: generate method MoveNext
    //TODO: generate method Reset
}
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class KeyContainerPermission : CodeAccessPermission, IUnrestrictedPermission, IBuiltInPermission
{
    private KeyContainerPermissionFlags m_flags;
    private KeyContainerPermissionAccessEntryCollection m_accessEntries;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Flags'
    //TODO: generate property 'AccessEntries'
    //TODO: generate method IsUnrestricted
    //TODO: generate method IsEmpty
    //TODO: generate method IsSubsetOf
    //TODO: generate method Intersect
    //TODO: generate method Union
    //TODO: generate method Copy
    //TODO: generate method GetTokenIndex
    //TODO: generate method AddAccessEntries
    //TODO: generate method AddAccessEntryAndUnion
    //TODO: generate method AddAccessEntryAndIntersect
    //TODO: generate method VerifyFlags
    //TODO: generate method GetApplicableFlags
    //TODO: generate method GetTokenIndex
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\PermissionAttributes.cs'
//
// Ignored: [Serializable]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
// Ignored: #if !FEATURE_CAS_POLICY
// Ignored: // The csharp compiler requires these types to be public, but they are not used elsewhere.
// Ignored: [Obsolete("SecurityAction is no longer accessible to application code.")]
public enum SecurityAction
{
    Demand = 2,
    Assert = 3,
    // Ignored: // Deny permissions so checks will fail
    // Ignored: [Obsolete("Deny is obsolete and will be removed in a future release of the .NET Framework. See http://go.microsoft.com/fwlink/?LinkID=155570 for more information.")]
    Deny = 4,
    PermitOnly = 5,
    LinkDemand = 6,
    InheritanceDemand = 7,
    // Ignored: // Request minimum permissions to run
    // Ignored: [Obsolete("Assembly level declarative security is obsolete and is no longer enforced by the CLR by default. See http://go.microsoft.com/fwlink/?LinkID=155570 for more information.")]
    RequestMinimum = 8,
    // Ignored: // Request optional additional permissions
    // Ignored: [Obsolete("Assembly level declarative security is obsolete and is no longer enforced by the CLR by default. See http://go.microsoft.com/fwlink/?LinkID=155570 for more information.")]
    RequestOptional = 9,
    // Ignored: // Refuse to be granted these permissions
    // Ignored: [Obsolete("Assembly level declarative security is obsolete and is no longer enforced by the CLR by default. See http://go.microsoft.com/fwlink/?LinkID=155570 for more information.")]
    RequestRefuse = 10,
}
//[Serializable]
//[AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly, AllowMultiple = true, Inherited = false )]
//[System.Runtime.InteropServices.ComVisible(true)]
//#if !FEATURE_CAS_POLICY
//    // The csharp compiler requires these types to be public, but they are not used elsewhere.
//    [Obsolete("SecurityAttribute is no longer accessible to application code.")]
public abstract class SecurityAttribute : Attribute
{
    public SecurityAction m_action;
    public bool m_unrestricted;
    //TODO: generate constructor
    //TODO: generate property 'Action'
    //TODO: generate property 'Unrestricted'
    //TODO: generate method CreatePermission
    //TODO: generate method FindSecurityAttributeTypeHandle
}
//[Serializable]
//[AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly, AllowMultiple = true, Inherited = false )]
//[System.Runtime.InteropServices.ComVisible(true)]
//#if !FEATURE_CAS_POLICY
//    // The csharp compiler requires these types to be public, but they are not used elsewhere.
//    [Obsolete("CodeAccessSecurityAttribute is no longer accessible to application code.")]
public abstract class CodeAccessSecurityAttribute : SecurityAttribute
{
    //TODO: generate constructor
}
//[AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly, AllowMultiple = true, Inherited = false )]
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public final class EnvironmentPermissionAttribute : CodeAccessSecurityAttribute
{
    private String m_read/*todo: implement initializer*/ = null;
    private String m_write/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate property 'Read'
    //TODO: generate property 'Write'
    //TODO: generate property 'All'
    //TODO: generate method CreatePermission
}
//[AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly, AllowMultiple = true, Inherited = false )]
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public final class FileDialogPermissionAttribute : CodeAccessSecurityAttribute
{
    private FileDialogPermissionAccess m_access;
    //TODO: generate constructor
    //TODO: generate property 'Open'
    //TODO: generate property 'Save'
    //TODO: generate method CreatePermission
}
//[AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly, AllowMultiple = true, Inherited = false )]
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public final class FileIOPermissionAttribute : CodeAccessSecurityAttribute
{
    private String m_read/*todo: implement initializer*/ = null;
    private String m_write/*todo: implement initializer*/ = null;
    private String m_append/*todo: implement initializer*/ = null;
    private String m_pathDiscovery/*todo: implement initializer*/ = null;
    private String m_viewAccess/*todo: implement initializer*/ = null;
    private String m_changeAccess/*todo: implement initializer*/ = null;
    // Ignored: [OptionalField(VersionAdded = 2)]
    private FileIOPermissionAccess m_allLocalFiles/*todo: implement initializer*/ = (cast(FileIOPermissionAccess)0);
    // Ignored: [OptionalField(VersionAdded = 2)]
    private FileIOPermissionAccess m_allFiles/*todo: implement initializer*/ = (cast(FileIOPermissionAccess)0);
    //TODO: generate constructor
    //TODO: generate property 'Read'
    //TODO: generate property 'Write'
    //TODO: generate property 'Append'
    //TODO: generate property 'PathDiscovery'
    //TODO: generate property 'ViewAccessControl'
    //TODO: generate property 'ChangeAccessControl'
    //TODO: generate property 'All'
    //TODO: generate property 'ViewAndModify'
    //TODO: generate property 'AllFiles'
    //TODO: generate property 'AllLocalFiles'
    //TODO: generate method CreatePermission
}
//[AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly, AllowMultiple = true, Inherited = false )]
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
public final class KeyContainerPermissionAttribute : CodeAccessSecurityAttribute
{
    private KeyContainerPermissionFlags m_flags/*todo: implement initializer*/ = (cast(KeyContainerPermissionFlags)0);
    private String m_keyStore;
    private String m_providerName;
    private int m_providerType/*todo: implement initializer*/ = int();
    private String m_keyContainerName;
    private int m_keySpec/*todo: implement initializer*/ = int();
    //TODO: generate constructor
    //TODO: generate property 'KeyStore'
    //TODO: generate property 'ProviderName'
    //TODO: generate property 'ProviderType'
    //TODO: generate property 'KeyContainerName'
    //TODO: generate property 'KeySpec'
    //TODO: generate property 'Flags'
    //TODO: generate method CreatePermission
}
//#if !FEATURE_CORECLR
//    // PrincipalPermissionAttribute currently derives from
//    // CodeAccessSecurityAttribute, even though it's not related to code access
//    // security. This is because compilers are currently looking for
//    // CodeAccessSecurityAttribute as a direct parent class rather than
//    // SecurityAttribute as the root class.
//    [AttributeUsage(AttributeTargets.Method | AttributeTargets.Class, AllowMultiple = true, Inherited = false )] 
//[System.Runtime.InteropServices.ComVisible(true)]
//    [Serializable]
//    sealed public class PrincipalPermissionAttribute : CodeAccessSecurityAttribute
//    {
//        private String m_name = null;
//        private String m_role = null;
//        private bool m_authenticated = true;
//    
//        public PrincipalPermissionAttribute( SecurityAction action )
//            : base( action )
//        {
//        }
//        
//        public String Name
//        {
//            get { return m_name; }
//            set { m_name = value; }
//        }
//        
//        public String Role
//        {
//            get { return m_role; }
//            set { m_role = value; }
//        }
//        
//        public bool Authenticated
//        {
//            get { return m_authenticated; }
//            set { m_authenticated = value; }
//        }
//        
//        
//        public override IPermission CreatePermission()
//        {
//            if (m_unrestricted)
//            {
//                return new PrincipalPermission( PermissionState.Unrestricted );
//            }
//            else
//            {
//                return new PrincipalPermission( m_name, m_role, m_authenticated );
//            }
//        }
//    }
//#endif // !FEATURE_CORECLR
//
//    [AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly, AllowMultiple = true, Inherited = false )]
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public final class ReflectionPermissionAttribute : CodeAccessSecurityAttribute
{
    private ReflectionPermissionFlag m_flag/*todo: implement initializer*/ = (cast(ReflectionPermissionFlag)0);
    //TODO: generate constructor
    //TODO: generate property 'Flags'
    //TODO: generate property 'TypeInformation'
    //TODO: generate property 'MemberAccess'
    //TODO: generate property 'ReflectionEmit'
    //TODO: generate property 'RestrictedMemberAccess'
    //TODO: generate method CreatePermission
}
//[AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly, AllowMultiple = true, Inherited = false )]
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public final class RegistryPermissionAttribute : CodeAccessSecurityAttribute
{
    private String m_read/*todo: implement initializer*/ = null;
    private String m_write/*todo: implement initializer*/ = null;
    private String m_create/*todo: implement initializer*/ = null;
    private String m_viewAcl/*todo: implement initializer*/ = null;
    private String m_changeAcl/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate property 'Read'
    //TODO: generate property 'Write'
    //TODO: generate property 'Create'
    //TODO: generate property 'ViewAccessControl'
    //TODO: generate property 'ChangeAccessControl'
    //TODO: generate property 'ViewAndModify'
    //TODO: generate property 'All'
    //TODO: generate method CreatePermission
}
//[AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly, AllowMultiple = true, Inherited = false )]
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
//#if !FEATURE_CAS_POLICY
//    // The csharp compiler requires these types to be public, but they are not used elsewhere.
//    [Obsolete("SecurityPermissionAttribute is no longer accessible to application code.")]
public final class SecurityPermissionAttribute : CodeAccessSecurityAttribute
{
    private SecurityPermissionFlag m_flag/*todo: implement initializer*/ = (cast(SecurityPermissionFlag)0);
    //TODO: generate constructor
    //TODO: generate property 'Flags'
    //TODO: generate property 'Assertion'
    //TODO: generate property 'UnmanagedCode'
    //TODO: generate property 'SkipVerification'
    //TODO: generate property 'Execution'
    //TODO: generate property 'ControlThread'
    //TODO: generate property 'ControlEvidence'
    //TODO: generate property 'ControlPolicy'
    //TODO: generate property 'SerializationFormatter'
    //TODO: generate property 'ControlDomainPolicy'
    //TODO: generate property 'ControlPrincipal'
    //TODO: generate property 'ControlAppDomain'
    //TODO: generate property 'RemotingConfiguration'
    //TODO: generate property 'Infrastructure'
    //TODO: generate property 'BindingRedirects'
    //TODO: generate method CreatePermission
}
//[AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly, AllowMultiple = true, Inherited = false )]
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public final class UIPermissionAttribute : CodeAccessSecurityAttribute
{
    private UIPermissionWindow m_windowFlag/*todo: implement initializer*/ = (cast(UIPermissionWindow)0);
    private UIPermissionClipboard m_clipboardFlag/*todo: implement initializer*/ = (cast(UIPermissionClipboard)0);
    //TODO: generate constructor
    //TODO: generate property 'Window'
    //TODO: generate property 'Clipboard'
    //TODO: generate method CreatePermission
}
//[AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly, AllowMultiple = true, Inherited = false )]
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public final class ZoneIdentityPermissionAttribute : CodeAccessSecurityAttribute
{
    private SecurityZone m_flag/*todo: implement initializer*/ = (cast(SecurityZone)0);
    //TODO: generate constructor
    //TODO: generate property 'Zone'
    //TODO: generate method CreatePermission
}
//[AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly, AllowMultiple = true, Inherited = false )]
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public final class StrongNameIdentityPermissionAttribute : CodeAccessSecurityAttribute
{
    private String m_name/*todo: implement initializer*/ = null;
    private String m_version/*todo: implement initializer*/ = null;
    private String m_blob/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate property 'Name'
    //TODO: generate property 'Version'
    //TODO: generate property 'PublicKey'
    //TODO: generate method CreatePermission
}
//[AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly, AllowMultiple = true, Inherited = false )]
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public final class SiteIdentityPermissionAttribute : CodeAccessSecurityAttribute
{
    private String m_site/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate property 'Site'
    //TODO: generate method CreatePermission
}
//[AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly, AllowMultiple = true, Inherited = false )]
//[System.Runtime.InteropServices.ComVisible(true)]
//#pragma warning disable 618
//    [Serializable]
public final class UrlIdentityPermissionAttribute : CodeAccessSecurityAttribute
{
    private String m_url/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate property 'Url'
    //TODO: generate method CreatePermission
}
//#if FEATURE_X509 && FEATURE_CAS_POLICY
//    [AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly, AllowMultiple = true, Inherited = false )] 
//[System.Runtime.InteropServices.ComVisible(true)]
//    [Serializable]
//    sealed public class PublisherIdentityPermissionAttribute : CodeAccessSecurityAttribute
//    {
//        private String m_x509cert = null;
//        private String m_certFile = null;
//        private String m_signedFile = null;
//    
//        public PublisherIdentityPermissionAttribute( SecurityAction action )
//            : base( action )
//        {
//            m_x509cert = null;
//            m_certFile = null;
//            m_signedFile = null;
//        }
//
//        public String X509Certificate {
//            get { return m_x509cert; }
//            set { m_x509cert = value; }
//        }
//        
//        public String CertFile {
//            get { return m_certFile; }
//            set { m_certFile = value; }
//        }
//        
//        public String SignedFile {
//            get { return m_signedFile; }
//            set { m_signedFile = value; }
//        }
//
//        public override IPermission CreatePermission()
//        {
//            if (m_unrestricted)
//            {
//                return new PublisherIdentityPermission( PermissionState.Unrestricted );
//            }
//            else
//            {
//                if (m_x509cert != null)
//                {
//                    return new PublisherIdentityPermission( new X509Certificate( System.Security.Util.Hex.DecodeHexString( m_x509cert ) ) );
//                }
//                else if (m_certFile != null)
//                {
//                    return new PublisherIdentityPermission( System.Security.Cryptography.X509Certificates.X509Certificate.CreateFromCertFile( m_certFile ) );
//                }
//                else if (m_signedFile != null)
//                {
//                    return new PublisherIdentityPermission( System.Security.Cryptography.X509Certificates.X509Certificate.CreateFromSignedFile( m_signedFile ) );
//                }
//                else
//                {
//                    return new PublisherIdentityPermission( PermissionState.None );
//                }
//            }
//        }
//    }
//#endif // #if FEATURE_X509 && FEATURE_CAS_POLICY
//
//#if !FEATURE_CORECLR                              
//[Serializable]
//[AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor
//     | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly,
//    AllowMultiple=true, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
//    public abstract class IsolatedStoragePermissionAttribute : CodeAccessSecurityAttribute
//    {
//        /// <internalonly/>
//        internal long m_userQuota;
//#if false
//        /// <internalonly/>
//        internal long m_machineQuota;
//        /// <internalonly/>
//        internal long m_expirationDays;
//        /// <internalonly/>
//        internal bool m_permanentData;
//#endif
//        /// <internalonly/>
//        internal IsolatedStorageContainment m_allowed;
//        protected IsolatedStoragePermissionAttribute(SecurityAction action) : base(action)
//        {
//        }
//
//        // properties
//        public long UserQuota {
//            set{
//                m_userQuota = value;
//            }
//            get{
//                return m_userQuota;
//            }
//        }
//#if false
//        internal long MachineQuota {
//            set{
//                m_machineQuota = value;
//            }
//            get{
//                return m_machineQuota;
//            }
//        }
//        internal long ExpirationDays {
//            set{
//                m_expirationDays = value;
//            }
//            get{
//                return m_expirationDays;
//            }
//        }
//        internal bool PermanentData {
//            set{
//                m_permanentData = value;
//            }
//            get{
//                return m_permanentData;
//            }
//        }
//#endif
//        public IsolatedStorageContainment UsageAllowed {
//            set{
//                m_allowed = value;
//            }
//            get{
//                return m_allowed;
//            }
//        }
//
//    }
//
//    [AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor
//     | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly,
//    AllowMultiple=true, Inherited=false)]
//[System.Runtime.InteropServices.ComVisible(true)]
//    [Serializable]
//    sealed public class IsolatedStorageFilePermissionAttribute : IsolatedStoragePermissionAttribute
//    {
//        public IsolatedStorageFilePermissionAttribute(SecurityAction action) : base(action)
//        {
//
//        }
//        public override IPermission CreatePermission()
//        {
//            IsolatedStorageFilePermission p;
//            if (m_unrestricted) {
//                p = new IsolatedStorageFilePermission
//                        (PermissionState.Unrestricted);
//            } else {
//                p = new IsolatedStorageFilePermission(PermissionState.None);
//                p.UserQuota      = m_userQuota;
//                p.UsageAllowed   = m_allowed;
//#if false
//                p.PermanentData  = m_permanentData;
//                p.MachineQuota   = m_machineQuota;
//                p.ExpirationDays = m_expirationDays;
//#endif
//            }
//            return p;
//        }
//    }
//#endif // FEATURE_CORECLR
//
//    [AttributeUsage(AttributeTargets.Method | AttributeTargets.Constructor | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Assembly, AllowMultiple = true, Inherited = false )]
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public final class PermissionSetAttribute : CodeAccessSecurityAttribute
{
    private String m_file;
    private String m_name;
    private bool m_unicode;
    private String m_xml;
    private String m_hex;
    //TODO: generate constructor
    //TODO: generate property 'File'
    //TODO: generate property 'UnicodeEncoded'
    //TODO: generate property 'Name'
    //TODO: generate property 'XML'
    //TODO: generate property 'Hex'
    //TODO: generate method CreatePermission
    //TODO: generate method CreatePermissionSet
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\PermissionState.cs'
//
// Ignored: [Serializable]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum PermissionState
{
    Unrestricted = 1,
    None = 0,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\ReflectionPermission.cs'
//
// Ignored: [ComVisible(true)]
// Ignored: [Flags]
// Ignored: [Serializable]
public enum ReflectionPermissionFlag
{
    NoFlags = 0x00,
    // Ignored: [Obsolete("This API has been deprecated. http://go.microsoft.com/fwlink/?linkid=14202")]
    TypeInformation = 0x01,
    MemberAccess = 0x02,
    // Ignored: [Obsolete("This permission is no longer used by the CLR.")]
    ReflectionEmit = 0x04,
    // Ignored: [ComVisible(false)]
    RestrictedMemberAccess = 0x08,
    // Ignored: [Obsolete("This permission has been deprecated. Use PermissionState.Unrestricted to get full access.")]
    AllFlags = 0x07,
}
//[ComVisible(true)]
//[Serializable]
public final class ReflectionPermission : CodeAccessPermission, IUnrestrictedPermission, IBuiltInPermission
{
    public enum ReflectionPermissionFlag AllFlagsAndMore/*todo: implement initializer*/ = (cast(ReflectionPermissionFlag)0);
    private ReflectionPermissionFlag m_flags;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method SetUnrestricted
    //TODO: generate method Reset
    //TODO: generate property 'Flags'
    //TODO: generate method IsUnrestricted
    //TODO: generate method Union
    //TODO: generate method IsSubsetOf
    //TODO: generate method Intersect
    //TODO: generate method Copy
    //TODO: generate method VerifyAccess
    //TODO: generate method GetTokenIndex
    //TODO: generate method GetTokenIndex
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\RegistryPermission.cs'
//
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum RegistryPermissionAccess
{
    NoAccess = 0x00,
    Read = 0x01,
    Write = 0x02,
    Create = 0x04,
    AllAccess = 0x07,
}
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public final class RegistryPermission : CodeAccessPermission, IUnrestrictedPermission, IBuiltInPermission
{
    private StringExpressionSet m_read;
    private StringExpressionSet m_write;
    private StringExpressionSet m_create;
    // Ignored: [OptionalField(VersionAdded = 2)]
    private StringExpressionSet m_viewAcl;
    // Ignored: [OptionalField(VersionAdded = 2)]
    private StringExpressionSet m_changeAcl;
    private bool m_unrestricted;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method SetPathList
    //TODO: generate method AddPathList
    //TODO: generate method AddPathList
    //TODO: generate method GetPathList
    //TODO: generate method VerifyAccess
    //TODO: generate method ExclusiveAccess
    //TODO: generate method IsEmpty
    //TODO: generate method IsUnrestricted
    //TODO: generate method IsSubsetOf
    //TODO: generate method Intersect
    //TODO: generate method Union
    //TODO: generate method Copy
    //TODO: generate method GetTokenIndex
    //TODO: generate method GetTokenIndex
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\SecurityPermission.cs'
//
// Ignored: [Serializable]
// Ignored: [Flags]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
// Ignored: #if !FEATURE_CAS_POLICY
// Ignored: // The csharp compiler requires these types to be public, but they are not used elsewhere.
// Ignored: [Obsolete("SecurityPermissionFlag is no longer accessible to application code.")]
public enum SecurityPermissionFlag
{
    NoFlags = 0x00,
    Assertion = 0x01,
    UnmanagedCode = 0x02,
    SkipVerification = 0x04,
    Execution = 0x08,
    ControlThread = 0x10,
    ControlEvidence = 0x20,
    ControlPolicy = 0x40,
    SerializationFormatter = 0x80,
    ControlDomainPolicy = 0x100,
    ControlPrincipal = 0x200,
    ControlAppDomain = 0x400,
    RemotingConfiguration = 0x800,
    Infrastructure = 0x1000,
    BindingRedirects = 0x2000,
    AllFlags = 0x3fff,
}
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public final class SecurityPermission : CodeAccessPermission, IUnrestrictedPermission, IBuiltInPermission
{
    private SecurityPermissionFlag m_flags;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method SetUnrestricted
    //TODO: generate method Reset
    //TODO: generate property 'Flags'
    //TODO: generate method IsSubsetOf
    //TODO: generate method Union
    //TODO: generate method Intersect
    //TODO: generate method Copy
    //TODO: generate method IsUnrestricted
    //TODO: generate method VerifyAccess
    //TODO: generate method GetTokenIndex
    //TODO: generate method GetTokenIndex
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\SiteIdentityPermission.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public final class SiteIdentityPermission : CodeAccessPermission, IBuiltInPermission
{
    // Ignored: //------------------------------------------------------
    // Ignored: //
    // Ignored: // PRIVATE STATE DATA
    // Ignored: //
    // Ignored: //------------------------------------------------------
    // Ignored: [OptionalField(VersionAdded = 2)]
    private bool m_unrestricted;
    // Ignored: [OptionalField(VersionAdded = 2)]
    private SiteString[] m_sites;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Site'
    //TODO: generate method Copy
    //TODO: generate method IsSubsetOf
    //TODO: generate method Intersect
    //TODO: generate method Union
    //TODO: generate method GetTokenIndex
    //TODO: generate method GetTokenIndex
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\StrongNameIdentityPermission.cs'
//
//// The only difference between this class and System.Security.Policy.StrongName is that this one
//    // allows m_name to be null.  We should merge this class with System.Security.Policy.StrongName
//    [Serializable]
public final class StrongName2 : DotNetObject
{
    public StrongNamePublicKeyBlob m_publicKeyBlob;
    public String m_name;
    public Version m_version;
    //TODO: generate constructor
    //TODO: generate method Copy
    //TODO: generate method IsSubsetOf
    //TODO: generate method Intersect
    //TODO: generate method Equals
}
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public final class StrongNameIdentityPermission : CodeAccessPermission, IBuiltInPermission
{
    private bool m_unrestricted;
    private StrongName2[] m_strongNames;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'PublicKey'
    //TODO: generate property 'Name'
    //TODO: generate property 'Version'
    //TODO: generate method Copy
    //TODO: generate method IsSubsetOf
    //TODO: generate method Intersect
    //TODO: generate method Union
    //TODO: generate method GetTokenIndex
    //TODO: generate method GetTokenIndex
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\StrongNamePublicKeyBlob.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public final class StrongNamePublicKeyBlob : DotNetObject
{
    public ubyte[] PublicKey;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CompareArrays
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method GetByteArrayHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method ToString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\UIPermission.cs'
//
// Ignored: [Serializable]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum UIPermissionWindow
{
    NoWindows = 0x0,
    SafeSubWindows = 0x01,
    SafeTopLevelWindows = 0x02,
    AllWindows = 0x03,
}
// Ignored: [Serializable]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum UIPermissionClipboard
{
    NoClipboard = 0x0,
    OwnClipboard = 0x1,
    AllClipboard = 0x2,
}
//[System.Runtime.InteropServices.ComVisible(true)]
//[Serializable]
public final class UIPermission : CodeAccessPermission, IUnrestrictedPermission, IBuiltInPermission
{
    private UIPermissionWindow m_windowFlag;
    private UIPermissionClipboard m_clipboardFlag;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Window'
    //TODO: generate property 'Clipboard'
    //TODO: generate method VerifyWindowFlag
    //TODO: generate method VerifyClipboardFlag
    //TODO: generate method Reset
    //TODO: generate method SetUnrestricted
    //TODO: generate method IsUnrestricted
    //TODO: generate method IsSubsetOf
    //TODO: generate method Intersect
    //TODO: generate method Union
    //TODO: generate method Copy
    //TODO: generate method GetTokenIndex
    //TODO: generate method GetTokenIndex
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\URLIdentityPermission.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public final class UrlIdentityPermission : CodeAccessPermission, IBuiltInPermission
{
    // Ignored: //------------------------------------------------------
    // Ignored: //
    // Ignored: // PRIVATE STATE DATA
    // Ignored: //
    // Ignored: //------------------------------------------------------
    // Ignored: [OptionalField(VersionAdded = 2)]
    private bool m_unrestricted;
    // Ignored: [OptionalField(VersionAdded = 2)]
    private URLString[] m_urls;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method AppendOrigin
    //TODO: generate property 'Url'
    //TODO: generate method Copy
    //TODO: generate method IsSubsetOf
    //TODO: generate method Intersect
    //TODO: generate method Union
    //TODO: generate method GetTokenIndex
    //TODO: generate method GetTokenIndex
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Permissions\ZoneIdentityPermission.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public final class ZoneIdentityPermission : CodeAccessPermission, IBuiltInPermission
{
    private enum uint AllZones/*todo: implement initializer*/ = uint();
    // Ignored: [OptionalField(VersionAdded = 2)]
    private uint m_zones;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method AppendZones
    //TODO: generate property 'SecurityZone'
    //TODO: generate method VerifyZone
    //TODO: generate method Copy
    //TODO: generate method IsSubsetOf
    //TODO: generate method Intersect
    //TODO: generate method Union
    //TODO: generate method GetTokenIndex
    //TODO: generate method GetTokenIndex
}
