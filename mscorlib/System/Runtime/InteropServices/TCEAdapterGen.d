module mscorlib.System.Runtime.InteropServices.TCEAdapterGen;

import mscorlib.System :
    __DotNet__Object,
    String,
    Type;
import mscorlib.System.Reflection :
    RuntimeAssembly,
    BindingFlags;
import mscorlib.System.Reflection.Emit :
    ModuleBuilder,
    CustomAttributeBuilder;
import mscorlib.System.Collections :
    Hashtable;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\TCEAdapterGen\EventItfInfo.cs'
//
package(mscorlib) class EventItfInfo : __DotNet__Object
{
    //TODO: generate constructor
    //TODO: generate method GetEventItfType
    //TODO: generate method GetSrcItfType
    //TODO: generate method GetEventProviderName
    private String m_strEventItfName;
    private String m_strSrcItfName;
    private String m_strEventProviderName;
    private RuntimeAssembly m_asmImport;
    private RuntimeAssembly m_asmSrcItf;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\TCEAdapterGen\EventProviderWriter.cs'
//
package(mscorlib) class EventProviderWriter : __DotNet__Object
{
    private enum BindingFlags DefaultLookup/*todo: implement initializer*/ = (cast(BindingFlags)0);
    private immutable Type[] MonitorEnterParamTypes/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method Perform
    //TODO: generate method DefineAddEventMethod
    //TODO: generate method DefineRemoveEventMethod
    //TODO: generate method DefineInitSrcItfMethod
    //TODO: generate method DefineConstructor
    //TODO: generate method DefineFinalizeMethod
    //TODO: generate method DefineDisposeMethod
    private ModuleBuilder m_OutputModule;
    private String m_strDestTypeName;
    private Type m_EventItfType;
    private Type m_SrcItfType;
    private Type m_SinkHelperType;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\TCEAdapterGen\EventSinkHelperWriter.cs'
//
package(mscorlib) class EventSinkHelperWriter : __DotNet__Object
{
    public static immutable String GeneratedTypeNamePostfix/*todo: implement initializer*/ = null;
    //TODO: generate constructor
    //TODO: generate method Perform
    //TODO: generate method DefineBlankMethod
    //TODO: generate method DefineEventMethod
    //TODO: generate method AddReturn
    //TODO: generate method DefineConstructor
    private Type m_InputType;
    private Type m_EventItfType;
    private ModuleBuilder m_OutputModule;
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\TCEAdapterGen\NameSpaceExtractor.cs'
//
package(mscorlib) class NameSpaceExtractor : __DotNet__Object
{
    private this() {} // prevent instantiation
    private static wchar NameSpaceSeperator/*todo: implement initializer*/ = wchar();
    //TODO: generate method ExtractNameSpace
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Runtime\InteropServices\TCEAdapterGen\TCEAdapterGenerator.cs'
//
package(mscorlib) class TCEAdapterGenerator : __DotNet__Object
{
    //TODO: generate method Process
    //TODO: generate method SetClassInterfaceTypeToNone
    //TODO: generate method DefineUniqueType
    //TODO: generate method SetHiddenAttribute
    //TODO: generate method GetNonPropertyMethods
    //TODO: generate method GetPropertyMethods
    private ModuleBuilder m_Module/*todo: implement initializer*/ = null;
    private Hashtable m_SrcItfToSrcItfInfoMap/*todo: implement initializer*/ = null;
    private static /*todo: volatile*/ CustomAttributeBuilder s_NoClassItfCABuilder/*todo: implement initializer*/ = null;
    private static /*todo: volatile*/ CustomAttributeBuilder s_HiddenCABuilder/*todo: implement initializer*/ = null;
}
