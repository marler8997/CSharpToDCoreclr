module mscorlib.System.Configuration.Assemblies;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    SerializableAttribute,
    ObsoleteAttribute,
    ICloneable,
    __DotNet__Object;
import mscorlib.System.Runtime.InteropServices :
    ComVisibleAttribute;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Configuration\Assemblies\AssemblyHash.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
@__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "The AssemblyHash class has been deprecated. http://go.microsoft.com/fwlink/?linkid=14202"*/)
public struct AssemblyHash
{
    private AssemblyHashAlgorithm _Algorithm;
    private ubyte[] _Value;
    @__DotNet__Attribute!(ObsoleteAttribute.stringof/*, "The AssemblyHash class has been deprecated. http://go.microsoft.com/fwlink/?linkid=14202"*/)
    public static immutable AssemblyHash Empty/*todo: implement initializer*/ = AssemblyHash();
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Algorithm'
    //TODO: generate method GetValue
    //TODO: generate method SetValue
    //TODO: generate method Clone
}
public class __Boxed__AssemblyHash : __DotNet__Object, ICloneable
{
    AssemblyHash value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Configuration\Assemblies\AssemblyHashAlgorithm.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum AssemblyHashAlgorithm
{
    None = 0,
    MD5 = 0x8003,
    SHA1 = 0x8004,
    SHA256 = 0x800c,
    SHA384 = 0x800d,
    SHA512 = 0x800e,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Configuration\Assemblies\AssemblyVersionCompatibility.cs'
//
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(ComVisibleAttribute.stringof/*, true*/)
public enum AssemblyVersionCompatibility
{
    SameMachine = 1,
    SameProcess = 2,
    SameDomain = 3,
}
