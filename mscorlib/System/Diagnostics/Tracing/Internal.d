module mscorlib.System.Diagnostics.Tracing.Internal;

import mscorlib.System :
    __DotNet__Object,
    String/* NameConflict: Environment*/;
static import mscorlib.System;
import mscorlib.System.Resources :
    ResourceManager;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Eventing\StubEnvironment.cs'
//
package(mscorlib) class Environment : __DotNet__Object
{
    private this() {} // prevent instantiation
    public static immutable String NewLine/*todo: implement initializer*/ = null;
    //TODO: generate property 'TickCount'
    //TODO: generate method GetResourceString
    //TODO: generate method GetRuntimeResourceString
    private static ResourceManager rm/*todo: implement initializer*/ = null;
}
