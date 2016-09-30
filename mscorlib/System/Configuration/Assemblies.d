module mscorlib.System.Configuration.Assemblies;

import mscorlib.System :
    ICloneable,
    DotNetObject;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Configuration\Assemblies\AssemblyHash.cs'
//
//[Serializable]
//[System.Runtime.InteropServices.ComVisible(true)]
//[Obsolete("The AssemblyHash class has been deprecated. http://go.microsoft.com/fwlink/?linkid=14202")]
public struct AssemblyHash
{
    private AssemblyHashAlgorithm _Algorithm;
    private ubyte[] _Value;
    // Ignored: [Obsolete("The AssemblyHash class has been deprecated. http://go.microsoft.com/fwlink/?linkid=14202")]
    public static immutable AssemblyHash Empty/*todo: implement initializer*/ = AssemblyHash();
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Algorithm'
    //TODO: generate method GetValue
    //TODO: generate method SetValue
    //TODO: generate method Clone
}
public class __Boxed__AssemblyHash : DotNetObject, ICloneable
{
    AssemblyHash value;
    alias value this;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Configuration\Assemblies\AssemblyHashAlgorithm.cs'
//
// Ignored: [Serializable]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum AssemblyHashAlgorithm
{
    None = 0,
    MD5 = 0x8003,
    SHA1 = 0x8004,
    // Ignored: [ComVisible(false)]
    SHA256 = 0x800c,
    // Ignored: [ComVisible(false)]
    SHA384 = 0x800d,
    // Ignored: [ComVisible(false)]
    SHA512 = 0x800e,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Configuration\Assemblies\AssemblyVersionCompatibility.cs'
//
// Ignored: [Serializable]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum AssemblyVersionCompatibility
{
    SameMachine = 1,
    SameProcess = 2,
    SameDomain = 3,
}
