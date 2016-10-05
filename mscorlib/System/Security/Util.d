module mscorlib.System.Security.Util;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    SerializableAttribute,
    FlagsAttribute,
    __DotNet__Object,
    String;
import mscorlib.System.Collections :
    ArrayList;
import mscorlib.System.Security :
    SecurityCriticalAttribute;
import mscorlib.System.Runtime.Serialization :
    OptionalFieldAttribute;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Util\Config.cs'
//
// Duplicated in vm\COMSecurityConfig.h
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
package(mscorlib) enum QuickCacheEntryType
{
    FullTrustZoneMyComputer = 0x1000000,
    FullTrustZoneIntranet = 0x2000000,
    FullTrustZoneInternet = 0x4000000,
    FullTrustZoneTrusted = 0x8000000,
    FullTrustZoneUntrusted = 0x10000000,
    FullTrustAll = 0x20000000,
}
package(mscorlib) class Config : __DotNet__Object
{
    private this() {} // prevent instantiation
    private static /*todo: volatile*/ String m_machineConfig;
    private static /*todo: volatile*/ String m_userConfig;
    //TODO: generate method GetFileLocales
    //TODO: generate property 'MachineDirectory'
    //TODO: generate property 'UserDirectory'
    //TODO: generate method GetMachineDirectory
    //TODO: generate method GetUserDirectory
    //TODO: generate method WriteToEventLog
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Util\Hex.cs'
//
package(mscorlib) class Hex : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method HexDigit
    //TODO: generate method EncodeHexString
    //TODO: generate method EncodeHexStringFromInt
    //TODO: generate method ConvertHexDigit
    //TODO: generate method DecodeHexString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Util\sitestring.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class SiteString : __DotNet__Object
{
    protected String m_site;
    protected ArrayList m_separatedSite;
    protected static wchar[] m_separators/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CreateSeparatedSite
    //TODO: generate method AllLegalCharacters
    //TODO: generate method IsLegalDNSChar
    //TODO: generate method IsNetbiosSplChar
    //TODO: generate method ToString
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Copy
    //TODO: generate method IsSubsetOf
    //TODO: generate method IsSubsetOf
    //TODO: generate method Intersect
    //TODO: generate method Union
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Util\StringExpressionSet.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class StringExpressionSet : __DotNet__Object
{
    // This field, as well as the expressions fields below are critical since they may contain
    // canonicalized full path data potentially built out of relative data passed as input to the
    // StringExpressionSet.  Full trust code using the string expression set needs to ensure that before
    // exposing this data out to partial trust, they protect against this.  Possibilities include:
    //
    //  1. Using the throwOnRelative flag
    //  2. Ensuring that the partial trust code has permission to see full path data
    //  3. Not using this set for paths (eg EnvironmentStringExpressionSet)
    //
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    protected ArrayList m_list;
    protected bool m_ignoreCase;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    protected String m_expressions;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    protected String[] m_expressionsArray;
    protected bool m_throwOnRelative;
    protected static immutable wchar[] m_separators/*todo: implement initializer*/ = null;
    protected static immutable wchar[] m_trimChars/*todo: implement initializer*/ = null;
    protected static immutable wchar m_directorySeparator/*todo: implement initializer*/ = wchar();
    protected static immutable wchar m_alternateDirectorySeparator/*todo: implement initializer*/ = wchar();
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CreateNewEmpty
    //TODO: generate method Copy
    //TODO: generate method SetThrowOnRelative
    //TODO: generate method StaticProcessWholeString
    //TODO: generate method StaticProcessSingleString
    //TODO: generate method ProcessWholeString
    //TODO: generate method ProcessSingleString
    //TODO: generate method AddExpressions
    //TODO: generate method AddExpressions
    //TODO: generate method AddExpressions
    //TODO: generate method CreateListFromExpressions
    //TODO: generate method CheckList
    //TODO: generate method Split
    //TODO: generate method CreateList
    //TODO: generate method IsEmpty
    //TODO: generate method IsSubsetOf
    //TODO: generate method IsSubsetOfPathDiscovery
    //TODO: generate method Union
    //TODO: generate method Intersect
    //TODO: generate method GenerateString
    //TODO: generate method UnsafeToString
    //TODO: generate method UnsafeToStringArray
    //TODO: generate method StringSubsetStringExpression
    //TODO: generate method StringSubsetStringExpressionPathDiscovery
    //TODO: generate method StringSubsetString
    //TODO: generate method StringSubsetStringPathDiscovery
    //TODO: generate method AddSingleExpressionNoDuplicates
    //TODO: generate method Reduce
    //TODO: generate method GetLongPathName
    //TODO: generate method CanonicalizePath
    //TODO: generate method CanonicalizePath
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Util\TokenBasedSet.cs'
//
package(mscorlib) class TokenBasedSet : __DotNet__Object
{
    private int m_initSize/*todo: implement initializer*/ = int();
    private int m_increment/*todo: implement initializer*/ = int();
    private __DotNet__Object[] m_objSet;
    //  END -> Serialization only fields
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    private /*todo: volatile*/ __DotNet__Object m_Obj;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    private /*todo: volatile*/ __DotNet__Object[] m_Set;
    private int m_cElt;
    private /*todo: volatile*/ int m_maxIndex;
    //TODO: generate method OnDeserialized
    //TODO: generate method OnDeserializedInternal
    //TODO: generate method OnSerializing
    //TODO: generate method OnSerialized
    //TODO: generate method MoveNext
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Reset
    //TODO: generate method SetItem
    //TODO: generate method GetItem
    //TODO: generate method RemoveItem
    //TODO: generate method ResetMaxIndex
    //TODO: generate method GetStartingIndex
    //TODO: generate method GetCount
    //TODO: generate method GetMaxUsedIndex
    //TODO: generate method FastIsEmpty
    //TODO: generate method SpecialUnion
    //TODO: generate method SpecialSplit
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Util\TokenBasedSetEnumerator.cs'
//
package(mscorlib) struct TokenBasedSetEnumerator
{
    public __DotNet__Object Current;
    public int Index;
    private TokenBasedSet _tb;
    //TODO: generate method MoveNext
    //TODO: generate method Reset
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Util\URLString.cs'
//
package(mscorlib) final class URLString : SiteString
{
    private String m_protocol;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    private String m_userpass;
    private SiteString m_siteString;
    private int m_port;
    private LocalSiteString m_localSite;
    private DirectoryString m_directory;
    private enum String m_defaultProtocol/*todo: implement initializer*/ = null;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    private bool m_parseDeferred;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    private String m_urlOriginal;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 2*/)
    private bool m_parsedOriginal;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 3*/)
    private bool m_isUncShare;
    private String m_fullurl;
    //TODO: generate method OnDeserialized
    //TODO: generate method OnSerializing
    //TODO: generate method OnSerialized
    //TODO: generate constructor
    //TODO: generate method DoDeferredParse
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method UnescapeURL
    //TODO: generate method ParseProtocol
    //TODO: generate method ParsePort
    //TODO: generate method PreProcessForExtendedPathRemoval
    //TODO: generate method PreProcessForExtendedPathRemoval
    //TODO: generate method PreProcessForExtendedPathRemoval
    //TODO: generate method PreProcessForExtendedPathRemoval
    //TODO: generate method CheckPathTooLong
    //TODO: generate method PreProcessURL
    //TODO: generate method ParseFileURL
    //TODO: generate method ParseNonFileURL
    //TODO: generate method DoFastChecks
    //TODO: generate method ParseString
    //TODO: generate property 'Scheme'
    //TODO: generate property 'Host'
    //TODO: generate property 'Port'
    //TODO: generate property 'Directory'
    //TODO: generate property 'IsRelativeFileUrl'
    //TODO: generate method GetFileName
    //TODO: generate method GetDirectoryName
    //TODO: generate method Copy
    //TODO: generate method IsSubsetOf
    //TODO: generate method ToString
    //TODO: generate method Equals
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method CompareUrls
    //TODO: generate method NormalizeUrl
    //TODO: generate method SpecialNormalizeUrl
    //TODO: generate method GetDeviceName
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class DirectoryString : SiteString
{
    private bool m_checkForIllegalChars;
    private static /*todo: new modifier*/ wchar[] m_separators/*todo: implement initializer*/ = null;
    protected static wchar[] m_illegalDirectoryCharacters/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CreateSeparatedString
    //TODO: generate method IsSubsetOf
    //TODO: generate method IsSubsetOf
}
// #if !PLATFORM_UNIX
@__DotNet__Attribute!(SerializableAttribute.stringof)
package(mscorlib) class LocalSiteString : SiteString
{
    private static /*todo: new modifier*/ wchar[] m_separators/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method CreateSeparatedString
    //TODO: generate method IsSubsetOf
    //TODO: generate method IsSubsetOf
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Util\XMLUtil.cs'
//
package(mscorlib) class XMLUtil : __DotNet__Object
{
    private this() {} // prevent instantiation
    private enum String BuiltInPermission/*todo: implement initializer*/ = null;
    //TODO: generate method NewPermissionElement
    //TODO: generate method NewPermissionElement
    //TODO: generate method AddClassAttribute
    //TODO: generate method ParseElementForAssemblyIdentification
    //TODO: generate method ParseElementForObjectCreation
    //TODO: generate method CreatePermission
    //TODO: generate method GetClassFromElement
    //TODO: generate method IsPermissionElement
    //TODO: generate method IsUnrestricted
    //TODO: generate method BitFieldEnumToString
}
