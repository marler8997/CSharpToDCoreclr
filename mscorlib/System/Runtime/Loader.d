module mscorlib.System.Runtime.Loader;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    __DotNet__Object,
    IntPtr;
import mscorlib.System.Security :
    SecuritySafeCriticalAttribute;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\Loader\AssemblyLoadContext.cs'
//
@__DotNet__Attribute!(SecuritySafeCriticalAttribute.stringof)
public abstract class AssemblyLoadContext : __DotNet__Object
{
    //TODO: generate method OverrideDefaultAssemblyLoadContextForCurrentDomain
    //TODO: generate method CanUseAppPathAssemblyLoadContextInCurrentDomain
    //TODO: generate method InitializeAssemblyLoadContext
    //TODO: generate method LoadFromAssemblyName
    //TODO: generate method LoadFromStream
    //TODO: generate method InternalSetProfileRoot
    //TODO: generate method InternalStartProfile
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method InitializeLoadContext
    //TODO: generate method LoadFromPath
    //TODO: generate method LoadFromAssemblyPath
    //TODO: generate method LoadFromNativeImagePath
    //TODO: generate method LoadFromStream
    //TODO: generate method LoadFromStream
    //TODO: generate method Load
    //TODO: generate method Resolve
    //TODO: generate method ResolveUsingResolvingEvent
    //TODO: generate method GetFirstResolvedAssembly
    //TODO: generate method ValidateAssemblyNameWithSimpleName
    //TODO: generate method ResolveUsingLoad
    //TODO: generate method ResolveUsingEvent
    //TODO: generate method LoadFromAssemblyName
    //TODO: generate method InternalLoadUnmanagedDllFromPath
    //TODO: generate method LoadUnmanagedDllFromPath
    //TODO: generate method LoadUnmanagedDll
    //TODO: generate method ResolveUnmanagedDll
    //TODO: generate property 'Default'
    //TODO: generate method InitializeDefaultContext
    //TODO: generate method nGetFileInformation
    //TODO: generate method GetAssemblyName
    //TODO: generate method GetLoadContextForAssembly
    //TODO: generate method GetLoadContext
    //TODO: generate method SetProfileOptimizationRoot
    //TODO: generate method StartProfileOptimization
    //TODO: generate method OnProcessExit
    //TODO: generate event field
    //TODO: generate event field
    private IntPtr m_pNativeAssemblyLoadContext;
    private static /*todo: volatile*/ AssemblyLoadContext s_DefaultAssemblyLoadContext;
    private static immutable __DotNet__Object s_initLock/*todo: implement initializer*/ = null;
}
@__DotNet__Attribute!(SecuritySafeCriticalAttribute.stringof)
private class AppPathAssemblyLoadContext : AssemblyLoadContext
{
    //TODO: generate constructor
    //TODO: generate method Load
}
