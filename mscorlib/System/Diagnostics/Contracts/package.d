module mscorlib.System.Diagnostics.Contracts;

import mscorlib.System :
    __DotNet__Attribute,
    __DotNet__AttributeStruct,
    AttributeUsageAttribute,
    Attribute,
    Type,
    String,
    __DotNet__Object,
    ThreadStaticAttribute,
    EventArgs,
    __DotNet__Exception,
    SerializableAttribute;
import mscorlib.System.Diagnostics :
    ConditionalAttribute;
import mscorlib.System.Diagnostics.CodeAnalysis :
    SuppressMessageAttribute;

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Contracts\Contracts.cs'
//
// #region Attributes
/// <summary>
/// Methods and classes marked with this attribute can be used within calls to Contract methods. Such methods not make any visible state changes.
/// </summary>
@__DotNet__Attribute!(ConditionalAttribute.stringof/*, "CONTRACTS_FULL"*/)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Constructor | AttributeTargets.Method | AttributeTargets.Property | AttributeTargets.Event | AttributeTargets.Delegate | AttributeTargets.Class | AttributeTargets.Parameter, AllowMultiple = false, Inherited = true*/)
public final class PureAttribute : Attribute
{
}
/// <summary>
/// Types marked with this attribute specify that a separate type contains the contracts for this type.
/// </summary>
@__DotNet__Attribute!(ConditionalAttribute.stringof/*, "CONTRACTS_FULL"*/)
@__DotNet__Attribute!(ConditionalAttribute.stringof/*, "DEBUG"*/)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class | AttributeTargets.Interface | AttributeTargets.Delegate, AllowMultiple = false, Inherited = false*/)
public final class ContractClassAttribute : Attribute
{
    private Type _typeWithContracts;
    //TODO: generate constructor
    //TODO: generate property 'TypeContainingContracts'
}
/// <summary>
/// Types marked with this attribute specify that they are a contract for the type that is the argument of the constructor.
/// </summary>
@__DotNet__Attribute!(ConditionalAttribute.stringof/*, "CONTRACTS_FULL"*/)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Class, AllowMultiple = false, Inherited = false*/)
public final class ContractClassForAttribute : Attribute
{
    private Type _typeIAmAContractFor;
    //TODO: generate constructor
    //TODO: generate property 'TypeContractsAreFor'
}
/// <summary>
/// This attribute is used to mark a method as being the invariant
/// method for a class. The method can have any name, but it must
/// return "void" and take no parameters. The body of the method
/// must consist solely of one or more calls to the method
/// Contract.Invariant. A suggested name for the method is 
/// "ObjectInvariant".
/// </summary>
@__DotNet__Attribute!(ConditionalAttribute.stringof/*, "CONTRACTS_FULL"*/)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, AllowMultiple = false, Inherited = false*/)
public final class ContractInvariantMethodAttribute : Attribute
{
}
/// <summary>
/// Attribute that specifies that an assembly is a reference assembly with contracts.
/// </summary>
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly*/)
public final class ContractReferenceAssemblyAttribute : Attribute
{
}
/// <summary>
/// Methods (and properties) marked with this attribute can be used within calls to Contract methods, but have no runtime behavior associated with them.
/// </summary>
@__DotNet__Attribute!(ConditionalAttribute.stringof/*, "CONTRACTS_FULL"*/)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method | AttributeTargets.Property, AllowMultiple = false, Inherited = true*/)
public final class ContractRuntimeIgnoredAttribute : Attribute
{
}
// 
// [Serializable]
// internal enum Mutability
// {
// Immutable,    // read-only after construction, except for lazy initialization & caches
// Do we need a "deeply immutable" value?
// Mutable,
// HasInitializationPhase,  // read-only after some point.  
// Do we need a value for mutable types with read-only wrapper subclasses?
// }
// Note: This hasn't been thought through in any depth yet.  Consider it experimental.
// We should replace this with Joe's concepts.
// [Conditional("CONTRACTS_FULL")]
// [AttributeUsage(AttributeTargets.Class | AttributeTargets.Struct, AllowMultiple = false, Inherited = false)]
// [SuppressMessage("Microsoft.Design", "CA1019:DefineAccessorsForAttributeArguments", Justification = "Thank you very much, but we like the names we've defined for the accessors")]
// internal sealed class MutabilityAttribute : Attribute 
// {
// private Mutability _mutabilityMarker;
// public MutabilityAttribute(Mutability mutabilityMarker)
// {
// _mutabilityMarker = mutabilityMarker;
// }
// public Mutability Mutability {
// get { return _mutabilityMarker; }
// }
// }
// 
/// <summary>
/// Instructs downstream tools whether to assume the correctness of this assembly, type or member without performing any verification or not.
/// Can use [ContractVerification(false)] to explicitly mark assembly, type or member as one to *not* have verification performed on it.
/// Most specific element found (member, type, then assembly) takes precedence.
/// (That is useful if downstream tools allow a user to decide which polarity is the default, unmarked case.)
/// </summary>
/// <remarks>
/// Apply this attribute to a type to apply to all members of the type, including nested types.
/// Apply this attribute to an assembly to apply to all types and members of the assembly.
/// Apply this attribute to a property to apply to both the getter and setter.
/// </remarks>
@__DotNet__Attribute!(ConditionalAttribute.stringof/*, "CONTRACTS_FULL"*/)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Assembly | AttributeTargets.Class | AttributeTargets.Struct | AttributeTargets.Method | AttributeTargets.Constructor | AttributeTargets.Property*/)
public final class ContractVerificationAttribute : Attribute
{
    private bool _value;
    //TODO: generate constructor
    //TODO: generate property 'Value'
}
/// <summary>
/// Allows a field f to be used in the method contracts for a method m when f has less visibility than m.
/// For instance, if the method is public, but the field is private.
/// </summary>
@__DotNet__Attribute!(ConditionalAttribute.stringof/*, "CONTRACTS_FULL"*/)
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Field*/)
@__DotNet__Attribute!(SuppressMessageAttribute.stringof/*, "Microsoft.Design", "CA1019:DefineAccessorsForAttributeArguments", Justification = "Thank you very much, but we like the names we've defined for the accessors"*/)
public final class ContractPublicPropertyNameAttribute : Attribute
{
    private String _publicName;
    //TODO: generate constructor
    //TODO: generate property 'Name'
}
/// <summary>
/// Enables factoring legacy if-then-throw into separate methods for reuse and full control over
/// thrown exception and arguments
/// </summary>
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, AllowMultiple = false*/)
@__DotNet__Attribute!(ConditionalAttribute.stringof/*, "CONTRACTS_FULL"*/)
public final class ContractArgumentValidatorAttribute : Attribute
{
}
/// <summary>
/// Enables writing abbreviations for contracts that get copied to other methods
/// </summary>
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.Method, AllowMultiple = false*/)
@__DotNet__Attribute!(ConditionalAttribute.stringof/*, "CONTRACTS_FULL"*/)
public final class ContractAbbreviatorAttribute : Attribute
{
}
/// <summary>
/// Allows setting contract and tool options at assembly, type, or method granularity.
/// </summary>
@__DotNet__Attribute!(AttributeUsageAttribute.stringof/*, AttributeTargets.All, AllowMultiple = true, Inherited = false*/)
@__DotNet__Attribute!(ConditionalAttribute.stringof/*, "CONTRACTS_FULL"*/)
public final class ContractOptionAttribute : Attribute
{
    private String _category;
    private String _setting;
    private bool _enabled;
    private String _value;
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate property 'Category'
    //TODO: generate property 'Setting'
    //TODO: generate property 'Enabled'
    //TODO: generate property 'Value'
}
public class Contract : __DotNet__Object
{
    private this() {} // prevent instantiation
    //TODO: generate method Assume
    //TODO: generate method Assume
    //TODO: generate method Assert
    //TODO: generate method Assert
    //TODO: generate method Requires
    //TODO: generate method Requires
    //TODO: generate method Requires
    //TODO: generate method Requires
    //TODO: generate method Ensures
    //TODO: generate method Ensures
    //TODO: generate method EnsuresOnThrow
    //TODO: generate method EnsuresOnThrow
    //TODO: generate method Result
    //TODO: generate method ValueAtReturn
    //TODO: generate method OldValue
    //TODO: generate method Invariant
    //TODO: generate method Invariant
    //TODO: generate method ForAll
    //TODO: generate method ForAll
    //TODO: generate method Exists
    //TODO: generate method Exists
    //TODO: generate method EndContractBlock
    //TODO: generate method ReportFailure
    //TODO: generate method AssertMustUseRewriter
    // #region Private Methods
    @__DotNet__Attribute!(ThreadStaticAttribute.stringof)
    private static bool _assertingMustUseRewriter;
    //TODO: generate method AssertMustUseRewriter
    //TODO: generate method ReportFailure
    //TODO: generate event 'ContractFailed'
}
public enum ContractFailureKind
{
    Precondition,
    Postcondition,
    PostconditionOnException,
    Invariant,
    Assert,
    Assume,
}

//
// Source Generated From 'D:\git\coreclr\src\mscorlib\src\System\Diagnostics\Contracts\ContractsBCL.cs'
//
// partial class 'Contract' moved
public final class ContractFailedEventArgs : EventArgs
{
    private ContractFailureKind _failureKind;
    private String _message;
    private String _condition;
    private __DotNet__Exception _originalException;
    private bool _handled;
    private bool _unwind;
    package(mscorlib) __DotNet__Exception thrownDuringHandler;
    //TODO: generate constructor
    //TODO: generate property 'Message'
    //TODO: generate property 'Condition'
    //TODO: generate property 'FailureKind'
    //TODO: generate property 'OriginalException'
    //TODO: generate property 'Handled'
    //TODO: generate method SetHandled
    //TODO: generate property 'Unwind'
    //TODO: generate method SetUnwind
}
@__DotNet__Attribute!(SerializableAttribute.stringof)
@__DotNet__Attribute!(SuppressMessageAttribute.stringof/*, "Microsoft.Design", "CA1064:ExceptionsShouldBePublic"*/)
package(mscorlib) final class ContractException : __DotNet__Exception
{
    private immutable ContractFailureKind _Kind;
    private immutable String _UserMessage;
    private immutable String _Condition;
    //TODO: generate property 'Kind'
    //TODO: generate property 'Failure'
    //TODO: generate property 'UserMessage'
    //TODO: generate property 'Condition'
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate constructor
    //TODO: generate method GetObjectData
}
