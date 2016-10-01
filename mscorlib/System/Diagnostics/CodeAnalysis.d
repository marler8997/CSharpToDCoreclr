module mscorlib.System.Diagnostics.CodeAnalysis;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    AttributeUsageAttribute,
    Attribute,
    String;
import mscorlib.System.Diagnostics :
    ConditionalAttribute;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\CodeAnalysis\SuppressMessageAttribute.cs'
//
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.All, Inherited = false, AllowMultiple = true*/)
@__DotNet__Attribute!(ConditionalAttribute.stringof/*, "CODE_ANALYSIS"*/)
public final class SuppressMessageAttribute : Attribute
{
    private String category;
    private String justification;
    private String checkId;
    private String scope_;
    private String target;
    private String messageId;
    //TODO: generate constructor
    //TODO: generate property 'Category'
    //TODO: generate property 'CheckId'
    //TODO: generate property 'Scope'
    //TODO: generate property 'Target'
    //TODO: generate property 'MessageId'
    //TODO: generate property 'Justification'
}
