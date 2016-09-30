module mscorlib.System.Diagnostics.Tracing.Internal;

import mscorlib.System :
    DotNetObject,
    String;
import mscorlib.System.Resources :
    ResourceManager;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\StubEnvironment.cs'
//
public class Environment : DotNetObject
{
    private this() {} // prevent instantiation
    public static immutable String NewLine/*todo: implement initializer*/ = null;
    //TODO: generate property 'TickCount'
    //TODO: generate method GetResourceString
    //TODO: generate method GetRuntimeResourceString
    private static ResourceManager rm/*todo: implement initializer*/ = null;
}
