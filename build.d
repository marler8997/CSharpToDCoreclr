import std.stdio;
import std.getopt  : getopt;
import std.format  : format;
import std.process : spawnShell, wait;
import std.path    : setExtension, buildNormalizedPath;

enum OutputType {Library,Exe}
struct Project
{
    string outputName;
    OutputType outputType;
    string[] sourceFiles;
}

immutable string rootPath = `D:\git\CSharpToD\mscorlib\cs2d`;
immutable string mscorlibPath = `D:\git\CSharpToD\mscorlib\cs2d`;
enum DEFAULT_NO_MSCORLIB = true;
immutable string[] includePaths = [
];
immutable string[] libraries = [
];
immutable Project[] projects = [
    immutable Project("mscorlib", OutputType.Library, [
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\Internal\Runtime\Augments.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\Microsoft\Reflection.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\Microsoft\Win32\package.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\Microsoft\Win32\SafeHandles.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\package.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Collections\Concurrent.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Collections\Generic.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Collections\ObjectModel.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Collections\package.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Configuration\Assemblies.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Diagnostics\CodeAnalysis.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Diagnostics\Contracts\Internal.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Diagnostics\Contracts\package.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Diagnostics\package.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Diagnostics\SymbolStore.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Diagnostics\Tracing\Internal.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Diagnostics\Tracing\package.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Globalization.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\IO.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\package.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Reflection\Emit.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Reflection\Metadata.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Reflection\package.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Resources.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Runtime\CompilerServices.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Runtime\ConstrainedExecution.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Runtime\ExceptionServices.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Runtime\InteropServices\ComTypes.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Runtime\InteropServices\Expando.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Runtime\InteropServices\package.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Runtime\InteropServices\TCEAdapterGen.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Runtime\InteropServices\WindowsRuntime.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Runtime\Loader.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Runtime\package.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Runtime\Remoting.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Runtime\Serialization.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Runtime\Versioning.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Security\AccessControl.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Security\package.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Security\Permissions.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Security\Policy.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Security\Principal.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Security\Util.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\StubHelpers.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Text.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Threading\package.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\System\Threading\Tasks.d`,
        `D:\git\CSharpToD\mscorlib\cs2d\mscorlib\Windows\Foundation\Diagnostics.d`,
    ]),
];

int tryRun(string command)
{
    writefln("[RUN] '%s'", command);
    auto pid = spawnShell(command);
    return wait(pid);
}
void run(string command)
{
    auto exitCode = tryRun(command);
    if(exitCode) {
        writefln("Error: last [RUN] command failed (exit code %s)", exitCode);
    }
}
int main(string[] args)
{
    bool noMscorlib = DEFAULT_NO_MSCORLIB;
    bool compileSingleFiles = false;
    getopt(args,
        "no-mscorlib", &noMscorlib,
        "compile-single-files", &compileSingleFiles);

    foreach(project; projects)
    {
        writefln("Building project '%s'...", project.outputName);

        string[] objectFiles = new string[project.sourceFiles.length];
        foreach(i, sourceFile; project.sourceFiles) {
            objectFiles[i] = sourceFile.setExtension("obj");
        }

        string compileCommand = format("dmd -I%s", rootPath);
        if(!noMscorlib) {
            compileCommand ~= " -I" ~ mscorlibPath;
        }
        foreach(includePath; includePaths) {
            compileCommand ~= " -I" ~ buildNormalizedPath(includePath);
        }

        string linkArguments = "";
        if(project.outputType == OutputType.Library) {
            linkArguments ~= " -lib";
        }
        if(!noMscorlib) {
            linkArguments ~= " " ~ buildNormalizedPath(mscorlibPath, "mscorlib.lib");
        }
        foreach(library; libraries) {
            linkArguments ~= format(" %s", library);
        }
        linkArguments ~= format(" -of%s", buildNormalizedPath(rootPath, project.outputName));

        // The compileSingleFiles option is MUCH slower, but I'm keeping it for now
        // because compiling all source files together could cause a machine to run out of memory
        if(compileSingleFiles)
        {
            // Compile
            foreach(i, sourceFile; project.sourceFiles) {
                if(tryRun(format("%s -c -of%s %s", compileCommand, objectFiles[i], sourceFile))) {
                    return 1;
                }
            }

            // Link
            string linkCommand = "dmd"~linkArguments;
            foreach(objectFile; objectFiles) {
                linkCommand ~= format(" %s", objectFile);
            }
            if(tryRun(linkCommand)) {
                return 1;
            }
        } else {
            string compileAndLinkCommand = compileCommand~linkArguments;
            foreach(i, sourceFile; project.sourceFiles) {
                compileAndLinkCommand ~= " "~sourceFile;
            }
            if(tryRun(compileAndLinkCommand)) {
                return 1;
            }
        }
    }
    writeln("Success");
    return 0;
}

