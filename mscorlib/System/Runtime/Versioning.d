module mscorlib.System.Runtime.Versioning;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    __DotNet__Object,
    String,
    FlagsAttribute,
    SerializableAttribute,
    AttributeUsageAttribute,
    Attribute;
import mscorlib.System.Runtime.CompilerServices :
    FriendAccessAllowedAttribute;
import mscorlib.System.Diagnostics :
    ConditionalAttribute;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Versioning\BinaryCompatibility.cs'
//
// Provides a simple way to test whether an application was built against specific .NET Framework
// flavors and versions, with the intent of allowing Framework developers to mimic behavior of older
// Framework releases.  This allows us to make behavioral breaking changes in a binary compatible way,
// for an application.  This works at the per-AppDomain level, not process nor per-Assembly.
// 
// To opt into newer behavior, applications must specify a TargetFrameworkAttribute on their assembly
// saying what version they targeted, or a host must set this when creating an AppDomain.  Note
// that command line apps don't have this attribute!
// 
// To use this class:
// Developers need to figure out whether they're working on the phone, desktop, or Silverlight, and
// what version they are introducing a breaking change in.  Pick one predicate below, and use that
// to decide whether to run the new or old behavior.  Example:
//
// if (BinaryCompatibility.TargetsAtLeast_Phone_V7_1) {
//     // new behavior for phone 7.1 and other releases where we will integrate this change, like .NET Framework 4.5
// }
// else {
//     // Legacy behavior
// }
//
// If you are making a breaking change in one specific branch that won't be integrated normally to
// all other branches (ie, say you're making breaking changes to Windows Phone 8 after .NET Framework v4.5
// has locked down for release), then add in specific predicates for each relevant platform.
// 
// Maintainers of this class:
// Revisit the table once per release, perhaps at the end of the last coding milestone, to verify a
// default policy saying whether all quirks from a particular flavor & release should be enabled in
// other releases (ie, should all Windows Phone 8.0 quirks be enabled in .NET Framework v5)?  
// 
// History:
// Here is the order in which releases were made along with some basic integration information.  The idea
// is to track what set of compatibility features are present in each other.
// While we cannot guarantee this list is perfectly linear (ie, a feature could be implemented in the last
// few weeks before shipping and make it into only one of three concommittent releases due to triaging),
// this is a good high level summary of code flow.
//
//            Desktop            Silverlight             Windows Phone
//      .NET Framework 3.0   ->  Silverlight 2
//      .NET Framework 3.5
//                               Silverlight 3
//                               Silverlight 4
//      .NET Framework 4                                   Phone 8.0
//      .NET Framework 4.5                                 Phone 8.1
//      .NET Framework 4.5.1                               Phone 8.1
//           
// (Note: Windows Phone 7.0 was built using the .NET Compact Framework, which forked around v1 or v1.1)
// 
// Compatibility Policy decisions:
//  If we cannot determine that an app was built for a newer .NET Framework (ie, the app has no
//  TargetFrameworkAttribute), then quirks will be enabled to emulate older behavior.
//  As such, your test code should define the TargetFrameworkAttribute (which VS does for you)
//  if you want to see the new behavior!
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
public class BinaryCompatibility : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate property 'TargetsAtLeast_Phone_V7_1'
    //TODO: generate property 'TargetsAtLeast_Phone_V8_0'
    //TODO: generate property 'TargetsAtLeast_Desktop_V4_5'
    //TODO: generate property 'TargetsAtLeast_Desktop_V4_5_1'
    //TODO: generate property 'TargetsAtLeast_Desktop_V4_5_2'
    //TODO: generate property 'TargetsAtLeast_Desktop_V4_5_3'
    //TODO: generate property 'TargetsAtLeast_Desktop_V4_5_4'
    //TODO: generate property 'TargetsAtLeast_Desktop_V5_0'
    //TODO: generate property 'TargetsAtLeast_Silverlight_V4'
    //TODO: generate property 'TargetsAtLeast_Silverlight_V5'
    //TODO: generate property 'TargetsAtLeast_Silverlight_V6'
    //TODO: generate property 'AppWasBuiltForFramework'
    //TODO: generate property 'AppWasBuiltForVersion'
    private static TargetFrameworkId s_AppWasBuiltForFramework;
    private static int s_AppWasBuiltForVersion;
    private static immutable BinaryCompatibilityMap s_map/*todo: implement initializer*/ = null;
    private enum wchar c_componentSeparator/*todo: implement initializer*/ = wchar();
    private enum wchar c_keyValueSeparator/*todo: implement initializer*/ = wchar();
    private enum wchar c_versionValuePrefix/*todo: implement initializer*/ = wchar();
    private enum String c_versionKey/*todo: implement initializer*/ = null;
    private enum String c_profileKey/*todo: implement initializer*/ = null;
    private static final class BinaryCompatibilityMap : __DotNet__Object
    {
        public bool TargetsAtLeast_Phone_V7_1;
        public bool TargetsAtLeast_Phone_V8_0;
        public bool TargetsAtLeast_Phone_V8_1;
        public bool TargetsAtLeast_Desktop_V4_5;
        public bool TargetsAtLeast_Desktop_V4_5_1;
        public bool TargetsAtLeast_Desktop_V4_5_2;
        public bool TargetsAtLeast_Desktop_V4_5_3;
        public bool TargetsAtLeast_Desktop_V4_5_4;
        public bool TargetsAtLeast_Desktop_V5_0;
        public bool TargetsAtLeast_Silverlight_V4;
        public bool TargetsAtLeast_Silverlight_V5;
        public bool TargetsAtLeast_Silverlight_V6;
        //TODO: generate constructor
        //TODO: generate method AddQuirksForFramework
    }
    //TODO: generate method ParseTargetFrameworkMonikerIntoEnum
    //TODO: generate method ParseFrameworkName
    //TODO: generate method ReadTargetFrameworkId
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Versioning\CompatibilitySwitch.cs'
//
public class CompatibilitySwitch : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method IsEnabled
    //TODO: generate method GetValue
    //TODO: generate method IsEnabledInternal
    //TODO: generate method GetValueInternal
    //TODO: generate method GetAppContextOverridesInternalCall
    //TODO: generate method IsEnabledInternalCall
    //TODO: generate method GetValueInternalCall
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Versioning\ComponentGuaranteesAttribute.cs'
//
@__DotNet__Attribute!(FlagsAttribute.stringof)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum ComponentGuaranteesOptions
{
    None = 0,
    Exchange = 0x1,
    Stable = 0x2,
    SideBySide = 0x4,
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly | AttributeTargets.Module | AttributeTargets.Class | 
                    AttributeTargets.Struct | AttributeTargets.Interface | AttributeTargets.Delegate |
                    AttributeTargets.Enum | AttributeTargets.Method | AttributeTargets.Property |
                    AttributeTargets.Constructor | AttributeTargets.Event, AllowMultiple = false, Inherited = false*/)
public final class ComponentGuaranteesAttribute : Attribute
{
    private ComponentGuaranteesOptions _guarantees;
    //TODO: generate constructor
    //TODO: generate property 'Guarantees'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Versioning\NonVersionableAttribute.cs'
//
// This Conditional is here to strip the annotations for targets where ReadyToRun is not supported.
// If this attribute is ever made public, this Conditional should be removed.
@__DotNet__Attribute!(ConditionalAttribute.stringof/*, "FEATURE_READYTORUN"*/)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Method | AttributeTargets.Constructor, AllowMultiple = false, Inherited = false*/)
private final class NonVersionableAttribute : Attribute
{
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Versioning\ResourceAttributes.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method | AttributeTargets.Property | AttributeTargets.Constructor, Inherited = false*/)
@__DotNet__Attribute!(ConditionalAttribute.stringof/*, "RESOURCE_ANNOTATION_WORK"*/)
public final class ResourceConsumptionAttribute : Attribute
{
    private ResourceScope _consumptionScope;
    private ResourceScope _resourceScope;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'ResourceScope'
    //TODO: generate property 'ConsumptionScope'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method | AttributeTargets.Field | AttributeTargets.Property | AttributeTargets.Constructor, Inherited = false*/)
@__DotNet__Attribute!(ConditionalAttribute.stringof/*, "RESOURCE_ANNOTATION_WORK"*/)
public final class ResourceExposureAttribute : Attribute
{
    private ResourceScope _resourceExposureLevel;
    //TODO: generate constructor
    //TODO: generate property 'ResourceExposureLevel'
}
// Default visibility is Public, which isn't specified in this enum.
// Public == the lack of Private or Assembly
// Does this actually work?  Need to investigate that.
@__DotNet__Attribute!(FlagsAttribute.stringof)
public enum ResourceScope
{
    None = 0,
    // Resource type
    Machine = 0x1,
    Process = 0x2,
    AppDomain = 0x4,
    Library = 0x8,
    // Visibility
    Private = 0x10,
    Assembly = 0x20,
}
@__DotNet__Attribute!(FlagsAttribute.stringof)
public enum SxSRequirements
{
    None = 0,
    AppDomainID = 0x1,
    ProcessID = 0x2,
    CLRInstanceID = 0x4,
    AssemblyName = 0x8,
    TypeName = 0x10,
}
public class VersioningHelper : __DotNet__Object
{
    private this() {} // prevent instantiation
    private enum ResourceScope ResTypeMask/*todo: implement initializer*/ = (cast(ResourceScope)0);
    private enum ResourceScope VisibilityMask/*todo: implement initializer*/ = (cast(ResourceScope)0);
    //TODO: generate method GetRuntimeId
    //TODO: generate method MakeVersionSafeName
    //TODO: generate method MakeVersionSafeName
    //TODO: generate method GetCLRInstanceString
    //TODO: generate method GetRequirements
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Versioning\TargetFrameworkAttribute.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, AllowMultiple = false, Inherited = false*/)
public final class TargetFrameworkAttribute : Attribute
{
    private String _frameworkName;
    private String _frameworkDisplayName;
    //TODO: generate constructor
    //TODO: generate property 'FrameworkName'
    //TODO: generate property 'FrameworkDisplayName'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Versioning\TargetFrameworkId.cs'
//
// What type of .NET Framework was this application compiled against?
@__DotNet__Attribute!(FriendAccessAllowedAttribute.stringof)
public enum TargetFrameworkId
{
    NotYetChecked = 0,
    Unrecognized = 1,
    Unspecified = 2,
    NetFramework = 3,
    Portable = 4,
    NetCore = 5,
    Silverlight = 6,
    Phone = 7,
}
