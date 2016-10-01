module mscorlib.System.Resources;

import mscorlib.System :
    __DotNet__Object,
    String,
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    IDisposable,
    SerializableAttribute,
    SystemException,
    AttributeUsageAttribute,
    Attribute,
    ThreadStaticAttribute,
    ObsoleteAttribute,
    NonSerializedAttribute,
    Type,
    Version,
    RuntimeType;
import mscorlib.System.Collections :
    IComparer,
    IEqualityComparer,
    IEnumerable,
    Hashtable,
    IDictionaryEnumerator;
import mscorlib.System.Collections.Generic :
    IComparer1,
    IEqualityComparer1,
    IEnumerable1,
    Dictionary2;
import mscorlib.System.Runtime.InteropServices :
    ComVisibleAttribute;
import mscorlib.System.Globalization :
    CultureInfo;
import mscorlib.System.Runtime.CompilerServices :
    FriendAccessAllowedAttribute;
import mscorlib.System.Security :
    SecurityCriticalAttribute;
import mscorlib.System.Reflection :
    Assembly,
    RuntimeAssembly;
import mscorlib.System.Runtime.Serialization :
    OptionalFieldAttribute;
import mscorlib.System.IO :
    BinaryReader,
    UnmanagedMemoryStream;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Resources\__FastResourceComparer.cs'
//
public final class FastResourceComparer : __DotNet__Object, IComparer, IEqualityComparer, IComparer1!(String), IEqualityComparer1!(String)
{
    public static immutable FastResourceComparer Default/*todo: implement initializer*/ = null;
    //TODO: generate method GetHashCode
    //TODO: generate method GetHashCode
    //TODO: generate method HashFunction
    //TODO: generate method Compare
    //TODO: generate method Compare
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate method CompareOrdinal
    //TODO: generate method CompareOrdinal
    //TODO: generate method CompareOrdinal
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Resources\__HResults.cs'
//
public class __HResults : __DotNet__Object
{
    private this() {} // prevent instantiation
    public enum int ERROR_MRM_MAP_NOT_FOUND/*todo: implement initializer*/ = int();
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Resources\FileBasedResourceGroveler.cs'
//
public class FileBasedResourceGroveler : __DotNet__Object, IResourceGroveler
{
    private ResourceManager.ResourceManagerMediator _mediator;
    //TODO: generate constructor
    //TODO: generate method GrovelForResourceSet
    //TODO: generate method FindResourceFile
    //TODO: generate method CreateResourceSet
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Resources\IResourceGroveler.cs'
//
public interface IResourceGroveler
{
    //TODO: generate method GrovelForResourceSet
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Resources\IResourceReader.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IResourceReader : IEnumerable, IDisposable
{
    //TODO: generate method Close
    //TODO: generate method GetEnumerator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Resources\IResourceWriter.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IResourceWriter : IDisposable
{
    //TODO: generate method AddResource
    //TODO: generate method AddResource
    //TODO: generate method AddResource
    //TODO: generate method Close
    //TODO: generate method Generate
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Resources\ManifestBasedResourceGroveler.cs'
//
public class ManifestBasedResourceGroveler : __DotNet__Object, IResourceGroveler
{
    private ResourceManager.ResourceManagerMediator _mediator;
    //TODO: generate constructor
    //TODO: generate method GrovelForResourceSet
    //TODO: generate method UltimateFallbackFixup
    //TODO: generate method GetNeutralResourcesLanguage
    //TODO: generate method CreateResourceSet
    //TODO: generate method GetManifestResourceStream
    //TODO: generate method CaseInsensitiveManifestResourceStreamLookup
    //TODO: generate method GetSatelliteAssembly
    //TODO: generate method CanUseDefaultResourceClasses
    //TODO: generate method GetSatelliteAssemblyName
    //TODO: generate method HandleSatelliteMissing
    //TODO: generate method HandleResourceStreamMissing
    //TODO: generate method GetNeutralResourcesLanguageAttribute
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Resources\MissingManifestResourceException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class MissingManifestResourceException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Resources\MissingSatelliteAssemblyException.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class MissingSatelliteAssemblyException : SystemException
{
    private String _cultureName;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'CultureName'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Resources\NeutralResourcesLanguageAttribute.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, AllowMultiple=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class NeutralResourcesLanguageAttribute : Attribute
{
    private String _culture;
    private UltimateResourceFallbackLocation _fallbackLoc;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'CultureName'
    //TODO: generate property 'Location'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Resources\ResourceFallbackManager.cs'
//
public class ResourceFallbackManager : __DotNet__Object, IEnumerable1!(CultureInfo)
{
    private CultureInfo m_startingCulture;
    private CultureInfo m_neutralResourcesCulture;
    private bool m_useParents;
    // Added but disabled from desktop in .NET 4.0, stayed disabled in .NET 4.5
    // #if FEATURE_CORECLR
    // This is a cache of the thread, process, user, and OS-preferred fallback cultures.
    // However, each thread may have a different value, and these may change during the
    // lifetime of the process.  So this cache must be verified each time we use it.
    // Hence, we'll keep an array of strings for culture names & check it each time,
    // but we'll really cache an array of CultureInfo's.  Using thread-local statics
    // as well to avoid differences across threads.
    @__DotNet__Attribute!(ThreadStaticAttribute.stringof)
    private static CultureInfo[] cachedOsFallbackArray;
    //TODO: generate constructor
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    //TODO: generate method LoadPreferredCultures
    //TODO: generate method LoadCulturesFromNames
    //TODO: generate method GetResourceFallbackArray
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Resources\ResourceManager.cs'
//
// #if !FEATURE_CORECLR
// using System.Diagnostics.Tracing;
// #endif
// #if FEATURE_APPX
//
// This is implemented in System.Runtime.WindowsRuntime as function System.Resources.WindowsRuntimeResourceManager,
// allowing us to ask for a WinRT-specific ResourceManager.
// It is important to have WindowsRuntimeResourceManagerBase as regular class with virtual methods and default implementations. 
// Defining WindowsRuntimeResourceManagerBase as abstract class or interface will cause issues when adding more methods to it 
// because it’ll create dependency between mscorlib and System.Runtime.WindowsRuntime which will require always shipping both DLLs together. 
// Also using interface or abstract class will not play nice with FriendAccessAllowed.
//
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public class WindowsRuntimeResourceManagerBase : __DotNet__Object
{
    //TODO: generate method Initialize
    //TODO: generate method GetString
    //TODO: generate property 'GlobalResourceContextBestFitCultureInfo'
    //TODO: generate method SetGlobalResourceContextDefaultCulture
}
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
public class PRIExceptionInfo : __DotNet__Object
{
    public String _PackageSimpleName;
    public String _ResWFile;
}
// #endif // FEATURE_APPX
// Resource Manager exposes an assembly's resources to an application for
// the correct CultureInfo.  An example would be localizing text for a 
// user-visible message.  Create a set of resource files listing a name 
// for a message and its value, compile them using ResGen, put them in
// an appropriate place (your assembly manifest(?)), then create a Resource 
// Manager and query for the name of the message you want.  The Resource
// Manager will use CultureInfo.GetCurrentUICulture() to look
// up a resource for your user's locale settings.
// 
// Users should ideally create a resource file for every culture, or
// at least a meaningful subset.  The filenames will follow the naming 
// scheme:
// 
// basename.culture name.resources
// 
// The base name can be the name of your application, or depending on 
// the granularity desired, possibly the name of each class.  The culture 
// name is determined from CultureInfo's Name property.  
// An example file name may be MyApp.en-US.resources for
// MyApp's US English resources.
// 
// -----------------
// Refactoring Notes
// -----------------
// In Feb 08, began first step of refactoring ResourceManager to improve
// maintainability (sd changelist 3012100). This resulted in breaking
// apart the InternalGetResourceSet "big loop" so that the file-based
// and manifest-based lookup was located in separate methods. 
// In Apr 08, continued refactoring so that file-based and manifest-based
// concerns are encapsulated by separate classes. At construction, the
// ResourceManager creates one of these classes based on whether the 
// RM will need to use file-based or manifest-based resources, and 
// afterwards refers to this through the interface IResourceGroveler.
// 
// Serialization Compat: Ideally, we could have refactored further but
// this would have broken serialization compat. For example, the
// ResourceManager member UseManifest and UseSatelliteAssem are no 
// longer relevant on ResourceManager. Similarly, other members could
// ideally be moved to the file-based or manifest-based classes 
// because they are only relevant for those types of lookup.
//
// Solution now / in the future: 
// For now, we simply use a mediator class so that we can keep these
// members on ResourceManager but allow the file-based and manifest-
// based classes to access/set these members in a uniform way. See
// ResourceManagerMediator.
// We encapsulate fallback logic in a fallback iterator class, so that 
// this logic isn't duplicated in several methods.
// 
// In the future, we can look into either breaking serialization if we
// decide this doesn't make sense for ResourceManager (i.e. how common
// is the scenario), manually make serialization work by providing 
// appropriate OnSerialization, Deserialization methods. We can also 
// look into further factoring and better design of IResourceGroveler
// interface to accommodate unused parameters that don't make sense
// for either file-based or manifest-based lookup paths.
//
// Benefits of this refactoring:
// - Makes it possible to understand what the ResourceManager does, 
// which is key for maintainability. 
// - Makes the ResourceManager more extensible by identifying and
// encapsulating what varies
// - Unearthed a bug that's been lurking a while in file-based 
// lookup paths for InternalGetResourceSet if createIfNotExists is
// false.
// - Reuses logic, e.g. by breaking apart the culture fallback into 
// the fallback iterator class, we don't have to repeat the 
// sometimes confusing fallback logic across multiple methods
// - Fxcop violations reduced to 1/5th of original count. Most 
// importantly, code complexity violations disappeared.
// - Finally, it got rid of dead code paths. Because the big loop was
// so confusing, it masked unused chunks of code. Also, dividing 
// between file-based and manifest-based allowed functionaliy 
// unused in silverlight to fall out.
// 
// Note: this type is integral to the construction of exception objects,
// and sometimes this has to be done in low memory situtations (OOM) or
// to create TypeInitializationExceptions due to failure of a static class
// constructor. This type needs to be extremely careful and assume that 
// any type it references may have previously failed to construct, so statics
// belonging to that type may not be initialized. FrameworkEventSource.Log
// is one such example.
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class ResourceManager : __DotNet__Object
{
    public static class CultureNameResourceSetPair : __DotNet__Object
    {
        public String lastCultureName;
        public ResourceSet lastResourceSet;
    }
    protected String BaseNameField;
    // Sets is a many-to-one table of CultureInfos mapped to ResourceSets.
    // Don't synchronize ResourceSets - too fine-grained a lock to be effective
    @__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "call InternalGetResourceSet instead"*/)
    protected Hashtable ResourceSets;
    // don't serialize the cache of ResourceSets
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private Dictionary2!(String,ResourceSet) _resourceSets;
    private String moduleDir;
    protected Assembly MainAssembly;
    private Type _locationInfo;
    private Type _userResourceSet;
    private CultureInfo _neutralResourcesCulture;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private CultureNameResourceSetPair _lastUsedResourceCache;
    private bool _ignoreCase;
    private bool UseManifest;
    // unused! But need to keep for serialization
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 1*/)
    private bool UseSatelliteAssem;
    private static /*todo: volatile*/ Hashtable _installedSatelliteInfo;
    private static /*todo: volatile*/ bool _checkedConfigFile;
    // #endif
    // Whether to fall back to the main assembly or a particular 
    // satellite for the neutral resources.
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof)
    private UltimateResourceFallbackLocation _fallbackLoc;
    // Version number of satellite assemblies to look for.  May be null.
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof)
    private Version _satelliteContractVersion;
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof)
    private bool _lookedForSatelliteContractVersion;
    // unused! But need to keep for serialization
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 1*/)
    private Assembly _callingAssembly;
    // replaces _callingAssembly
    @__DotNet__Attribute!(OptionalFieldAttribute.stringof/*, VersionAdded = 4*/)
    private RuntimeAssembly m_callingAssembly;
    // no need to serialize this; just create a new one on deserialization
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private IResourceGroveler resourceGroveler;
    public static immutable int MagicNumber/*todo: implement initializer*/ = int();
    public static immutable int HeaderVersionNumber/*todo: implement initializer*/ = int();
    private static immutable Type _minResourceSet/*todo: implement initializer*/ = null;
    public static immutable String ResReaderTypeName/*todo: implement initializer*/ = null;
    public static immutable String ResSetTypeName/*todo: implement initializer*/ = null;
    public static immutable String MscorlibName/*todo: implement initializer*/ = null;
    public enum String ResFileExtension/*todo: implement initializer*/ = null;
    public enum int ResFileExtensionLength/*todo: implement initializer*/ = int();
    public static immutable int DEBUG/*todo: implement initializer*/ = int();
    private static /*todo: volatile*/ bool s_IsAppXModel;
    //TODO: generate method Init
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method OnDeserializing
    //TODO: generate method OnDeserialized
    //TODO: generate method OnSerializing
    //TODO: generate method CommonAssemblyInit
    //TODO: generate property 'BaseName'
    //TODO: generate property 'IgnoreCase'
    //TODO: generate property 'ResourceSetType'
    //TODO: generate property 'FallbackLocation'
    //TODO: generate method ReleaseAllResources
    //TODO: generate method CreateFileBasedResourceManager
    //TODO: generate method GetResourceFileName
    //TODO: generate method GetFirstResourceSet
    //TODO: generate method GetResourceSet
    //TODO: generate method InternalGetResourceSet
    //TODO: generate method InternalGetResourceSet
    //TODO: generate method AddResourceSet
    //TODO: generate method GetSatelliteContractVersion
    //TODO: generate method GetNeutralResourcesLanguage
    //TODO: generate method CompareNames
    //TODO: generate method GetStringFromPRI
    //TODO: generate method GetWinRTResourceManager
    // #endif
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private bool _bUsingModernResourceManagement;
    // #if FEATURE_APPX
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private WindowsRuntimeResourceManagerBase _WinRTResourceManager;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private bool _PRIonAppXInitialized;
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    private PRIExceptionInfo _PRIExceptionInfo;
    //TODO: generate method ShouldUseSatelliteAssemblyResourceLookupUnderAppX
    //TODO: generate method SetAppXConfiguration
    //TODO: generate method GetString
    //TODO: generate method GetString
    //TODO: generate method GetObject
    //TODO: generate method GetObject
    //TODO: generate method GetObject
    //TODO: generate method GetStream
    //TODO: generate method GetStream
    //TODO: generate method TryLookingForSatellite
    //TODO: generate method GetSatelliteAssembliesFromConfig
    public static class ResourceManagerMediator : __DotNet__Object
    {
        private ResourceManager _rm;
        //TODO: generate constructor
        //TODO: generate property 'ModuleDir'
        //TODO: generate property 'LocationInfo'
        //TODO: generate property 'UserResourceSet'
        //TODO: generate property 'BaseNameField'
        //TODO: generate property 'NeutralResourcesCulture'
        //TODO: generate method GetResourceFileName
        //TODO: generate property 'LookedForSatelliteContractVersion'
        //TODO: generate property 'SatelliteContractVersion'
        //TODO: generate method ObtainSatelliteContractVersion
        //TODO: generate property 'FallbackLoc'
        //TODO: generate property 'CallingAssembly'
        //TODO: generate property 'MainAssembly'
        //TODO: generate property 'BaseName'
        //TODO: generate method TryLookingForSatellite
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Resources\ResourceReader.cs'
//
public struct ResourceLocator
{
    public __DotNet__Object _value;
    public int _dataPos;
    //TODO: generate constructor
    //TODO: generate property 'DataPosition'
    //TODO: generate property 'Value'
    //TODO: generate method CanCache
}
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ResourceReader : __DotNet__Object, IResourceReader
{
    private enum int DefaultFileStreamBufferSize/*todo: implement initializer*/ = int();
    private BinaryReader _store;
    public Dictionary2!(String,ResourceLocator) _resCache;
    private long _nameSectionOffset;
    private long _dataSectionOffset;
    private int[] _nameHashes;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private int* _nameHashesPtr;
    private int[] _namePositions;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private int* _namePositionsPtr;
    private RuntimeType[] _typeTable;
    private int[] _typeNamePositions;
    private int _numResources;
    private UnmanagedMemoryStream _ums;
    private int _version;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Close
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    //TODO: generate method ReadUnalignedI4
    //TODO: generate method SkipInt32
    //TODO: generate method SkipString
    //TODO: generate method GetNameHash
    //TODO: generate method GetNamePosition
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumeratorInternal
    //TODO: generate method FindPosForResource
    //TODO: generate method CompareStringEqualsName
    //TODO: generate method AllocateStringForNameIndex
    //TODO: generate method GetValueForNameIndex
    //TODO: generate method LoadString
    //TODO: generate method LoadObject
    //TODO: generate method LoadObject
    //TODO: generate method LoadObjectV1
    //TODO: generate method _LoadObjectV1
    //TODO: generate method LoadObjectV2
    //TODO: generate method _LoadObjectV2
    //TODO: generate method ReadResources
    //TODO: generate method _ReadResources
    //TODO: generate method FindType
    //TODO: generate method GetResourceData
    //TODO: generate method TypeNameFromTypeCode
    public static final class ResourceEnumerator : __DotNet__Object, IDictionaryEnumerator
    {
        private enum int ENUM_DONE/*todo: implement initializer*/ = int();
        private enum int ENUM_NOT_STARTED/*todo: implement initializer*/ = int();
        private ResourceReader _reader;
        private bool _currentIsValid;
        private int _currentName;
        private int _dataPosition;
        //TODO: generate constructor
        //TODO: generate method MoveNext
        //TODO: generate property 'Key'
        //TODO: generate property 'Current'
        //TODO: generate property 'DataPosition'
        //TODO: generate property 'Entry'
        //TODO: generate property 'Value'
        //TODO: generate method Reset
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Resources\ResourceSet.cs'
//
// A ResourceSet stores all the resources defined in one particular CultureInfo.
// 
// The method used to load resources is straightforward - this class
// enumerates over an IResourceReader, loading every name and value, and 
// stores them in a hash table.  Custom IResourceReaders can be used.
// 
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class ResourceSet : __DotNet__Object, IDisposable, IEnumerable
{
    @__DotNet__Attribute!(NonSerializedAttribute.stringof)
    protected IResourceReader Reader;
    public Hashtable Table;
    private Hashtable _caseInsensitiveTable;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CommonInit
    //TODO: generate method Close
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    //TODO: generate method GetDefaultReader
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumeratorHelper
    //TODO: generate method GetString
    //TODO: generate method GetString
    //TODO: generate method GetObject
    //TODO: generate method GetObject
    //TODO: generate method ReadResources
    //TODO: generate method GetObjectInternal
    //TODO: generate method GetCaseInsensitiveObjectInternal
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Resources\ResourceTypeCode.cs'
//
//  An internal implementation detail for .resources files, describing
// what type an object is.  
// Ranges:
// 0 - 0x1F     Primitives and reserved values
// 0x20 - 0x3F  Specially recognized types, like byte[] and Streams
// Note this data must be included in any documentation describing the
// internals of .resources files.
// 
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum ResourceTypeCode
{
    // Primitives
    Null = 0,
    String = 1,
    Boolean = 2,
    Char = 3,
    Byte = 4,
    SByte = 5,
    Int16 = 6,
    UInt16 = 7,
    Int32 = 8,
    UInt32 = 9,
    Int64 = 0xa,
    UInt64 = 0xb,
    Single = 0xc,
    Double = 0xd,
    Decimal = 0xe,
    DateTime = 0xf,
    TimeSpan = 0x10,
    // A meta-value - change this if you add new primitives
    LastPrimitive = TimeSpan,
    // Types with a special representation, like byte[] and Stream
    ByteArray = 0x20,
    Stream = 0x21,
    // User types - serialized using the binary formatter.
    StartOfUserTypes = 0x40,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Resources\RuntimeResourceSet.cs'
//
public final class RuntimeResourceSet : ResourceSet, IEnumerable
{
    public enum int Version/*todo: implement initializer*/ = int();
    private Dictionary2!(String,ResourceLocator) _resCache;
    private ResourceReader _defaultReader;
    private Dictionary2!(String,ResourceLocator) _caseInsensitiveTable;
    private bool _haveReadFromReader;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Dispose
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumerator
    //TODO: generate method GetEnumeratorHelper
    //TODO: generate method GetString
    //TODO: generate method GetString
    //TODO: generate method GetObject
    //TODO: generate method GetObject
    //TODO: generate method GetObject
    //TODO: generate method ResolveResourceLocator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Resources\SatelliteContractVersionAttribute.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, AllowMultiple=false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class SatelliteContractVersionAttribute : Attribute
{
    private String _version;
    //TODO: generate constructor
    //TODO: generate property 'Version'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Resources\UltimateResourceFallbackLocation.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum UltimateResourceFallbackLocation
{
    MainAssembly,
    Satellite,
}
