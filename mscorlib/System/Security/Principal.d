module mscorlib.System.Security.Principal;


//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Principal\IIdentity.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public interface IIdentity
{
    //TODO: generate property 'Name'
    //TODO: generate property 'AuthenticationType'
    //TODO: generate property 'IsAuthenticated'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Principal\IPrincipal.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public interface IPrincipal
{
    //TODO: generate property 'Identity'
    //TODO: generate method IsInRole
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Security\Principal\TokenImpersonationLevel.cs'
//
public enum TokenImpersonationLevel
{
    None = 0,
    Anonymous = 1,
    Identification = 2,
    Impersonation = 3,
    Delegation = 4,
}
