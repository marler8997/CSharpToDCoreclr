module mscorlib.System.Diagnostics.SymbolStore;

import mscorlib.System :
    DotNetObject,
    Guid;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\SymbolStore\ISymBinder.cs'
//
//// Interface does not need to be marked with the serializable attribute
//[System.Runtime.InteropServices.ComVisible(true)]
public interface ISymbolBinder
{
    //TODO: generate method GetReader
}
//// This interface has a revised ISymbolBinder.GetReader() with the proper signature.
//    // It is not called ISymbolBinder2 because it maps to the IUnmanagedSymbolBinder interfaces, and 
//    // does not wrap the IUnmanagedSymbolBinder2 interfaces declared in CorSym.idl.
//[System.Runtime.InteropServices.ComVisible(true)]
public interface ISymbolBinder1
{
    //TODO: generate method GetReader
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\SymbolStore\ISymDocument.cs'
//
//// Interface does not need to be marked with the serializable attribute
//[System.Runtime.InteropServices.ComVisible(true)]
public interface ISymbolDocument
{
    //TODO: generate property 'URL'
    //TODO: generate property 'DocumentType'
    //TODO: generate property 'Language'
    //TODO: generate property 'LanguageVendor'
    //TODO: generate property 'CheckSumAlgorithmId'
    //TODO: generate method GetCheckSum
    //TODO: generate method FindClosestLine
    //TODO: generate property 'HasEmbeddedSource'
    //TODO: generate property 'SourceLength'
    //TODO: generate method GetSourceRange
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\SymbolStore\ISymDocumentWriter.cs'
//
//// Interface does not need to be marked with the serializable attribute
//    [System.Runtime.InteropServices.ComVisible(true)]
public interface ISymbolDocumentWriter
{
    //TODO: generate method SetSource
    //TODO: generate method SetCheckSum
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\SymbolStore\ISymMethod.cs'
//
//// Interface does not need to be marked with the serializable attribute
//[System.Runtime.InteropServices.ComVisible(true)]
public interface ISymbolMethod
{
    //TODO: generate property 'Token'
    //TODO: generate property 'SequencePointCount'
    //TODO: generate method GetSequencePoints
    //TODO: generate property 'RootScope'
    //TODO: generate method GetScope
    //TODO: generate method GetOffset
    //TODO: generate method GetRanges
    //TODO: generate method GetParameters
    //TODO: generate method GetNamespace
    //TODO: generate method GetSourceStartEnd
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\SymbolStore\ISymNamespace.cs'
//
//// Interface does not need to be marked with the serializable attribute
//[System.Runtime.InteropServices.ComVisible(true)]
public interface ISymbolNamespace
{
    //TODO: generate property 'Name'
    //TODO: generate method GetNamespaces
    //TODO: generate method GetVariables
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\SymbolStore\ISymReader.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public interface ISymbolReader
{
    //TODO: generate method GetDocument
    //TODO: generate method GetDocuments
    //TODO: generate property 'UserEntryPoint'
    //TODO: generate method GetMethod
    //TODO: generate method GetMethod
    //TODO: generate method GetVariables
    //TODO: generate method GetGlobalVariables
    //TODO: generate method GetMethodFromDocumentPosition
    //TODO: generate method GetSymAttribute
    //TODO: generate method GetNamespaces
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\SymbolStore\ISymScope.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public interface ISymbolScope
{
    //TODO: generate property 'Method'
    //TODO: generate property 'Parent'
    //TODO: generate method GetChildren
    //TODO: generate property 'StartOffset'
    //TODO: generate property 'EndOffset'
    //TODO: generate method GetLocals
    //TODO: generate method GetNamespaces
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\SymbolStore\ISymVariable.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public interface ISymbolVariable
{
    //TODO: generate property 'Name'
    //TODO: generate property 'Attributes'
    //TODO: generate method GetSignature
    //TODO: generate property 'AddressKind'
    //TODO: generate property 'AddressField1'
    //TODO: generate property 'AddressField2'
    //TODO: generate property 'AddressField3'
    //TODO: generate property 'StartOffset'
    //TODO: generate property 'EndOffset'
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\SymbolStore\ISymWriter.cs'
//
//// Interface does not need to be marked with the serializable attribute
//[System.Runtime.InteropServices.ComVisible(true)]
public interface ISymbolWriter
{
    //TODO: generate method Initialize
    //TODO: generate method DefineDocument
    //TODO: generate method SetUserEntryPoint
    //TODO: generate method OpenMethod
    //TODO: generate method CloseMethod
    //TODO: generate method DefineSequencePoints
    //TODO: generate method OpenScope
    //TODO: generate method CloseScope
    //TODO: generate method SetScopeRange
    //TODO: generate method DefineLocalVariable
    //TODO: generate method DefineParameter
    //TODO: generate method DefineField
    //TODO: generate method DefineGlobalVariable
    //TODO: generate method Close
    //TODO: generate method SetSymAttribute
    //TODO: generate method OpenNamespace
    //TODO: generate method CloseNamespace
    //TODO: generate method UsingNamespace
    //TODO: generate method SetMethodSourceRange
    //TODO: generate method SetUnderlyingWriter
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\SymbolStore\SymAddressKind.cs'
//
// Ignored: [Serializable]
// Ignored: [System.Runtime.InteropServices.ComVisible(true)]
public enum SymAddressKind
{
    ILOffset = 1,
    NativeRVA = 2,
    NativeRegister = 3,
    NativeRegisterRelative = 4,
    NativeOffset = 5,
    NativeRegisterRegister = 6,
    NativeRegisterStack = 7,
    NativeStackRegister = 8,
    BitField = 9,
    NativeSectionOffset = 10,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\SymbolStore\SymDocumentType.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public class SymDocumentType : DotNetObject
{
    public static immutable Guid Text/*todo: implement initializer*/ = Guid();
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\SymbolStore\SymLanguageType.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public class SymLanguageType : DotNetObject
{
    public static immutable Guid C/*todo: implement initializer*/ = Guid();
    public static immutable Guid CPlusPlus/*todo: implement initializer*/ = Guid();
    public static immutable Guid CSharp/*todo: implement initializer*/ = Guid();
    public static immutable Guid Basic/*todo: implement initializer*/ = Guid();
    public static immutable Guid Java/*todo: implement initializer*/ = Guid();
    public static immutable Guid Cobol/*todo: implement initializer*/ = Guid();
    public static immutable Guid Pascal/*todo: implement initializer*/ = Guid();
    public static immutable Guid ILAssembly/*todo: implement initializer*/ = Guid();
    public static immutable Guid JScript/*todo: implement initializer*/ = Guid();
    public static immutable Guid SMC/*todo: implement initializer*/ = Guid();
    public static immutable Guid MCPlusPlus/*todo: implement initializer*/ = Guid();
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\SymbolStore\SymLanguageVendor.cs'
//
//[System.Runtime.InteropServices.ComVisible(true)]
public class SymLanguageVendor : DotNetObject
{
    public static immutable Guid Microsoft/*todo: implement initializer*/ = Guid();
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\SymbolStore\Token.cs'
//
//[ComVisible(true)]
public struct SymbolToken
{
    public int m_token;
    //TODO: generate constructor
    //TODO: generate method GetToken
    //TODO: generate method GetHashCode
    //TODO: generate method Equals
    //TODO: generate method Equals
    //TODO: generate operator
    //TODO: generate operator
}
