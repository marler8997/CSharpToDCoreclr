module mscorlib.System.Runtime.InteropServices;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    CLSCompliantAttribute,
    SerializableAttribute,
    __DotNet__Object,
    AttributeUsageAttribute,
    Attribute,
    String,
    Type,
    ObsoleteAttribute,
    FlagsAttribute,
    Delegate,
    Guid,
    IDisposable,
    IntPtr,
    Decimal,
    SystemException,
    UIntPtr;
import mscorlib.System.Security :
    SecurityCriticalAttribute,
    SuppressUnmanagedCodeSecurityAttribute;
import mscorlib.System.Runtime.InteropServices.ComTypes :
    IConnectionPoint;
import mscorlib.System.Runtime.ConstrainedExecution :
    CriticalFinalizerObject;
import mscorlib.Microsoft.Win32.SafeHandles :
    SafeHandleZeroOrMinusOneIsInvalid;
import mscorlib.System.Diagnostics.CodeAnalysis :
    SuppressMessageAttribute;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\cominterfaces.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "03973551-57A1-3900-A2B5-9083E3FF2943"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Activator)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _Activator
{
    //TODO: generate method GetTypeInfoCount
    //TODO: generate method GetTypeInfo
    //TODO: generate method GetIDsOfNames
    //TODO: generate method Invoke
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "917B14D0-2D9E-38B8-92A9-381ACF52F7C0"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Attribute)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _Attribute
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "C281C7F1-4AA9-3517-961A-463CFED57E75"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Threading.Thread)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _Thread
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\ComInterfaces.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "BCA8B44D-AAD6-3A86-8AB7-03349F4F2DA2"*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Type)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _Type
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "17156360-2f1a-384a-bc52-fde93c215c5b"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsDual*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.Assembly)*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _Assembly
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "f7102fa9-cabb-3a74-a6da-b4567ef1b079"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.MemberInfo)*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _MemberInfo
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "6240837A-707F-3181-8E98-A36AE086766B"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.MethodBase)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _MethodBase
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "FFCC1B5D-ECB8-38DD-9B01-3DC8ABC2AA5F"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.MethodInfo)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _MethodInfo
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "E9A19478-9646-3679-9B10-8411AE1FD57D"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.ConstructorInfo)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _ConstructorInfo
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "8A7C1442-A9FB-366B-80D8-4939FFA6DBE0"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.FieldInfo)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _FieldInfo
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "F59ED4E4-E68F-3218-BD77-061AA82824BF"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.PropertyInfo)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _PropertyInfo
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "9DE59C64-D889-35A1-B897-587D74469E5B"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.EventInfo)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _EventInfo
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "993634C4-E47A-32CC-BE08-85F567DC27D6"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.ParameterInfo)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _ParameterInfo
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "D002E9BA-D9E3-3749-B1D3-D565A08B13E7"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.Module)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _Module
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "B42B6AAC-317E-34D5-9FA9-093BB4160C50"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.AssemblyName)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _AssemblyName
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Reflection\Emit\ComInterfaces.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "BEBB2505-8B54-3443-AEAD-142A16DD9CC7"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.Emit.AssemblyBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _AssemblyBuilder
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "ED3E4384-D7E2-3FA7-8FFD-8940D330519A"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.Emit.ConstructorBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _ConstructorBuilder
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "BE9ACCE8-AAFF-3B91-81AE-8211663F5CAD"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.Emit.CustomAttributeBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _CustomAttributeBuilder
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "C7BD73DE-9F85-3290-88EE-090B8BDFE2DF"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.Emit.EnumBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _EnumBuilder
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "AADABA99-895D-3D65-9760-B1F12621FAE8"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.Emit.EventBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _EventBuilder
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "CE1A3BF5-975E-30CC-97C9-1EF70F8F3993"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.Emit.FieldBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _FieldBuilder
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "A4924B27-6E3B-37F7-9B83-A4501955E6A7"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.Emit.ILGenerator)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _ILGenerator
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "4E6350D1-A08B-3DEC-9A3E-C465F9AEEC0C"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.Emit.LocalBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _LocalBuilder
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "007D8A14-FDF3-363E-9A0B-FEC0618260A2"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.Emit.MethodBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _MethodBuilder
{
}
// #if FEATURE_METHOD_RENTAL
// [GuidAttribute("C2323C25-F57F-3880-8A4D-12EBEA7A5852")]
// [InterfaceTypeAttribute(ComInterfaceType.InterfaceIsIUnknown)]
// [CLSCompliant(false)]
// [TypeLibImportClassAttribute(typeof(System.Reflection.Emit.MethodRental))]
// [System.Runtime.InteropServices.ComVisible(true)]
// public interface _MethodRental
// {
// #if !FEATURE_CORECLR
// void GetTypeInfoCount(out uint pcTInfo);
// void GetTypeInfo(uint iTInfo, uint lcid, IntPtr ppTInfo);
// void GetIDsOfNames([In] ref Guid riid, IntPtr rgszNames, uint cNames, uint lcid, IntPtr rgDispId);
// void Invoke(uint dispIdMember, [In] ref Guid riid, uint lcid, short wFlags, IntPtr pDispParams, IntPtr pVarResult, IntPtr pExcepInfo, IntPtr puArgErr);
// #endif
// }
// #endif
@__DotNet__Attribute!(GuidAttribute.stringof/*, "D05FFA9A-04AF-3519-8EE1-8D93AD73430B"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.Emit.ModuleBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _ModuleBuilder
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "36329EBA-F97A-3565-BC07-0ED5C6EF19FC"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.Emit.ParameterBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _ParameterBuilder
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "15F9A479-9397-3A63-ACBD-F51977FB0F02"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.Emit.PropertyBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _PropertyBuilder
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "7D13DD37-5A04-393C-BBCA-A5FEA802893D"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.Emit.SignatureHelper)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _SignatureHelper
{
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "7E5678EE-48B3-3F83-B076-C58543498A58"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(TypeLibImportClassAttribute.stringof/*, typeof(System.Reflection.Emit.TypeBuilder)*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _TypeBuilder
{
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ArrayWithOffset.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct ArrayWithOffset
{
    //TODO: generate constructor
    //TODO: generate method GetArray
    //TODO: generate method GetOffset
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method CalculateCount
    private __DotNet__Object m_array;
    private int m_offset;
    private int m_count;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\Attributes.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Delegate, AllowMultiple = false, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class UnmanagedFunctionPointerAttribute : Attribute
{
    private CallingConvention m_callingConvention;
    //TODO: generate constructor
    //TODO: generate property 'CallingConvention'
    public CharSet CharSet_;
    public bool BestFitMapping;
    public bool ThrowOnUnmappableChar;
    public bool SetLastError;
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Interface | AttributeTargets.Enum | AttributeTargets.Struct | AttributeTargets.Delegate, AllowMultiple = false, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
public final class TypeIdentifierAttribute : Attribute
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Scope'
    //TODO: generate property 'Identifier'
    public String Scope_;
    public String Identifier_;
}
// To be used on methods that sink reverse P/Invoke calls.
// This attribute is a CoreCLR-only security measure, currently ignored by the desktop CLR.
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, AllowMultiple = false, Inherited = false*/)
public final class AllowReversePInvokeCallsAttribute : Attribute
{
    //TODO: generate constructor
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method | AttributeTargets.Field | AttributeTargets.Property | AttributeTargets.Event, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class DispIdAttribute : Attribute
{
    public int _val;
    //TODO: generate constructor
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum ComInterfaceType
{
    InterfaceIsDual = 0,
    InterfaceIsIUnknown = 1,
    InterfaceIsIDispatch = 2,
    InterfaceIsIInspectable = 3,
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Interface, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class InterfaceTypeAttribute : Attribute
{
    public ComInterfaceType _val;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ComDefaultInterfaceAttribute : Attribute
{
    public Type _val;
    //TODO: generate constructor
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum ClassInterfaceType
{
    None = 0,
    AutoDispatch = 1,
    AutoDual = 2,
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly | AttributeTargets.Class, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ClassInterfaceAttribute : Attribute
{
    public ClassInterfaceType _val;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly | AttributeTargets.Interface | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Delegate | AttributeTargets.Enum | AttributeTargets.Field | AttributeTargets.Method | AttributeTargets.Property, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ComVisibleAttribute : Attribute
{
    public bool _val;
    //TODO: generate constructor
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Interface, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class TypeLibImportClassAttribute : Attribute
{
    public String _importClassName;
    //TODO: generate constructor
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class LCIDConversionAttribute : Attribute
{
    public int _val;
    //TODO: generate constructor
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ComRegisterFunctionAttribute : Attribute
{
    //TODO: generate constructor
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ComUnregisterFunctionAttribute : Attribute
{
    //TODO: generate constructor
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ProgIdAttribute : Attribute
{
    public String _val;
    //TODO: generate constructor
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ImportedFromTypeLibAttribute : Attribute
{
    public String _val;
    //TODO: generate constructor
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "The IDispatchImplAttribute is deprecated.", false*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum IDispatchImplType
{
    SystemDefinedImpl = 0,
    InternalImpl = 1,
    CompatibleImpl = 2,
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class | AttributeTargets.Assembly, Inherited = false*/)
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "This attribute is deprecated and will be removed in a future version.", false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class IDispatchImplAttribute : Attribute
{
    public IDispatchImplType _val;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class, Inherited = true*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ComSourceInterfacesAttribute : Attribute
{
    public String _val;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.All, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ComConversionLossAttribute : Attribute
{
    //TODO: generate constructor
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum TypeLibTypeFlags
{
    FAppObject = 0x0001,
    FCanCreate = 0x0002,
    FLicensed = 0x0004,
    FPreDeclId = 0x0008,
    FHidden = 0x0010,
    FControl = 0x0020,
    FDual = 0x0040,
    FNonExtensible = 0x0080,
    FOleAutomation = 0x0100,
    FRestricted = 0x0200,
    FAggregatable = 0x0400,
    FReplaceable = 0x0800,
    FDispatchable = 0x1000,
    FReverseBind = 0x2000,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum TypeLibFuncFlags
{
    FRestricted = 0x0001,
    FSource = 0x0002,
    FBindable = 0x0004,
    FRequestEdit = 0x0008,
    FDisplayBind = 0x0010,
    FDefaultBind = 0x0020,
    FHidden = 0x0040,
    FUsesGetLastError = 0x0080,
    FDefaultCollelem = 0x0100,
    FUiDefault = 0x0200,
    FNonBrowsable = 0x0400,
    FReplaceable = 0x0800,
    FImmediateBind = 0x1000,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum TypeLibVarFlags
{
    FReadOnly = 0x0001,
    FSource = 0x0002,
    FBindable = 0x0004,
    FRequestEdit = 0x0008,
    FDisplayBind = 0x0010,
    FDefaultBind = 0x0020,
    FHidden = 0x0040,
    FRestricted = 0x0080,
    FDefaultCollelem = 0x0100,
    FUiDefault = 0x0200,
    FNonBrowsable = 0x0400,
    FReplaceable = 0x0800,
    FImmediateBind = 0x1000,
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class | AttributeTargets.Interface | AttributeTargets.Enum | AttributeTargets.Struct, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class TypeLibTypeAttribute : Attribute
{
    public TypeLibTypeFlags _val;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class TypeLibFuncAttribute : Attribute
{
    public TypeLibFuncFlags _val;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Field, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class TypeLibVarAttribute : Attribute
{
    public TypeLibVarFlags _val;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum VarEnum
{
    VT_EMPTY = 0,
    VT_NULL = 1,
    VT_I2 = 2,
    VT_I4 = 3,
    VT_R4 = 4,
    VT_R8 = 5,
    VT_CY = 6,
    VT_DATE = 7,
    VT_BSTR = 8,
    VT_DISPATCH = 9,
    VT_ERROR = 10,
    VT_BOOL = 11,
    VT_VARIANT = 12,
    VT_UNKNOWN = 13,
    VT_DECIMAL = 14,
    VT_I1 = 16,
    VT_UI1 = 17,
    VT_UI2 = 18,
    VT_UI4 = 19,
    VT_I8 = 20,
    VT_UI8 = 21,
    VT_INT = 22,
    VT_UINT = 23,
    VT_VOID = 24,
    VT_HRESULT = 25,
    VT_PTR = 26,
    VT_SAFEARRAY = 27,
    VT_CARRAY = 28,
    VT_USERDEFINED = 29,
    VT_LPSTR = 30,
    VT_LPWSTR = 31,
    VT_RECORD = 36,
    VT_FILETIME = 64,
    VT_BLOB = 65,
    VT_STREAM = 66,
    VT_STORAGE = 67,
    VT_STREAMED_OBJECT = 68,
    VT_STORED_OBJECT = 69,
    VT_BLOB_OBJECT = 70,
    VT_CF = 71,
    VT_CLSID = 72,
    VT_VECTOR = 0x1000,
    VT_ARRAY = 0x2000,
    VT_BYREF = 0x4000,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum UnmanagedType
{
    Bool = 0x2,
    I1 = 0x3,
    U1 = 0x4,
    I2 = 0x5,
    U2 = 0x6,
    I4 = 0x7,
    U4 = 0x8,
    I8 = 0x9,
    U8 = 0xa,
    R4 = 0xb,
    R8 = 0xc,
    Currency = 0xf,
    BStr = 0x13,
    LPStr = 0x14,
    LPWStr = 0x15,
    LPTStr = 0x16,
    ByValTStr = 0x17,
    IUnknown = 0x19,
    IDispatch = 0x1a,
    Struct = 0x1b,
    Interface = 0x1c,
    SafeArray = 0x1d,
    ByValArray = 0x1e,
    SysInt = 0x1f,
    SysUInt = 0x20,
    VBByRefStr = 0x22,
    AnsiBStr = 0x23,
    TBStr = 0x24,
    VariantBool = 0x25,
    FunctionPtr = 0x26,
    AsAny = 0x28,
    LPArray = 0x2a,
    LPStruct = 0x2b,
    CustomMarshaler = 0x2c,
    Error = 0x2d,
    IInspectable = 0x2e,
    HString = 0x2f,
    LPUTF8Str = 0x30,
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Parameter | AttributeTargets.Field | AttributeTargets.ReturnValue, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class MarshalAsAttribute : Attribute
{
    //TODO: generate method GetCustomAttribute
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttribute
    //TODO: generate method IsDefined
    //TODO: generate method GetCustomAttribute
    //TODO: generate constructor
    public UnmanagedType _val;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Value'
    public VarEnum SafeArraySubType;
    public Type SafeArrayUserDefinedSubType;
    public int IidParameterIndex;
    public UnmanagedType ArraySubType;
    public short SizeParamIndex;
    public int SizeConst;
    // Fields used with SubType = CustomMarshaler
    @__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
    public String MarshalType;
    @__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
    public Type MarshalTypeRef;
    public String MarshalCookie;
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class | AttributeTargets.Interface, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ComImportAttribute : Attribute
{
    //TODO: generate method GetCustomAttribute
    //TODO: generate method IsDefined
    //TODO: generate constructor
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly | AttributeTargets.Interface | AttributeTargets.Class | AttributeTargets.Enum | AttributeTargets.Struct | AttributeTargets.Delegate, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class GuidAttribute : Attribute
{
    public String _val;
    //TODO: generate constructor
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class PreserveSigAttribute : Attribute
{
    //TODO: generate method GetCustomAttribute
    //TODO: generate method IsDefined
    //TODO: generate constructor
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Parameter, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class InAttribute : Attribute
{
    //TODO: generate method GetCustomAttribute
    //TODO: generate method IsDefined
    //TODO: generate constructor
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Parameter, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class OutAttribute : Attribute
{
    //TODO: generate method GetCustomAttribute
    //TODO: generate method IsDefined
    //TODO: generate constructor
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Parameter, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class OptionalAttribute : Attribute
{
    //TODO: generate method GetCustomAttribute
    //TODO: generate method IsDefined
    //TODO: generate constructor
}
@__DotNet__Attribute!(FlagsAttribute.stringof)
public enum DllImportSearchPath
{
    UseDllDirectoryForDependencies = 0x100,
    ApplicationDirectory = 0x200,
    UserDirectories = 0x400,
    System32 = 0x800,
    SafeDirectories = 0x1000,
    AssemblyDirectory = 0x2,
    LegacyBehavior = 0x0,
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly | AttributeTargets.Method, AllowMultiple = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
public final class DefaultDllImportSearchPathsAttribute : Attribute
{
    public DllImportSearchPath _paths;
    //TODO: generate constructor
    //TODO: generate property 'Paths'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class DllImportAttribute : Attribute
{
    //TODO: generate method GetCustomAttribute
    //TODO: generate method IsDefined
    //TODO: generate constructor
    public String _val;
    //TODO: generate constructor
    //TODO: generate property 'Value'
    public String EntryPoint;
    public CharSet CharSet_;
    public bool SetLastError;
    public bool ExactSpelling;
    public bool PreserveSig;
    public CallingConvention CallingConvention_;
    public bool BestFitMapping;
    public bool ThrowOnUnmappableChar;
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class | AttributeTargets.Struct, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class StructLayoutAttribute : Attribute
{
    private enum int DEFAULT_PACKING_SIZE/*todo: implement initializer*/ = int();
    //TODO: generate method GetCustomAttribute
    //TODO: generate method IsDefined
    public LayoutKind _val;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Value'
    public int Pack;
    public int Size;
    public CharSet CharSet_;
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Field, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class FieldOffsetAttribute : Attribute
{
    //TODO: generate method GetCustomAttribute
    //TODO: generate method IsDefined
    public int _val;
    //TODO: generate constructor
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Parameter | AttributeTargets.Field | AttributeTargets.Property | AttributeTargets.ReturnValue, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ComAliasNameAttribute : Attribute
{
    public String _val;
    //TODO: generate constructor
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly | AttributeTargets.Class | AttributeTargets.Interface, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class AutomationProxyAttribute : Attribute
{
    public bool _val;
    //TODO: generate constructor
    //TODO: generate property 'Value'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited = false, AllowMultiple = true*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class PrimaryInteropAssemblyAttribute : Attribute
{
    public int _major;
    public int _minor;
    //TODO: generate constructor
    //TODO: generate property 'MajorVersion'
    //TODO: generate property 'MinorVersion'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Interface, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class CoClassAttribute : Attribute
{
    public Type _CoClass;
    //TODO: generate constructor
    //TODO: generate property 'CoClass'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Interface, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ComEventInterfaceAttribute : Attribute
{
    public Type _SourceInterface;
    public Type _EventProvider;
    //TODO: generate constructor
    //TODO: generate property 'SourceInterface'
    //TODO: generate property 'EventProvider'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class TypeLibVersionAttribute : Attribute
{
    public int _major;
    public int _minor;
    //TODO: generate constructor
    //TODO: generate property 'MajorVersion'
    //TODO: generate property 'MinorVersion'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ComCompatibleVersionAttribute : Attribute
{
    public int _major;
    public int _minor;
    public int _build;
    public int _revision;
    //TODO: generate constructor
    //TODO: generate property 'MajorVersion'
    //TODO: generate property 'MinorVersion'
    //TODO: generate property 'BuildNumber'
    //TODO: generate property 'RevisionNumber'
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly | AttributeTargets.Interface | AttributeTargets.Class | AttributeTargets.Struct, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class BestFitMappingAttribute : Attribute
{
    public bool _bestFitMapping;
    //TODO: generate constructor
    //TODO: generate property 'BestFitMapping'
    public bool ThrowOnUnmappableChar;
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Module, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class DefaultCharSetAttribute : Attribute
{
    public CharSet _CharSet;
    //TODO: generate constructor
    //TODO: generate property 'CharSet'
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "This attribute has been deprecated.  Application Domains no longer respect Activation Context boundaries in IDispatch calls.", false*/)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly, Inherited = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class SetWin32ContextInIDispatchAttribute : Attribute
{
    //TODO: generate constructor
}
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, Inherited = false, AllowMultiple = false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
public final class ManagedToNativeComInteropStubAttribute : Attribute
{
    public Type _classType;
    public String _methodName;
    //TODO: generate constructor
    //TODO: generate property 'ClassType'
    //TODO: generate property 'MethodName'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\BStrWrapper.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class BStrWrapper : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'WrappedObject'
    private String m_WrappedObject;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\CallingConvention.cs'
//
// Used for the CallingConvention named argument to the DllImport attribute
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum CallingConvention
{
    Winapi = 1,
    Cdecl = 2,
    StdCall = 3,
    ThisCall = 4,
    FastCall = 5,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\CharSet.cs'
//
// Use this in P/Direct function prototypes to specify 
// which character set to use when marshalling Strings.
// Using Ansi will marshal the strings as 1 byte char*'s.
// Using Unicode will marshal the strings as 2 byte wchar*'s.
// Generally you probably want to use Auto, which does the
// right thing 99% of the time.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum CharSet
{
    None = 1,
    Ansi = 2,
    Unicode = 3,
    Auto = 4,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComEventsHelper.cs'
//
public class ComEventsHelper : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method Combine
    //TODO: generate method Remove
    //TODO: generate method UnwrapIfTransparentProxy
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComEventsInfo.cs'
//
// see code:ComEventsHelper#ComEventsArchitecture
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public class ComEventsInfo : __DotNet__Object
{
    private ComEventsSink _sinks;
    private __DotNet__Object _rcw;
    //TODO: generate constructor
    //TODO: generate destructor
    //TODO: generate method Find
    //TODO: generate method FromObject
    //TODO: generate method FindSink
    //TODO: generate method AddSink
    //TODO: generate method RemoveSink
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComEventsMethod.cs'
//
public class ComEventsMethod : __DotNet__Object
{
    public static class DelegateWrapper : __DotNet__Object
    {
        private Delegate _d;
        private bool _once/*todo: implement initializer*/ = bool();
        private int _expectedParamsCount;
        private Type[] _cachedTargetTypes;
        //TODO: generate constructor
        //TODO: generate property 'Delegate'
        //TODO: generate method Invoke
        //TODO: generate method PreProcessSignature
    }
    private DelegateWrapper[] _delegateWrappers;
    private int _dispid;
    private ComEventsMethod _next;
    //TODO: generate constructor
    //TODO: generate method Find
    //TODO: generate method Add
    //TODO: generate method Remove
    //TODO: generate property 'DispId'
    //TODO: generate property 'Empty'
    //TODO: generate method AddDelegate
    //TODO: generate method RemoveDelegate
    //TODO: generate method Invoke
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComEventsSink.cs'
//
// see code:ComEventsHelper#ComEventsArchitecture
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public class ComEventsSink : __DotNet__Object, NativeMethods.IDispatch, ICustomQueryInterface
{
    private Guid _iidSourceItf;
    private IConnectionPoint _connectionPoint;
    private int _cookie;
    private ComEventsMethod _methods;
    private ComEventsSink _next;
    //TODO: generate constructor
    //TODO: generate method Find
    //TODO: generate method Add
    //TODO: generate method RemoveAll
    //TODO: generate method Remove
    //TODO: generate method RemoveMethod
    //TODO: generate method FindMethod
    //TODO: generate method AddMethod
    //TODO: generate method GetTypeInfoCount
    //TODO: generate method GetTypeInfo
    //TODO: generate method GetIDsOfNames
    private enum VarEnum VT_BYREF_VARIANT/*todo: implement initializer*/ = (cast(VarEnum)0);
    private enum VarEnum VT_TYPEMASK/*todo: implement initializer*/ = (cast(VarEnum)0);
    private enum VarEnum VT_BYREF_TYPEMASK/*todo: implement initializer*/ = (cast(VarEnum)0);
    //TODO: generate method GetVariant
    //TODO: generate method Invoke
    private static Guid IID_IManagedObject/*todo: implement initializer*/ = Guid();
    //TODO: generate method GetInterface
    //TODO: generate method Advise
    //TODO: generate method Unadvise
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\COMException.cs'
//
// Exception for COM Interop errors where we don't recognize the HResult.
// 
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class COMException : ExternalException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method ToString
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComMemberType.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum ComMemberType
{
    Method = 0,
    PropGet = 1,
    PropSet = 2,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\CriticalHandle.cs'
//
// This class should not be serializable - it's a handle.  We require unmanaged
// code permission to subclass CriticalHandle to prevent people from writing a 
// subclass and suddenly being able to run arbitrary native code with the
// same signature as CloseHandle.  This is technically a little redundant, but
// we'll do this to ensure we've cut off all attack vectors.  Similarly, all
// methods have a link demand to ensure untrusted code cannot directly edit
// or alter a handle.
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public abstract class CriticalHandle : CriticalFinalizerObject, IDisposable
{
    private String _stackTrace;
    protected IntPtr handle;
    private bool _isClosed;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate destructor
    //TODO: generate method Cleanup
    //TODO: generate method FireCustomerDebugProbe
    //TODO: generate method SetHandle
    //TODO: generate property 'IsClosed'
    //TODO: generate property 'IsInvalid'
    //TODO: generate method Close
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    //TODO: generate method SetHandleAsInvalid
    //TODO: generate method ReleaseHandle
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\CurrencyWrapper.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class CurrencyWrapper : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'WrappedObject'
    private Decimal m_WrappedObject;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\DispatchWrapper.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class DispatchWrapper : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate property 'WrappedObject'
    private __DotNet__Object m_WrappedObject;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ErrorWrapper.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ErrorWrapper : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'ErrorCode'
    private int m_ErrorCode;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ExtensibleClassFactory.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class ExtensibleClassFactory : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method RegisterObjectCreationCallback
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ExternalException.cs'
//
// Base exception for COM Interop errors &; Structured Exception Handler
// exceptions.
// 
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class ExternalException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'ErrorCode'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\GcHandle.cs'
//
// These are the types of handles used by the EE.  
// IMPORTANT: These must match the definitions in ObjectHandle.h in the EE. 
// IMPORTANT: If new values are added to the enum the GCHandle::MaxHandleType
//            constant must be updated.
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum GCHandleType
{
    Weak = 0,
    WeakTrackResurrection = 1,
    Normal = 2,
    Pinned = 3,
}
// This class allows you to create an opaque, GC handle to any 
// COM+ object. A GC handle is used when an object reference must be
// reachable from unmanaged memory.  There are 3 kinds of roots:
// Normal - keeps the object from being collected.
// Weak - allows object to be collected and handle contents will be zeroed.
//          Weak references are zeroed before the finalizer runs, so if the
//          object is resurrected in the finalizer the weak reference is
//          still zeroed.
// WeakTrackResurrection - Same as weak, but stays until after object is
//          really gone.
// Pinned - same as normal, but allows the address of the actual object
//          to be taken.
//
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct GCHandle
{
    private enum GCHandleType MaxHandleType/*todo: implement initializer*/ = (cast(GCHandleType)0);
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method Alloc
    //TODO: generate method Alloc
    //TODO: generate method Free
    //TODO: generate property 'Target'
    //TODO: generate method AddrOfPinnedObject
    //TODO: generate property 'IsAllocated'
    //TODO: generate conversion operator
    //TODO: generate method FromIntPtr
    //TODO: generate conversion operator
    //TODO: generate method ToIntPtr
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
    //TODO: generate method GetHandleValue
    //TODO: generate method IsPinned
    //TODO: generate method SetIsPinned
    //TODO: generate method InternalAlloc
    //TODO: generate method InternalFree
    //TODO: generate method InternalGet
    //TODO: generate method InternalSet
    //TODO: generate method InternalCompareExchange
    //TODO: generate method InternalAddrOfPinnedObject
    //TODO: generate method InternalCheckDomain
    //TODO: generate method InternalGetHandleType
    private IntPtr m_handle;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\HandleRef.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public struct HandleRef
{
    public __DotNet__Object m_wrapper;
    public IntPtr m_handle;
    //TODO: generate constructor
    //TODO: generate property 'Wrapper'
    //TODO: generate property 'Handle'
    //TODO: generate conversion operator
    //TODO: generate method ToIntPtr
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ICustomAdapter.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface ICustomAdapter
{
    //TODO: generate method GetUnderlyingObject
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ICustomFactory.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface ICustomFactory
{
    //TODO: generate method CreateInstance
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ICustomMarshaler.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface ICustomMarshaler
{
    //TODO: generate method MarshalNativeToManaged
    //TODO: generate method MarshalManagedToNative
    //TODO: generate method CleanUpNativeData
    //TODO: generate method CleanUpManagedData
    //TODO: generate method GetNativeDataSize
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ICustomQueryInterface.cs'
//
//====================================================================
// The enum of the return value of IQuerable.GetInterface
//====================================================================
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
public enum CustomQueryInterfaceResult
{
    Handled = 0,
    NotHandled = 1,
    Failed = 2,
}
//====================================================================
// The interface for customizing IQueryInterface
//====================================================================
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
public interface ICustomQueryInterface
{
    //TODO: generate method GetInterface
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\IException.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "b36b5c63-42ef-38bc-a07e-0b34c98f164a"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsDual*/)
@__DotNet__Attribute!(CLSCompliantAttribute.stringof/*, false*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface _Exception
{
    //TODO: generate property 'InnerException'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\InvalidComObjectException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class InvalidComObjectException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\InvalidOleVariantTypeException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class InvalidOleVariantTypeException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\IRegistrationServices.cs'
//
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum AssemblyRegistrationFlags
{
    None = 0x00000000,
    SetCodeBase = 0x00000001,
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "CCBD682C-73A5-4568-B8B0-C7007E11ABA2"*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface IRegistrationServices
{
    //TODO: generate method RegisterAssembly
    //TODO: generate method UnregisterAssembly
    //TODO: generate method GetRegistrableTypesInAssembly
    //TODO: generate method GetProgIdForType
    //TODO: generate method RegisterTypeForComClients
    //TODO: generate method GetManagedCategoryGuid
    //TODO: generate method TypeRequiresRegistration
    //TODO: generate method TypeRepresentsComType
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ITypeLibConverter.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum TypeLibImporterFlags
{
    None = 0x00000000,
    PrimaryInteropAssembly = 0x00000001,
    UnsafeInterfaces = 0x00000002,
    SafeArrayAsSystemArray = 0x00000004,
    TransformDispRetVals = 0x00000008,
    PreventClassMembers = 0x00000010,
    SerializableValueClasses = 0x00000020,
    ImportAsX86 = 0x00000100,
    ImportAsX64 = 0x00000200,
    ImportAsItanium = 0x00000400,
    ImportAsAgnostic = 0x00000800,
    ReflectionOnlyLoading = 0x00001000,
    NoDefineVersionResource = 0x00002000,
    ImportAsArm = 0x00004000,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum TypeLibExporterFlags
{
    None = 0x00000000,
    OnlyReferenceRegistered = 0x00000001,
    CallerResolvedReferences = 0x00000002,
    OldNames = 0x00000004,
    ExportAs32Bit = 0x00000010,
    ExportAs64Bit = 0x00000020,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum ImporterEventKind
{
    NOTIF_TYPECONVERTED = 0,
    NOTIF_CONVERTWARNING = 1,
    ERROR_REFTOINVALIDTYPELIB = 2,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum ExporterEventKind
{
    NOTIF_TYPECONVERTED = 0,
    NOTIF_CONVERTWARNING = 1,
    ERROR_REFTOINVALIDASSEMBLY = 2,
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "F1C3BF76-C3E4-11d3-88E7-00902754C43A"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface ITypeLibImporterNotifySink
{
    //TODO: generate method ReportEvent
    //TODO: generate method ResolveRef
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "F1C3BF77-C3E4-11d3-88E7-00902754C43A"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface ITypeLibExporterNotifySink
{
    //TODO: generate method ReportEvent
    //TODO: generate method ResolveRef
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "F1C3BF78-C3E4-11d3-88E7-00902754C43A"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface ITypeLibConverter
{
    //TODO: generate method ConvertTypeLibToAssembly
    //TODO: generate method ConvertAssemblyToTypeLib
    //TODO: generate method GetPrimaryInteropAssembly
    //TODO: generate method ConvertTypeLibToAssembly
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "FA1F3615-ACB9-486d-9EAC-1BEF87E36B09"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public interface ITypeLibExporterNameProvider
{
    //TODO: generate method GetNames
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\LayoutKind.cs'
//
// Used in the StructLayoutAttribute class
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum LayoutKind
{
    Sequential = 0,
    Explicit = 2,
    Auto = 3,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\Marshal.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum CustomQueryInterfaceMode
{
    Ignore = 0,
    Allow = 1,
}
//========================================================================
// All public methods, including PInvoke, are protected with linkchecks.  
// Remove the default demands for all PInvoke methods with this global 
// declaration on the class.
//========================================================================
// #if FEATURE_CORECLR
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public class Marshal : __DotNet__Object
{
    private this() {} // prevent instantiation
    private enum int LMEM_FIXED/*todo: implement initializer*/ = int();
    private enum int LMEM_MOVEABLE/*todo: implement initializer*/ = int();
    private enum long HIWORDMASK/*todo: implement initializer*/ = long();
    private static Guid IID_IUnknown/*todo: implement initializer*/ = Guid();
    //TODO: generate method IsWin32Atom
    //TODO: generate method IsNotWin32Atom
    public static immutable int SystemDefaultCharSize/*todo: implement initializer*/ = int();
    public static immutable int SystemMaxDBCSCharSize/*todo: implement initializer*/ = int();
    private enum String s_strConvertedTypeInfoAssemblyName/*todo: implement initializer*/ = null;
    private enum String s_strConvertedTypeInfoAssemblyTitle/*todo: implement initializer*/ = null;
    private enum String s_strConvertedTypeInfoAssemblyDesc/*todo: implement initializer*/ = null;
    private enum String s_strConvertedTypeInfoNameSpace/*todo: implement initializer*/ = null;
    //TODO: generate method GetSystemMaxDBCSCharSize
    //TODO: generate method PtrToStringAnsi
    //TODO: generate method PtrToStringAnsi
    //TODO: generate method PtrToStringUni
    //TODO: generate method PtrToStringAuto
    //TODO: generate method PtrToStringUni
    //TODO: generate method PtrToStringAuto
    //TODO: generate method PtrToStringUTF8
    //TODO: generate method PtrToStringUTF8
    //TODO: generate method SizeOf
    //TODO: generate method SizeOf
    //TODO: generate method SizeOf
    //TODO: generate method SizeOf
    //TODO: generate method AlignedSizeOf
    //TODO: generate method SizeOfType
    //TODO: generate method AlignedSizeOfType
    //TODO: generate method SizeOfHelper
    //TODO: generate method OffsetOf
    //TODO: generate method OffsetOf
    //TODO: generate method OffsetOfHelper
    //TODO: generate method UnsafeAddrOfPinnedArrayElement
    //TODO: generate method UnsafeAddrOfPinnedArrayElement
    //TODO: generate method Copy
    //TODO: generate method Copy
    //TODO: generate method Copy
    //TODO: generate method Copy
    //TODO: generate method Copy
    //TODO: generate method Copy
    //TODO: generate method Copy
    //TODO: generate method Copy
    //TODO: generate method CopyToNative
    //TODO: generate method Copy
    //TODO: generate method Copy
    //TODO: generate method Copy
    //TODO: generate method Copy
    //TODO: generate method Copy
    //TODO: generate method Copy
    //TODO: generate method Copy
    //TODO: generate method Copy
    //TODO: generate method CopyToManaged
    //TODO: generate method ReadByte
    //TODO: generate method ReadByte
    //TODO: generate method ReadByte
    //TODO: generate method ReadInt16
    //TODO: generate method ReadInt16
    //TODO: generate method ReadInt16
    //TODO: generate method ReadInt32
    //TODO: generate method ReadInt32
    //TODO: generate method ReadInt32
    //TODO: generate method ReadIntPtr
    //TODO: generate method ReadIntPtr
    //TODO: generate method ReadIntPtr
    //TODO: generate method ReadInt64
    //TODO: generate method ReadInt64
    //TODO: generate method ReadInt64
    //TODO: generate method WriteByte
    //TODO: generate method WriteByte
    //TODO: generate method WriteByte
    //TODO: generate method WriteInt16
    //TODO: generate method WriteInt16
    //TODO: generate method WriteInt16
    //TODO: generate method WriteInt16
    //TODO: generate method WriteInt16
    //TODO: generate method WriteInt16
    //TODO: generate method WriteInt32
    //TODO: generate method WriteInt32
    //TODO: generate method WriteInt32
    //TODO: generate method WriteIntPtr
    //TODO: generate method WriteIntPtr
    //TODO: generate method WriteIntPtr
    //TODO: generate method WriteInt64
    //TODO: generate method WriteInt64
    //TODO: generate method WriteInt64
    //TODO: generate method GetLastWin32Error
    //TODO: generate method SetLastWin32Error
    //TODO: generate method GetHRForLastWin32Error
    //TODO: generate method Prelink
    //TODO: generate method InternalPrelink
    //TODO: generate method PrelinkAll
    //TODO: generate method NumParamBytes
    //TODO: generate method InternalNumParamBytes
    //TODO: generate method GetExceptionPointers
    //TODO: generate method GetExceptionCode
    //TODO: generate method StructureToPtr
    //TODO: generate method StructureToPtr
    //TODO: generate method PtrToStructure
    //TODO: generate method PtrToStructure
    //TODO: generate method PtrToStructure
    //TODO: generate method PtrToStructure
    //TODO: generate method PtrToStructureHelper
    //TODO: generate method DestroyStructure
    //TODO: generate method DestroyStructure
    //TODO: generate method GetHINSTANCE
    //TODO: generate method GetHINSTANCE
    //TODO: generate method ThrowExceptionForHR
    //TODO: generate method ThrowExceptionForHR
    //TODO: generate method ThrowExceptionForHRInternal
    //TODO: generate method GetExceptionForHR
    //TODO: generate method GetExceptionForHR
    //TODO: generate method GetExceptionForHRInternal
    //TODO: generate method GetUnmanagedThunkForManagedMethodPtr
    //TODO: generate method GetManagedThunkForUnmanagedMethodPtr
    //TODO: generate method GetThreadFromFiberCookie
    //TODO: generate method InternalGetThreadFromFiberCookie
    //TODO: generate method AllocHGlobal
    //TODO: generate method AllocHGlobal
    //TODO: generate method FreeHGlobal
    //TODO: generate method ReAllocHGlobal
    //TODO: generate method StringToHGlobalAnsi
    //TODO: generate method StringToHGlobalUni
    //TODO: generate method StringToHGlobalAuto
    //TODO: generate method GetHRForException
    //TODO: generate method GetHRForException_WinRT
    public static immutable Guid ManagedNameGuid/*todo: implement initializer*/ = Guid();
    //TODO: generate method GetTypeLibName
    //TODO: generate method GetTypeLibName
    //TODO: generate method GetTypeLibNameInternal
    //TODO: generate method GetTypeLibGuid
    //TODO: generate method GetTypeLibGuid
    //TODO: generate method FCallGetTypeLibGuid
    //TODO: generate method GetTypeLibLcid
    //TODO: generate method GetTypeLibLcid
    //TODO: generate method GetTypeLibVersion
    //TODO: generate method GetTypeInfoGuid
    //TODO: generate method FCallGetTypeInfoGuid
    //TODO: generate method GetTypeLibGuidForAssembly
    //TODO: generate method FCallGetTypeLibGuidForAssembly
    //TODO: generate method _GetTypeLibVersionForAssembly
    //TODO: generate method GetTypeLibVersionForAssembly
    //TODO: generate method GetTypeInfoName
    //TODO: generate method GetTypeInfoName
    //TODO: generate method GetTypeInfoNameInternal
    //TODO: generate method GetManagedTypeInfoNameInternal
    //TODO: generate method GetLoadedTypeForGUID
    //TODO: generate method GetTypeFromCLSID
    //TODO: generate method GetITypeInfoForType
    //TODO: generate method GetIUnknownForObject
    //TODO: generate method GetIUnknownForObjectInContext
    //TODO: generate method GetIUnknownForObjectNative
    //TODO: generate method GetRawIUnknownForComObjectNoAddRef
    //TODO: generate method GetIDispatchForObject
    //TODO: generate method GetIDispatchForObjectInContext
    //TODO: generate method GetIDispatchForObjectNative
    //TODO: generate method GetComInterfaceForObject
    //TODO: generate method GetComInterfaceForObject
    //TODO: generate method GetComInterfaceForObject
    //TODO: generate method GetComInterfaceForObjectInContext
    //TODO: generate method GetComInterfaceForObjectNative
    //TODO: generate method GetObjectForIUnknown
    //TODO: generate method GetUniqueObjectForIUnknown
    //TODO: generate method GetTypedObjectForIUnknown
    //TODO: generate method CreateAggregatedObject
    //TODO: generate method CreateAggregatedObject
    //TODO: generate method CleanupUnusedObjectsInCurrentContext
    //TODO: generate method AreComObjectsAvailableForCleanup
    //TODO: generate method IsComObject
    //TODO: generate method AllocCoTaskMem
    //TODO: generate method StringToCoTaskMemUni
    //TODO: generate method StringToCoTaskMemUTF8
    //TODO: generate method StringToCoTaskMemAuto
    //TODO: generate method StringToCoTaskMemAnsi
    //TODO: generate method FreeCoTaskMem
    //TODO: generate method ReAllocCoTaskMem
    //TODO: generate method FreeBSTR
    //TODO: generate method StringToBSTR
    //TODO: generate method PtrToStringBSTR
    //TODO: generate method ReleaseComObject
    //TODO: generate method InternalReleaseComObject
    //TODO: generate method FinalReleaseComObject
    //TODO: generate method InternalFinalReleaseComObject
    //TODO: generate method GetComObjectData
    //TODO: generate method SetComObjectData
    //TODO: generate method CreateWrapperOfType
    //TODO: generate method CreateWrapperOfType
    //TODO: generate method InternalCreateWrapperOfType
    //TODO: generate method ReleaseThreadCache
    //TODO: generate method IsTypeVisibleFromCom
    //TODO: generate method QueryInterface
    //TODO: generate method AddRef
    //TODO: generate method Release
    //TODO: generate method GetNativeVariantForObject
    //TODO: generate method GetNativeVariantForObject
    //TODO: generate method GetObjectForNativeVariant
    //TODO: generate method GetObjectForNativeVariant
    //TODO: generate method GetObjectsForNativeVariants
    //TODO: generate method GetObjectsForNativeVariants
    //TODO: generate method GetStartComSlot
    //TODO: generate method GetEndComSlot
    //TODO: generate method GetMethodInfoForComSlot
    //TODO: generate method GetComSlotForMethodInfo
    //TODO: generate method InternalGetComSlotForMethodInfo
    //TODO: generate method GenerateGuidForType
    //TODO: generate method FCallGenerateGuidForType
    //TODO: generate method GenerateProgIdForType
    //TODO: generate method BindToMoniker
    //TODO: generate method GetActiveObject
    //TODO: generate method CLSIDFromProgIDEx
    //TODO: generate method CLSIDFromProgID
    //TODO: generate method CreateBindCtx
    //TODO: generate method MkParseDisplayName
    //TODO: generate method BindMoniker
    //TODO: generate method GetActiveObject
    //TODO: generate method InternalSwitchCCW
    //TODO: generate method InternalWrapIUnknownWithComObject
    //TODO: generate method LoadLicenseManager
    //TODO: generate method ChangeWrapperHandleStrength
    //TODO: generate method InitializeWrapperForWinRT
    //TODO: generate method InitializeManagedWinRTFactoryObject
    //TODO: generate method GetNativeActivationFactory
    //TODO: generate method _GetInspectableIids
    //TODO: generate method GetInspectableIids
    //TODO: generate method _GetCachedWinRTTypeByIid
    //TODO: generate method GetCachedWinRTTypeByIid
    //TODO: generate method _GetCachedWinRTTypes
    //TODO: generate method GetCachedWinRTTypes
    //TODO: generate method GetCachedWinRTTypes
    //TODO: generate method GetDelegateForFunctionPointer
    //TODO: generate method GetDelegateForFunctionPointer
    //TODO: generate method GetDelegateForFunctionPointerInternal
    //TODO: generate method GetFunctionPointerForDelegate
    //TODO: generate method GetFunctionPointerForDelegate
    //TODO: generate method GetFunctionPointerForDelegateInternal
    //TODO: generate method ZeroFreeBSTR
    //TODO: generate method ZeroFreeCoTaskMemAnsi
    //TODO: generate method ZeroFreeCoTaskMemUnicode
    //TODO: generate method ZeroFreeCoTaskMemUTF8
    //TODO: generate method ZeroFreeGlobalAllocAnsi
    //TODO: generate method ZeroFreeGlobalAllocUnicode
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\MarshalDirectiveException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class MarshalDirectiveException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\NativeBuffer.cs'
//
public class NativeBuffer : __DotNet__Object, IDisposable
{
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private static immutable SafeHandle s_emptyHandle;
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private SafeHeapHandle _handle;
    private ulong _capacity;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'VoidPointer'
    //TODO: generate property 'BytePointer'
    //TODO: generate method GetHandle
    //TODO: generate property 'ByteCapacity'
    //TODO: generate method EnsureByteCapacity
    //TODO: generate indexer
    //TODO: generate method Resize
    //TODO: generate method ReleaseHandle
    //TODO: generate method Free
    //TODO: generate method Dispose
    @__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
    private static final class EmptySafeHandle : SafeHandle
    {
        //TODO: generate constructor
        //TODO: generate property 'IsInvalid'
        //TODO: generate method ReleaseHandle
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\NativeCallableAttribute.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method*/)
public final class NativeCallableAttribute : Attribute
{
    //TODO: generate constructor
    public CallingConvention CallingConvention_;
    public String EntryPoint;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\NativeMethods.cs'
//
public class NativeMethods : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method VariantClear
    @__DotNet__Attribute!(SuppressUnmanagedCodeSecurityAttribute.stringof)
    @__DotNet__Attribute!(ComImportAttribute.stringof)
    @__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
    @__DotNet__Attribute!(GuidAttribute.stringof/*, "00020400-0000-0000-C000-000000000046"*/)
    public static interface IDispatch
    {
        //TODO: generate method GetTypeInfoCount
        //TODO: generate method GetTypeInfo
        //TODO: generate method GetIDsOfNames
        //TODO: generate method Invoke
    }
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ObjectCreationDelegate.cs'
//
// Delegate called when a managed object wishes to instantiate its unmanaged
// portion. The IUnknown of the managed object (the aggregator) is passed as a
// parameter and the delegate should return the IUnknown of the unmanaged object
// (the aggregatee). Both are passed as int's to avoid any marshalling.
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public alias ObjectCreationDelegate = IntPtr delegate(IntPtr aggregator);

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\PInvokeMap.cs'
//
// This Enum matchs the CorPinvokeMap defined in CorHdr.h
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum PInvokeMap
{
    NoMangle = 0x0001,
    CharSetMask = 0x0006,
    CharSetNotSpec = 0x0000,
    CharSetAnsi = 0x0002,
    CharSetUnicode = 0x0004,
    CharSetAuto = 0x0006,
    PinvokeOLE = 0x0020,
    SupportsLastError = 0x0040,
    BestFitMask = 0x0030,
    BestFitEnabled = 0x0010,
    BestFitDisabled = 0x0020,
    BestFitUseAsm = 0x0030,
    ThrowOnUnmappableCharMask = 0x3000,
    ThrowOnUnmappableCharEnabled = 0x1000,
    ThrowOnUnmappableCharDisabled = 0x2000,
    ThrowOnUnmappableCharUseAsm = 0x3000,
    // None of the calling convention flags is relevant for fields.
    CallConvMask = 0x0700,
    CallConvWinapi = 0x0100,
    CallConvCdecl = 0x0200,
    CallConvStdcall = 0x0300,
    CallConvThiscall = 0x0400,
    CallConvFastcall = 0x0500,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\RegistrationServices.cs'
//
@__DotNet__Attribute!(FlagsAttribute.stringof)
public enum RegistrationClassContext
{
    InProcessServer = 0x1,
    InProcessHandler = 0x2,
    LocalServer = 0x4,
    InProcessServer16 = 0x8,
    RemoteServer = 0x10,
    InProcessHandler16 = 0x20,
    Reserved1 = 0x40,
    Reserved2 = 0x80,
    Reserved3 = 0x100,
    Reserved4 = 0x200,
    NoCodeDownload = 0x400,
    Reserved5 = 0x800,
    NoCustomMarshal = 0x1000,
    EnableCodeDownload = 0x2000,
    NoFailureLog = 0x4000,
    DisableActivateAsActivator = 0x8000,
    EnableActivateAsActivator = 0x10000,
    FromDefaultContext = 0x20000,
}
@__DotNet__Attribute!(FlagsAttribute.stringof)
public enum RegistrationConnectionType
{
    SingleUse = 0,
    MultipleUse = 1,
    MultiSeparate = 2,
    Suspended = 4,
    Surrogate = 8,
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "475E398F-8AFA-43a7-A3BE-F4EF8D6787C9"*/)
@__DotNet__Attribute!(ClassInterfaceAttribute.stringof/*, ClassInterfaceType.None*/)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class RegistrationServices : __DotNet__Object, IRegistrationServices
{
    private enum String strManagedCategoryGuid/*todo: implement initializer*/ = null;
    private enum String strDocStringPrefix/*todo: implement initializer*/ = null;
    private enum String strManagedTypeThreadingModel/*todo: implement initializer*/ = null;
    private enum String strComponentCategorySubKey/*todo: implement initializer*/ = null;
    private enum String strManagedCategoryDescription/*todo: implement initializer*/ = null;
    private enum String strImplementedCategoriesSubKey/*todo: implement initializer*/ = null;
    private enum String strMsCorEEFileName/*todo: implement initializer*/ = null;
    private enum String strRecordRootName/*todo: implement initializer*/ = null;
    private enum String strClsIdRootName/*todo: implement initializer*/ = null;
    private enum String strTlbRootName/*todo: implement initializer*/ = null;
    private static Guid s_ManagedCategoryGuid/*todo: implement initializer*/ = Guid();
    //TODO: generate method RegisterAssembly
    //TODO: generate method UnregisterAssembly
    //TODO: generate method GetRegistrableTypesInAssembly
    //TODO: generate method GetProgIdForType
    //TODO: generate method RegisterTypeForComClients
    //TODO: generate method GetManagedCategoryGuid
    //TODO: generate method TypeRequiresRegistration
    //TODO: generate method TypeRepresentsComType
    //TODO: generate method RegisterTypeForComClients
    //TODO: generate method UnregisterTypeForComClients
    //TODO: generate method TypeRequiresRegistrationHelper
    //TODO: generate method RegisterValueType
    //TODO: generate method RegisterManagedType
    //TODO: generate method RegisterComImportedType
    //TODO: generate method UnregisterValueType
    //TODO: generate method UnregisterManagedType
    //TODO: generate method UnregisterComImportedType
    //TODO: generate method RegisterPrimaryInteropAssembly
    //TODO: generate method UnregisterPrimaryInteropAssembly
    //TODO: generate method EnsureManagedCategoryExists
    //TODO: generate method ManagedCategoryExists
    //TODO: generate method CallUserDefinedRegistrationMethod
    //TODO: generate method GetBaseComImportType
    //TODO: generate method IsRegisteredAsValueType
    //TODO: generate method CoRevokeClassObject
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\RuntimeEnvironment.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public class RuntimeEnvironment : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method GetModuleFileName
    //TODO: generate method GetDeveloperPath
    //TODO: generate method GetHostBindingFile
    //TODO: generate method FromGlobalAccessCache
    //TODO: generate method GetSystemVersion
    //TODO: generate method GetRuntimeDirectory
    //TODO: generate method GetRuntimeDirectoryImpl
    //TODO: generate property 'SystemConfigurationFile'
    //TODO: generate method GetRuntimeInterfaceImpl
    //TODO: generate method GetRuntimeInterfaceAsIntPtr
    //TODO: generate method GetRuntimeInterfaceAsObject
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\SafeArrayRankMismatchException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class SafeArrayRankMismatchException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\SafeArrayTypeMismatchException.cs'
//
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class SafeArrayTypeMismatchException : SystemException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\SafeBuffer.cs'
//
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public abstract class SafeBuffer : SafeHandleZeroOrMinusOneIsInvalid
{
    private static immutable UIntPtr Uninitialized/*todo: implement initializer*/ = UIntPtr();
    private UIntPtr _numBytes;
    //TODO: generate constructor
    //TODO: generate method Initialize
    //TODO: generate method Initialize
    //TODO: generate method Initialize
    //TODO: generate method AcquirePointer
    //TODO: generate method ReleasePointer
    //TODO: generate method Read
    //TODO: generate method ReadArray
    //TODO: generate method Write
    //TODO: generate method WriteArray
    //TODO: generate property 'ByteLength'
    //TODO: generate method SpaceCheck
    //TODO: generate method NotEnoughRoom
    //TODO: generate method NotInitialized
    //TODO: generate method GenericPtrToStructure
    //TODO: generate method PtrToStructureNative
    //TODO: generate method GenericStructureToPtr
    //TODO: generate method StructureToPtrNative
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\SafeHandle.cs'
//
// 
// Problems addressed by the SafeHandle class:
// 1) Critical finalization - ensure we never leak OS resources in SQL.  Done
// without running truly arbitrary & unbounded amounts of managed code.
// 2) Reduced graph promotion - during finalization, keep object graph small
// 3) GC.KeepAlive behavior - P/Invoke vs. finalizer thread race conditions (HandleRef)
// 4) Elimination of security race conditions w/ explicit calls to Close (HandleProtector)
// 5) Enforcement of the above via the type system - Don't use IntPtr anymore.
// 6) Allows the handle lifetime to be controlled externally via a boolean.
// Subclasses of SafeHandle will implement the ReleaseHandle abstract method
// used to execute any code required to free the handle. This method will be
// prepared as a constrained execution region at instance construction time
// (along with all the methods in its statically determinable call graph). This
// implies that we won't get any inconvenient jit allocation errors or rude
// thread abort interrupts while releasing the handle but the user must still
// write careful code to avoid injecting fault paths of their own (see the CER
// spec for more details). In particular, any sub-methods you call should be
// decorated with a reliability contract of the appropriate level. In most cases
// this should be:
// ReliabilityContract(Consistency.WillNotCorruptState, Cer.Success)
// Also, any P/Invoke methods should use the SuppressUnmanagedCodeSecurity
// attribute to avoid a runtime security check that can also inject failures
// (even if the check is guaranteed to pass).
// The GC will run ReleaseHandle methods after any normal finalizers have been
// run for objects that were collected at the same time. This ensures classes
// like FileStream can run a normal finalizer to flush out existing buffered
// data. This is key - it means adding this class to a class like FileStream does
// not alter our current semantics w.r.t. finalization today.
// Subclasses must also implement the IsInvalid property so that the
// infrastructure can tell when critical finalization is actually required.
// Again, this method is prepared ahead of time. It's envisioned that direct
// subclasses of SafeHandle will provide an IsInvalid implementation that suits
// the general type of handle they support (null is invalid, -1 is invalid etc.)
// and then these classes will be further derived for specific safe handle types.
// Most classes using SafeHandle should not provide a finalizer.  If they do
// need to do so (ie, for flushing out file buffers, needing to write some data
// back into memory, etc), then they can provide a finalizer that will be 
// guaranteed to run before the SafeHandle's critical finalizer.  
// Note that SafeHandle's ReleaseHandle is called from a constrained execution 
// region, and is eagerly prepared before we create your class.  This means you
// should only call methods with an appropriate reliability contract from your
// ReleaseHandle method.
// Subclasses are expected to be written as follows (note that
// SuppressUnmanagedCodeSecurity should always be used on any P/Invoke methods
// invoked as part of ReleaseHandle, in order to switch the security check from
// runtime to jit time and thus remove a possible failure path from the
// invocation of the method):
// internal sealed MySafeHandleSubclass : SafeHandle {
// Called by P/Invoke when returning SafeHandles
// private MySafeHandleSubclass() : base(IntPtr.Zero, true)
// {
// }
// If & only if you need to support user-supplied handles
// internal MySafeHandleSubclass(IntPtr preexistingHandle, bool ownsHandle) : base(IntPtr.Zero, ownsHandle)
// {
// SetHandle(preexistingHandle);
// }
// Do not provide a finalizer - SafeHandle's critical finalizer will
// call ReleaseHandle for you.
// public override bool IsInvalid {
// get { return handle == IntPtr.Zero; }
// }
// override protected bool ReleaseHandle()
// {
// return MyNativeMethods.CloseHandle(handle);
// }
// }
// Then elsewhere to create one of these SafeHandles, define a method
// with the following type of signature (CreateFile follows this model).
// Note that when returning a SafeHandle like this, P/Invoke will call your
// class's default constructor.  Also, you probably want to define CloseHandle
// somewhere, and remember to apply a reliability contract to it.
// [SuppressUnmanagedCodeSecurity]
// internal static class MyNativeMethods {
// [DllImport("kernel32")]
// private static extern MySafeHandleSubclass CreateHandle(int someState);
// [DllImport("kernel32", SetLastError=true), ReliabilityContract(Consistency.WillNotCorruptState, Cer.Success)]
// private static extern bool CloseHandle(IntPtr handle);
// }
// Drawbacks with this implementation:
// 1) Requires some magic to run the critical finalizer.
// 2) Requires more memory than just an IntPtr.
// 3) If you use DangerousAddRef and forget to call DangerousRelease, you can leak a SafeHandle.  Use CER's & don't do that.
// 
// This class should not be serializable - it's a handle.  We require unmanaged
// code permission to subclass SafeHandle to prevent people from writing a 
// subclass and suddenly being able to run arbitrary native code with the
// same signature as CloseHandle.  This is technically a little redundant, but
// we'll do this to ensure we've cut off all attack vectors.  Similarly, all
// methods have a link demand to ensure untrusted code cannot directly edit
// or alter a handle.
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public abstract class SafeHandle : CriticalFinalizerObject, IDisposable
{
    // ! Do not add or rearrange fields as the EE depends on this layout.
    //------------------------------------------------------------------
    // #if DEBUG
    // FxCop thinks this field is marshaled and so it raises a CA2101 error unless 
    // we specify this.  In practice this is never presented to Win32.
    @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.LPWStr*/)
    private String _stackTrace;
    protected IntPtr handle;
    private int _state;
    private bool _ownsHandle;
    private bool _fullyInitialized;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate destructor
    //TODO: generate method InternalFinalize
    //TODO: generate method SetHandle
    //TODO: generate method DangerousGetHandle
    //TODO: generate property 'IsClosed'
    //TODO: generate property 'IsInvalid'
    //TODO: generate method Close
    //TODO: generate method Dispose
    //TODO: generate method Dispose
    //TODO: generate method InternalDispose
    //TODO: generate method SetHandleAsInvalid
    //TODO: generate method ReleaseHandle
    //TODO: generate method DangerousAddRef
    //TODO: generate method DangerousRelease
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\SafeHeapHandle.cs'
//
/// <summary>
/// Handle for heap memory that allows tracking of capacity and reallocating.
/// </summary>
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public final class SafeHeapHandle : SafeBuffer
{
    //TODO: generate constructor
    //TODO: generate property 'IsInvalid'
    //TODO: generate method Resize
    //TODO: generate method RemoveMemoryPressure
    //TODO: generate method ReleaseHandle
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\SEHException.cs'
//
// Exception for Structured Exception Handler exceptions.
// 
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public class SEHException : ExternalException
{
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method CanResume
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\StringBuffer.cs'
//
public class StringBuffer : NativeBuffer
{
    private uint _length;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate indexer
    //TODO: generate property 'CharCapacity'
    //TODO: generate method EnsureCharCapacity
    //TODO: generate property 'Length'
    //TODO: generate method SetLengthToFirstNull
    //TODO: generate property 'CharPointer'
    //TODO: generate method Contains
    //TODO: generate method StartsWith
    //TODO: generate method SubstringEquals
    //TODO: generate method Append
    //TODO: generate method Append
    //TODO: generate method Append
    //TODO: generate method CopyTo
    //TODO: generate method CopyFrom
    //TODO: generate method TrimEnd
    //TODO: generate method ToString
    //TODO: generate method Substring
    //TODO: generate method Free
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UCOMIBindCtx.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.BIND_OPTS instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
public struct BIND_OPTS
{
    public int cbStruct;
    public int grfFlags;
    public int grfMode;
    public int dwTickCountDeadline;
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.IBindCtx instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "0000000e-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface UCOMIBindCtx
{
    //TODO: generate method RegisterObjectBound
    //TODO: generate method RevokeObjectBound
    //TODO: generate method ReleaseBoundObjects
    //TODO: generate method SetBindOptions
    //TODO: generate method GetBindOptions
    //TODO: generate method GetRunningObjectTable
    //TODO: generate method RegisterObjectParam
    //TODO: generate method GetObjectParam
    //TODO: generate method EnumObjectParam
    //TODO: generate method RevokeObjectParam
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UCOMIConnectionPoint.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.IConnectionPoint instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "B196B286-BAB4-101A-B69C-00AA00341D07"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface UCOMIConnectionPoint
{
    //TODO: generate method GetConnectionInterface
    //TODO: generate method GetConnectionPointContainer
    //TODO: generate method Advise
    //TODO: generate method Unadvise
    //TODO: generate method EnumConnections
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UCOMIConnectionPointContainer.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.IConnectionPointContainer instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "B196B284-BAB4-101A-B69C-00AA00341D07"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface UCOMIConnectionPointContainer
{
    //TODO: generate method EnumConnectionPoints
    //TODO: generate method FindConnectionPoint
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UCOMIEnumConnectionPoints.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.IEnumConnectionPoints instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "B196B285-BAB4-101A-B69C-00AA00341D07"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface UCOMIEnumConnectionPoints
{
    //TODO: generate method Next
    //TODO: generate method Skip
    //TODO: generate method Reset
    //TODO: generate method Clone
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UCOMIEnumConnections.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.CONNECTDATA instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
public struct CONNECTDATA
{
    @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.Interface*/)
    public __DotNet__Object pUnk;
    public int dwCookie;
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.IEnumConnections instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "B196B287-BAB4-101A-B69C-00AA00341D07"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface UCOMIEnumConnections
{
    //TODO: generate method Next
    //TODO: generate method Skip
    //TODO: generate method Reset
    //TODO: generate method Clone
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UCOMIEnumerable.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.IEnumerable instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "496B0ABE-CDEE-11d3-88E8-00902754C43A"*/)
public interface UCOMIEnumerable
{
    //TODO: generate method GetEnumerator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UCOMIEnumerator.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.IEnumerator instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "496B0ABF-CDEE-11d3-88E8-00902754C43A"*/)
public interface UCOMIEnumerator
{
    //TODO: generate method MoveNext
    //TODO: generate property 'Current'
    //TODO: generate method Reset
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UCOMIEnumMoniker.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.IEnumMoniker instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "00000102-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface UCOMIEnumMoniker
{
    //TODO: generate method Next
    //TODO: generate method Skip
    //TODO: generate method Reset
    //TODO: generate method Clone
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UCOMIEnumString.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.IEnumString instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "00000101-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface UCOMIEnumString
{
    //TODO: generate method Next
    //TODO: generate method Skip
    //TODO: generate method Reset
    //TODO: generate method Clone
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UCOMIEnumVARIANT.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.IEnumVARIANT instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "00020404-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface UCOMIEnumVARIANT
{
    //TODO: generate method Next
    //TODO: generate method Skip
    //TODO: generate method Reset
    //TODO: generate method Clone
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UCOMIExpando.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.IExpando instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "AFBF15E6-C37C-11d2-B88E-00A0C9B471B8"*/)
public interface UCOMIExpando : UCOMIReflect
{
    //TODO: generate method AddField
    //TODO: generate method AddProperty
    //TODO: generate method AddMethod
    //TODO: generate method RemoveMember
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UCOMIMoniker.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.FILETIME instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
public struct FILETIME
{
    public int dwLowDateTime;
    public int dwHighDateTime;
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.IMoniker instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "0000000f-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface UCOMIMoniker
{
    //TODO: generate method GetClassID
    //TODO: generate method IsDirty
    //TODO: generate method Load
    //TODO: generate method Save
    //TODO: generate method GetSizeMax
    //TODO: generate method BindToObject
    //TODO: generate method BindToStorage
    //TODO: generate method Reduce
    //TODO: generate method ComposeWith
    //TODO: generate method Enum
    //TODO: generate method IsEqual
    //TODO: generate method Hash
    //TODO: generate method IsRunning
    //TODO: generate method GetTimeOfLastChange
    //TODO: generate method Inverse
    //TODO: generate method CommonPrefixWith
    //TODO: generate method RelativePathTo
    //TODO: generate method GetDisplayName
    //TODO: generate method ParseDisplayName
    //TODO: generate method IsSystemMoniker
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UCOMIPersistFile.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.IPersistFile instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "0000010b-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface UCOMIPersistFile
{
    //TODO: generate method GetClassID
    //TODO: generate method IsDirty
    //TODO: generate method Load
    //TODO: generate method Save
    //TODO: generate method SaveCompleted
    //TODO: generate method GetCurFile
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UCOMIReflect.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.IReflect instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "AFBF15E5-C37C-11d2-B88E-00A0C9B471B8"*/)
public interface UCOMIReflect
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
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UCOMIRunningObjectTable.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.IRunningObjectTable instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "00000010-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface UCOMIRunningObjectTable
{
    //TODO: generate method Register
    //TODO: generate method Revoke
    //TODO: generate method IsRunning
    //TODO: generate method GetObject
    //TODO: generate method NoteChangeTime
    //TODO: generate method GetTimeOfLastChange
    //TODO: generate method EnumRunning
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UCOMIStream.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.STATSTG instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
public struct STATSTG
{
    public String pwcsName;
    public int type;
    public long cbSize;
    public FILETIME mtime;
    public FILETIME ctime;
    public FILETIME atime;
    public int grfMode;
    public int grfLocksSupported;
    public Guid clsid;
    public int grfStateBits;
    public int reserved;
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.IStream instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "0000000c-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface UCOMIStream
{
    //TODO: generate method Read
    //TODO: generate method Write
    //TODO: generate method Seek
    //TODO: generate method SetSize
    //TODO: generate method CopyTo
    //TODO: generate method Commit
    //TODO: generate method Revert
    //TODO: generate method LockRegion
    //TODO: generate method UnlockRegion
    //TODO: generate method Stat
    //TODO: generate method Clone
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UCOMITypeComp.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.DESCKIND instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum DESCKIND
{
    DESCKIND_NONE = 0,
    DESCKIND_FUNCDESC = DESCKIND_NONE + 1,
    DESCKIND_VARDESC = DESCKIND_FUNCDESC + 1,
    DESCKIND_TYPECOMP = DESCKIND_VARDESC + 1,
    DESCKIND_IMPLICITAPPOBJ = DESCKIND_TYPECOMP + 1,
    DESCKIND_MAX = DESCKIND_IMPLICITAPPOBJ + 1,
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.BINDPTR instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Explicit, CharSet=CharSet.Unicode*/)
public struct BINDPTR
{
    @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
    public IntPtr lpfuncdesc;
    @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
    public IntPtr lpvardesc;
    @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
    public IntPtr lptcomp;
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.ITypeComp instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "00020403-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface UCOMITypeComp
{
    //TODO: generate method Bind
    //TODO: generate method BindType
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UCOMITypeInfo.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.TYPEKIND instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum TYPEKIND
{
    TKIND_ENUM = 0,
    TKIND_RECORD = TKIND_ENUM + 1,
    TKIND_MODULE = TKIND_RECORD + 1,
    TKIND_INTERFACE = TKIND_MODULE + 1,
    TKIND_DISPATCH = TKIND_INTERFACE + 1,
    TKIND_COCLASS = TKIND_DISPATCH + 1,
    TKIND_ALIAS = TKIND_COCLASS + 1,
    TKIND_UNION = TKIND_ALIAS + 1,
    TKIND_MAX = TKIND_UNION + 1,
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.TYPEFLAGS instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
public enum TYPEFLAGS : short
{
    TYPEFLAG_FAPPOBJECT = 0x1,
    TYPEFLAG_FCANCREATE = 0x2,
    TYPEFLAG_FLICENSED = 0x4,
    TYPEFLAG_FPREDECLID = 0x8,
    TYPEFLAG_FHIDDEN = 0x10,
    TYPEFLAG_FCONTROL = 0x20,
    TYPEFLAG_FDUAL = 0x40,
    TYPEFLAG_FNONEXTENSIBLE = 0x80,
    TYPEFLAG_FOLEAUTOMATION = 0x100,
    TYPEFLAG_FRESTRICTED = 0x200,
    TYPEFLAG_FAGGREGATABLE = 0x400,
    TYPEFLAG_FREPLACEABLE = 0x800,
    TYPEFLAG_FDISPATCHABLE = 0x1000,
    TYPEFLAG_FREVERSEBIND = 0x2000,
    TYPEFLAG_FPROXY = 0x4000,
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.IMPLTYPEFLAGS instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
public enum IMPLTYPEFLAGS
{
    IMPLTYPEFLAG_FDEFAULT = 0x1,
    IMPLTYPEFLAG_FSOURCE = 0x2,
    IMPLTYPEFLAG_FRESTRICTED = 0x4,
    IMPLTYPEFLAG_FDEFAULTVTABLE = 0x8,
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.TYPEATTR instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
public struct TYPEATTR
{
    public enum int MEMBER_ID_NIL/*todo: implement initializer*/ = int();
    public Guid guid;
    public int lcid;
    public int dwReserved;
    public int memidConstructor;
    public int memidDestructor;
    public IntPtr lpstrSchema;
    public int cbSizeInstance;
    public TYPEKIND typekind;
    public short cFuncs;
    public short cVars;
    public short cImplTypes;
    public short cbSizeVft;
    public short cbAlignment;
    public TYPEFLAGS wTypeFlags;
    public short wMajorVerNum;
    public short wMinorVerNum;
    public TYPEDESC tdescAlias;
    public IDLDESC idldescType;
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.FUNCDESC instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
public struct FUNCDESC
{
    public int memid;
    public IntPtr lprgscode;
    public IntPtr lprgelemdescParam;
    public FUNCKIND funckind;
    public INVOKEKIND invkind;
    public CALLCONV callconv;
    public short cParams;
    public short cParamsOpt;
    public short oVft;
    public short cScodes;
    public ELEMDESC elemdescFunc;
    public short wFuncFlags;
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.IDLFLAG instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
public enum IDLFLAG : short
{
    IDLFLAG_NONE = /*MemberExpression:Type*/PARAMFLAG.PARAMFLAG_NONE,
    IDLFLAG_FIN = /*MemberExpression:Type*/PARAMFLAG.PARAMFLAG_FIN,
    IDLFLAG_FOUT = /*MemberExpression:Type*/PARAMFLAG.PARAMFLAG_FOUT,
    IDLFLAG_FLCID = /*MemberExpression:Type*/PARAMFLAG.PARAMFLAG_FLCID,
    IDLFLAG_FRETVAL = /*MemberExpression:Type*/PARAMFLAG.PARAMFLAG_FRETVAL,
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.IDLDESC instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
public struct IDLDESC
{
    public int dwReserved;
    public IDLFLAG wIDLFlags;
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.PARAMFLAG instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
public enum PARAMFLAG : short
{
    PARAMFLAG_NONE = 0,
    PARAMFLAG_FIN = 0x1,
    PARAMFLAG_FOUT = 0x2,
    PARAMFLAG_FLCID = 0x4,
    PARAMFLAG_FRETVAL = 0x8,
    PARAMFLAG_FOPT = 0x10,
    PARAMFLAG_FHASDEFAULT = 0x20,
    PARAMFLAG_FHASCUSTDATA = 0x40,
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.PARAMDESC instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
public struct PARAMDESC
{
    public IntPtr lpVarValue;
    public PARAMFLAG wParamFlags;
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.TYPEDESC instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
public struct TYPEDESC
{
    public IntPtr lpValue;
    public short vt;
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.ELEMDESC instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
public struct ELEMDESC
{
    public TYPEDESC tdesc;
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Explicit, CharSet=CharSet.Unicode*/)
    @__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
    public static struct DESCUNION
    {
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public IDLDESC idldesc;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public PARAMDESC paramdesc;
    }
    public DESCUNION desc;
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.VARDESC instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
public struct VARDESC
{
    public int memid;
    public String lpstrSchema;
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Explicit, CharSet=CharSet.Unicode*/)
    @__DotNet__Attribute!(ComVisibleAttribute.stringof/*, false*/)
    public static struct DESCUNION
    {
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public int oInst;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public IntPtr lpvarValue;
    }
    public ELEMDESC elemdescVar;
    public short wVarFlags;
    public VarEnum varkind;
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.DISPPARAMS instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
public struct DISPPARAMS
{
    public IntPtr rgvarg;
    public IntPtr rgdispidNamedArgs;
    public int cArgs;
    public int cNamedArgs;
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.EXCEPINFO instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
public struct EXCEPINFO
{
    public short wCode;
    public short wReserved;
    @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.BStr*/)
    public String bstrSource;
    @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.BStr*/)
    public String bstrDescription;
    @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.BStr*/)
    public String bstrHelpFile;
    public int dwHelpContext;
    public IntPtr pvReserved;
    public IntPtr pfnDeferredFillIn;
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.FUNCKIND instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum FUNCKIND : int
{
    FUNC_VIRTUAL = 0,
    FUNC_PUREVIRTUAL = 1,
    FUNC_NONVIRTUAL = 2,
    FUNC_STATIC = 3,
    FUNC_DISPATCH = 4,
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.INVOKEKIND instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum INVOKEKIND : int
{
    INVOKE_FUNC = 0x1,
    INVOKE_PROPERTYGET = 0x2,
    INVOKE_PROPERTYPUT = 0x4,
    INVOKE_PROPERTYPUTREF = 0x8,
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.CALLCONV instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum CALLCONV : int
{
    CC_CDECL = 1,
    CC_MSCPASCAL = 2,
    CC_PASCAL = CC_MSCPASCAL,
    CC_MACPASCAL = 3,
    CC_STDCALL = 4,
    CC_RESERVED = 5,
    CC_SYSCALL = 6,
    CC_MPWCDECL = 7,
    CC_MPWPASCAL = 8,
    CC_MAX = 9,
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.FUNCFLAGS instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
public enum FUNCFLAGS : short
{
    FUNCFLAG_FRESTRICTED = 0x1,
    FUNCFLAG_FSOURCE = 0x2,
    FUNCFLAG_FBINDABLE = 0x4,
    FUNCFLAG_FREQUESTEDIT = 0x8,
    FUNCFLAG_FDISPLAYBIND = 0x10,
    FUNCFLAG_FDEFAULTBIND = 0x20,
    FUNCFLAG_FHIDDEN = 0x40,
    FUNCFLAG_FUSESGETLASTERROR = 0x80,
    FUNCFLAG_FDEFAULTCOLLELEM = 0x100,
    FUNCFLAG_FUIDEFAULT = 0x200,
    FUNCFLAG_FNONBROWSABLE = 0x400,
    FUNCFLAG_FREPLACEABLE = 0x800,
    FUNCFLAG_FIMMEDIATEBIND = 0x1000,
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.VARFLAGS instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
public enum VARFLAGS : short
{
    VARFLAG_FREADONLY = 0x1,
    VARFLAG_FSOURCE = 0x2,
    VARFLAG_FBINDABLE = 0x4,
    VARFLAG_FREQUESTEDIT = 0x8,
    VARFLAG_FDISPLAYBIND = 0x10,
    VARFLAG_FDEFAULTBIND = 0x20,
    VARFLAG_FHIDDEN = 0x40,
    VARFLAG_FRESTRICTED = 0x80,
    VARFLAG_FDEFAULTCOLLELEM = 0x100,
    VARFLAG_FUIDEFAULT = 0x200,
    VARFLAG_FNONBROWSABLE = 0x400,
    VARFLAG_FREPLACEABLE = 0x800,
    VARFLAG_FIMMEDIATEBIND = 0x1000,
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.ITypeInfo instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "00020401-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface UCOMITypeInfo
{
    //TODO: generate method GetTypeAttr
    //TODO: generate method GetTypeComp
    //TODO: generate method GetFuncDesc
    //TODO: generate method GetVarDesc
    //TODO: generate method GetNames
    //TODO: generate method GetRefTypeOfImplType
    //TODO: generate method GetImplTypeFlags
    //TODO: generate method GetIDsOfNames
    //TODO: generate method Invoke
    //TODO: generate method GetDocumentation
    //TODO: generate method GetDllEntry
    //TODO: generate method GetRefTypeInfo
    //TODO: generate method AddressOfMember
    //TODO: generate method CreateInstance
    //TODO: generate method GetMops
    //TODO: generate method GetContainingTypeLib
    //TODO: generate method ReleaseTypeAttr
    //TODO: generate method ReleaseFuncDesc
    //TODO: generate method ReleaseVarDesc
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UCOMITypeLib.cs'
//
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.SYSKIND instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum SYSKIND
{
    SYS_WIN16 = 0,
    SYS_WIN32 = SYS_WIN16 + 1,
    SYS_MAC = SYS_WIN32 + 1,
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.LIBFLAGS instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
public enum LIBFLAGS : short
{
    LIBFLAG_FRESTRICTED = 0x1,
    LIBFLAG_FCONTROL = 0x2,
    LIBFLAG_FHIDDEN = 0x4,
    LIBFLAG_FHASDISKIMAGE = 0x8,
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.TYPELIBATTR instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
@__DotNet__Attribute!(SerializableAttribute.stringof)
public struct TYPELIBATTR
{
    public Guid guid;
    public int lcid;
    public SYSKIND syskind;
    public short wMajorVerNum;
    public short wMinorVerNum;
    public LIBFLAGS wLibFlags;
}
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "Use System.Runtime.InteropServices.ComTypes.ITypeLib instead. http://go.microsoft.com/fwlink/?linkid=14202", false*/)
@__DotNet__Attribute!(GuidAttribute.stringof/*, "00020402-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface UCOMITypeLib
{
    //TODO: generate method GetTypeInfoCount
    //TODO: generate method GetTypeInfo
    //TODO: generate method GetTypeInfoType
    //TODO: generate method GetTypeInfoOfGuid
    //TODO: generate method GetLibAttr
    //TODO: generate method GetTypeComp
    //TODO: generate method GetDocumentation
    //TODO: generate method IsName
    //TODO: generate method FindName
    //TODO: generate method ReleaseTLibAttr
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\UnknownWrapper.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public final class UnknownWrapper : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate property 'WrappedObject'
    private __DotNet__Object m_WrappedObject;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\Variant.cs'
//
/// <summary>
/// Variant is the basic COM type for late-binding. It can contain any other COM data type.
/// This type definition precisely matches the unmanaged data layout so that the struct can be passed
/// to and from COM calls.
/// </summary>
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Explicit*/)
@__DotNet__Attribute!(SecurityCriticalAttribute.stringof)
public struct Variant
{
    //TODO: generate constructor
    // #endif
    // Most of the data types in the Variant are carried in _typeUnion
    @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
    private TypeUnion _typeUnion;
    // Decimal is the largest data type and it needs to use the space that is normally unused in TypeUnion._wReserved1, etc.
    // Hence, it is declared to completely overlap with TypeUnion. A Decimal does not use the first two bytes, and so
    // TypeUnion._vt can still be used to encode the type.
    @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
    private Decimal _decimal;
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    private static struct TypeUnion
    {
        public ushort _vt;
        public ushort _wReserved1;
        public ushort _wReserved2;
        public ushort _wReserved3;
        public UnionTypes _unionTypes;
    }
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
    private static struct Record
    {
        private IntPtr _record;
        private IntPtr _recordInfo;
    }
    @__DotNet__Attribute!(SuppressMessageAttribute.stringof/*, "Microsoft.Design", "CA1049:TypesThatOwnNativeResourcesShouldBeDisposable"*/)
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Explicit*/)
    private static struct UnionTypes
    {
        // #region Generated Variant union types
        // *** BEGIN GENERATED CODE ***
        // generated by function: gen_UnionTypes from: generate_comdispatch.py
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public byte _i1;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public short _i2;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public int _i4;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public long _i8;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public ubyte _ui1;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public ushort _ui2;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public uint _ui4;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public ulong _ui8;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public int _int;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public uint _uint;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public short _bool;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public int _error;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public float _r4;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public double _r8;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public long _cy;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public double _date;
        @__DotNet__Attribute!(SuppressMessageAttribute.stringof/*, "Microsoft.Reliability", "CA2006:UseSafeHandleToEncapsulateNativeResources"*/)
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public IntPtr _bstr;
        @__DotNet__Attribute!(SuppressMessageAttribute.stringof/*, "Microsoft.Reliability", "CA2006:UseSafeHandleToEncapsulateNativeResources"*/)
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public IntPtr _unknown;
        @__DotNet__Attribute!(SuppressMessageAttribute.stringof/*, "Microsoft.Reliability", "CA2006:UseSafeHandleToEncapsulateNativeResources"*/)
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public IntPtr _dispatch;
        // *** END GENERATED CODE ***
        // #endregion
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public IntPtr _pvarVal;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public IntPtr _byref;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public Record _record;
    }
    //TODO: generate method IsPrimitiveType
    //TODO: generate method CopyFromIndirect
    //TODO: generate method ToObject
    //TODO: generate method Clear
    //TODO: generate property 'VariantType'
    //TODO: generate property 'IsEmpty'
    //TODO: generate property 'IsByRef'
    //TODO: generate method SetAsNULL
    //TODO: generate property 'AsI1'
    //TODO: generate property 'AsI2'
    //TODO: generate property 'AsI4'
    //TODO: generate property 'AsI8'
    //TODO: generate property 'AsUi1'
    //TODO: generate property 'AsUi2'
    //TODO: generate property 'AsUi4'
    //TODO: generate property 'AsUi8'
    //TODO: generate property 'AsInt'
    //TODO: generate property 'AsUint'
    //TODO: generate property 'AsBool'
    //TODO: generate property 'AsError'
    //TODO: generate property 'AsR4'
    //TODO: generate property 'AsR8'
    //TODO: generate property 'AsDecimal'
    //TODO: generate property 'AsCy'
    //TODO: generate property 'AsDate'
    //TODO: generate property 'AsBstr'
    //TODO: generate property 'AsUnknown'
    //TODO: generate property 'AsDispatch'
    //TODO: generate property 'AsByRefVariant'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\VariantWrapper.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
public final class VariantWrapper : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate property 'WrappedObject'
    private __DotNet__Object m_WrappedObject;
}
