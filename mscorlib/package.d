module mscorlib;

import mscorlib.System :
    __DotNet__Object,
    String,
    __DotNet__Attribute,
    __DotNet__AttributeStruct;
import mscorlib.System.Diagnostics.CodeAnalysis :
    SuppressMessageAttribute;
import mscorlib.System.Runtime.CompilerServices :
    InternalsVisibleToAttribute,
    DefaultDependencyAttribute,
    StringFreezingAttribute;
import mscorlib.System.Runtime.InteropServices :
    GuidAttribute,
    ComCompatibleVersionAttribute,
    TypeLibVersionAttribute;

immutable __DotNet__AttributeStruct[] assemblyAttributes = [
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.assembly, InternalsVisibleToAttribute.stringof/*, "mscorlib, PublicKey=00240000048000009400000006020000002400005253413100040000010001008d56c76f9e8649383049f383c44be0ec204181822a6c31cf5eb7ef486944d032188ea1d3920763712ccb12d75fb77e9811149e6148e5d32fbaab37611c1878ddc19e20ef135d0cb2cff2bfec3d115810c3d9069638fe4be215dbf795861920e5ab6f7db2e2ceef136ac23d5dd2bf031700aec232f6c6b1c785b4305c123b37ab", AllInternalsVisible=false*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.assembly, InternalsVisibleToAttribute.stringof/*, "System.Runtime.WindowsRuntime, PublicKey=" + _InternalsVisibleToKeys.EcmaPublicKeyFull, AllInternalsVisible=false*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.assembly, InternalsVisibleToAttribute.stringof/*, "System.Runtime.WindowsRuntime.UI.Xaml, PublicKey=" + _InternalsVisibleToKeys.EcmaPublicKeyFull, AllInternalsVisible=false*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.assembly, GuidAttribute.stringof/*, "BED7F4EA-1A96-11d2-8F08-00A0C9A6186D"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.assembly, ComCompatibleVersionAttribute.stringof/*, 1, 0, 3300, 0*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.assembly, TypeLibVersionAttribute.stringof/*, 2, 4*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.assembly, DefaultDependencyAttribute.stringof/*, LoadHint.Always*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.assembly, StringFreezingAttribute.stringof/**/),
];

immutable __DotNet__AttributeStruct[] moduleAttributes = [
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.BINDPTR.#lpfuncdesc", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.BINDPTR.#lptcomp", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.BINDPTR.#lpvardesc", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.CriticalHandle.#handle", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.DISPPARAMS.#rgdispidNamedArgs", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.DISPPARAMS.#rgvarg", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.EXCEPINFO.#pfnDeferredFillIn", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.EXCEPINFO.#pvReserved", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.FUNCDESC.#lprgelemdescParam", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.FUNCDESC.#lprgscode", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.PARAMDESC.#lpVarValue", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.SafeHandle.#handle", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.TYPEATTR.#lpstrSchema", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.TYPEDESC.#lpValue", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.VARDESC+DESCUNION.#lpvarValue", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.ComTypes.BINDPTR.#lpfuncdesc", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.ComTypes.BINDPTR.#lptcomp", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.ComTypes.BINDPTR.#lpvardesc", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.ComTypes.DISPPARAMS.#rgdispidNamedArgs", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.ComTypes.DISPPARAMS.#rgvarg", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.ComTypes.EXCEPINFO.#pfnDeferredFillIn", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.ComTypes.EXCEPINFO.#pvReserved", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.ComTypes.FUNCDESC.#lprgelemdescParam", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.ComTypes.FUNCDESC.#lprgscode", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.ComTypes.IDLDESC.#dwReserved", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.ComTypes.PARAMDESC.#lpVarValue", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.ComTypes.TYPEATTR.#lpstrSchema", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.ComTypes.TYPEDESC.#lpValue", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Runtime.InteropServices.ComTypes.VARDESC+DESCUNION.#lpvarValue", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Threading.NativeOverlapped.#EventHandle", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Threading.NativeOverlapped.#InternalHigh", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2111:PointersShouldNotBeVisible", Scope="member", Target="System.Threading.NativeOverlapped.#InternalLow", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2105:ArrayFieldsShouldNotBeReadOnly", Scope="member", Target="System.IO.Path.#InvalidPathChars", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2105:ArrayFieldsShouldNotBeReadOnly", Scope="member", Target="System.Type.#EmptyTypes", Justification="matell: We already shipped this and it would be a breaking change to fix it"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2104:DoNotDeclareReadOnlyMutableReferenceTypes", Scope="member", Target="System.IO.BinaryWriter.#Null", Justification="matell: Underlying type is actually immutable"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2104:DoNotDeclareReadOnlyMutableReferenceTypes", Scope="member", Target="System.IO.Stream.#Null", Justification="matell: Underlying type is actually immutable"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2104:DoNotDeclareReadOnlyMutableReferenceTypes", Scope="member", Target="System.IO.StreamReader.#Null", Justification="matell: Underlying type is actually immutable"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2104:DoNotDeclareReadOnlyMutableReferenceTypes", Scope="member", Target="System.IO.StreamWriter.#Null", Justification="matell: Underlying type is actually Immutable"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2104:DoNotDeclareReadOnlyMutableReferenceTypes", Scope="member", Target="System.IO.TextReader.#Null", Justification="matell: Underlying type is actually immutable"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Security", "CA2104:DoNotDeclareReadOnlyMutableReferenceTypes", Scope="member", Target="System.IO.TextWriter.#Null", Justification="matell: Underlying type is actually immutable"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5354:SHA1CannotBeUsed", Scope="member", Target="System.Diagnostics.Tracing.EventSource.#GenerateGuidFromName(System.String)", Justification="matell: Existing code that needs to interop with other components using SHA-1"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5354:SHA1CannotBeUsed", Scope="member", Target="System.IO.IsolatedStorage.IsolatedStorage.#GetHash(System.IO.Stream)", Justification="matell: Existing code that needs to interop with other components using SHA-1"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5354:SHA1CannotBeUsed", Scope="member", Target="System.IO.IsolatedStorage.IsolatedStorageFile.#GetStrongHashSuitableForObjectName(System.String)", Justification="matell: Existing code that needs to interop with other components using SHA-1"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5354:SHA1CannotBeUsed", Scope="member", Target="System.Security.Policy.HashMembershipCondition.#ParseHashAlgorithm()", Justification="matell: Existing code that needs to interop with other components using SHA-1"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5354:SHA1CannotBeUsed", Scope="member", Target="System.Security.Policy.HashMembershipCondition.#.ctor(System.Runtime.Serialization.SerializationInfo,System.Runtime.Serialization.StreamingContext)", Justification="matell: Existing code that needs to interop with other components using SHA-1"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5351:DESCannotBeUsed", Scope="member", Target="System.Security.Cryptography.DES.#Create()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5351:DESCannotBeUsed", Scope="member", Target="System.Security.Cryptography.DES.#IsSemiWeakKey(System.Byte[])", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5351:DESCannotBeUsed", Scope="member", Target="System.Security.Cryptography.DES.#IsWeakKey(System.Byte[])", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5351:DESCannotBeUsed", Scope="member", Target="System.Security.Cryptography.DES.#get_Key()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5351:DESCannotBeUsed", Scope="member", Target="System.Security.Cryptography.DES.#set_Key(System.Byte[])", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5351:DESCannotBeUsed", Scope="member", Target="System.Security.Cryptography.DESCryptoServiceProvider.#.ctor()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5351:DESCannotBeUsed", Scope="member", Target="System.Security.Cryptography.DESCryptoServiceProvider.#CreateDecryptor(System.Byte[],System.Byte[])", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5351:DESCannotBeUsed", Scope="member", Target="System.Security.Cryptography.DESCryptoServiceProvider.#CreateEncryptor(System.Byte[],System.Byte[])", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5351:DESCannotBeUsed", Scope="member", Target="System.Security.Cryptography.DESCryptoServiceProvider.#GenerateKey()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5354:SHA1CannotBeUsed", Scope="member", Target="System.Security.Cryptography.DSACryptoServiceProvider.#.ctor(System.Int32,System.Security.Cryptography.CspParameters)", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5356:DSACannotBeUsed", Scope="member", Target="System.Security.Cryptography.DSASignatureFormatter.#CreateSignature(System.Byte[])", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5350:MD5CannotBeUsed", Scope="member", Target="System.Security.Cryptography.HMACMD5.#.ctor()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5350:MD5CannotBeUsed", Scope="member", Target="System.Security.Cryptography.HMACMD5.#.ctor(System.Byte[])", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5355:RIPEMD160IsNotRecommended", Scope="member", Target="System.Security.Cryptography.HMACRIPEMD160.#.ctor()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5355:RIPEMD160IsNotRecommended", Scope="member", Target="System.Security.Cryptography.HMACRIPEMD160.#.ctor(System.Byte[])", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5354:SHA1CannotBeUsed", Scope="member", Target="System.Security.Cryptography.HMACSHA1.#.ctor(System.Byte[],System.Boolean)", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5353:TripleDESCannotBeUsed", Scope="member", Target="System.Security.Cryptography.MACTripleDES.#.ctor()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5353:TripleDESCannotBeUsed", Scope="member", Target="System.Security.Cryptography.MACTripleDES.#.ctor(System.String,System.Byte[])", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5350:MD5CannotBeUsed", Scope="member", Target="System.Security.Cryptography.MD5.#Create()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5350:MD5CannotBeUsed", Scope="member", Target="System.Security.Cryptography.MD5CryptoServiceProvider.#.ctor()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5352:RC2CannotBeUsed", Scope="member", Target="System.Security.Cryptography.RC2.#Create()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5352:RC2CannotBeUsed", Scope="member", Target="System.Security.Cryptography.RC2CryptoServiceProvider.#.ctor()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5352:RC2CannotBeUsed", Scope="member", Target="System.Security.Cryptography.RC2CryptoServiceProvider.#CreateDecryptor(System.Byte[],System.Byte[])", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5352:RC2CannotBeUsed", Scope="member", Target="System.Security.Cryptography.RC2CryptoServiceProvider.#CreateEncryptor(System.Byte[],System.Byte[])", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5355:RIPEMD160IsNotRecommended", Scope="member", Target="System.Security.Cryptography.RIPEMD160.#Create()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5355:RIPEMD160IsNotRecommended", Scope="member", Target="System.Security.Cryptography.RIPEMD160Managed.#.ctor()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5355:RIPEMD160IsNotRecommended", Scope="member", Target="System.Security.Cryptography.RIPEMD160Managed.#HashCore(System.Byte[],System.Int32,System.Int32)", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5355:RIPEMD160IsNotRecommended", Scope="member", Target="System.Security.Cryptography.RIPEMD160Managed.#HashFinal()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5355:RIPEMD160IsNotRecommended", Scope="member", Target="System.Security.Cryptography.RIPEMD160Managed.#Initialize()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5355:RIPEMD160IsNotRecommended", Scope="member", Target="System.Security.Cryptography.RIPEMD160Managed.#MDTransform(System.UInt32*,System.UInt32*,System.Byte*)", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5355:RIPEMD160IsNotRecommended", Scope="member", Target="System.Security.Cryptography.RIPEMD160Managed.#_EndHash()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5355:RIPEMD160IsNotRecommended", Scope="member", Target="System.Security.Cryptography.RIPEMD160Managed.#_HashData(System.Byte[],System.Int32,System.Int32)", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5354:SHA1CannotBeUsed", Scope="member", Target="System.Security.Cryptography.RSAOAEPKeyExchangeDeformatter.#DecryptKeyExchange(System.Byte[])", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5354:SHA1CannotBeUsed", Scope="member", Target="System.Security.Cryptography.RSAOAEPKeyExchangeFormatter.#CreateKeyExchange(System.Byte[])", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5357:RijndaelCannotBeUsed", Scope="member", Target="System.Security.Cryptography.Rijndael.#Create()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5357:RijndaelCannotBeUsed", Scope="member", Target="System.Security.Cryptography.RijndaelManaged.#.ctor()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5357:RijndaelCannotBeUsed", Scope="member", Target="System.Security.Cryptography.RijndaelManaged.#CreateDecryptor(System.Byte[],System.Byte[])", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5357:RijndaelCannotBeUsed", Scope="member", Target="System.Security.Cryptography.RijndaelManaged.#CreateEncryptor(System.Byte[],System.Byte[])", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5354:SHA1CannotBeUsed", Scope="member", Target="System.Security.Cryptography.SHA1.#Create()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5354:SHA1CannotBeUsed", Scope="member", Target="System.Security.Cryptography.SHA1CryptoServiceProvider.#.ctor()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5354:SHA1CannotBeUsed", Scope="member", Target="System.Security.Cryptography.SHA1Managed.#.ctor()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5354:SHA1CannotBeUsed", Scope="member", Target="System.Security.Cryptography.SHA1Managed.#HashCore(System.Byte[],System.Int32,System.Int32)", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5354:SHA1CannotBeUsed", Scope="member", Target="System.Security.Cryptography.SHA1Managed.#HashFinal()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5354:SHA1CannotBeUsed", Scope="member", Target="System.Security.Cryptography.SHA1Managed.#Initialize()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5354:SHA1CannotBeUsed", Scope="member", Target="System.Security.Cryptography.SHA1Managed.#SHATransform(System.UInt32*,System.UInt32*,System.Byte*)", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5354:SHA1CannotBeUsed", Scope="member", Target="System.Security.Cryptography.SHA1Managed.#_EndHash()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5354:SHA1CannotBeUsed", Scope="member", Target="System.Security.Cryptography.SHA1Managed.#_HashData(System.Byte[],System.Int32,System.Int32)", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5353:TripleDESCannotBeUsed", Scope="member", Target="System.Security.Cryptography.TripleDES.#Create()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5353:TripleDESCannotBeUsed", Scope="member", Target="System.Security.Cryptography.TripleDES.#IsWeakKey(System.Byte[])", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5353:TripleDESCannotBeUsed", Scope="member", Target="System.Security.Cryptography.TripleDES.#get_Key()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5353:TripleDESCannotBeUsed", Scope="member", Target="System.Security.Cryptography.TripleDES.#set_Key(System.Byte[])", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5353:TripleDESCannotBeUsed", Scope="member", Target="System.Security.Cryptography.TripleDESCryptoServiceProvider.#.ctor()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5353:TripleDESCannotBeUsed", Scope="member", Target="System.Security.Cryptography.TripleDESCryptoServiceProvider.#CreateDecryptor(System.Byte[],System.Byte[])", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5353:TripleDESCannotBeUsed", Scope="member", Target="System.Security.Cryptography.TripleDESCryptoServiceProvider.#CreateEncryptor(System.Byte[],System.Byte[])", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
    __DotNet__Attribute!(__DotNet__AttributeStruct.Target.module_, SuppressMessageAttribute.stringof/*, "Microsoft.Cryptographic.Standard", "CA5353:TripleDESCannotBeUsed", Scope="member", Target="System.Security.Cryptography.TripleDESCryptoServiceProvider.#GenerateKey()", Justification="matell: By design.  Needed for implementation of security algorithms"*/),
];

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\Common\Preprocessed\AssemblyRefs.g.cs'
//
public class FXAssembly : __DotNet__Object
{
    private this() {} // prevent instantiation
    public enum String Version/*todo: implement initializer*/ = null;
}
public class ThisAssembly : __DotNet__Object
{
    private this() {} // prevent instantiation
    public enum String Title/*todo: implement initializer*/ = null;
    public enum String Description/*todo: implement initializer*/ = null;
    public enum String DefaultAlias/*todo: implement initializer*/ = null;
    public enum String Copyright/*todo: implement initializer*/ = null;
    public enum String Version/*todo: implement initializer*/ = null;
    public enum String InformationalVersion/*todo: implement initializer*/ = null;
    public enum String DailyBuildNumberStr/*todo: implement initializer*/ = null;
    public enum String BuildRevisionStr/*todo: implement initializer*/ = null;
    public enum int DailyBuildNumber/*todo: implement initializer*/ = int();
}
public class AssemblyRef : __DotNet__Object
{
    private this() {} // prevent instantiation
    public enum String EcmaPublicKey/*todo: implement initializer*/ = null;
    public enum String EcmaPublicKeyToken/*todo: implement initializer*/ = null;
    public enum String EcmaPublicKeyFull/*todo: implement initializer*/ = null;
    public enum String SilverlightPublicKey/*todo: implement initializer*/ = null;
    public enum String SilverlightPublicKeyToken/*todo: implement initializer*/ = null;
    public enum String SilverlightPublicKeyFull/*todo: implement initializer*/ = null;
    public enum String SilverlightPlatformPublicKey/*todo: implement initializer*/ = null;
    public enum String SilverlightPlatformPublicKeyToken/*todo: implement initializer*/ = null;
    public enum String SilverlightPlatformPublicKeyFull/*todo: implement initializer*/ = null;
    public enum String PlatformPublicKey/*todo: implement initializer*/ = null;
    public enum String PlatformPublicKeyToken/*todo: implement initializer*/ = null;
    public enum String PlatformPublicKeyFull/*todo: implement initializer*/ = null;
    public enum String Mscorlib/*todo: implement initializer*/ = null;
    public enum String SystemData/*todo: implement initializer*/ = null;
    public enum String SystemDataOracleClient/*todo: implement initializer*/ = null;
    public enum String System/*todo: implement initializer*/ = null;
    public enum String SystemCore/*todo: implement initializer*/ = null;
    public enum String SystemNumerics/*todo: implement initializer*/ = null;
    public enum String SystemRuntimeRemoting/*todo: implement initializer*/ = null;
    public enum String SystemThreadingTasksDataflow/*todo: implement initializer*/ = null;
    public enum String SystemWindowsForms/*todo: implement initializer*/ = null;
    public enum String SystemXml/*todo: implement initializer*/ = null;
    public enum String MicrosoftPublicKey/*todo: implement initializer*/ = null;
    public enum String MicrosoftPublicKeyToken/*todo: implement initializer*/ = null;
    public enum String MicrosoftPublicKeyFull/*todo: implement initializer*/ = null;
    public enum String SharedLibPublicKey/*todo: implement initializer*/ = null;
    public enum String SharedLibPublicKeyToken/*todo: implement initializer*/ = null;
    public enum String SharedLibPublicKeyFull/*todo: implement initializer*/ = null;
    public enum String SystemComponentModelDataAnnotations/*todo: implement initializer*/ = null;
    public enum String SystemConfiguration/*todo: implement initializer*/ = null;
    public enum String SystemConfigurationInstall/*todo: implement initializer*/ = null;
    public enum String SystemDeployment/*todo: implement initializer*/ = null;
    public enum String SystemDesign/*todo: implement initializer*/ = null;
    public enum String SystemDirectoryServices/*todo: implement initializer*/ = null;
    public enum String SystemDrawingDesign/*todo: implement initializer*/ = null;
    public enum String SystemDrawing/*todo: implement initializer*/ = null;
    public enum String SystemEnterpriseServices/*todo: implement initializer*/ = null;
    public enum String SystemManagement/*todo: implement initializer*/ = null;
    public enum String SystemMessaging/*todo: implement initializer*/ = null;
    public enum String SystemNetHttp/*todo: implement initializer*/ = null;
    public enum String SystemNetHttpWebRequest/*todo: implement initializer*/ = null;
    public enum String SystemRuntimeSerializationFormattersSoap/*todo: implement initializer*/ = null;
    public enum String SystemRuntimeWindowsRuntime/*todo: implement initializer*/ = null;
    public enum String SystemRuntimeWindowsRuntimeUIXaml/*todo: implement initializer*/ = null;
    public enum String SystemSecurity/*todo: implement initializer*/ = null;
    public enum String SystemServiceModelWeb/*todo: implement initializer*/ = null;
    public enum String SystemServiceProcess/*todo: implement initializer*/ = null;
    public enum String SystemWeb/*todo: implement initializer*/ = null;
    public enum String SystemWebAbstractions/*todo: implement initializer*/ = null;
    public enum String SystemWebDynamicData/*todo: implement initializer*/ = null;
    public enum String SystemWebDynamicDataDesign/*todo: implement initializer*/ = null;
    public enum String SystemWebEntityDesign/*todo: implement initializer*/ = null;
    public enum String SystemWebExtensions/*todo: implement initializer*/ = null;
    public enum String SystemWebExtensionsDesign/*todo: implement initializer*/ = null;
    public enum String SystemWebMobile/*todo: implement initializer*/ = null;
    public enum String SystemWebRegularExpressions/*todo: implement initializer*/ = null;
    public enum String SystemWebRouting/*todo: implement initializer*/ = null;
    public enum String SystemWebServices/*todo: implement initializer*/ = null;
    public enum String WindowsBase/*todo: implement initializer*/ = null;
    public enum String MicrosoftVisualStudio/*todo: implement initializer*/ = null;
    public enum String MicrosoftVisualStudioWindowsForms/*todo: implement initializer*/ = null;
    public enum String VJSharpCodeProvider/*todo: implement initializer*/ = null;
    public enum String ASPBrowserCapsPublicKey/*todo: implement initializer*/ = null;
    public enum String ASPBrowserCapsFactory/*todo: implement initializer*/ = null;
    public enum String MicrosoftVSDesigner/*todo: implement initializer*/ = null;
    public enum String MicrosoftVisualStudioWeb/*todo: implement initializer*/ = null;
    public enum String MicrosoftWebDesign/*todo: implement initializer*/ = null;
    public enum String MicrosoftVSDesignerMobile/*todo: implement initializer*/ = null;
    public enum String MicrosoftJScript/*todo: implement initializer*/ = null;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\GlobalSuppressions.cs'
//

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\mscorlib.Friends.cs'
//
// #if FEATURE_CORECLR
// We need this to be able to typeforward to internal types
// #endif
// For now we are only moving to using this file over AssemblyAttributes.cspp in CoreSys, ideally we would move away from the centralized 
// AssemblyAttributes.cspp model for the other build types at a future point in time.
// #if FEATURE_CORESYSTEM
// Depends on things like SuppressUnmanagedCodeAttribute and WindowsRuntimeImportAttribute
// Depends on WindowsRuntimeImportAttribute
public class _InternalsVisibleToKeys : __DotNet__Object
{
    public enum String EcmaPublicKeyFull/*todo: implement initializer*/ = null;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Array.cs'
//
public class EmptyArray1(T) : __DotNet__Object
{
    private this() {} // prevent instantiation
    public static immutable T[] Value/*todo: implement initializer*/ = null;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Internal.cs'
//
// The following attribute are required to ensure COM compatibility.
// #endif // FEATURE_COMINTEROP
// mscorlib would like to have its literal strings frozen if possible
