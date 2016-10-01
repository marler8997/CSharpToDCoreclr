module mscorlib.System.Runtime.InteropServices.ComTypes;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    __DotNet__Object,
    String,
    Guid,
    SerializableAttribute,
    IntPtr,
    FlagsAttribute;
import mscorlib.System.Runtime.InteropServices :
    StructLayoutAttribute,
    GuidAttribute,
    InterfaceTypeAttribute,
    ComImportAttribute,
    MarshalAsAttribute,
    FieldOffsetAttribute;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\IBindCtx.cs'
//
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
public struct BIND_OPTS
{
    public int cbStruct;
    public int grfFlags;
    public int grfMode;
    public int dwTickCountDeadline;
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "0000000e-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface IBindCtx
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
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\IConnectionPoint.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "B196B286-BAB4-101A-B69C-00AA00341D07"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface IConnectionPoint
{
    //TODO: generate method GetConnectionInterface
    //TODO: generate method GetConnectionPointContainer
    //TODO: generate method Advise
    //TODO: generate method Unadvise
    //TODO: generate method EnumConnections
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\IConnectionPointContainer.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "B196B284-BAB4-101A-B69C-00AA00341D07"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface IConnectionPointContainer
{
    //TODO: generate method EnumConnectionPoints
    //TODO: generate method FindConnectionPoint
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\IEnumConnectionPoints.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "B196B285-BAB4-101A-B69C-00AA00341D07"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface IEnumConnectionPoints
{
    //TODO: generate method Next
    //TODO: generate method Skip
    //TODO: generate method Reset
    //TODO: generate method Clone
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\IEnumConnections.cs'
//
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
public struct CONNECTDATA
{
    @__DotNet__Attribute!(MarshalAsAttribute.stringof/*, UnmanagedType.Interface*/)
    public __DotNet__Object pUnk;
    public int dwCookie;
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "B196B287-BAB4-101A-B69C-00AA00341D07"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface IEnumConnections
{
    //TODO: generate method Next
    //TODO: generate method Skip
    //TODO: generate method Reset
    //TODO: generate method Clone
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\IEnumerable.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "496B0ABE-CDEE-11d3-88E8-00902754C43A"*/)
public interface IEnumerable
{
    //TODO: generate method GetEnumerator
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\IEnumerator.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "496B0ABF-CDEE-11d3-88E8-00902754C43A"*/)
public interface IEnumerator
{
    //TODO: generate method MoveNext
    //TODO: generate property 'Current'
    //TODO: generate method Reset
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\IEnumMoniker.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "00000102-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface IEnumMoniker
{
    //TODO: generate method Next
    //TODO: generate method Skip
    //TODO: generate method Reset
    //TODO: generate method Clone
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\IEnumString.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "00000101-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface IEnumString
{
    //TODO: generate method Next
    //TODO: generate method Skip
    //TODO: generate method Reset
    //TODO: generate method Clone
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\IEnumVARIANT.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "00020404-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface IEnumVARIANT
{
    //TODO: generate method Next
    //TODO: generate method Skip
    //TODO: generate method Reset
    //TODO: generate method Clone
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\IExpando.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "AFBF15E6-C37C-11d2-B88E-00A0C9B471B8"*/)
public interface IExpando : IReflect
{
    //TODO: generate method AddField
    //TODO: generate method AddProperty
    //TODO: generate method AddMethod
    //TODO: generate method RemoveMember
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\IMoniker.cs'
//
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential*/)
public struct FILETIME
{
    public int dwLowDateTime;
    public int dwHighDateTime;
}
@__DotNet__Attribute!(GuidAttribute.stringof/*, "0000000f-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface IMoniker
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
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\IPersistFile.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "0000010b-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface IPersistFile
{
    //TODO: generate method GetClassID
    //TODO: generate method IsDirty
    //TODO: generate method Load
    //TODO: generate method Save
    //TODO: generate method SaveCompleted
    //TODO: generate method GetCurFile
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\IReflect.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "AFBF15E5-C37C-11d2-B88E-00A0C9B471B8"*/)
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
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\IRunningObjectTable.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "00000010-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface IRunningObjectTable
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
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\IStream.cs'
//
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
@__DotNet__Attribute!(GuidAttribute.stringof/*, "0000000c-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface IStream
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
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\ITypeComp.cs'
//
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
@__DotNet__Attribute!(GuidAttribute.stringof/*, "00020403-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface ITypeComp
{
    //TODO: generate method Bind
    //TODO: generate method BindType
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\ITypeInfo.cs'
//
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
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
public enum IMPLTYPEFLAGS
{
    IMPLTYPEFLAG_FDEFAULT = 0x1,
    IMPLTYPEFLAG_FSOURCE = 0x2,
    IMPLTYPEFLAG_FRESTRICTED = 0x4,
    IMPLTYPEFLAG_FDEFAULTVTABLE = 0x8,
}
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
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
public struct IDLDESC
{
    public IntPtr dwReserved;
    public IDLFLAG wIDLFlags;
}
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
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
public struct PARAMDESC
{
    public IntPtr lpVarValue;
    public PARAMFLAG wParamFlags;
}
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
public struct TYPEDESC
{
    public IntPtr lpValue;
    public short vt;
}
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
public struct ELEMDESC
{
    public TYPEDESC tdesc;
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Explicit, CharSet=CharSet.Unicode*/)
    public static struct DESCUNION
    {
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public IDLDESC idldesc;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public PARAMDESC paramdesc;
    }
    public DESCUNION desc;
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum VARKIND : int
{
    VAR_PERINSTANCE = 0x0,
    VAR_STATIC = 0x1,
    VAR_CONST = 0x2,
    VAR_DISPATCH = 0x3,
}
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
public struct VARDESC
{
    public int memid;
    public String lpstrSchema;
    @__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Explicit, CharSet=CharSet.Unicode*/)
    public static struct DESCUNION
    {
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public int oInst;
        @__DotNet__Attribute!(FieldOffsetAttribute.stringof/*, 0*/)
        public IntPtr lpvarValue;
    }
    public DESCUNION desc;
    public ELEMDESC elemdescVar;
    public short wVarFlags;
    public VARKIND varkind;
}
@__DotNet__Attribute!(StructLayoutAttribute.stringof/*, LayoutKind.Sequential, CharSet=CharSet.Unicode*/)
public struct DISPPARAMS
{
    public IntPtr rgvarg;
    public IntPtr rgdispidNamedArgs;
    public int cArgs;
    public int cNamedArgs;
}
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
    public int scode;
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum FUNCKIND : int
{
    FUNC_VIRTUAL = 0,
    FUNC_PUREVIRTUAL = 1,
    FUNC_NONVIRTUAL = 2,
    FUNC_STATIC = 3,
    FUNC_DISPATCH = 4,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof)
public enum INVOKEKIND : int
{
    INVOKE_FUNC = 0x1,
    INVOKE_PROPERTYGET = 0x2,
    INVOKE_PROPERTYPUT = 0x4,
    INVOKE_PROPERTYPUTREF = 0x8,
}
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
@__DotNet__Attribute!(GuidAttribute.stringof/*, "00020401-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface ITypeInfo
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
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\ITypeInfo2.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "00020412-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface ITypeInfo2 : ITypeInfo
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
    //TODO: generate method GetTypeKind
    //TODO: generate method GetTypeFlags
    //TODO: generate method GetFuncIndexOfMemId
    //TODO: generate method GetVarIndexOfMemId
    //TODO: generate method GetCustData
    //TODO: generate method GetFuncCustData
    //TODO: generate method GetParamCustData
    //TODO: generate method GetVarCustData
    //TODO: generate method GetImplTypeCustData
    //TODO: generate method GetDocumentation2
    //TODO: generate method GetAllCustData
    //TODO: generate method GetAllFuncCustData
    //TODO: generate method GetAllParamCustData
    //TODO: generate method GetAllVarCustData
    //TODO: generate method GetAllImplTypeCustData
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\ITypeLib.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
public enum SYSKIND
{
    SYS_WIN16 = 0,
    SYS_WIN32 = SYS_WIN16 + 1,
    SYS_MAC = SYS_WIN32 + 1,
    SYS_WIN64 = SYS_MAC + 1,
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(FlagsAttribute.stringof/**/)
public enum LIBFLAGS : short
{
    LIBFLAG_FRESTRICTED = 0x1,
    LIBFLAG_FCONTROL = 0x2,
    LIBFLAG_FHIDDEN = 0x4,
    LIBFLAG_FHASDISKIMAGE = 0x8,
}
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
@__DotNet__Attribute!(GuidAttribute.stringof/*, "00020402-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface ITypeLib
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
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\ComTypes\ITypeLib2.cs'
//
@__DotNet__Attribute!(GuidAttribute.stringof/*, "00020411-0000-0000-C000-000000000046"*/)
@__DotNet__Attribute!(InterfaceTypeAttribute.stringof/*, ComInterfaceType.InterfaceIsIUnknown*/)
@__DotNet__Attribute!(ComImportAttribute.stringof)
public interface ITypeLib2 : ITypeLib
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
    //TODO: generate method GetCustData
    //TODO: generate method GetDocumentation2
    //TODO: generate method GetLibStatistics
    //TODO: generate method GetAllCustData
}
