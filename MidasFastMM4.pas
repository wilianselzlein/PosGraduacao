unit MidasFastMM4;

// ************************************************************************
// * Midas replacement memory manager FastMM 4.92, reduced to the minimum *
// ************************************************************************

(*
Fast Memory Manager 4.92

Description:
 A fast replacement memory manager for CodeGear Delphi Win32 applications that
 scales well under multi-threaded usage, is not prone to memory fragmentation,
 and supports shared memory without the use of external .DLL files.

Homepage:
 http://fastmm.sourceforge.net

Advantages:
 - Fast
 - Low overhead. FastMM is designed for an average of 5% and maximum of 10%
   overhead per block.
 - Supports up to 3GB of user mode address space under Windows 32-bit and 4GB
   under Windows 64-bit. Add the "$SetPEFlags $20" option (in curly braces)
   to your .dpr to enable this.
 - Highly aligned memory blocks. Can be configured for either 8-byte or 16-byte
   alignment.
 - Good scaling under multi-threaded applications
 - Intelligent reallocations. Avoids slow memory move operations through
   not performing unneccesary downsizes and by having a minimum percentage
   block size growth factor when an in-place block upsize is not possible.
 - Resistant to address space fragmentation
 - No external DLL required when sharing memory between the application and
   external libraries (provided both use this memory manager)
 - Optionally reports memory leaks on program shutdown. (This check can be set
   to be performed only if Delphi is currently running on the machine, so end
   users won't be bothered by the error message.)
 - Supports Delphi 4 (or later), C++ Builder 4 (or later), Kylix 3.

Usage:
 Delphi:
  Place this unit as the very first unit under the "uses" section in your
  project's .dpr file. When sharing memory between an application and a DLL
  (e.g. when passing a long string or dynamic array to a DLL function), both the
  main application and the DLL must be compiled using this memory manager (with
  the required conditional defines set). There are some conditional defines
  (inside FastMM4Options.inc) that may be used to tweak the memory manager. To
  enable support for a user mode address space greater than 2GB you will have to
  use the EditBin* tool to set the LARGE_ADDRESS_AWARE flag in the EXE header.
  This informs Windows x64 or Windows 32-bit (with the /3GB option set) that the
  application supports an address space larger than 2GB (up to 4GB). In Delphi 6
  and later you can also specify this flag through the compiler directive
  {$SetPEFlags $20}
  *The EditBin tool ships with the MS Visual C compiler.
 C++ Builder 6:
  Refer to the instructions inside FastMM4BCB.cpp.

License:
 This work is copyright Professional Software Development / Pierre le Riche. It
 is released under a dual license, and you may choose to use it under either the
 Mozilla Public License 1.1 (MPL 1.1, available from
 http://www.mozilla.org/MPL/MPL-1.1.html) or the GNU Lesser General Public
 License 2.1 (LGPL 2.1, available from
 http://www.opensource.org/licenses/lgpl-license.php). If you find FastMM useful
 or you would like to support further development, a donation would be much
 appreciated. My banking details are:
   Country: South Africa
   Bank: ABSA Bank Ltd
   Branch: Somerset West
   Branch Code: 334-712
   Account Name: PSD (Distribution)
   Account No.: 4041827693
   Swift Code: ABSAZAJJ
 My PayPal account is:
   bof@psd.co.za

Contact Details:
 My contact details are shown below if you would like to get in touch with me.
 If you use this memory manager I would like to hear from you: please e-mail me
 your comments - good and bad.
 Snailmail:
   PO Box 2514
   Somerset West
   7129
   South Africa
 E-mail:
   plr@psd.co.za

Support:
 If you have trouble using FastMM, you are welcome to drop me an e-mail at the
 address above, or you may post your questions in the BASM newsgroup on the
 CodeGear news server (which is where I hang out quite frequently).

Disclaimer:
 FastMM has been tested extensively with both single and multithreaded
 applications on various hardware platforms, but unfortunately I am not in a
 position to make any guarantees. Use it at your own risk.

Acknowledgements (for version 4):
 - Eric Grange for his RecyclerMM on which the earlier versions of FastMM were
   based. RecyclerMM was what inspired me to try and write my own memory
   manager back in early 2004.
 - Primoz Gabrijelcic for helping to track down various bugs.
 - Dennis Christensen for his tireless efforts with the Fastcode project:
   helping to develop, optimize and debug the growing Fastcode library.
 - JiYuan Xie for implementing the leak reporting code for C++ Builder.
 - Pierre Y. for his suggestions regarding the extension of the memory leak
   checking options.
 - Hanspeter Widmer for his suggestion to have an option to display install and
   uninstall debug messages and moving options to a separate file, as well as
   the new usage tracker.
 - Anders Isaksson and Greg for finding and identifying the "DelphiIsRunning"
   bug under Delphi 5.
 - Francois Malan for various suggestions and bug reports.
 - Craig Peterson for helping me identify the cache associativity issues that
   could arise due to medium blocks always being an exact multiple of 256 bytes.
   Also for various other bug reports and enhancement suggestions.
 - Jarek Karciarz, Vladimir Ulchenko (Vavan) and Bob Gonder for their help in
   implementing the BCB support.
 - Ben Taylor for his suggestion to display the object class of all memory
   leaks.
 - Jean Marc Eber and Vincent Mahon (the Memcheck guys) for the call stack
   trace code and also the method used to catch virtual method calls on freed
   objects.
 - Nahan Hyn for the suggestion to be able to enable or disable memory leak
   reporting through a global variable (the "ManualLeakReportingControl"
   option.)
 - Leonel Togniolli for various suggestions with regard to enhancing the bug
   tracking features of FastMM and other helpful advice.
 - Joe Bain and Leonel Togniolli for the workaround to QC#10922 affecting
   compilation under Delphi 2005.
 - Robert Marquardt for the suggestion to make localisation of FastMM easier by
   having all string constants together.
 - Simon Kissel and Fikret Hasovic for their help in implementing Kylix support.
 - Matthias Thoma, Petr Vones, Robert Rossmair and the rest of the JCL team for
   their debug info library used in the debug info support DLL and also the
   code used to check for a valid call site in the "raw" stack trace code.
 - Andreas Hausladen for the suggestion to use an external DLL to enable the
   reporting of debug information.
 - Alexander Tabakov for various good suggestions regarding the debugging
   facilities of FastMM.
 - M. Skloff for some useful suggestions and bringing to my attention some
   compiler warnings.
 - Martin Aignesberger for the code to use madExcept instead of the JCL library
   inside the debug info support DLL.
 - Diederik and Dennis Passmore for the suggestion to be able to register
   expected leaks.
 - Dario Tiraboschi and Mark Gebauer for pointing out the problems that occur
   when range checking and complete boolean evaluation is turned on.
 - Arthur Hoornweg for notifying me of the image base being incorrect for
   borlndmm.dll.
 - Theo Carr-Brion and Hanspeter Widmer for finding the false alarm error
   message "Block Header Has Been Corrupted" bug in FullDebugMode.
 - Danny Heijl for reporting the compiler error in "release" mode.
 - Omar Zelaya for reporting the BCB support regression bug.
 - Dan Miser for various good suggestions, e.g. not logging expected leaks to
   file, enhancements the stack trace and messagebox functionality, etc.
 - Arjen de Ruijter for fixing the bug in GetMemoryLeakType that caused it
   to not properly detect expected leaks registered by class when in
   "FullDebugMode".
 - Aleksander Oven for reporting the installation problem when trying to use
   FastMM in an application together with libraries that all use runtime
   packages.
 - Kristofer Skaug for reporting the bug that sometimes causes the leak report
   to be shown, even when all the leaks have been registered as expected leaks.
   Also for some useful enhancement suggestions.
 - Günther Schoch for the "RequireDebuggerPresenceForLeakReporting" option.
 - Jan Schlüter for the "ForceMMX" option.
 - Hallvard Vassbotn for various good enhancement suggestions.
 - Mark Edington for some good suggestions and bug reports.
 - Paul Ishenin for reporting the compilation error when the NoMessageBoxes
   option is set and also the missing call stack entries issue when "raw" stack
   traces are enabled, as well as for the Russian translation.
 - Cristian Nicola for reporting the compilation bug when the
   CatchUseOfFreedInterfaces option was enabled (4.40).
 - Mathias Rauen (madshi) for improving the support for madExcept in the debug
   info support DLL.
 - Roddy Pratt for the BCB5 support code.
 - Rene Mihula for the Czech translation and the suggestion to have dynamic
   loading of the FullDebugMode DLL as an option.
 - Artur Redzko for the Polish translation.
 - Bart van der Werf for helping me solve the DLL unload order problem when
   using the debug mode borlndmm.dll library, as well as various other
   suggestions.
 - JRG ("The Delphi Guy") for the Spanish translation.
 - Justus Janssen for Delphi 4 support.
 - Vadim Lopushansky and Charles Vinal for reporting the Delphi 5 compiler
   error in version 4.50.
 - Johni Jeferson Capeletto for the Brazilian Portuguese translation.
 - Kurt Fitzner for reporting the BCb6 compiler error in 4.52.
 - Michal Niklas for reporting the Kylix compiler error in 4.54.
 - Thomas Speck and Uwe Queisser for German translations.
 - Zaenal Mutaqin for the Indonesian translation.
 - Carlos Macao for the Portuguese translation.
 - Michael Winter for catching the performance issue when reallocating certain
   block sizes.
 - dzmitry[li] for the Belarussian translation.
 - Marcelo Montenegro for the updated Spanish translation.
 - Jud Cole for finding and reporting the bug which may trigger a read access
   violation when upsizing certain small block sizes together with the
   "UseCustomVariableSizeMoveRoutines" option.
 - Zdenek Vasku for reporting and fixing the memory manager sharing bug
   affecting Windows 95/98/Me.
 - RB Winston for suggesting the improvement to GExperts "backup" support.
 - Thomas Schulz for reporting the bug affecting large address space support
   under FullDebugMode, as well as the recursive call bug when attempting to
   report memory leaks when EnableMemoryLeakReporting is disabled.
 - Luigi Sandon for the Italian translation.
 - Werner Bochtler for various suggestions and bug reports.
 - Markus Beth for suggesting the "NeverSleepOnThreadContention" option.
 - JiYuan Xie for the Simplified Chinese translation.
 - Andrey Shtukaturov for the updated Russian translation, as well as the
   Ukrainian translation.
 - Dimitry Timokhov for finding two elusive bugs in the memory leak class
   detection code.
 - Paulo Moreno for fixing the AllocMem bug in FullDebugMode that prevented
   large blocks from being cleared.
 - Vladimir Bochkarev for the suggestion to remove some unnecessary code if the
   MM sharing mechanism is disabled.
 - Loris Luise for the version constant suggestion.
 - J.W. de Bokx for the MessageBox bugfix.
 - Igor Lindunen for reporting the bug that caused the Align16Bytes option to
   not work in FullDebugMode.
 - Ionut Muntean for the Romanian translation.
 - Florent Ouchet for the French translation.
 - Marcus Mönnig for the ScanMemoryPoolForCorruptions suggestion and the
   suggestion to have the option to scan the memory pool before every
   operation when in FullDebugMode.
 - Francois Piette for bringing under my attention that
   ScanMemoryPoolForCorruption was not thread safe.
 - Michael Rabatscher for reporting some compiler warnings.
 - QianYuan Wang for the Simplified Chinese translation of FastMM4Options.inc.
 - Maurizio Lotauro and Christian-W. Budde for reporting some Delphi 5
   compiler errors.
 - Patrick van Logchem for the DisableLoggingOfMemoryDumps option.
 - Norbert Spiegel for the BCB4 support code.
 - Everyone who have made donations. Thanks!
 - Any other Fastcoders or supporters that I have forgotten, and also everyone
   that helped with the older versions.

Change log:
 Version 1.00 (28 June 2004):
  - First version (called PSDMemoryManager). Based on RecyclerMM (free block
    stack approach) by Eric Grange.
 Version 2.00 (3 November 2004):
  - Complete redesign and rewrite from scratch. Name changed to FastMM to
    reflect this fact. Uses a linked-list approach. Is faster, has less memory
    overhead, and will now catch most bad pointers on FreeMem calls.
 Version 3.00 (1 March 2005):
  - Another rewrite. Reduced the memory overhead by: (a) not having a separate
    memory area for the linked list of free blocks (uses space inside free
    blocks themselves) (b) batch managers are allocated as part of chunks (c)
    block size lookup table size reduced. This should make FastMM more CPU
    cache friendly.
 Version 4.00 (7 June 2005):
  - Yet another rewrite. FastMM4 is in fact three memory managers in one: Small
    blocks (up to a few KB) are managed through the binning model in the same
    way as previous versions, medium blocks (from a few KB up to approximately
    256K) are allocated in a linked-list fashion, and large blocks are grabbed
    directly from the system through VirtualAlloc. This 3-layered design allows
    very fast operation with the most frequently used block sizes (small
    blocks), while also minimizing fragmentation and imparting significant
    overhead savings with blocks larger than a few KB.
 Version 4.01 (8 June 2005):
  - Added the options "RequireDebugInfoForLeakReporting" and
    "RequireIDEPresenceForLeakReporting" as suggested by Pierre Y.
  - Fixed the "DelphiIsRunning" function not working under Delphi 5, and
    consequently no leak checking. (Reported by Anders Isaksson and Greg.)
 Version 4.02 (8 June 2005):
  - Fixed the compilation error when both the "AssumeMultiThreaded" and
    "CheckHeapForCorruption options were set. (Reported by Francois Malan.)
 Version 4.03 (9 June 2005):
  - Added descriptive error messages when FastMM4 cannot be installed because
    another MM has already been installed or memory has already been allocated.
 Version 4.04 (13 June 2005):
  - Added a small fixed offset to the size of medium blocks (previously always
    exact multiples of 256 bytes). This makes performance problems due to CPU
    cache associativity limitations much less likely. (Reported by Craig
    Peterson.)
 Version 4.05 (17 June 2005):
  - Added the Align16Bytes option. Disable this option to drop the 16 byte
    alignment restriction and reduce alignment to 8 bytes for the smallest
    block sizes. Disabling Align16Bytes should lower memory consumption at the
    cost of complicating the use of aligned SSE move instructions. (Suggested
    by Craig Peterson.)
  - Added a support unit for C++ Builder 6 - Add FastMM4BCB.cpp and
    FastMM4.pas to your BCB project to use FastMM instead of the RTL MM. Memory
    leak checking is not supported because (unfortunately) once an MM is
    installed under BCB you cannot uninstall it... at least not without
    modifying the RTL code in exit.c or patching the RTL code runtime. (Thanks
    to Jarek Karciarz, Vladimir Ulchenko and Bob Gonder.)
 Version 4.06 (22 June 2005):
  - Displays the class of all leaked objects on the memory leak report and also
    tries to identify leaked long strings. Previously it only displayed the
    sizes of all leaked blocks. (Suggested by Ben Taylor.)
  - Added support for displaying the sizes of medium and large block memory
    leaks. Previously it only displayed details for small block leaks.
 Version 4.07 (22 June 2005):
  - Fixed the detection of the class of leaked objects not working under
    Windows 98/Me.
 Version 4.08 (27 June 2005):
  - Added a BorlndMM.dpr project to allow you to build a borlndmm.dll that uses
    FastMM4 instead of the default memory manager. You may replace the old
    DLL in the Delphi \Bin directory to make the IDE use this memory manager
    instead.
 Version 4.09 (30 June 2005):
  - Included a patch fix for the bug affecting replacement borlndmm.dll files
    with Delphi 2005 (QC#14007). Compile the patch, close Delphi, and run it
    once to patch your vclide90.bpl. You will now be able to use the
    replacement borlndmm.dll to speed up the Delphi 2005 IDE as well.
 Version 4.10 (7 July 2005):
  - Due to QC#14070 ("Delphi IDE attempts to free memory after the shutdown
    code of borlndmm.dll has been called"), FastMM cannot be uninstalled
    safely when used inside a replacement borlndmm.dll for the IDE. Added a
    conditional define "NeverUninstall" for this purpose.
  - Added the "FullDebugMode" option to pad all blocks with a header and footer
    to help you catch memory overwrite bugs in your applications. All blocks
    returned to freemem are also zeroed out to help catch bugs involving the
    use of previously freed blocks. Also catches attempts at calling virtual
    methods of freed objects provided the block in question has not been reused
    since the object was freed. Displays stack traces on error to aid debugging.
  - Added the "LogErrorsToFile" option to log all errors to a text file in the
    same folder as the application.
  - Added the "ManualLeakReportingControl" option (suggested by Nahan Hyn) to
    enable control over whether the memory leak report should be done or not
    via a global variable.
 Version 4.11 (7 July 2005):
  - Fixed a compilation error under Delphi 2005 due to QC#10922. (Thanks to Joe
    Bain and Leonel Togniolli.)
  - Fixed leaked object classes not displaying in the leak report in
    "FullDebugMode".
  Version 4.12 (8 July 2005):
  - Moved all the string constants to one place to make it easier to do
    translations into other languages. (Thanks to Robert Marquardt.)
  - Added support for Kylix. Some functionality is currently missing: No
    support for detecting the object class on leaks and also no MM sharing.
    (Thanks to Simon Kissel and Fikret Hasovic).
  Version 4.13 (11 July 2005):
  - Added the FastMM_DebugInfo.dll support library to display debug info for
    stack traces.
  - Stack traces for the memory leak report is now logged to the log file in
    "FullDebugMode".
  Version 4.14 (14 July 2005):
  - Fixed string leaks not being detected as such in "FullDebugMode". (Thanks
    to Leonel Togniolli.)
  - Fixed the compilation error in "FullDebugMode" when "LogErrorsToFile" is
    not set. (Thanks to Leonel Togniolli.)
  - Added a "Release" option to allow the grouping of various options and to
    make it easier to make debug and release builds. (Thanks to Alexander
    Tabakov.)
  - Added a "HideMemoryLeakHintMessage" option to not display the hint below
    the memory leak message. (Thanks to Alexander Tabakov.)
  - Changed the fill character for "FullDebugMode" from zero to $80 to be able
    to differentiate between invalid memory accesses using nil pointers to
    invalid memory accesses using fields of freed objects. FastMM tries to
    reserve the 64K block starting at $80800000 at startup to ensure that an
    A/V will occur when this block is accessed. (Thanks to Alexander Tabakov.)
  - Fixed some compiler warnings. (Thanks to M. Skloff)
  - Fixed some display bugs in the memory leak report. (Thanks to Leonel
    Togniolli.)
  - Added a "LogMemoryLeakDetailToFile" option. Some applications leak a lot of
    memory and can make the log file grow very large very quickly.
  - Added the option to use madExcept instead of the JCL Debug library in the
    debug info support DLL. (Thanks to Martin Aignesberger.)
  - Added procedures "GetMemoryManagerState" and "GetMemoryMap" to retrieve
    statistics about the current state of the memory manager and memory pool.
    (A usage tracker form together with a demo is also available.)
  Version 4.15 (14 July 2005):
  - Fixed a false 4GB(!) memory leak reported in some instances.
  Version 4.16 (15 July 2005):
  - Added the "CatchUseOfFreedInterfaces" option to catch the use of interfaces
    of freed objects. This option is not compatible with checking that a freed
    block has not been modified, so enable this option only when hunting an
    invalid interface reference. (Only relevant if "FullDebugMode" is set.)
  - During shutdown FastMM now checks that all free blocks have not been
    modified since being freed. (Only when "FullDebugMode" is set and
    "CatchUseOfFreedInterfaces" is disabled.)
  Version 4.17 (15 July 2005):
 - Added the AddExpectedMemoryLeaks and RemoveExpectedMemoryLeaks procedures to
   register/unregister expected leaks, thus preventing the leak report from
   displaying if only expected leaks occurred. (Thanks to Diederik and Dennis
   Passmore for the suggestion.) (Note: these functions were renamed in later
   versions.)
 - Fixed the "LogMemoryLeakDetailToFile" not logging memory leak detail to file
   as it is supposed to. (Thanks to Leonel Togniolli.)
 Version 4.18 (18 July 2005):
 - Fixed some issues when range checking or complete boolean evaluation is
   switched on. (Thanks to Dario Tiraboschi and Mark Gebauer.)
 - Added the "OutputInstallUninstallDebugString" option to display a message when
   FastMM is installed or uninstalled. (Thanks to Hanspeter Widmer.)
 - Moved the options to a separate include file. (Thanks to Hanspeter Widmer.)
 - Moved message strings to a separate file for easy translation.
 Version 4.19 (19 July 2005):
 - Fixed Kylix support that was broken in 4.14.
 Version 4.20 (20 July 2005):
 - Fixed a false memory overwrite report at shutdown in "FullDebugMode". If you
   consistently got a "Block Header Has Been Corrupted" error message during
   shutdown at address $xxxx0070 then it was probably a false alarm. (Thanks to
   Theo Carr-Brion and Hanspeter Widmer.}
 Version 4.21 (27 July 2005):
 - Minor change to the block header flags to make it possible to immediately
   tell whether a medium block is being used as a small block pool or not.
   (Simplifies the leak checking and status reporting code.)
 - Expanded the functionality around the management of expected memory leaks.
 - Added the "ClearLogFileOnStartup" option. Deletes the log file during
   initialization. (Thanks to M. Skloff.)
 - Changed "OutputInstallUninstallDebugString" to use OutputDebugString instead
   of MessageBox. (Thanks to Hanspeter Widmer.)
 Version 4.22 (1 August 2005):
 - Added a FastAllocMem function that avoids an unnecessary FillChar call with
   large blocks.
 - Changed large block resizing behavior to be a bit more conservative. Large
   blocks will be downsized if the new size is less than half of the old size
   (the threshold was a quarter previously).
 Version 4.23 (6 August 2005):
 - Fixed BCB6 support (Thanks to Omar Zelaya).
 - Renamed "OutputInstallUninstallDebugString" to "UseOutputDebugString", and
   added debug string output on memory leak or error detection.
 Version 4.24 (11 August 2005):
 - Added the "NoMessageBoxes" option to suppress the display of message boxes,
   which is useful for services that should not be interrupted. (Thanks to Dan
   Miser).
 - Changed the stack trace code to return the line number of the caller and not
   the line number of the return address. (Thanks to Dan Miser).
 Version 4.25 (15 August 2005):
 - Fixed GetMemoryLeakType not detecting expected leaks registered by class
   when in "FullDebugMode". (Thanks to Arjen de Ruijter).
 Version 4.26 (18 August 2005):
 - Added a "UseRuntimePackages" option that allows FastMM to be used in a main
   application together with DLLs that all use runtime packages. (Thanks to
   Aleksander Oven.)
 Version 4.27 (24 August 2005):
 - Fixed a bug that sometimes caused the leak report to be shown even though all
   leaks were registered as expected leaks. (Thanks to Kristofer Skaug.)
 Version 4.29 (30 September 2005):
 - Added the "RequireDebuggerPresenceForLeakReporting" option to only display
   the leak report if the application is run inside the IDE. (Thanks to Günther
   Schoch.)
 - Added the "ForceMMX" option, which when disabled will check the CPU for
   MMX compatibility before using MMX. (Thanks to Jan Schlüter.)
 - Added the module name to the title of error dialogs to more easily identify
   which application caused the error. (Thanks to Kristofer Skaug.)
 - Added an ASCII dump to the "FullDebugMode" memory dumps. (Thanks to Hallvard
   Vassbotn.)
 - Added the option "HideExpectedLeaksRegisteredByPointer" to suppress the
   display and logging of expected memory leaks that were registered by pointer.
   (Thanks to Dan Miser.) Leaks registered by size or class are often ambiguous,
   so these expected leaks are always logged to file (in FullDebugMode) and are
   never hidden from the leak display (only displayed if there is at least one
   unexpected leak).
 - Added a procedure "GetRegisteredMemoryLeaks" to return a list of all
   registered memory leaks. (Thanks to Dan Miser.)
 - Added the "RawStackTraces" option to perform "raw" stack traces, negating
   the need for stack frames. This will usually result in more complete stack
   traces in FullDebugMode error reports, but it is significantly slower.
   (Thanks to Hallvard Vassbotn, Dan Miser and the JCL team.)
 Version 4.31 (2 October 2005):
 - Fixed the crash bug when both "RawStackTraces" and "FullDebugMode" were
   enabled. (Thanks to Dan Miser and Mark Edington.)
 Version 4.33 (6 October 2005):
 - Added a header corruption check to all memory blocks that are identified as
   leaks in FullDebugMode. This allows better differentiation between memory
   pool corruption bugs and actual memory leaks.
 - Fixed the stack overflow bug when using "RawStackTraces".
 Version 4.35 (6 October 2005):
 - Fixed a compilation error when the "NoMessageBoxes" option is set. (Thanks
   to Paul Ishenin.)
 - Before performing a "raw" stack trace, FastMM now checks whether exception
   handling is in place. If exception handling is not in place FastMM falls
   back to stack frame tracing. (Exception handling is required to handle the
   possible A/Vs when reading invalid call addresses. Exception handling is
   usually always available except when SysUtils hasn't been initialized yet or
   after SysUtils has been finalized.)
 Version 4.37 (8 October 2005):
 - Fixed the missing call stack trace entry issue when dynamically loading DLLs.
   (Thanks to Paul Ishenin.)
 Version 4.39 (12 October 2005):
 - Restored the performance with "RawStackTraces" enabled back to the level it
   was in 4.35.
 - Fixed the stack overflow error when using "RawStackTraces" that I thought I
   had fixed in 4.31, but unfortunately didn't. (Thanks to Craig Peterson.)
 Version 4.40 (13 October 2005):
 - Improved "RawStackTraces" to have less incorrect extra entries. (Thanks to
   Craig Peterson.)
 - Added the Russian (by Paul Ishenin) and Afrikaans translations of
   FastMM4Messages.pas.
 Version 4.42 (13 October 2005):
 - Fixed the compilation error when "CatchUseOfFreedInterfaces" is enabled.
   (Thanks to Cristian Nicola.)
 Version 4.44 (25 October 2005):
 - Implemented a FastGetHeapStatus function in analogy with GetHeapStatus.
   (Suggested by Cristian Nicola.)
 - Shifted more of the stack trace code over to the support dll to allow third
   party vendors to make available their own stack tracing and stack trace
   logging facilities.
 - Mathias Rauen (madshi) improved the support for madExcept in the debug info
   support DLL. Thanks!
 - Added support for BCB5. (Thanks to Roddy Pratt.)
 - Added the Czech translation by Rene Mihula.
 - Added the "DetectMMOperationsAfterUninstall" option. This will catch
   attempts to use the MM after FastMM has been uninstalled, and is useful for
   debugging.
 Version 4.46 (26 October 2005):
 - Renamed FastMM_DebugInfo.dll to FastMM_FullDebugMode.dll and made the
   dependency on this library a static one. This solves a DLL unload order
   problem when using FullDebugMode together with the replacement
   borlndmm.dll. (Thanks to Bart van der Werf.)
 - Added the Polish translation by Artur Redzko.
 Version 4.48 (10 November 2005):
 - Fixed class detection for objects leaked in dynamically loaded DLLs that
   were relocated.
 - Fabio Dell'Aria implemented support for EurekaLog in the FullDebugMode
   support DLL. Thanks!
 - Added the Spanish translation by JRG ("The Delphi Guy").
 Version 4.49 (10 November 2005):
 - Implemented support for installing replacement AllocMem and leak
   registration mechanisms for Delphi/BCB versions that support it.
 - Added support for Delphi 4. (Thanks to Justus Janssen.)
 Version 4.50 (5 December 2005):
 - Renamed the ReportMemoryLeaks global variable to ReportMemoryLeaksOnShutdown
   to be more consistent with the Delphi 2006 memory manager.
 - Improved the handling of large blocks. Large blocks can now consist of
   several consecutive segments allocated through VirtualAlloc. This
   significantly improves speed when frequently resizing large blocks, since
   these blocks can now often be upsized in-place.
 Version 4.52 (7 December 2005):
 - Fixed the compilation error with Delphi 5. (Thanks to Vadim Lopushansky and
   Charles Vinal for reporting the error.)
 Version 4.54 (15 December 2005):
 - Added the Brazilian Portuguese translation by Johni Jeferson Capeletto.
 - Fixed the compilation error with BCB6. (Thanks to Kurt Fitzner.)
 Version 4.56 (20 December 2005):
 - Fixed the Kylix compilation problem. (Thanks to Michal Niklas.)
 Version 4.58 (1 February 2006):
 - Added the German translations by Thomas Speck and Uwe Queisser.
 - Added the Indonesian translation by Zaenal Mutaqin.
 - Added the Portuguese translation by Carlos Macao.
 Version 4.60 (21 February 2006):
 - Fixed a performance issue due to an unnecessary block move operation when
   allocating a block in the range 1261-1372 bytes and then reallocating it in
   the range 1373-1429 bytes twice. (Thanks to Michael Winter.)
 - Added the Belarussian translation by dzmitry[li].
 - Added the updated Spanish translation by Marcelo Montenegro.
 - Added a new option "EnableSharingWithDefaultMM". This option allows FastMM
   to be shared with the default MM of Delphi 2006. It is on by default, but
   MM sharing has to be enabled otherwise it has no effect (refer to the
   documentation for the "ShareMM" and "AttemptToUseSharedMM" options).
 Version 4.62 (22 February 2006):
 - Fixed a possible read access violation in the MoveX16L4 routine when the
   UseCustomVariableSizeMoveRoutines option is enabled. (Thanks to Jud Cole for
   some great detective work in finding this bug.)
 - Improved the downsizing behaviour of medium blocks to better correlate with
   the reallocation behaviour of small blocks. This change reduces the number
   of transitions between small and medium block types when reallocating blocks
   in the 0.7K to 2.6K range. It cuts down on the number of memory move
   operations and improves performance.
 Version 4.64 (31 March 2006):
 - Added the following functions for use with FullDebugMode (and added the
   exports to the replacement BorlndMM.dll): SetMMLogFileName,
   GetCurrentAllocationGroup, PushAllocationGroup, PopAllocationGroup and
   LogAllocatedBlocksToFile. The purpose of these functions are to allow you to
   identify and log related memory leaks while your application is still
   running.
 - Fixed a bug in the memory manager sharing mechanism affecting Windows
   95/98/ME. (Thanks to Zdenek Vasku.)
 Version 4.66 (9 May 2006):
 - Added a hint comment in this file so that FastMM4Messages.pas will also be
   backed up by GExperts. (Thanks to RB Winston.)
 - Fixed a bug affecting large address space (> 2GB) support under
   FullDebugMode. (Thanks to Thomas Schulz.)
 Version 4.68 (3 July 2006):
 - Added the Italian translation by Luigi Sandon.
 - If FastMM is used inside a DLL it will now use the name of the DLL as base
   for the log file name. (Previously it always used the name of the main
   application executable file.)
 - Fixed a rare A/V when both the FullDebugMode and RawStackTraces options were
   enabled. (Thanks to Primoz Gabrijelcic.)
 - Added the "NeverSleepOnThreadContention" option. This option may improve
   performance if the ratio of the the number of active threads to the number
   of CPU cores is low (typically < 2). This option is only useful for 4+ CPU
   systems, it almost always hurts performance on single and dual CPU systems.
   (Thanks to Werner Bochtler and Markus Beth.)
 Version 4.70 (4 August 2006):
  - Added the Simplified Chinese translation by JiYuan Xie.
  - Added the updated Russian as well as the Ukrainian translation by Andrey
    Shtukaturov.
  - Fixed two bugs in the leak class detection code that would sometimes fail
    to detect the class of leaked objects and strings, and report them as
    'unknown'. (Thanks to Dimitry Timokhov)
  Version 4.72 (24 September 2006):
  - Fixed a bug that caused AllocMem to not clear blocks > 256K in
    FullDebugMode. (Thanks to Paulo Moreno.)
  Version 4.74 (9 November 2006):
  - Fixed a bug in the segmented large block functionality that could lead to
    an application freeze when upsizing blocks greater than 256K in a
    multithreaded application (one of those "what the heck was I thinking?"
    type bugs).
  Version 4.76 (12 January 2007):
  - Changed the RawStackTraces code in the FullDebugMode DLL
    to prevent it from modifying the Windows "GetLastError" error code.
    (Thanks to Primoz Gabrijelcic.)
  - Fixed a threading issue when the "CheckHeapForCorruption" option was
    enabled, but the "FullDebugMode" option was disabled. (Thanks to Primoz
    Gabrijelcic.)
  - Removed some unnecessary startup code when the MM sharing mechanism is
    disabled. (Thanks to Vladimir Bochkarev.)
  - In FullDebugMode leaked blocks would sometimes be reported as belonging to
    the class "TFreedObject" if they were allocated but never used. Such blocks
    will now be reported as "unknown". (Thanks to Francois Malan.)
  - In recent versions the replacement borlndmm.dll created a log file (when
    enabled) that used the "borlndmm" prefix instead of the application name.
    It is now fixed to use the application name, however if FastMM is used
    inside other DLLs the name of those DLLs will be used. (Thanks to Bart van
    der Werf.)
  - Added a "FastMMVersion" constant. (Suggested by Loris Luise.)
  - Fixed an issue with error message boxes not displaying under certain
    configurations. (Thanks to J.W. de Bokx.)
  - FastMM will now display only one error message at a time. If many errors
    occur in quick succession, only the first error will be shown (but all will
    be logged). This avoids a stack overflow with badly misbehaved programs.
    (Thanks to Bart van der Werf.)
  - Added a LoadDebugDLLDynamically option to be used in conjunction with
    FullDebugMode. In this mode FastMM_FullDebugMode.dll is loaded dynamically.
    If the DLL cannot be found, stack traces will not be available. (Thanks to
    Rene Mihula.)
  Version 4.78 (1 March 2007):
  - The MB_DEFAULT_DESKTOP_ONLY constant that is used when displaying messages
    boxes since 4.76 is not defined under Kylix, and the source would thus not
    compile. That constant is now defined. (Thanks to Werner Bochtler.)
  - Moved the medium block locking code that was duplicated in several places
    to a subroutine to reduce code size. (Thanks to Hallvard Vassbotn.)
  - Fixed a bug in the leak registration code that sometimes caused registered
    leaks to be reported erroneously. (Thanks to Primoz Gabrijelcic.)
  - Added the NoDebugInfo option (on by default) that suppresses the generation
    of debug info for the FastMM4.pas unit. This will prevent the integrated
    debugger from stepping into the memory manager. (Thanks to Primoz
    Gabrijelcic.)
  - Increased the default stack trace depth in FullDebugMode from 9 to 10 to
    ensure that the Align16Bytes setting works in FullDebugMode. (Thanks to
    Igor Lindunen.)
  - Updated the Czech translation. (Thanks to Rene Mihula.)
  Version 4.84 (7 July 2008):
  - Added the Romanian translation. (Thanks to Ionut Muntean.)
  - Optimized the GetMemoryMap procedure to improve speed.
  - Added the GetMemoryManagerUsageSummary function that returns a summary of
    the GetMemoryManagerState call. (Thanks to Hallvard Vassbotn.)
  - Added the French translation. (Thanks to Florent Ouchet.)
  - Added the "AlwaysAllocateTopDown" FullDebugMode option to help with
    catching bad pointer arithmetic code in an address space > 2GB. This option
    is enabled by default.
  - Added the "InstallOnlyIfRunningInIDE" option. Enable this option to
    only install FastMM as the memory manager when the application is run
    inside the Delphi IDE. This is useful when you want to deploy the same EXE
    that you use for testing, but only want the debugging features active on
    development machines. When this option is enabled and the application is
    not being run inside the IDE, then the default Delphi memory manager will
    be used (which, since Delphi 2006, is FastMM without FullDebugMode.) This
    option is off by default.
  - Added the "FullDebugModeInIDE" option. This is a convenient shorthand for
    enabling FullDebugMode, InstallOnlyIfRunningInIDE and
    LoadDebugDLLDynamically. This causes FastMM to be used in FullDebugMode
    when the application is being debugged on development machines, and the
    default memory manager when the same executable is deployed. This allows
    the debugging and deployment of an application without having to compile
    separate executables. This option is off by default.
  - Added a ScanMemoryPoolForCorruptions procedure that checks the entire
    memory pool for corruptions and raises an exception if one is found. It can
    be called at any time, but is only available in FullDebugMode. (Thanks to
    Marcus Mönnig.)
  - Added a global variable "FullDebugModeScanMemoryPoolBeforeEveryOperation".
    When this variable is set to true and FullDebugMode is enabled, then the
    entire memory pool is checked for consistency before every GetMem, FreeMem
    and ReallocMem operation. An "Out of Memory" error is raised if a
    corruption is found (and this variable is set to false to prevent recursive
    errors). This obviously incurs a massive performance hit, so enable it only
    when hunting for elusive memory corruption bugs. (Thanks to Marcus Mönnig.)
  - Fixed a bug in AllocMem that caused the FPU stack to be shifted by one
    position.
  - Changed the default for option "EnableMMX" to false, since using MMX may
    cause unexpected behaviour in code that passes parameters on the FPU stack
    (like some "compiler magic" routines, e.g. VarFromReal).
  - Removed the "EnableSharingWithDefaultMM" option. This is now the default
    behaviour and cannot be disabled. (FastMM will always try to share memory
    managers between itself and the default memory manager when memory manager
    sharing is enabled.)
  - Introduced a new memory manager sharing mechanism based on memory mapped
    files. This solves compatibility issues with console and service
    applications. This sharing mechanism currently runs in parallel with the
    old mechanism, but the old mechanism can be disabled by undefining
    "EnableBackwardCompatibleMMSharing" in FastMM4Options.inc.
  - Fixed the recursive call error when the EnableMemoryLeakReporting option
    is disabled and an attempt is made to register a memory leak under Delphi
    2006 or later. (Thanks to Thomas Schulz.)
  - Added a global variable "SuppressMessageBoxes" to enable or disable
    messageboxes at runtime. (Thanks to Craig Peterson.)
  - Added the leak reporting code for C++ Builder, as well as various other
    C++ Builder bits written by JiYuan Xie. (Thank you!)
  - Added the new Usage Tracker written by Hanspeter Widmer. (Thank you!)
  Version 4.86 (31 July 2008):
  - Tweaked the string detection algorithm somewhat to be less strict, and
    allow non-class leaks to be more often categorized as strings.
  - Fixed a compilation error under Delphi 5.
  - Made LogAllocatedBlocksToFile and ScanMemoryPoolForCorruptions thread
    safe. (Thanks to Francois Piette.)
  Version 4.88 (13 August 2008):
  - Fixed compiler warnings in NoOpRegisterExpectedMemoryLeak and
    NoOpUnRegisterExpectedMemoryLeak. (Thanks to Michael Rabatscher.)
  - Added the Simplified Chinese translation of FastMM4Options.inc by
    QianYuan Wang. (Thank you!)
  - Included the updated C++ Builder files with support for BCB6 without
    update 4 applied. (Submitted by JiYuan Xie. Thanks!)
  - Fixed a compilation error under Delphi 5.
  - Made LogAllocatedBlocksToFile and ScanMemoryPoolForCorruptions thread
    safe - for real this time. (Thanks to Francois Piette.)
  Version 4.90 (9 September 2008):
  - Added logging of the thread ID when capturing and displaying stack
    traces. (Suggested by Allen Bauer and Mark Edington.)
  - Fixed a Delphi 5 compiler error under FullDebugMode. (Thanks to Maurizio
    Lotauro and Christian-W. Budde.)
  - Changed a default setting in FastMM4Options.inc: RawStackTraces is now
    off by default due to the high number of support requests I receive with
    regards to the false postives it may cause. I recommend compiling debug
    builds of applications with the "Stack Frames" option enabled.
  - Fixed a compilation error under Kylix. (Thanks to Werner Bochtler.)
  - Official support for Delphi 2009.
  Version 4.92 (25 November 2008):
  - Added the DisableLoggingOfMemoryDumps option under FullDebugMode. When
    this option is set, memory dumps will not be logged for memory leaks or
    errors. (Thanks to Patrick van Logchem.)
  - Exposed the class and string type detection code in the interface section
    for use in application code (if required). (Requested by Patrick van
    Logchem.)
  - Fixed a bug in SetMMLogFileName that could cause the log file name to be
    set incorrectly.
  - Added BCB4 support. (Thanks to Norbert Spiegel.)
  - Included the updated Czech translation by Rene Mihula.
  - When FastMM raises an error due to a freed block being modified, it now
    logs detail about which bytes in the block were modified.

*)

interface

{$undef AssumeMultiThreaded}
{$define Align16Bytes}
{$define UseCustomFixedSizeMoveRoutines}
{.$define EnableMMX}
{.$define AlwaysAllocateTopDown}
{.$define NeverSleepOnThreadContention}

{$RANGECHECKS OFF}
{$BOOLEVAL OFF}
{$OVERFLOWCHECKS OFF}
{$OPTIMIZATION ON}
{$TYPEDADDRESS OFF}

{Enable heap checking and leak reporting in full debug mode}
{$undef AlwaysAllocateTopDown}

{$ifdef UseRuntimePackages}
  {$define AssumeMultiThreaded}
{$endif}

{Delphi versions}
{$ifndef BCB}
  {$ifdef ver120}
    {$define Delphi4or5}
  {$endif}
  {$ifdef ver130}
    {$define Delphi4or5}
  {$endif}
  {$ifdef ver140}
    {$define Delphi6}
  {$endif}
  {$ifdef ver150}
    {$define Delphi7}
  {$endif}
  {$ifdef ver170}
    {$define Delphi2005}
  {$endif}
{$else}
  {for BCB4, use the Delphi 5 codepath}
  {$ifdef ver120}
    {$define Delphi4or5}
    {$define BCB4}
  {$endif}
  {for BCB5, use the Delphi 5 codepath}
  {$ifdef ver130}
    {$define Delphi4or5}
  {$endif}
{$endif}
{$ifdef ver180}
  {$define BDS2006}
{$endif}

{$ifndef Delphi4or5}
  {$ifndef BCB}
    {$define Delphi6AndUp}
  {$endif}
  {$ifndef Delphi6}
    {$define BCB6OrDelphi7AndUp}
    {$ifndef BCB}
      {$define Delphi7AndUp}
    {$endif}
    {$ifndef BCB}
      {$ifndef Delphi7}
        {$ifndef Delphi2005}
          {$define BDS2006AndUp}
        {$endif}
      {$endif}
    {$endif}
  {$endif}
{$endif}

{$ifdef Delphi6AndUp}
  {$WARN SYMBOL_PLATFORM OFF}
  {$WARN SYMBOL_DEPRECATED OFF}
{$endif}

{$ifndef EnableMMX}
  {$undef ForceMMX}
{$endif}

{Should debug info be disabled?}
{$ifdef NoDebugInfo}
  {$DEBUGINFO OFF}
{$endif}

{-------------------------Public procedures----------------------------}
{The standard memory manager functions}
function FastGetMem(ASize: Integer): Pointer;
function FastFreeMem(APointer: Pointer): Integer;
function FastReallocMem(APointer: Pointer; ANewSize: Integer): Pointer;
function FastAllocMem(ASize: Cardinal): Pointer;

{Releases all allocated memory (use with extreme care)}
procedure FreeAllMemory;

implementation

uses
  Windows;

{-------------------------Public constants-----------------------------}
const
  {The current version of FastMM}
//  FastMMVersion = '4.92';
  {The number of small block types}
{$ifdef Align16Bytes}
  NumSmallBlockTypes = 46;
{$else}
  NumSmallBlockTypes = 55;
{$endif}

{Fixed size move procedures}
procedure Move12(const ASource; var ADest; ACount: Integer); forward;
procedure Move20(const ASource; var ADest; ACount: Integer); forward;
procedure Move28(const ASource; var ADest; ACount: Integer); forward;
procedure Move36(const ASource; var ADest; ACount: Integer); forward;
procedure Move44(const ASource; var ADest; ACount: Integer); forward;
procedure Move52(const ASource; var ADest; ACount: Integer); forward;
procedure Move60(const ASource; var ADest; ACount: Integer); forward;
procedure Move68(const ASource; var ADest; ACount: Integer); forward;

{-------------------------Private constants----------------------------}
const
  {The size of a medium block pool. This is allocated through VirtualAlloc and
   is used to serve medium blocks. The size must be a multiple of 16 and at
   least 4 bytes less than a multiple of 4K (the page size) to prevent a
   possible read access violation when reading past the end of a memory block
   in the optimized move routine (MoveX16L4). In Full Debug mode we leave a
   trailing 256 bytes to be able to safely do a memory dump.}
  MediumBlockPoolSize = 20 * 64 * 1024 - 16;
  {The granularity of small blocks}
{$ifdef Align16Bytes}
  SmallBlockGranularity = 16;
{$else}
  SmallBlockGranularity = 8;
{$endif}
  {The granularity of medium blocks. Newly allocated medium blocks are
   a multiple of this size plus MediumBlockSizeOffset, to avoid cache line
   conflicts}
  MediumBlockGranularity = 256;
  MediumBlockSizeOffset = 48;
  {The granularity of large blocks}
  LargeBlockGranularity = 65536;
  {The maximum size of a small block. Blocks Larger than this are either
   medium or large blocks.}
  MaximumSmallBlockSize = 2608;
  {The smallest medium block size. (Medium blocks are rounded up to the nearest
   multiple of MediumBlockGranularity plus MediumBlockSizeOffset)}
  MinimumMediumBlockSize = 11 * 256 + MediumBlockSizeOffset;
  {The number of bins reserved for medium blocks}
  MediumBlockBinsPerGroup = 32;
  MediumBlockBinGroupCount = 32;
  MediumBlockBinCount = MediumBlockBinGroupCount * MediumBlockBinsPerGroup;
  {The maximum size allocatable through medium blocks. Blocks larger than this
   fall through to VirtualAlloc ( = large blocks).}
  MaximumMediumBlockSize = MinimumMediumBlockSize + (MediumBlockBinCount - 1) * MediumBlockGranularity;
  {The target number of small blocks per pool. The actual number of blocks per
   pool may be much greater for very small sizes and less for larger sizes. The
   cost of allocating the small block pool is amortized across all the small
   blocks in the pool, however the blocks may not all end up being used so they
   may be lying idle.}
  TargetSmallBlocksPerPool = 48;
  {The minimum number of small blocks per pool. Any available medium block must
   have space for roughly this many small blocks (or more) to be useable as a
   small block pool.}
  MinimumSmallBlocksPerPool = 12;
  {The lower and upper limits for the optimal small block pool size}
  OptimalSmallBlockPoolSizeLowerLimit = 29 * 1024 - MediumBlockGranularity + MediumBlockSizeOffset;
  OptimalSmallBlockPoolSizeUpperLimit = 64 * 1024 - MediumBlockGranularity + MediumBlockSizeOffset;
  {The maximum small block pool size. If a free block is this size or larger
   then it will be split.}
  MaximumSmallBlockPoolSize = OptimalSmallBlockPoolSizeUpperLimit + MinimumMediumBlockSize;
  {-------------Block type flags--------------}
  {The lower 3 bits in the dword header of small blocks (4 bits in medium and
   large blocks) are used as flags to indicate the state of the block}
  {Set if the block is not in use}
  IsFreeBlockFlag = 1;
  {Set if this is a medium block}
  IsMediumBlockFlag = 2;
  {Set if it is a medium block being used as a small block pool. Only valid if
   IsMediumBlockFlag is set.}
  IsSmallBlockPoolInUseFlag = 4;
  {Set if it is a large block. Only valid if IsMediumBlockFlag is not set.}
  IsLargeBlockFlag = 4;
  {Is the medium block preceding this block available? (Only used by medium
   blocks)}
  PreviousMediumBlockIsFreeFlag = 8;
  {Is this large block segmented? I.e. is it actually built up from more than
   one chunk allocated through VirtualAlloc? (Only used by large blocks.)}
  LargeBlockIsSegmented = 8;
  {The flags masks for small blocks}
  DropSmallFlagsMask = -8;
  ExtractSmallFlagsMask = 7;
  {The flags masks for medium and large blocks}
  DropMediumAndLargeFlagsMask = -16;
  ExtractMediumAndLargeFlagsMask = 15;
  {-------------Block resizing constants---------------}
  SmallBlockDownsizeCheckAdder = 64;
  SmallBlockUpsizeAdder = 32;
  {When a medium block is reallocated to a size smaller than this, then it must
   be reallocated to a small block and the data moved. If not, then it is
   shrunk in place down to MinimumMediumBlockSize. Currently the limit is set
   at a quarter of the minimum medium block size.}
  MediumInPlaceDownsizeLimit = MinimumMediumBlockSize div 4;
  {-------------Other constants---------------}
{$ifndef NeverSleepOnThreadContention}
  {Sleep time when a resource (small/medium/large block manager) is in use}
  InitialSleepTime = 0;
  {Used when the resource is still in use after the first sleep}
  AdditionalSleepTime = 10;
{$endif}
  {Hexadecimal characters}
  HexTable: array[0..15] of AnsiChar = ('0', '1', '2', '3', '4', '5', '6', '7',
    '8', '9', 'A', 'B', 'C', 'D', 'E', 'F');
  {Copyright message - not used anywhere in the code}
  Copyright: AnsiString = 'FastMM4 (c) 2004 - 2008 Pierre le Riche / Professional Software Development';

{-------------------------Private types----------------------------}
type

{$ifdef Delphi4or5}
  {Delphi 5 Compatibility}
  PCardinal = ^Cardinal;
  PPointer = ^Pointer;
{$endif}
{$ifdef BCB4}
  {Define some additional types for BCB4}
  PInteger  = ^Integer;
{$endif}

  {Move procedure type}
  TMoveProc = procedure(const ASource; var ADest; ACount: Integer);

  {Registers structure (for GetCPUID)}
  TRegisters = record
    RegEAX, RegEBX, RegECX, RegEDX: Integer;
  end;

  {---------------Small block structures-------------}

  {Pointer to the header of a small block pool}
  PSmallBlockPoolHeader = ^TSmallBlockPoolHeader;

  {Small block type (Size = 32)}
  PSmallBlockType = ^TSmallBlockType;
  TSmallBlockType = packed record
    {True = Block type is locked}
    BlockTypeLocked: Boolean;
    {Bitmap indicating which of the first 8 medium block groups contain blocks
     of a suitable size for a block pool.}
    AllowedGroupsForBlockPoolBitmap: byte;
    {The block size for this block type}
    BlockSize: Word;
    {The first partially free pool for the given small block type (offset = +4
     for typecast compatibility with TSmallBlockPoolHeader). This is a circular
     buffer.}
    NextPartiallyFreePool: PSmallBlockPoolHeader;
    {The offset of the last block that was served sequentially (0ffset = +8 to
     to be at the same offset as the "FirstFreeBlock" of TSmallBlockPoolHeader}
    NextSequentialFeedBlockAddress: Pointer;
    {The last block that can be served sequentially. Offset is at +12 to be
     at the same address as the "BlocksInUse" field of TSmallBlockPoolHeader}
    MaxSequentialFeedBlockAddress: Pointer;
    {The pool that is current being used to serve blocks in sequential order}
    CurrentSequentialFeedPool: PSmallBlockPoolHeader;
    {The previous partially free pool for the small block type (offset = +20
     for typecast compatibility with TSmallBlockPoolHeader)}
    PreviousPartiallyFreePool: PSmallBlockPoolHeader;
    {The minimum and optimal size of a small block pool for this block type}
    MinimumBlockPoolSize: Word;
    OptimalBlockPoolSize: Word;
{$ifdef UseCustomFixedSizeMoveRoutines}
    {The fixed size move procedure used to move data for this block size when
     it is upsized. When a block is downsized (which usually does not occur
     that often) the variable size move routine is used.}
    UpsizeMoveProcedure: TMoveProc;
{$else}
    Reserved1: Cardinal;
{$endif}
  end;

  {Small block pool (Size = 32 bytes)}
  TSmallBlockPoolHeader = packed record
    {BlockType}
    BlockType: PSmallBlockType;
    {The next pool that has free blocks of this size. Must be at offset +4
     to be typecast compatible with TSmallBlockType}
    NextPartiallyFreePool: PSmallBlockPoolHeader;
    {Pointer to the first free block inside this pool. Must be at offset + 8
     to be at the same offset as "NextSequentialFeedBlockAddress" of
     TSmallBlockType}
    FirstFreeBlock: Pointer;
    {The number of blocks allocated in this pool. Must be at offset + 12
     to be at the same offset as "MaxSequentialFeedBlockAddress" of
     TSmallBlockType}
    BlocksInUse: Cardinal;
    {Reserved}
    Reserved1: Cardinal;
    {The previous pool that has free blocks of this size. Must be at offset +20
     to be compatible with TSmallBlockType}
    PreviousPartiallyFreePool: PSmallBlockPoolHeader;
    {Reserved}
    Reserved2: Cardinal;
    {The pool pointer and flags of the first block}
    FirstBlockPoolPointerAndFlags: Cardinal;
  end;

  {Small block layout:
   Offset: -4 = Flags + address of the small block pool
   Offset: BlockSize - 4 = Flags + address of the small block pool for the next small block
  }

  {----------------------Medium block structures----------------------}

  {The medium block pool from which medium blocks are drawn}
  PMediumBlockPoolHeader = ^TMediumBlockPoolHeader;
  TMediumBlockPoolHeader = packed record
    {Points to the previous and next medium block pools. This circular linked
     list is used to track memory leaks on program shutdown.}
    PreviousMediumBlockPoolHeader: PMediumBlockPoolHeader;
    NextMediumBlockPoolHeader: PMediumBlockPoolHeader;
    {Unused dword}
    Reserved: Cardinal;
    {The block size and flags of the first medium block in the block pool}
    FirstMediumBlockSizeAndFlags: Cardinal;
  end;

  {Medium block layout:
   Offset: -8 = Previous Block Size (only if the previous block is free)
   Offset: -4 = This block size and flags
   Offset: 0 = User data / Previous Free Block (if this block is free)
   Offset: 4 = Next Free Block (if this block is free)
   Offset: BlockSize - 8 = Size of this block (if this block is free)
   Offset: BlockSize - 4 = Size of the next block and flags

  {A medium block that is unused}
  PMediumFreeBlock = ^TMediumFreeBlock;
  TMediumFreeBlock = packed record
    PreviousFreeBlock: PMediumFreeBlock;
    NextFreeBlock: PMediumFreeBlock;
  end;

  {-------------------------Large block structures--------------------}

  {Large block header record (size = 16)}
  PLargeBlockHeader = ^TLargeBlockHeader;
  TLargeBlockHeader = packed record
    {Points to the previous and next large blocks. This circular linked
     list is used to track memory leaks on program shutdown.}
    PreviousLargeBlockHeader: PLargeBlockHeader;
    NextLargeBlockHeader: PLargeBlockHeader;
    {The user allocated size of the Large block}
    UserAllocatedSize: Cardinal;
    {The size of this block plus the flags}
    BlockSizeAndFlags: Cardinal;
  end;

{-------------------------Private constants----------------------------}
const
{$ifndef BCB6OrDelphi7AndUp}
  reOutOfMemory = 1;
  reInvalidPtr = 2;
{$endif}
  {The size of the block header in front of small and medium blocks}
  BlockHeaderSize = 4;
  {The size of a small block pool header}
  SmallBlockPoolHeaderSize = SizeOf(TSmallBlockPoolHeader);
  {The size of a medium block pool header}
  MediumBlockPoolHeaderSize = SizeOf(TMediumBlockPoolHeader);
  {The size of the header in front of Large blocks}
  LargeBlockHeaderSize = SizeOf(TLargeBlockHeader);

{-------------------------Private variables----------------------------}
var
  {-----------------Small block management------------------}
  {The small block types. Sizes include the leading 4-byte header. Sizes are
   picked to limit maximum wastage to about 10% or 256 bytes (whichever is
   less) where possible.}
  SmallBlockTypes: packed array[0..NumSmallBlockTypes - 1] of TSmallBlockType =(
    {8/16 byte jumps}
    (BlockSize: 16 {$ifdef UseCustomFixedSizeMoveRoutines}; UpsizeMoveProcedure: Move12{$endif}),
{$ifndef Align16Bytes}
    (BlockSize: 24 {$ifdef UseCustomFixedSizeMoveRoutines}; UpsizeMoveProcedure: Move20{$endif}),
{$endif}
    (BlockSize: 32 {$ifdef UseCustomFixedSizeMoveRoutines}; UpsizeMoveProcedure: Move28{$endif}),
{$ifndef Align16Bytes}
    (BlockSize: 40 {$ifdef UseCustomFixedSizeMoveRoutines}; UpsizeMoveProcedure: Move36{$endif}),
{$endif}
    (BlockSize: 48 {$ifdef UseCustomFixedSizeMoveRoutines}; UpsizeMoveProcedure: Move44{$endif}),
{$ifndef Align16Bytes}
    (BlockSize: 56 {$ifdef UseCustomFixedSizeMoveRoutines}; UpsizeMoveProcedure: Move52{$endif}),
{$endif}
    (BlockSize: 64 {$ifdef UseCustomFixedSizeMoveRoutines}; UpsizeMoveProcedure: Move60{$endif}),
{$ifndef Align16Bytes}
    (BlockSize: 72 {$ifdef UseCustomFixedSizeMoveRoutines}; UpsizeMoveProcedure: Move68{$endif}),
{$endif}
    (BlockSize: 80),
{$ifndef Align16Bytes}
    (BlockSize: 88),
{$endif}
    (BlockSize: 96),
{$ifndef Align16Bytes}
    (BlockSize: 104),
{$endif}
    (BlockSize: 112),
{$ifndef Align16Bytes}
    (BlockSize: 120),
{$endif}
    (BlockSize: 128),
{$ifndef Align16Bytes}
    (BlockSize: 136),
{$endif}
    (BlockSize: 144),
{$ifndef Align16Bytes}
    (BlockSize: 152),
{$endif}
    (BlockSize: 160),
    {16 byte jumps}
    (BlockSize: 176),
    (BlockSize: 192),
    (BlockSize: 208),
    (BlockSize: 224),
    (BlockSize: 240),
    (BlockSize: 256),
    (BlockSize: 272),
    (BlockSize: 288),
    (BlockSize: 304),
    (BlockSize: 320),
    {32 byte jumps}
    (BlockSize: 352),
    (BlockSize: 384),
    (BlockSize: 416),
    (BlockSize: 448),
    (BlockSize: 480),
    {48 byte jumps}
    (BlockSize: 528),
    (BlockSize: 576),
    (BlockSize: 624),
    (BlockSize: 672),
    {64 byte jumps}
    (BlockSize: 736),
    (BlockSize: 800),
    {80 byte jumps}
    (BlockSize: 880),
    (BlockSize: 960),
    {96 byte jumps}
    (BlockSize: 1056),
    (BlockSize: 1152),
    {112 byte jumps}
    (BlockSize: 1264),
    (BlockSize: 1376),
    {128 byte jumps}
    (BlockSize: 1504),
    {144 byte jumps}
    (BlockSize: 1648),
    {160 byte jumps}
    (BlockSize: 1808),
    {176 byte jumps}
    (BlockSize: 1984),
    {192 byte jumps}
    (BlockSize: 2176),
    {208 byte jumps}
    (BlockSize: 2384),
    {224 byte jumps}
    (BlockSize: MaximumSmallBlockSize),
    {The last block size occurs three times. If, during a GetMem call, the
     requested block size is already locked by another thread then up to two
     larger block sizes may be used instead. Having the last block size occur
     three times avoids the need to have a size overflow check.}
    (BlockSize: MaximumSmallBlockSize),
    (BlockSize: MaximumSmallBlockSize));
  {Size to small block type translation table}
  AllocSize2SmallBlockTypeIndX4: packed array[0..(MaximumSmallBlockSize - 1) div SmallBlockGranularity] of Byte;
  {-----------------Medium block management------------------}
  {A dummy medium block pool header: Maintains a circular list of all medium
   block pools to enable memory leak detection on program shutdown.}
  MediumBlockPoolsCircularList: TMediumBlockPoolHeader;
  {Are medium blocks locked?}
  MediumBlocksLocked: Boolean;
  {The sequential feed medium block pool.}
  LastSequentiallyFedMediumBlock: Pointer;
  MediumSequentialFeedBytesLeft: Cardinal;
  {The medium block bins are divided into groups of 32 bins. If a bit
   is set in this group bitmap, then at least one bin in the group has free
   blocks.}
  MediumBlockBinGroupBitmap: Cardinal;
  {The medium block bins: total of 32 * 32 = 1024 bins of a certain
   minimum size.}
  MediumBlockBinBitmaps: packed array[0..MediumBlockBinGroupCount - 1] of Cardinal;
  {The medium block bins. There are 1024 LIFO circular linked lists each
   holding blocks of a specified minimum size. The sizes vary in size from
   MinimumMediumBlockSize to MaximumMediumBlockSize. The bins are treated as
   type TMediumFreeBlock to avoid pointer checks.}
  MediumBlockBins: packed array[0..MediumBlockBinCount - 1] of TMediumFreeBlock;
  {-----------------Large block management------------------}
  {Are large blocks locked?}
  LargeBlocksLocked: Boolean;
  {A dummy large block header: Maintains a list of all allocated large blocks
   to enable memory leak detection on program shutdown.}
  LargeBlocksCircularList: TLargeBlockHeader;

  {Must MMX be used for move operations?}
{$ifdef EnableMMX}
  {$ifndef ForceMMX}
  UseMMX: Boolean;
  {$endif}
{$endif}

{$ifdef EnableMMX}
{$ifndef ForceMMX}
{Returns true if the CPUID instruction is supported}
function CPUID_Supported: Boolean;
asm
  pushfd
  pop eax
  mov edx, eax
  xor eax, $200000
  push eax
  popfd
  pushfd
  pop eax
  xor eax, edx
  setnz al
end;

{Gets the CPUID}
function GetCPUID(AInfoRequired: Integer): TRegisters;
asm
  push ebx
  push esi
  mov esi, edx
  {cpuid instruction}
{$ifdef Delphi4or5}
  db $0f, $a2
{$else}
  cpuid
{$endif}
  {Save registers}
  mov TRegisters[esi].RegEAX, eax
  mov TRegisters[esi].RegEBX, ebx
  mov TRegisters[esi].RegECX, ecx
  mov TRegisters[esi].RegEDX, edx
  pop esi
  pop ebx
end;

{Returns true if the CPU supports MMX}
function MMX_Supported: Boolean;
var
  LReg: TRegisters;
begin
  if CPUID_Supported then
  begin
    {Get the CPUID}
    LReg := GetCPUID(1);
    {Bit 23 must be set for MMX support}
    Result := LReg.RegEDX and $800000 <> 0;
  end
  else
    Result := False;
end;
{$endif}
{$endif}

{Compare [AAddress], CompareVal:
 If Equal: [AAddress] := NewVal and result = CompareVal
 If Unequal: Result := [AAddress]}
function LockCmpxchg(CompareVal, NewVal: Byte; AAddress: PByte): Byte;
asm
  {On entry:
    al = CompareVal,
    dl = NewVal,
    ecx = AAddress}
{$ifndef Linux}
  lock cmpxchg [ecx], dl
{$else}
  {Workaround for Kylix compiler bug}
  db $F0, $0F, $B0, $11
{$endif}
end;

{----------------Faster Move Procedures-------------------}

{Fixed size move operations ignore the size parameter. All moves are assumed to
 be non-overlapping.}

procedure Move12(const ASource; var ADest; ACount: Integer);
asm
  mov ecx, [eax]
  mov [edx], ecx
  mov ecx, [eax + 4]
  mov eax, [eax + 8]
  mov [edx + 4], ecx
  mov [edx + 8], eax
end;

procedure Move20(const ASource; var ADest; ACount: Integer);
asm
  mov ecx, [eax]
  mov [edx], ecx
  mov ecx, [eax + 4]
  mov [edx + 4], ecx
  mov ecx, [eax + 8]
  mov [edx + 8], ecx
  mov ecx, [eax + 12]
  mov eax, [eax + 16]
  mov [edx + 12], ecx
  mov [edx + 16], eax
end;

procedure Move28(const ASource; var ADest; ACount: Integer);
asm
  mov ecx, [eax]
  mov [edx], ecx
  mov ecx, [eax + 4]
  mov [edx + 4], ecx
  mov ecx, [eax + 8]
  mov [edx + 8], ecx
  mov ecx, [eax + 12]
  mov [edx + 12], ecx
  mov ecx, [eax + 16]
  mov [edx + 16], ecx
  mov ecx, [eax + 20]
  mov eax, [eax + 24]
  mov [edx + 20], ecx
  mov [edx + 24], eax
end;

procedure Move36(const ASource; var ADest; ACount: Integer);
asm
  fild qword ptr [eax]
  fild qword ptr [eax + 8]
  fild qword ptr [eax + 16]
  fild qword ptr [eax + 24]
  mov ecx, [eax + 32]
  mov [edx + 32], ecx
  fistp qword ptr [edx + 24]
  fistp qword ptr [edx + 16]
  fistp qword ptr [edx + 8]
  fistp qword ptr [edx]
end;

procedure Move44(const ASource; var ADest; ACount: Integer);
asm
  fild qword ptr [eax]
  fild qword ptr [eax + 8]
  fild qword ptr [eax + 16]
  fild qword ptr [eax + 24]
  fild qword ptr [eax + 32]
  mov ecx, [eax + 40]
  mov [edx + 40], ecx
  fistp qword ptr [edx + 32]
  fistp qword ptr [edx + 24]
  fistp qword ptr [edx + 16]
  fistp qword ptr [edx + 8]
  fistp qword ptr [edx]
end;

procedure Move52(const ASource; var ADest; ACount: Integer);
asm
  fild qword ptr [eax]
  fild qword ptr [eax + 8]
  fild qword ptr [eax + 16]
  fild qword ptr [eax + 24]
  fild qword ptr [eax + 32]
  fild qword ptr [eax + 40]
  mov ecx, [eax + 48]
  mov [edx + 48], ecx
  fistp qword ptr [edx + 40]
  fistp qword ptr [edx + 32]
  fistp qword ptr [edx + 24]
  fistp qword ptr [edx + 16]
  fistp qword ptr [edx + 8]
  fistp qword ptr [edx]
end;

procedure Move60(const ASource; var ADest; ACount: Integer);
asm
  fild qword ptr [eax]
  fild qword ptr [eax + 8]
  fild qword ptr [eax + 16]
  fild qword ptr [eax + 24]
  fild qword ptr [eax + 32]
  fild qword ptr [eax + 40]
  fild qword ptr [eax + 48]
  mov ecx, [eax + 56]
  mov [edx + 56], ecx
  fistp qword ptr [edx + 48]
  fistp qword ptr [edx + 40]
  fistp qword ptr [edx + 32]
  fistp qword ptr [edx + 24]
  fistp qword ptr [edx + 16]
  fistp qword ptr [edx + 8]
  fistp qword ptr [edx]
end;

procedure Move68(const ASource; var ADest; ACount: Integer);
asm
  fild qword ptr [eax]
  fild qword ptr [eax + 8]
  fild qword ptr [eax + 16]
  fild qword ptr [eax + 24]
  fild qword ptr [eax + 32]
  fild qword ptr [eax + 40]
  fild qword ptr [eax + 48]
  fild qword ptr [eax + 56]
  mov ecx, [eax + 64]
  mov [edx + 64], ecx
  fistp qword ptr [edx + 56]
  fistp qword ptr [edx + 48]
  fistp qword ptr [edx + 40]
  fistp qword ptr [edx + 32]
  fistp qword ptr [edx + 24]
  fistp qword ptr [edx + 16]
  fistp qword ptr [edx + 8]
  fistp qword ptr [edx]
end;

{Variable size move procedure: Assumes ACount is 4 less than a multiple of 16.
 Always moves at least 12 bytes, irrespective of ACount.}
procedure MoveX16L4(const ASource; var ADest; ACount: Integer);
asm
  {Make the counter negative based: The last 12 bytes are moved separately}
  sub ecx, 12
  add eax, ecx
  add edx, ecx
{$ifdef EnableMMX}
  {$ifndef ForceMMX}
  cmp UseMMX, True
  jne @FPUMove
  {$endif}
  {Make the counter negative based: The last 12 bytes are moved separately}
  neg ecx
  jns @MMXMoveLast12
@MMXMoveLoop:
  {Move a 16 byte block}
  {$ifdef Delphi4or5}
  {Delphi 5 compatibility}
  db $0f, $6f, $04, $01
  db $0f, $6f, $4c, $01, $08
  db $0f, $7f, $04, $11
  db $0f, $7f, $4c, $11, $08
  {$else}
  movq mm0, [eax + ecx]
  movq mm1, [eax + ecx + 8]
  movq [edx + ecx], mm0
  movq [edx + ecx + 8], mm1
  {$endif}
  {Are there another 16 bytes to move?}
  add ecx, 16
  js @MMXMoveLoop
@MMXMoveLast12:
  {Do the last 12 bytes}
  {$ifdef Delphi4or5}
  {Delphi 5 compatibility}
  db $0f, $6f, $04, $01
  {$else}
  movq mm0, [eax + ecx]
  {$endif}
  mov eax, [eax + ecx + 8]
  {$ifdef Delphi4or5}
  {Delphi 5 compatibility}
  db $0f, $7f, $04, $11
  {$else}
  movq [edx + ecx], mm0
  {$endif}
  mov [edx + ecx + 8], eax
  {Exit MMX state}
  {$ifdef Delphi4or5}
  {Delphi 5 compatibility}
  db $0f, $77
  {$else}
  emms
  {$endif}
  {$ifndef ForceMMX}
  ret
  {$endif}
{$endif}
{FPU code is only used if MMX is not forced}
{$ifndef ForceMMX}
@FPUMove:
  neg ecx
  jns @FPUMoveLast12
@FPUMoveLoop:
  {Move a 16 byte block}
  fild qword ptr [eax + ecx]
  fild qword ptr [eax + ecx + 8]
  fistp qword ptr [edx + ecx + 8]
  fistp qword ptr [edx + ecx]
  {Are there another 16 bytes to move?}
  add ecx, 16
  js @FPUMoveLoop
@FPUMoveLast12:
  {Do the last 12 bytes}
  fild qword ptr [eax + ecx]
  fistp qword ptr [edx + ecx]
  mov eax, [eax + ecx + 8]
  mov [edx + ecx + 8], eax
{$endif}
end;

{Variable size move procedure: Assumes ACount is 4 less than a multiple of 8.
 Always moves at least 12 bytes, irrespective of ACount.}
procedure MoveX8L4(const ASource; var ADest; ACount: Integer);
asm
  {Make the counter negative based: The last 4 bytes are moved separately}
  sub ecx, 4
  add eax, ecx
  add edx, ecx
  neg ecx
{$ifdef EnableMMX}
  {$ifndef ForceMMX}
  cmp UseMMX, True
  jne @FPUMoveLoop
  {$endif}
@MMXMoveLoop:
  {Move an 8 byte block}
{$ifdef Delphi4or5}
  {Delphi 5 compatibility}
  db $0f, $6f, $04, $01
  db $0f, $7f, $04, $11
{$else}
  movq mm0, [eax + ecx]
  movq [edx + ecx], mm0
{$endif}
  {Are there another 8 bytes to move?}
  add ecx, 8
  js @MMXMoveLoop
  {Exit MMX state}
{$ifdef Delphi4or5}
  {Delphi 5 compatibility}
  db $0f, $77
{$else}
  emms
{$endif}
  {Do the last 4 bytes}
  mov eax, [eax + ecx]
  mov [edx + ecx], eax
  {$ifndef ForceMMX}
  ret
  {$endif}
{$endif}
{FPU code is only used if MMX is not forced}
{$ifndef ForceMMX}
@FPUMoveLoop:
  {Move an 8 byte block}
  fild qword ptr [eax + ecx]
  fistp qword ptr [edx + ecx]
  {Are there another 8 bytes to move?}
  add ecx, 8
  js @FPUMoveLoop
  {Do the last 4 bytes}
  mov eax, [eax + ecx]
  mov [edx + ecx], eax
{$endif}
end;

{----------------Windows Emulation Functions for Kylix Support-----------------}

{$ifdef Linux}

const
  {Messagebox constants}
  MB_OK = 0;
  MB_ICONERROR = $10;
  MB_TASKMODAL = $2000;
  MB_DEFAULT_DESKTOP_ONLY = $20000;
  {Virtual memory constants}
  MEM_COMMIT = $1000;
  MEM_RELEASE = $8000;
  MEM_TOP_DOWN = $100000;
  PAGE_READWRITE = 4;

function VirtualAlloc(lpvAddress: Pointer; dwSize, flAllocationType, flProtect: Cardinal): Pointer; stdcall;
begin
  Result := valloc(dwSize);
end;

function VirtualFree(lpAddress: Pointer; dwSize, dwFreeType: Cardinal): LongBool; stdcall;
begin
  free(lpAddress);
  Result := True;
end;

{$ifndef NeverSleepOnThreadContention}
procedure Sleep(dwMilliseconds: Cardinal); stdcall;
begin
  {Convert to microseconds (more or less)}
  usleep(dwMilliseconds shl 10);
end;
{$endif}
{$endif}

{-----------------Small Block Management------------------}

{Locks all small block types}
procedure LockAllSmallBlockTypes;
var
  LInd: Cardinal;
begin
  {Lock the medium blocks}
{$ifndef AssumeMultiThreaded}
  if IsMultiThread then
{$endif}
  begin
    for LInd := 0 to NumSmallBlockTypes - 1 do
    begin
      while LockCmpxchg(0, 1, @SmallBlockTypes[LInd].BlockTypeLocked) <> 0 do
      begin
{$ifndef NeverSleepOnThreadContention}
        Sleep(InitialSleepTime);
        if LockCmpxchg(0, 1, @SmallBlockTypes[LInd].BlockTypeLocked) = 0 then
          Break;
        Sleep(AdditionalSleepTime);
{$endif}
      end;
    end;
  end;
end;

{Gets the first and last block pointer for a small block pool}
procedure GetFirstAndLastSmallBlockInPool(APSmallBlockPool: PSmallBlockPoolHeader;
  var AFirstPtr, ALastPtr: Pointer);
var
  LBlockSize: Cardinal;
begin
  {Get the pointer to the first block}
  AFirstPtr := Pointer(Cardinal(APSmallBlockPool) + SmallBlockPoolHeaderSize);
  {Get a pointer to the last block}
  if (APSmallBlockPool.BlockType.CurrentSequentialFeedPool <> APSmallBlockPool)
    or (Cardinal(APSmallBlockPool.BlockType.NextSequentialFeedBlockAddress) > Cardinal(APSmallBlockPool.BlockType.MaxSequentialFeedBlockAddress)) then
  begin
    {Not the sequential feed - point to the end of the block}
    LBlockSize := PCardinal(Cardinal(APSmallBlockPool) - 4)^ and DropMediumAndLargeFlagsMask;
    ALastPtr := Pointer(Cardinal(APSmallBlockPool) + LBlockSize - APSmallBlockPool.BlockType.BlockSize);
  end
  else
  begin
    {The sequential feed pool - point to before the next sequential feed block}
    ALastPtr := Pointer(Cardinal(APSmallBlockPool.BlockType.NextSequentialFeedBlockAddress) - 1);
  end;
end;

{-----------------Medium Block Management------------------}

{Advances to the next medium block. Returns nil if the end of the medium block
 pool has been reached}
function NextMediumBlock(APMediumBlock: Pointer): Pointer;
var
  LBlockSize: Cardinal;
begin
  {Get the size of this block}
  LBlockSize := PCardinal(Cardinal(APMediumBlock) - 4)^ and DropMediumAndLargeFlagsMask;
  {Advance the pointer}
  Result := Pointer(Cardinal(APMediumBlock) + LBlockSize);
  {Is the next block the end of medium pool marker?}
  LBlockSize := PCardinal(Cardinal(Result) - 4)^ and DropMediumAndLargeFlagsMask;
  if LBlockSize = 0 then
    Result := nil;
end;

{Gets the first medium block in the medium block pool}
function GetFirstMediumBlockInPool(APMediumBlockPoolHeader: PMediumBlockPoolHeader): Pointer;
begin
  if (MediumSequentialFeedBytesLeft = 0)
    or (Cardinal(LastSequentiallyFedMediumBlock) < Cardinal(APMediumBlockPoolHeader))
    or (Cardinal(LastSequentiallyFedMediumBlock) > Cardinal(APMediumBlockPoolHeader) + MediumBlockPoolSize) then
  begin
    Result := Pointer(Cardinal(APMediumBlockPoolHeader) + MediumBlockPoolHeaderSize);
  end
  else
  begin
    {Is the sequential feed pool empty?}
    if MediumSequentialFeedBytesLeft <> MediumBlockPoolSize - MediumBlockPoolHeaderSize then
      Result := LastSequentiallyFedMediumBlock
    else
      Result := nil;
  end;
end;

{Locks the medium blocks. The routine
 is assumed to preserve all registers except eax.}
procedure LockMediumBlocks;
asm
  {Note: This routine is assumed to preserve all registers except eax}
@MediumBlockLockLoop:
  mov eax, $100
  {Attempt to lock the medium blocks}
  lock cmpxchg MediumBlocksLocked, ah
  je @Done
{$ifndef NeverSleepOnThreadContention}
  {Couldn't lock the medium blocks - sleep and try again}
  push ecx
  push edx
  push InitialSleepTime
  call Sleep
  pop edx
  pop ecx
  {Try again}
  mov eax, $100
  {Attempt to grab the block type}
  lock cmpxchg MediumBlocksLocked, ah
  je @Done
  {Couldn't lock the medium blocks - sleep and try again}
  push ecx
  push edx
  push AdditionalSleepTime
  call Sleep
  pop edx
  pop ecx
  {Try again}
  jmp @MediumBlockLockLoop
{$else}
  {Pause instruction (improves performance on P4)}
  rep nop
  {Try again}
  jmp @MediumBlockLockLoop
{$endif}
@Done:
end;

{Removes a medium block from the circular linked list of free blocks.
 Does not change any header flags. Medium blocks should be locked
 before calling this procedure.}
procedure RemoveMediumFreeBlock(APMediumFreeBlock: PMediumFreeBlock);
asm
  {On entry: eax = APMediumFreeBlock}
  {Get the current previous and next blocks}
  mov ecx, TMediumFreeBlock[eax].NextFreeBlock
  mov edx, TMediumFreeBlock[eax].PreviousFreeBlock
  {Is this bin now empty? If the previous and next free block pointers are
   equal, they must point to the bin.}
  cmp ecx, edx
  {Remove this block from the linked list}
  mov TMediumFreeBlock[ecx].PreviousFreeBlock, edx
  mov TMediumFreeBlock[edx].NextFreeBlock, ecx
  {Is this bin now empty? If the previous and next free block pointers are
   equal, they must point to the bin.}
  je @BinIsNowEmpty
@Done:
  ret
  {Align branch target}
  nop
@BinIsNowEmpty:
  {Get the bin number for this block size in ecx}
  sub ecx, offset MediumBlockBins
  mov edx, ecx
  shr ecx, 3
  {Get the group number in edx}
  movzx edx, dh
  {Flag this bin as empty}
  mov eax, -2
  rol eax, cl
  and dword ptr [MediumBlockBinBitmaps + edx * 4], eax
  jnz @Done
  {Flag this group as empty}
  mov eax, -2
  mov ecx, edx
  rol eax, cl
  and MediumBlockBinGroupBitmap, eax
end;

{Inserts a medium block into the appropriate medium block bin.}
procedure InsertMediumBlockIntoBin(APMediumFreeBlock: PMediumFreeBlock; AMediumBlockSize: Cardinal);
asm
  {On entry: eax = APMediumFreeBlock, edx = AMediumBlockSize}
  {Get the bin number for this block size. Get the bin that holds blocks of at
   least this size.}
  sub edx, MinimumMediumBlockSize
  shr edx, 8
  {Validate the bin number}
  sub edx, MediumBlockBinCount - 1
  sbb ecx, ecx
  and edx, ecx
  add edx, MediumBlockBinCount - 1
  {Get the bin in ecx}
  lea ecx, [MediumBlockBins + edx * 8]
  {Bins are LIFO, se we insert this block as the first free block in the bin}
  mov edx, TMediumFreeBlock[ecx].NextFreeBlock
  {Was this bin empty?}
  cmp edx, ecx
  mov TMediumFreeBlock[eax].PreviousFreeBlock, ecx
  mov TMediumFreeBlock[eax].NextFreeBlock, edx
  mov TMediumFreeBlock[edx].PreviousFreeBlock, eax
  mov TMediumFreeBlock[ecx].NextFreeBlock, eax
  {Was this bin empty?}
  je @BinWasEmpty
  ret
  {Align branch target}
  nop
  nop
@BinWasEmpty:
  {Get the bin number in ecx}
  sub ecx, offset MediumBlockBins
  mov edx, ecx
  shr ecx, 3
  {Get the group number in edx}
  movzx edx, dh
  {Flag this bin as not empty}
  mov eax, 1
  shl eax, cl
  or dword ptr [MediumBlockBinBitmaps + edx * 4], eax
  {Flag the group as not empty}
  mov eax, 1
  mov ecx, edx
  shl eax, cl
  or MediumBlockBinGroupBitmap, eax
end;

{Bins what remains in the current sequential feed medium block pool. Medium
 blocks must be locked.}
procedure BinMediumSequentialFeedRemainder;
asm
  cmp MediumSequentialFeedBytesLeft, 0
  jne @MustBinMedium
  {Nothing to bin}
  ret
  {Align branch target}
  nop
  nop
@MustBinMedium:
  {Get a pointer to the last sequentially allocated medium block}
  mov eax, LastSequentiallyFedMediumBlock
  {Is the block that was last fed sequentially free?}
  test byte ptr [eax - 4], IsFreeBlockFlag
  jnz @LastBlockFedIsFree
  {Set the "previous block is free" flag in the last block fed}
  or dword ptr [eax - 4], PreviousMediumBlockIsFreeFlag
  {Get the remainder in edx}
  mov edx, MediumSequentialFeedBytesLeft
  {Point eax to the start of the remainder}
  sub eax, edx
@BinTheRemainder:
  {Status: eax = start of remainder, edx = size of remainder}
  {Store the size of the block as well as the flags}
  lea ecx, [edx + IsMediumBlockFlag + IsFreeBlockFlag]
  mov [eax - 4], ecx
  {Store the trailing size marker}
  mov [eax + edx - 8], edx
  {Bin this medium block}
  cmp edx, MinimumMediumBlockSize
  jnb InsertMediumBlockIntoBin
  ret
  {Align branch target}
  nop
  nop
@LastBlockFedIsFree:
  {Drop the flags}
  mov edx, DropMediumAndLargeFlagsMask
  and edx, [eax - 4]
  {Free the last block fed}
  cmp edx, MinimumMediumBlockSize
  jb @DontRemoveLastFed
  {Last fed block is free - remove it from its size bin}
  call RemoveMediumFreeBlock
  {Re-read eax and edx}
  mov eax, LastSequentiallyFedMediumBlock
  mov edx, DropMediumAndLargeFlagsMask
  and edx, [eax - 4]
@DontRemoveLastFed:
  {Get the number of bytes left in ecx}
  mov ecx, MediumSequentialFeedBytesLeft
  {Point eax to the start of the remainder}
  sub eax, ecx
  {edx = total size of the remainder}
  add edx, ecx
  jmp @BinTheRemainder
end;

{Allocates a new sequential feed medium block pool and immediately splits off a
 block of the requested size. The block size must be a multiple of 16 and
 medium blocks must be locked.}
function AllocNewSequentialFeedMediumPool(AFirstBlockSize: Cardinal): Pointer;
var
  LOldFirstMediumBlockPool: PMediumBlockPoolHeader;
  LNewPool: Pointer;
begin
  {Bin the current sequential feed remainder}
  BinMediumSequentialFeedRemainder;
  {Allocate a new sequential feed block pool}
  LNewPool := VirtualAlloc(nil, MediumBlockPoolSize,
    MEM_COMMIT{$ifdef AlwaysAllocateTopDown} or MEM_TOP_DOWN{$endif}, PAGE_READWRITE);
  if LNewPool <> nil then
  begin
    {Insert this block pool into the list of block pools}
    LOldFirstMediumBlockPool := MediumBlockPoolsCircularList.NextMediumBlockPoolHeader;
    PMediumBlockPoolHeader(LNewPool).PreviousMediumBlockPoolHeader := @MediumBlockPoolsCircularList;
    MediumBlockPoolsCircularList.NextMediumBlockPoolHeader := LNewPool;
    PMediumBlockPoolHeader(LNewPool).NextMediumBlockPoolHeader := LOldFirstMediumBlockPool;
    LOldFirstMediumBlockPool.PreviousMediumBlockPoolHeader := LNewPool;
    {Store the sequential feed pool trailer}
    PCardinal(Cardinal(LNewPool) + MediumBlockPoolSize - BlockHeaderSize)^ := IsMediumBlockFlag;
    {Get the number of bytes still available}
    MediumSequentialFeedBytesLeft := (MediumBlockPoolSize - MediumBlockPoolHeaderSize) - AFirstBlockSize;
    {Get the result}
    Result := Pointer(Cardinal(LNewPool) + MediumBlockPoolSize - AFirstBlockSize);
    LastSequentiallyFedMediumBlock := Result;
    {Store the block header}
    PCardinal(Cardinal(Result) - BlockHeaderSize)^ := AFirstBlockSize or IsMediumBlockFlag;
  end
  else
  begin
    {Out of memory}
    MediumSequentialFeedBytesLeft := 0;
    Result := nil;
  end;
end;

{Frees a medium block pool. Medium blocks must be locked on entry.}
procedure FreeMediumBlockPool(AMediumBlockPool: PMediumBlockPoolHeader);
var
  LPPreviousMediumBlockPoolHeader, LPNextMediumBlockPoolHeader: PMediumBlockPoolHeader;
begin
  {Remove this medium block pool from the linked list}
  LPPreviousMediumBlockPoolHeader := AMediumBlockPool.PreviousMediumBlockPoolHeader;
  LPNextMediumBlockPoolHeader := AMediumBlockPool.NextMediumBlockPoolHeader;
  LPPreviousMediumBlockPoolHeader.NextMediumBlockPoolHeader := LPNextMediumBlockPoolHeader;
  LPNextMediumBlockPoolHeader.PreviousMediumBlockPoolHeader := LPPreviousMediumBlockPoolHeader;
  {Free the medium block pool}
  VirtualFree(AMediumBlockPool, 0, MEM_RELEASE);
end;

{-----------------Large Block Management------------------}

{Locks the large blocks}
procedure LockLargeBlocks;
begin
  {Lock the large blocks}
{$ifndef AssumeMultiThreaded}
  if IsMultiThread then
{$endif}
  begin
    while LockCmpxchg(0, 1, @LargeBlocksLocked) <> 0 do
    begin
{$ifndef NeverSleepOnThreadContention}
      Sleep(InitialSleepTime);
      if LockCmpxchg(0, 1, @LargeBlocksLocked) = 0 then
        Break;
      Sleep(AdditionalSleepTime);
{$endif}
    end;
  end;
end;

{Allocates a Large block of at least ASize (actual size may be larger to
 allow for alignment etc.). ASize must be the actual user requested size. This
 procedure will pad it to the appropriate page boundary and also add the space
 required by the header.}
function AllocateLargeBlock(ASize: Cardinal): Pointer;
var
  LLargeUsedBlockSize: Cardinal;
  LOldFirstLargeBlock: PLargeBlockHeader;
begin
  {Pad the block size to include the header and granularity. We also add a
   4-byte overhead so a huge block size is a multiple of 16 bytes less 4 (so we
   can use a single move function for reallocating all block types)}
  LLargeUsedBlockSize := (ASize + LargeBlockHeaderSize + LargeBlockGranularity - 1 + BlockHeaderSize)
    and -LargeBlockGranularity;
  {Get the Large block}
  Result := VirtualAlloc(nil, LLargeUsedBlockSize, MEM_COMMIT or MEM_TOP_DOWN,
    PAGE_READWRITE);
  {Set the Large block fields}
  if Result <> nil then
  begin
    {Set the large block size and flags}
    PLargeBlockHeader(Result).UserAllocatedSize := ASize;
    PLargeBlockHeader(Result).BlockSizeAndFlags := LLargeUsedBlockSize or IsLargeBlockFlag;
    {Insert the large block into the linked list of large blocks}
    LockLargeBlocks;
    LOldFirstLargeBlock := LargeBlocksCircularList.NextLargeBlockHeader;
    PLargeBlockHeader(Result).PreviousLargeBlockHeader := @LargeBlocksCircularList;
    LargeBlocksCircularList.NextLargeBlockHeader := Result;
    PLargeBlockHeader(Result).NextLargeBlockHeader := LOldFirstLargeBlock;
    LOldFirstLargeBlock.PreviousLargeBlockHeader := Result;
    LargeBlocksLocked := False;
    {Add the size of the header}
    Inc(Cardinal(Result), LargeBlockHeaderSize);
  end;
end;

{Frees a large block, returning 0 on success, -1 otherwise}
function FreeLargeBlock(APointer: Pointer): Integer;
var
  LPreviousLargeBlockHeader, LNextLargeBlockHeader: PLargeBlockHeader;
{$ifndef Linux}
  LRemainingSize: Cardinal;
  LCurrentSegment: Pointer;
  LMemInfo: TMemoryBasicInformation;
{$endif}
begin
  {Point to the start of the large block}
  APointer := Pointer(Cardinal(APointer) - LargeBlockHeaderSize);
  {Get the previous and next large blocks}
  LockLargeBlocks;
  LPreviousLargeBlockHeader := PLargeBlockHeader(APointer).PreviousLargeBlockHeader;
  LNextLargeBlockHeader := PLargeBlockHeader(APointer).NextLargeBlockHeader;
{$ifndef Linux}
  {Is the large block segmented?}
  if PLargeBlockHeader(APointer).BlockSizeAndFlags and LargeBlockIsSegmented = 0 then
  begin
{$endif}
    {Single segment large block: Try to free it}
    if VirtualFree(APointer, 0, MEM_RELEASE) then
      Result := 0
    else
      Result := -1;
{$ifndef Linux}
  end
  else
  begin
    {The large block is segmented - free all segments}
    LCurrentSegment := APointer;
    LRemainingSize := PLargeBlockHeader(APointer).BlockSizeAndFlags and DropMediumAndLargeFlagsMask;
    Result := 0;
    while True do
    begin
      {Get the size of the current segment}
      VirtualQuery(LCurrentSegment, LMemInfo, SizeOf(LMemInfo));
      {Free the segment}
      if not VirtualFree(LCurrentSegment, 0, MEM_RELEASE) then
      begin
        Result := -1;
        Break;
      end;
      {Done?}
      if LMemInfo.RegionSize >= LRemainingSize then
        Break;
      {Decrement the remaining size}
      Dec(LRemainingSize, LMemInfo.RegionSize);
      Inc(Cardinal(LCurrentSegment), LMemInfo.RegionSize);
    end;
  end;
{$endif}
  {Success?}
  if Result = 0 then
  begin
    {Remove the large block from the linked list}
    LNextLargeBlockHeader.PreviousLargeBlockHeader := LPreviousLargeBlockHeader;
    LPreviousLargeBlockHeader.NextLargeBlockHeader := LNextLargeBlockHeader;
  end;
  {Unlock the large blocks}
  LargeBlocksLocked := False;
end;

{Reallocates a large block to at least the requested size. Returns the new
 pointer, or nil on error}
function ReallocateLargeBlock(APointer: Pointer; ANewSize: Cardinal): Pointer;
var
  LOldAvailableSize, LBlockHeader, LOldUserSize, LMinimumUpsize,
    LNewAllocSize: Cardinal;
{$ifndef Linux}
  LNewSegmentSize: Cardinal;
  LNextSegmentPointer: Pointer;
  LMemInfo: TMemoryBasicInformation;
{$endif}
begin
  {Get the block header}
  LBlockHeader := PCardinal(Cardinal(APointer) - BlockHeaderSize)^;
  {Large block - size is (16 + 4) less than the allocated size}
  LOldAvailableSize := (LBlockHeader and DropMediumAndLargeFlagsMask) - (LargeBlockHeaderSize + BlockHeaderSize);
  {Is it an upsize or a downsize?}
  if Cardinal(ANewSize) > LOldAvailableSize then
  begin
    {This pointer is being reallocated to a larger block and therefore it is
     logical to assume that it may be enlarged again. Since reallocations are
     expensive, there is a minimum upsize percentage to avoid unnecessary
     future move operations.}
    {Add 25% for large block upsizes}
    LMinimumUpsize := Cardinal(LOldAvailableSize)
      + (Cardinal(LOldAvailableSize) shr 2);
    if Cardinal(ANewSize) < LMinimumUpsize then
      LNewAllocSize := LMinimumUpsize
    else
      LNewAllocSize := ANewSize;
{$ifndef Linux}
    {Can another large block segment be allocated directly after this segment,
     thus negating the need to move the data?}
    LNextSegmentPointer := Pointer(Cardinal(APointer) - LargeBlockHeaderSize + (LBlockHeader and DropMediumAndLargeFlagsMask));
    VirtualQuery(LNextSegmentPointer, LMemInfo, SizeOf(LMemInfo));
    if (LMemInfo.State = MEM_FREE) then
    begin
      {Round the region size to the previous 64K}
      LMemInfo.RegionSize := LMemInfo.RegionSize and -LargeBlockGranularity;
      {Enough space to grow in place?}
      if (LMemInfo.RegionSize > (ANewSize - LOldAvailableSize)) then
      begin
        {There is enough space after the block to extend it - determine by how
         much}
        LNewSegmentSize := (LNewAllocSize - LOldAvailableSize + LargeBlockGranularity - 1) and -LargeBlockGranularity;
        if LNewSegmentSize > LMemInfo.RegionSize then
          LNewSegmentSize := LMemInfo.RegionSize;
        {Attempy to reserve the address range (which will fail if another
         thread has just reserved it) and commit it immediately afterwards.}
        if (VirtualAlloc(LNextSegmentPointer, LNewSegmentSize, MEM_RESERVE, PAGE_READWRITE) <> nil)
          and (VirtualAlloc(LNextSegmentPointer, LNewSegmentSize, MEM_COMMIT, PAGE_READWRITE) <> nil) then
        begin
          {Update the requested size}
          PLargeBlockHeader(Cardinal(APointer) - LargeBlockHeaderSize).UserAllocatedSize := ANewSize;
          PLargeBlockHeader(Cardinal(APointer) - LargeBlockHeaderSize).BlockSizeAndFlags :=
            (PLargeBlockHeader(Cardinal(APointer) - LargeBlockHeaderSize).BlockSizeAndFlags + LNewSegmentSize)
            or LargeBlockIsSegmented;
          {Success}
          Result := APointer;
          Exit;
        end;
      end;
    end;
{$endif}
    {Could not resize in place: Allocate the new block}
    Result := FastGetMem(LNewAllocSize);
    if Result <> nil then
    begin
      {If it's a large block - store the actual user requested size (it may
       not be if the block that is being reallocated from was previously
       downsized)}
      if LNewAllocSize > (MaximumMediumBlockSize - BlockHeaderSize) then
        PLargeBlockHeader(Cardinal(Result) - LargeBlockHeaderSize).UserAllocatedSize := ANewSize;
      {The user allocated size is stored for large blocks}
      LOldUserSize := PLargeBlockHeader(Cardinal(APointer) - LargeBlockHeaderSize).UserAllocatedSize;
      {The number of bytes to move is the old user size.}
{$ifdef UseCustomVariableSizeMoveRoutines}
      MoveX16L4(APointer^, Result^, LOldUserSize);
{$else}
      System.Move(APointer^, Result^, LOldUserSize);
{$endif}
      {Free the old block}
      FastFreeMem(APointer);
    end;
  end
  else
  begin
    {It's a downsize: do we need to reallocate? Only if the new size is less
     than half the old size}
    if Cardinal(ANewSize) >= (LOldAvailableSize shr 1) then
    begin
      {No need to reallocate}
      Result := APointer;
      {Update the requested size}
      PLargeBlockHeader(Cardinal(APointer) - LargeBlockHeaderSize).UserAllocatedSize := ANewSize;
    end
    else
    begin
      {The block is less than half the old size, and the current size is
       greater than the minimum block size allowing a downsize: reallocate}
      Result := FastGetMem(ANewSize);
      if Result <> nil then
      begin
        {Still a large block? -> Set the user size}
        if ANewSize > (MaximumMediumBlockSize - BlockHeaderSize) then
          PLargeBlockHeader(Cardinal(APointer) - LargeBlockHeaderSize).UserAllocatedSize := ANewSize;
        {Move the data across}
{$ifdef UseCustomVariableSizeMoveRoutines}
{$ifdef Align16Bytes}
        MoveX16L4(APointer^, Result^, ANewSize);
{$else}
        MoveX8L4(APointer^, Result^, ANewSize);
{$endif}
{$else}
        System.Move(APointer^, Result^, ANewSize);
{$endif}
        {Free the old block}
        FastFreeMem(APointer);
      end;
    end;
  end;
end;

{---------------------Replacement Memory Manager Interface---------------------}

{Replacement for SysGetMem (asm version)}
function FastGetMem(ASize: Integer): Pointer;
asm
  {On entry:
    eax = ASize}
  {Since most allocations are for small blocks, determine the small block type
   index so long}
  lea edx, [eax + BlockHeaderSize - 1]
{$ifdef Align16Bytes}
  shr edx, 4
{$else}
  shr edx, 3
{$endif}
  {Is it a small block?}
  cmp eax, (MaximumSmallBlockSize - BlockHeaderSize)
  {Save ebx}
  push ebx
  {Get the IsMultiThread variable so long}
{$ifndef AssumeMultiThreaded}
  mov cl, IsMultiThread
{$endif}
  {Is it a small block?}
  ja @NotASmallBlock
  {Do we need to lock the block type?}
{$ifndef AssumeMultiThreaded}
  test cl, cl
{$endif}
  {Get the small block type in ebx}
  movzx eax, byte ptr [AllocSize2SmallBlockTypeIndX4 + edx]
  lea ebx, [SmallBlockTypes + eax * 8]
  {Do we need to lock the block type?}
{$ifndef AssumeMultiThreaded}
  jnz @LockBlockTypeLoop
{$else}
  jmp @LockBlockTypeLoop
  {Align branch target}
  nop
  nop
{$endif}
@GotLockOnSmallBlockType:
  {Find the next free block: Get the first pool with free blocks in edx}
  mov edx, TSmallBlockType[ebx].NextPartiallyFreePool
  {Get the first free block (or the next sequential feed address if edx = ebx)}
  mov eax, TSmallBlockPoolHeader[edx].FirstFreeBlock
  {Get the drop flags mask in ecx so long}
  mov ecx, DropSmallFlagsMask
  {Is there a pool with free blocks?}
  cmp edx, ebx
  je @TrySmallSequentialFeed
  {Increment the number of used blocks}
  add TSmallBlockPoolHeader[edx].BlocksInUse, 1
  {Get the new first free block}
  and ecx, [eax - 4]
  {Set the new first free block}
  mov TSmallBlockPoolHeader[edx].FirstFreeBlock, ecx
  {Set the block header}
  mov [eax - 4], edx
  {Is the chunk now full?}
  jz @RemoveSmallPool
  {Unlock the block type}
  mov TSmallBlockType[ebx].BlockTypeLocked, False
  {Restore ebx}
  pop ebx
  {All done}
  ret
  {Align branch target}
{$ifndef AssumeMultiThreaded}
  nop
  nop
{$endif}
  nop
@TrySmallSequentialFeed:
  {Try to feed a small block sequentially: Get the sequential feed block pool}
  mov edx, TSmallBlockType[ebx].CurrentSequentialFeedPool
  {Get the next sequential feed address so long}
  movzx ecx, TSmallBlockType[ebx].BlockSize
  add ecx, eax
  {Can another block fit?}
  cmp eax, TSmallBlockType[ebx].MaxSequentialFeedBlockAddress
  ja @AllocateSmallBlockPool
  {Increment the number of used blocks in the sequential feed pool}
  add TSmallBlockPoolHeader[edx].BlocksInUse, 1
  {Store the next sequential feed block address}
  mov TSmallBlockType[ebx].NextSequentialFeedBlockAddress, ecx
  {Unlock the block type}
  mov TSmallBlockType[ebx].BlockTypeLocked, False
  {Set the block header}
  mov [eax - 4], edx
  {Restore ebx}
  pop ebx
  {All done}
  ret
  {Align branch target}
  nop
  nop
  nop
@RemoveSmallPool:
  {Pool is full - remove it from the partially free list}
  mov ecx, TSmallBlockPoolHeader[edx].NextPartiallyFreePool
  mov TSmallBlockPoolHeader[ecx].PreviousPartiallyFreePool, ebx
  mov TSmallBlockType[ebx].NextPartiallyFreePool, ecx
  {Unlock the block type}
  mov TSmallBlockType[ebx].BlockTypeLocked, False
  {Restore ebx}
  pop ebx
  {All done}
  ret
  {Align branch target}
  nop
  nop
@LockBlockTypeLoop:
  mov eax, $100
  {Attempt to grab the block type}
  lock cmpxchg TSmallBlockType([ebx]).BlockTypeLocked, ah
  je @GotLockOnSmallBlockType
  {Try the next size}
  add ebx, Type(TSmallBlockType)
  mov eax, $100
  lock cmpxchg TSmallBlockType([ebx]).BlockTypeLocked, ah
  je @GotLockOnSmallBlockType
  {Try the next size (up to two sizes larger)}
  add ebx, Type(TSmallBlockType)
  mov eax, $100
  lock cmpxchg TSmallBlockType([ebx]).BlockTypeLocked, ah
  je @GotLockOnSmallBlockType
  {Block type and two sizes larger are all locked - give up and sleep}
  sub ebx, 2 * Type(TSmallBlockType)
{$ifndef NeverSleepOnThreadContention}
  {Couldn't grab the block type - sleep and try again}
  push InitialSleepTime
  call Sleep
  {Try again}
  mov eax, $100
  {Attempt to grab the block type}
  lock cmpxchg TSmallBlockType([ebx]).BlockTypeLocked, ah
  je @GotLockOnSmallBlockType
  {Couldn't grab the block type - sleep and try again}
  push AdditionalSleepTime
  call Sleep
  {Try again}
  jmp @LockBlockTypeLoop
  {Align branch target}
  nop
  nop
  nop
{$else}
  {Pause instruction (improves performance on P4)}
  rep nop
  {Try again}
  jmp @LockBlockTypeLoop
  {Align branch target}
  nop
  nop
{$endif}
@AllocateSmallBlockPool:
  {save additional registers}
  push esi
  push edi
  {Do we need to lock the medium blocks?}
{$ifndef AssumeMultiThreaded}
  cmp IsMultiThread, False
  je @MediumBlocksLockedForPool
{$endif}
  call LockMediumBlocks
@MediumBlocksLockedForPool:
  {Are there any available blocks of a suitable size?}
  movsx esi, TSmallBlockType[ebx].AllowedGroupsForBlockPoolBitmap
  and esi, MediumBlockBinGroupBitmap
  jz @NoSuitableMediumBlocks
  {Get the bin group number with free blocks in eax}
  bsf eax, esi
  {Get the bin number in ecx}
  lea esi, [eax * 8]
  mov ecx, dword ptr [MediumBlockBinBitmaps + eax * 4]
  bsf ecx, ecx
  lea ecx, [ecx + esi * 4]
  {Get a pointer to the bin in edi}
  lea edi, [MediumBlockBins + ecx * 8]
  {Get the free block in esi}
  mov esi, TMediumFreeBlock[edi].NextFreeBlock
  {Remove the first block from the linked list (LIFO)}
  mov edx, TMediumFreeBlock[esi].NextFreeBlock
  mov TMediumFreeBlock[edi].NextFreeBlock, edx
  mov TMediumFreeBlock[edx].PreviousFreeBlock, edi
  {Is this bin now empty?}
  cmp edi, edx
  jne @MediumBinNotEmpty
  {eax = bin group number, ecx = bin number, edi = @bin, esi = free block, ebx = block type}
  {Flag this bin as empty}
  mov edx, -2
  rol edx, cl
  and dword ptr [MediumBlockBinBitmaps + eax * 4], edx
  jnz @MediumBinNotEmpty
  {Flag the group as empty}
  btr MediumBlockBinGroupBitmap, eax
@MediumBinNotEmpty:
  {esi = free block, ebx = block type}
  {Get the size of the available medium block in edi}
  mov edi, DropMediumAndLargeFlagsMask
  and edi, [esi - 4]
  cmp edi, MaximumSmallBlockPoolSize
  jb @UseWholeBlock
  {Split the block: get the size of the second part, new block size is the
   optimal size}
  mov edx, edi
  movzx edi, TSmallBlockType[ebx].OptimalBlockPoolSize
  sub edx, edi
  {Split the block in two}
  lea eax, [esi + edi]
  lea ecx, [edx + IsMediumBlockFlag + IsFreeBlockFlag]
  mov [eax - 4], ecx
  {Store the size of the second split as the second last dword}
  mov [eax + edx - 8], edx
  {Put the remainder in a bin (it will be big enough)}
  call InsertMediumBlockIntoBin
  jmp @GotMediumBlock
  {Align branch target}
{$ifdef AssumeMultiThreaded}
  nop
{$endif}
@NoSuitableMediumBlocks:
  {Check the sequential feed medium block pool for space}
  movzx ecx, TSmallBlockType[ebx].MinimumBlockPoolSize
  mov edi, MediumSequentialFeedBytesLeft
  cmp edi, ecx
  jb @AllocateNewSequentialFeed
  {Get the address of the last block that was fed}
  mov esi, LastSequentiallyFedMediumBlock
  {Enough sequential feed space: Will the remainder be usable?}
  movzx ecx, TSmallBlockType[ebx].OptimalBlockPoolSize
  lea edx, [ecx + MinimumMediumBlockSize]
  cmp edi, edx
  jb @NotMuchSpace
  mov edi, ecx
@NotMuchSpace:
  sub esi, edi
  {Update the sequential feed parameters}
  sub MediumSequentialFeedBytesLeft, edi
  mov LastSequentiallyFedMediumBlock, esi
  {Get the block pointer}
  jmp @GotMediumBlock
  {Align branch target}
@AllocateNewSequentialFeed:
  {Need to allocate a new sequential feed medium block pool: use the
   optimal size for this small block pool}
  movzx eax, TSmallBlockType[ebx].OptimalBlockPoolSize
  mov edi, eax
  {Allocate the medium block pool}
  call AllocNewSequentialFeedMediumPool
  mov esi, eax
  test eax, eax
  jnz @GotMediumBlock
  mov MediumBlocksLocked, al
  mov TSmallBlockType[ebx].BlockTypeLocked, al
  pop edi
  pop esi
  pop ebx
  ret
  {Align branch target}
@UseWholeBlock:
  {esi = free block, ebx = block type, edi = block size}
  {Mark this block as used in the block following it}
  and byte ptr [esi + edi - 4], not PreviousMediumBlockIsFreeFlag
@GotMediumBlock:
  {esi = free block, ebx = block type, edi = block size}
  {Set the size and flags for this block}
  lea ecx, [edi + IsMediumBlockFlag + IsSmallBlockPoolInUseFlag]
  mov [esi - 4], ecx
  {Unlock medium blocks}
  xor eax, eax
  mov MediumBlocksLocked, al
  {Set up the block pool}
  mov TSmallBlockPoolHeader[esi].BlockType, ebx
  mov TSmallBlockPoolHeader[esi].FirstFreeBlock, eax
  mov TSmallBlockPoolHeader[esi].BlocksInUse, 1
  {Set it up for sequential block serving}
  mov TSmallBlockType[ebx].CurrentSequentialFeedPool, esi
  {Return the pointer to the first block}
  lea eax, [esi + SmallBlockPoolHeaderSize]
  movzx ecx, TSmallBlockType[ebx].BlockSize
  lea edx, [eax + ecx]
  mov TSmallBlockType[ebx].NextSequentialFeedBlockAddress, edx
  add edi, esi
  sub edi, ecx
  mov TSmallBlockType[ebx].MaxSequentialFeedBlockAddress, edi
  {Unlock the small block type}
  mov TSmallBlockType[ebx].BlockTypeLocked, False
  {Set the small block header}
  mov [eax - 4], esi
  {Restore registers}
  pop edi
  pop esi
  pop ebx
  {Done}
  ret
{-------------------Medium block allocation-------------------}
  {Align branch target}
  nop
@NotASmallBlock:
  cmp eax, (MaximumMediumBlockSize - BlockHeaderSize)
  ja @IsALargeBlockRequest
  {Get the bin size for this block size. Block sizes are
   rounded up to the next bin size.}
  lea ebx, [eax + MediumBlockGranularity - 1 + BlockHeaderSize - MediumBlockSizeOffset]
  and ebx, -MediumBlockGranularity
  add ebx, MediumBlockSizeOffset
  {Do we need to lock the medium blocks?}
{$ifndef AssumeMultiThreaded}
  test cl, cl
  jz @MediumBlocksLocked
{$endif}
  call LockMediumBlocks
@MediumBlocksLocked:
  {Get the bin number in ecx and the group number in edx}
  lea edx, [ebx - MinimumMediumBlockSize]
  mov ecx, edx
  shr edx, 8 + 5
  shr ecx, 8
  {Is there a suitable block inside this group?}
  mov eax, -1
  shl eax, cl
  and eax, dword ptr [MediumBlockBinBitmaps + edx * 4]
  jz @GroupIsEmpty
  {Get the actual bin number}
  and ecx, -32
  bsf eax, eax
  or ecx, eax
  jmp @GotBinAndGroup
  {Align branch target}
  nop
@GroupIsEmpty:
  {Try all groups greater than this group}
  mov eax, -2
  mov ecx, edx
  shl eax, cl
  and eax, MediumBlockBinGroupBitmap
  jz @TrySequentialFeedMedium
  {There is a suitable group with space: get the bin number}
  bsf edx, eax
  {Get the bin in the group with free blocks}
  mov eax, dword ptr [MediumBlockBinBitmaps + edx * 4]
  bsf ecx, eax
  mov eax, edx
  shl eax, 5
  or ecx, eax
  jmp @GotBinAndGroup
  {Align branch target}
  nop
@TrySequentialFeedMedium:
  mov ecx, MediumSequentialFeedBytesLeft
  {Block can be fed sequentially?}
  sub ecx, ebx
  jc @AllocateNewSequentialFeedForMedium
  {Get the block address}
  mov eax, LastSequentiallyFedMediumBlock
  sub eax, ebx
  mov LastSequentiallyFedMediumBlock, eax
  {Store the remaining bytes}
  mov MediumSequentialFeedBytesLeft, ecx
  {Set the flags for the block}
  or ebx, IsMediumBlockFlag
  mov [eax - 4], ebx
  jmp @MediumBlockGetDone
  {Align branch target}
@AllocateNewSequentialFeedForMedium:
  mov eax, ebx
  call AllocNewSequentialFeedMediumPool
@MediumBlockGetDone:
  mov MediumBlocksLocked, False
  pop ebx
  ret
  {Align branch target}
@GotBinAndGroup:
  {ebx = block size, ecx = bin number, edx = group number}
  push esi
  push edi
  {Get a pointer to the bin in edi}
  lea edi, [MediumBlockBins + ecx * 8]
  {Get the free block in esi}
  mov esi, TMediumFreeBlock[edi].NextFreeBlock
  {Remove the first block from the linked list (LIFO)}
  mov eax, TMediumFreeBlock[esi].NextFreeBlock
  mov TMediumFreeBlock[edi].NextFreeBlock, eax
  mov TMediumFreeBlock[eax].PreviousFreeBlock, edi
  {Is this bin now empty?}
  cmp edi, eax
  jne @MediumBinNotEmptyForMedium
  {eax = bin group number, ecx = bin number, edi = @bin, esi = free block, ebx = block size}
  {Flag this bin as empty}
  mov eax, -2
  rol eax, cl
  and dword ptr [MediumBlockBinBitmaps + edx * 4], eax
  jnz @MediumBinNotEmptyForMedium
  {Flag the group as empty}
  btr MediumBlockBinGroupBitmap, edx
@MediumBinNotEmptyForMedium:
  {esi = free block, ebx = block size}
  {Get the size of the available medium block in edi}
  mov edi, DropMediumAndLargeFlagsMask
  and edi, [esi - 4]
  {Get the size of the second split in edx}
  mov edx, edi
  sub edx, ebx
  jz @UseWholeBlockForMedium
  {Split the block in two}
  lea eax, [esi + ebx]
  lea ecx, [edx + IsMediumBlockFlag + IsFreeBlockFlag]
  mov [eax - 4], ecx
  {Store the size of the second split as the second last dword}
  mov [eax + edx - 8], edx
  {Put the remainder in a bin}
  cmp edx, MinimumMediumBlockSize
  jb @GotMediumBlockForMedium
  call InsertMediumBlockIntoBin
  jmp @GotMediumBlockForMedium
  {Align branch target}
  nop
  nop
  nop
@UseWholeBlockForMedium:
  {Mark this block as used in the block following it}
  and byte ptr [esi + edi - 4], not PreviousMediumBlockIsFreeFlag
@GotMediumBlockForMedium:
  {Set the size and flags for this block}
  lea ecx, [ebx + IsMediumBlockFlag]
  mov [esi - 4], ecx
  {Unlock medium blocks}
  mov MediumBlocksLocked, False
  mov eax, esi
  pop edi
  pop esi
  pop ebx
  ret
{-------------------Large block allocation-------------------}
  {Align branch target}
@IsALargeBlockRequest:
  pop ebx
  test eax, eax
  jns AllocateLargeBlock
  xor eax, eax
end;

{Replacement for SysFreeMem (asm version)}
function FastFreeMem(APointer: Pointer): Integer;
asm
  {Get the block header in edx}
  mov edx, [eax - 4]
  {Is it a small block in use?}
  test dl, IsFreeBlockFlag + IsMediumBlockFlag + IsLargeBlockFlag
  {Save the pointer in ecx}
  mov ecx, eax
  {Save ebx}
  push ebx
  {Get the IsMultiThread variable in bl}
{$ifndef AssumeMultiThreaded}
  mov bl, IsMultiThread
{$endif}
  {Is it a small block that is in use?}
  jnz @NotSmallBlockInUse
  {Do we need to lock the block type?}
{$ifndef AssumeMultiThreaded}
  test bl, bl
{$endif}
  {Get the small block type in ebx}
  mov ebx, TSmallBlockPoolHeader[edx].BlockType
  {Do we need to lock the block type?}
{$ifndef AssumeMultiThreaded}
  jnz @LockBlockTypeLoop
{$else}
  jmp @LockBlockTypeLoop
  {Align branch target}
  nop
{$endif}
@GotLockOnSmallBlockType:
  {Current state: edx = @SmallBlockPoolHeader, ecx = APointer, ebx = @SmallBlockType}
  {Decrement the number of blocks in use}
  sub TSmallBlockPoolHeader[edx].BlocksInUse, 1
  {Get the old first free block}
  mov eax, TSmallBlockPoolHeader[edx].FirstFreeBlock
  {Is the pool now empty?}
  jz @PoolIsNowEmpty
  {Was the pool full?}
  test eax, eax
  {Store this as the new first free block}
  mov TSmallBlockPoolHeader[edx].FirstFreeBlock, ecx
  {Store the previous first free block as the block header}
  lea eax, [eax + IsFreeBlockFlag]
  mov [ecx - 4], eax
  {Insert the pool back into the linked list if it was full}
  jz @SmallPoolWasFull
  {All ok}
  xor eax, eax
  {Unlock the block type}
  mov TSmallBlockType[ebx].BlockTypeLocked, al
  {Restore registers}
  pop ebx
  {Done}
  ret
  {Align branch target}
{$ifndef AssumeMultiThreaded}
  nop
{$endif}
@SmallPoolWasFull:
  {Insert this as the first partially free pool for the block size}
  mov ecx, TSmallBlockType[ebx].NextPartiallyFreePool
  mov TSmallBlockPoolHeader[edx].PreviousPartiallyFreePool, ebx
  mov TSmallBlockPoolHeader[edx].NextPartiallyFreePool, ecx
  mov TSmallBlockPoolHeader[ecx].PreviousPartiallyFreePool, edx
  mov TSmallBlockType[ebx].NextPartiallyFreePool, edx
  {Unlock the block type}
  mov TSmallBlockType[ebx].BlockTypeLocked, False
  {All ok}
  xor eax, eax
  {Restore registers}
  pop ebx
  {Done}
  ret
  {Align branch target}
  nop
  nop
@PoolIsNowEmpty:
  {Was this pool actually in the linked list of pools with space? If not, it
   can only be the sequential feed pool (it is the only pool that may contain
   only one block, i.e. other blocks have not been split off yet)}
  test eax, eax
  jz @IsSequentialFeedPool
  {Pool is now empty: Remove it from the linked list and free it}
  mov eax, TSmallBlockPoolHeader[edx].PreviousPartiallyFreePool
  mov ecx, TSmallBlockPoolHeader[edx].NextPartiallyFreePool
  {Remove this manager}
  mov TSmallBlockPoolHeader[eax].NextPartiallyFreePool, ecx
  mov TSmallBlockPoolHeader[ecx].PreviousPartiallyFreePool, eax
  {Zero out eax}
  xor eax, eax
  {Is this the sequential feed pool? If so, stop sequential feeding}
  cmp TSmallBlockType[ebx].CurrentSequentialFeedPool, edx
  jne @NotSequentialFeedPool
@IsSequentialFeedPool:
  mov TSmallBlockType[ebx].MaxSequentialFeedBlockAddress, eax
@NotSequentialFeedPool:
  {Unlock the block type}
  mov TSmallBlockType[ebx].BlockTypeLocked, al
  {Release this pool}
  mov eax, edx
  mov edx, [edx - 4]
{$ifndef AssumeMultiThreaded}
  mov bl, IsMultiThread
{$endif}
  jmp @FreeMediumBlock
  {Align branch target}
{$ifndef AssumeMultiThreaded}
  nop
  nop
{$endif}
  nop
@LockBlockTypeLoop:
  mov eax, $100
  {Attempt to grab the block type}
  lock cmpxchg TSmallBlockType([ebx]).BlockTypeLocked, ah
  je @GotLockOnSmallBlockType
{$ifndef NeverSleepOnThreadContention}
  {Couldn't grab the block type - sleep and try again}
  push ecx
  push edx
  push InitialSleepTime
  call Sleep
  pop edx
  pop ecx
  {Try again}
  mov eax, $100
  {Attempt to grab the block type}
  lock cmpxchg TSmallBlockType([ebx]).BlockTypeLocked, ah
  je @GotLockOnSmallBlockType
  {Couldn't grab the block type - sleep and try again}
  push ecx
  push edx
  push AdditionalSleepTime
  call Sleep
  pop edx
  pop ecx
  {Try again}
  jmp @LockBlockTypeLoop
  {Align branch target}
  nop
  nop
{$else}
  {Pause instruction (improves performance on P4)}
  rep nop
  {Try again}
  jmp @LockBlockTypeLoop
  {Align branch target}
  nop
{$endif}
  {---------------------Medium blocks------------------------------}
  {Align branch target}
@NotSmallBlockInUse:
  {Not a small block in use: is it a medium or large block?}
  test dl, IsFreeBlockFlag + IsLargeBlockFlag
  jnz @NotASmallOrMediumBlock
@FreeMediumBlock:
  {Drop the flags}
  and edx, DropMediumAndLargeFlagsMask
  {Free the large block pointed to by eax, header in edx, bl = IsMultiThread}
{$ifndef AssumeMultiThreaded}
  {Do we need to lock the medium blocks?}
  test bl, bl
{$endif}
  {Block size in ebx}
  mov ebx, edx
  {Save registers}
  push esi
  {Pointer in esi}
  mov esi, eax
  {Do we need to lock the medium blocks?}
{$ifndef AssumeMultiThreaded}
  jz @MediumBlocksLocked
{$endif}
  call LockMediumBlocks
@MediumBlocksLocked:
  {Can we combine this block with the next free block?}
  test dword ptr [esi + ebx - 4], IsFreeBlockFlag
  {Get the next block size and flags in ecx}
  mov ecx, [esi + ebx - 4]
  jnz @NextBlockIsFree
  {Set the "PreviousIsFree" flag in the next block}
  or ecx, PreviousMediumBlockIsFreeFlag
  mov [esi + ebx - 4], ecx
@NextBlockChecked:
  {Can we combine this block with the previous free block? We need to
   re-read the flags since it could have changed before we could lock the
   medium blocks.}
  test byte ptr [esi - 4], PreviousMediumBlockIsFreeFlag
  jnz @PreviousBlockIsFree
@PreviousBlockChecked:
  {Is the entire medium block pool free, and there are other free blocks
   that can fit the largest possible medium block -> free it.}
  cmp ebx, (MediumBlockPoolSize - MediumBlockPoolHeaderSize)
  je @EntireMediumPoolFree
@BinFreeMediumBlock:
  {Store the size of the block as well as the flags}
  lea eax, [ebx + IsMediumBlockFlag + IsFreeBlockFlag]
  mov [esi - 4], eax
  {Store the trailing size marker}
  mov [esi + ebx - 8], ebx
  {Insert this block back into the bins: Size check not required here,
   since medium blocks that are in use are not allowed to be
   shrunk smaller than MinimumMediumBlockSize}
  mov eax, esi
  mov edx, ebx
  {Insert into bin}
  call InsertMediumBlockIntoBin
  {Unlock medium blocks}
  mov MediumBlocksLocked, False;
  {All OK}
  xor eax, eax
  {Restore registers}
  pop esi
  pop ebx
  {Return}
  ret
  {Align branch target}
@NextBlockIsFree:
  {Get the next block address in eax}
  lea eax, [esi + ebx]
  {Increase the size of this block}
  and ecx, DropMediumAndLargeFlagsMask
  add ebx, ecx
  {Was the block binned?}
  cmp ecx, MinimumMediumBlockSize
  jb @NextBlockChecked
  call RemoveMediumFreeBlock
  jmp @NextBlockChecked
  {Align branch target}
  nop
@PreviousBlockIsFree:
  {Get the size of the free block just before this one}
  mov ecx, [esi - 8]
  {Include the previous block}
  sub esi, ecx
  {Set the new block size}
  add ebx, ecx
  {Remove the previous block from the linked list}
  cmp ecx, MinimumMediumBlockSize
  jb @PreviousBlockChecked
  mov eax, esi
  call RemoveMediumFreeBlock
  jmp @PreviousBlockChecked
  {Align branch target}
@EntireMediumPoolFree:
  {Should we make this the new sequential feed medium block pool? If the
   current sequential feed pool is not entirely free, we make this the new
   sequential feed pool.}
  cmp MediumSequentialFeedBytesLeft, MediumBlockPoolSize - MediumBlockPoolHeaderSize
  jne @MakeEmptyMediumPoolSequentialFeed
  {Point esi to the medium block pool header}
  sub esi, MediumBlockPoolHeaderSize
  {Remove this medium block pool from the linked list}
  mov eax, TMediumBlockPoolHeader[esi].PreviousMediumBlockPoolHeader
  mov edx, TMediumBlockPoolHeader[esi].NextMediumBlockPoolHeader
  mov TMediumBlockPoolHeader[eax].NextMediumBlockPoolHeader, edx
  mov TMediumBlockPoolHeader[edx].PreviousMediumBlockPoolHeader, eax
  {Unlock medium blocks}
  mov MediumBlocksLocked, False;
  {Free the medium block pool}
  push MEM_RELEASE
  push 0
  push esi
  call VirtualFree
  {VirtualFree returns >0 if all is ok}
  cmp eax, 1
  {Return 0 on all ok}
  sbb eax, eax
  {Restore registers}
  pop esi
  pop ebx
  ret
  {Align branch target}
  nop
  nop
  nop
@MakeEmptyMediumPoolSequentialFeed:
  {Get a pointer to the end-marker block}
  lea ebx, [esi + MediumBlockPoolSize - MediumBlockPoolHeaderSize]
  {Bin the current sequential feed pool}
  call BinMediumSequentialFeedRemainder
  {Set this medium pool up as the new sequential feed pool:
   Store the sequential feed pool trailer}
  mov dword ptr [ebx - BlockHeaderSize], IsMediumBlockFlag
  {Store the number of bytes available in the sequential feed chunk}
  mov MediumSequentialFeedBytesLeft, MediumBlockPoolSize - MediumBlockPoolHeaderSize
  {Set the last sequentially fed block}
  mov LastSequentiallyFedMediumBlock, ebx
  {Unlock medium blocks}
  mov MediumBlocksLocked, False;
  {Success}
  xor eax, eax
  {Restore registers}
  pop esi
  pop ebx
  ret
  {Align branch target}
  nop
  nop
@NotASmallOrMediumBlock:
  {Restore ebx}
  pop ebx
  {Is it in fact a large block?}
  test dl, IsFreeBlockFlag + IsMediumBlockFlag
  jz FreeLargeBlock
  {Attempt to free an already free block}
  mov eax, -1
end;

{Replacement for SysReallocMem (asm version)}
function FastReallocMem(APointer: Pointer; ANewSize: Integer): Pointer;
asm
  {On entry: eax = APointer; edx = ANewSize}
  {Get the block header: Is it actually a small block?}
  mov ecx, [eax - 4]
  {Is it a small block?}
  test cl, IsFreeBlockFlag + IsMediumBlockFlag + IsLargeBlockFlag
  {Save ebx}
  push ebx
  {Save esi}
  push esi
  {Save the original pointer in esi}
  mov esi, eax
  {Is it a small block?}
  jnz @NotASmallBlock
  {-----------------------------------Small block-------------------------------------}
  {Get the block type in ebx}
  mov ebx, TSmallBlockPoolHeader[ecx].BlockType
  {Get the available size inside blocks of this type.}
  movzx ecx, TSmallBlockType[ebx].BlockSize
  sub ecx, 4
  {Is it an upsize or a downsize?}
  cmp ecx, edx
  jb @SmallUpsize
  {It's a downsize. Do we need to allocate a smaller block? Only if the new
   size is less than a quarter of the available size less
   SmallBlockDownsizeCheckAdder bytes}
  lea ebx, [edx * 4 + SmallBlockDownsizeCheckAdder]
  cmp ebx, ecx
  jb @NotSmallInPlaceDownsize
  {In-place downsize - return the original pointer}
  pop esi
  pop ebx
  ret
  {Align branch target}
  nop
@NotSmallInPlaceDownsize:
  {Save the requested size}
  mov ebx, edx
  {Allocate a smaller block}
  mov eax, edx
  call FastGetMem
  {Allocated OK?}
  test eax, eax
  jz @SmallDownsizeDone
  {Move data across: count in ecx}
  mov ecx, ebx
  {Destination in edx}
  mov edx, eax
  {Save the result in ebx}
  mov ebx, eax
  {Original pointer in eax}
  mov eax, esi
  {Move the data across}
{$ifdef UseCustomVariableSizeMoveRoutines}
  {$ifdef Align16Bytes}
  call MoveX16L4
  {$else}
  call MoveX8L4
  {$endif}
{$else}
  call System.Move
{$endif}
  {Free the original pointer}
  mov eax, esi
  call FastFreeMem
  {Return the pointer}
  mov eax, ebx
@SmallDownsizeDone:
  pop esi
  pop ebx
  ret
  {Align branch target}
  nop
  nop
@SmallUpsize:
  {State: esi = APointer, edx = ANewSize, ecx = Current Block Size, ebx = Current Block Type}
  {This pointer is being reallocated to a larger block and therefore it is
   logical to assume that it may be enlarged again. Since reallocations are
   expensive, there is a minimum upsize percentage to avoid unnecessary
   future move operations.}
  {Small blocks always grow with at least 100% + SmallBlockUpsizeAdder bytes}
  lea ecx, [ecx + ecx + SmallBlockUpsizeAdder]
  {save edi}
  push edi
  {Save the requested size in edi}
  mov edi, edx
  {New allocated size is the maximum of the requested size and the minimum
   upsize}
  xor eax, eax
  sub ecx, edx
  adc eax, -1
  and eax, ecx
  add eax, edx
  {Allocate the new block}
  call FastGetMem
  {Allocated OK?}
  test eax, eax
  jz @SmallUpsizeDone
  {Do we need to store the requested size? Only large blocks store the
   requested size.}
  cmp edi, MaximumMediumBlockSize - BlockHeaderSize
  jbe @NotSmallUpsizeToLargeBlock
  {Store the user requested size}
  mov [eax - 8], edi
@NotSmallUpsizeToLargeBlock:
  {Get the size to move across}
  movzx ecx, TSmallBlockType[ebx].BlockSize
  sub ecx, BlockHeaderSize
  {Move to the new block}
  mov edx, eax
  {Save the result in edi}
  mov edi, eax
  {Move from the old block}
  mov eax, esi
  {Move the data across}
{$ifdef UseCustomFixedSizeMoveRoutines}
  call TSmallBlockType[ebx].UpsizeMoveProcedure
{$else}
  call System.Move
{$endif}
  {Free the old pointer}
  mov eax, esi
  call FastFreeMem
  {Done}
  mov eax, edi
@SmallUpsizeDone:
  pop edi
  pop esi
  pop ebx
  ret
  {Align branch target}
  nop
@NotASmallBlock:
  {Is this a medium block or a large block?}
  test cl, IsFreeBlockFlag + IsLargeBlockFlag
  jnz @PossibleLargeBlock
  {-------------------------------Medium block--------------------------------------}
  {Status: ecx = Current Block Size + Flags, eax/esi = APointer,
   edx = Requested Size}
  mov ebx, ecx
  {Drop the flags from the header}
  and ecx, DropMediumAndLargeFlagsMask
  {Save edi}
  push edi
  {Get a pointer to the next block in edi}
  lea edi, [eax + ecx]
  {Subtract the block header size from the old available size}
  sub ecx, BlockHeaderSize
  {Get the complete flags in ebx}
  and ebx, ExtractMediumAndLargeFlagsMask
  {Is it an upsize or a downsize?}
  cmp edx, ecx
  {Save ebp}
  push ebp
  {Is it an upsize or a downsize?}
  ja @MediumBlockUpsize
  {Status: ecx = Current Block Size - 4, bl = Current Block Flags,
   edi = @Next Block, eax/esi = APointer, edx = Requested Size}
  {Must be less than half the current size or we don't bother resizing.}
  lea ebp, [edx + edx]
  cmp ebp, ecx
  jb @MediumMustDownsize
@MediumNoResize:
  {Restore registers}
  pop ebp
  pop edi
  pop esi
  pop ebx
  {Return}
  ret
  {Align branch target}
  nop
  nop
  nop
@MediumMustDownsize:
  {In-place downsize? Balance the cost of moving the data vs. the cost of
   fragmenting the memory pool. Medium blocks in use may never be smaller
   than MinimumMediumBlockSize.}
  cmp edx, MinimumMediumBlockSize - BlockHeaderSize
  jae @MediumBlockInPlaceDownsize
  {The requested size is less than the minimum medium block size. If the
  requested size is less than the threshold value (currently a quarter of the
  minimum medium block size), move the data to a small block, otherwise shrink
  the medium block to the minimum allowable medium block size.}
  cmp edx, MediumInPlaceDownsizeLimit
  jb @MediumDownsizeRealloc
  {The request is for a size smaller than the minimum medium block size, but
   not small enough to justify moving data: Reduce the block size to the
   minimum medium block size}
  mov edx, MinimumMediumBlockSize - BlockHeaderSize
  {Is it already at the minimum medium block size?}
  cmp ecx, edx
  jna @MediumNoResize
@MediumBlockInPlaceDownsize:
  {Round up to the next medium block size}
  lea ebp, [edx + BlockHeaderSize + MediumBlockGranularity - 1 - MediumBlockSizeOffset]
  and ebp, -MediumBlockGranularity;
  add ebp, MediumBlockSizeOffset
  {Get the size of the second split}
  add ecx, BlockHeaderSize
  sub ecx, ebp
  {Lock the medium blocks}
{$ifndef AssumeMultiThreaded}
  cmp IsMultiThread, False
  je @DoMediumInPlaceDownsize
{$endif}
@DoMediumLockForDownsize:
  {Lock the medium blocks (ecx *must* be preserved)}
  call LockMediumBlocks
  {Reread the flags - they may have changed before medium blocks could be
   locked.}
  mov ebx, ExtractMediumAndLargeFlagsMask
  and ebx, [esi - 4]
@DoMediumInPlaceDownsize:
  {Set the new size}
  or ebx, ebp
  mov [esi - 4], ebx
  {Get the second split size in ebx}
  mov ebx, ecx
  {Is the next block in use?}
  mov edx, [edi - 4]
  test dl, IsFreeBlockFlag
  jnz @MediumDownsizeNextBlockFree
  {The next block is in use: flag its previous block as free}
  or edx, PreviousMediumBlockIsFreeFlag
  mov [edi - 4], edx
  jmp @MediumDownsizeDoSplit
  {Align branch target}
  nop
  nop
{$ifdef AssumeMultiThreaded}
  nop
{$endif}
@MediumDownsizeNextBlockFree:
  {The next block is free: combine it}
  mov eax, edi
  and edx, DropMediumAndLargeFlagsMask
  add ebx, edx
  add edi, edx
  cmp edx, MinimumMediumBlockSize
  jb @MediumDownsizeDoSplit
  call RemoveMediumFreeBlock
@MediumDownsizeDoSplit:
  {Store the trailing size field}
  mov [edi - 8], ebx
  {Store the free part's header}
  lea eax, [ebx + IsMediumBlockFlag + IsFreeBlockFlag];
  mov [esi + ebp - 4], eax
  {Bin this free block}
  cmp ebx, MinimumMediumBlockSize
  jb @MediumBlockDownsizeDone
  lea eax, [esi + ebp]
  mov edx, ebx
  call InsertMediumBlockIntoBin
@MediumBlockDownsizeDone:
  {Unlock the medium blocks}
  mov MediumBlocksLocked, False
  {Result = old pointer}
  mov eax, esi
  {Restore registers}
  pop ebp
  pop edi
  pop esi
  pop ebx
  {Return}
  ret
  {Align branch target}
@MediumDownsizeRealloc:
  {Save the requested size}
  mov edi, edx
  mov eax, edx
  {Allocate the new block}
  call FastGetMem
  test eax, eax
  jz @MediumBlockDownsizeExit
  {Save the result}
  mov ebp, eax
  mov edx, eax
  mov eax, esi
  mov ecx, edi
  {Move the data across}
{$ifdef UseCustomVariableSizeMoveRoutines}
  {$ifdef Align16Bytes}
  call MoveX16L4
  {$else}
  call MoveX8L4
  {$endif}
{$else}
  call System.Move
{$endif}
  mov eax, esi
  call FastFreeMem
  {Return the result}
  mov eax, ebp
@MediumBlockDownsizeExit:
  pop ebp
  pop edi
  pop esi
  pop ebx
  ret
  {Align branch target}
@MediumBlockUpsize:
  {Status: ecx = Current Block Size - 4, bl = Current Block Flags,
   edi = @Next Block, eax/esi = APointer, edx = Requested Size}
  {Can we do an in-place upsize?}
  mov eax, [edi - 4]
  test al, IsFreeBlockFlag
  jz @CannotUpsizeMediumBlockInPlace
  {Get the total available size including the next block}
  and eax, DropMediumAndLargeFlagsMask
  {ebp = total available size including the next block (excluding the header)}
  lea ebp, [eax + ecx]
  {Can the block fit?}
  cmp edx, ebp
  ja @CannotUpsizeMediumBlockInPlace
  {The next block is free and there is enough space to grow this
   block in place.}
{$ifndef AssumeMultiThreaded}
  cmp IsMultiThread, False
  je @DoMediumInPlaceUpsize
{$endif}
@DoMediumLockForUpsize:
  {Lock the medium blocks (ecx and edx *must* be preserved}
  call LockMediumBlocks
  {Re-read the info for this block (since it may have changed before the medium
   blocks could be locked)}
  mov ebx, ExtractMediumAndLargeFlagsMask
  and ebx, [esi - 4]
  {Re-read the info for the next block}
  mov eax, [edi - 4]
  {Next block still free?}
  test al, IsFreeBlockFlag
  jz @NextMediumBlockChanged
  {Recalculate the next block size}
  and eax, DropMediumAndLargeFlagsMask
  {The available size including the next block}
  lea ebp, [eax + ecx]
  {Can the block still fit?}
  cmp edx, ebp
  ja @NextMediumBlockChanged
@DoMediumInPlaceUpsize:
  {Is the next block binnable?}
  cmp eax, MinimumMediumBlockSize
  {Remove the next block}
  jb @MediumInPlaceNoNextRemove
  mov eax, edi
  push ecx
  push edx
  call RemoveMediumFreeBlock
  pop edx
  pop ecx
@MediumInPlaceNoNextRemove:
  {Medium blocks grow a minimum of 25% in in-place upsizes}
  mov eax, ecx
  shr eax, 2
  add eax, ecx
  {Get the maximum of the requested size and the minimum growth size}
  xor edi, edi
  sub eax, edx
  adc edi, -1
  and eax, edi
  {Round up to the nearest block size granularity}
  lea eax, [eax + edx + BlockHeaderSize + MediumBlockGranularity - 1 - MediumBlockSizeOffset]
  and eax, -MediumBlockGranularity
  add eax, MediumBlockSizeOffset
  {Calculate the size of the second split}
  lea edx, [ebp + BlockHeaderSize]
  sub edx, eax
  {Does it fit?}
  ja @MediumInPlaceUpsizeSplit
  {Grab the whole block: Mark it as used in the block following it}
  and dword ptr [esi + ebp], not PreviousMediumBlockIsFreeFlag
  {The block size is the full available size plus header}
  add ebp, 4
  {Upsize done}
  jmp @MediumUpsizeInPlaceDone
  {Align branch target}
{$ifndef AssumeMultiThreaded}
  nop
  nop
  nop
{$endif}
@MediumInPlaceUpsizeSplit:
  {Store the size of the second split as the second last dword}
  mov [esi + ebp - 4], edx
  {Set the second split header}
  lea edi, [edx + IsMediumBlockFlag + IsFreeBlockFlag]
  mov [esi + eax - 4], edi
  mov ebp, eax
  cmp edx, MinimumMediumBlockSize
  jb @MediumUpsizeInPlaceDone
  add eax, esi
  call InsertMediumBlockIntoBin
@MediumUpsizeInPlaceDone:
  {Set the size and flags for this block}
  or ebp, ebx
  mov [esi - 4], ebp
  {Unlock the medium blocks}
  mov MediumBlocksLocked, False
  {Result = old pointer}
  mov eax, esi
@MediumBlockResizeDone2:
  {Restore registers}
  pop ebp
  pop edi
  pop esi
  pop ebx
  {Return}
  ret
  {Align branch target for "@CannotUpsizeMediumBlockInPlace"}
  nop
  nop
@NextMediumBlockChanged:
  {The next medium block changed while the medium blocks were being locked}
  mov MediumBlocksLocked, False
@CannotUpsizeMediumBlockInPlace:
  {Couldn't upsize in place. Grab a new block and move the data across:
   If we have to reallocate and move medium blocks, we grow by at
   least 25%}
  mov eax, ecx
  shr eax, 2
  add eax, ecx
  {Get the maximum of the requested size and the minimum growth size}
  xor edi, edi
  sub eax, edx
  adc edi, -1
  and eax, edi
  add eax, edx
  {Save the size to allocate}
  mov ebp, eax
  {Save the size to move across}
  mov edi, ecx
  {Get the block}
  push edx
  call FastGetMem
  pop edx
  {Success?}
  test eax, eax
  jz @MediumBlockResizeDone2
  {If it's a Large block - store the actual user requested size}
  cmp ebp, MaximumMediumBlockSize - BlockHeaderSize
  jbe @MediumUpsizeNotLarge
  mov [eax - 8], edx
@MediumUpsizeNotLarge:
  {Save the result}
  mov ebp, eax
  {Move the data across}
  mov edx, eax
  mov eax, esi
  mov ecx, edi
{$ifdef UseCustomVariableSizeMoveRoutines}
  call MoveX16L4
{$else}
  call System.Move
{$endif}
  {Free the old block}
  mov eax, esi
  call FastFreeMem
  {Restore the result}
  mov eax, ebp
  {Restore registers}
  pop ebp
  pop edi
  pop esi
  pop ebx
  {Return}
  ret
  {Align branch target}
  nop
@PossibleLargeBlock:
  {-----------------------Large block------------------------------}
  {Restore registers}
  pop esi
  pop ebx
  {Is this a valid large block?}
  test cl, IsFreeBlockFlag + IsMediumBlockFlag
  jz ReallocateLargeBlock
  {-----------------------Invalid block------------------------------}
  xor eax, eax
end;

{Allocates a block and fills it with zeroes}
function FastAllocMem(ASize: Cardinal): Pointer;
asm
  push ebx
  {Get the size rounded down to the previous multiple of 4 into ebx}
  lea ebx, [eax - 1]
  and ebx, -4
  {Get the block}
  call FastGetMem
  {Could a block be allocated? ecx = 0 if yes, $ffffffff if no}
  cmp eax, 1
  sbb ecx, ecx
  {Point edx to the last dword}
  lea edx, [eax + ebx]
  {ebx = $ffffffff if no block could be allocated, otherwise size rounded down
   to previous multiple of 4}
  or ebx, ecx
  {Large blocks are already zero filled}
  cmp ebx, MaximumMediumBlockSize - BlockHeaderSize
  jae @Done
  {Make the counter negative based}
  neg ebx
  {Load zero into st(0)}
  fldz
  {Clear groups of 8 bytes. Block sizes are always four less than a multiple
   of 8, with a minimum of 12 bytes}
@FillLoop:
  fst qword ptr [edx + ebx]
  add ebx, 8
  js @FillLoop
  {Clear the last four bytes}
  mov [edx], ecx
  {Clear st(0)}
  ffree st(0)
  {Correct the stack top}
  fincstp
@Done:
  pop ebx
end;

{Frees all allocated memory.}
procedure FreeAllMemory;
var
  LPMediumBlockPoolHeader, LPNextMediumBlockPoolHeader: PMediumBlockPoolHeader;
  LPMediumFreeBlock: PMediumFreeBlock;
  LPLargeBlock, LPNextLargeBlock: PLargeBlockHeader;
  LInd: integer;
begin
  {Free all block pools}
  LPMediumBlockPoolHeader := MediumBlockPoolsCircularList.NextMediumBlockPoolHeader;
  while LPMediumBlockPoolHeader <> @MediumBlockPoolsCircularList do
  begin
    {Get the next medium block pool so long}
    LPNextMediumBlockPoolHeader := LPMediumBlockPoolHeader.NextMediumBlockPoolHeader;
    {Free this pool}
    VirtualFree(LPMediumBlockPoolHeader, 0, MEM_RELEASE);
    {Next pool}
    LPMediumBlockPoolHeader := LPNextMediumBlockPoolHeader;
  end;
  {Clear all small block types}
  for LInd := 0 to high(SmallBlockTypes) do
  begin
    SmallBlockTypes[Lind].PreviousPartiallyFreePool := @SmallBlockTypes[Lind];
    SmallBlockTypes[Lind].NextPartiallyFreePool := @SmallBlockTypes[Lind];
    SmallBlockTypes[Lind].NextSequentialFeedBlockAddress := pointer(1);
    SmallBlockTypes[Lind].MaxSequentialFeedBlockAddress := nil;
  end;
  {Clear all medium block pools}
  MediumBlockPoolsCircularList.PreviousMediumBlockPoolHeader := @MediumBlockPoolsCircularList;
  MediumBlockPoolsCircularList.NextMediumBlockPoolHeader := @MediumBlockPoolsCircularList;
  {All medium bins are empty}
  for LInd := 0 to high(MediumBlockBins) do
  begin
    LPMediumFreeBlock := @MediumBlockBins[LInd];
    LPMediumFreeBlock.PreviousFreeBlock := LPMediumFreeBlock;
    LPMediumFreeBlock.NextFreeBlock := LPMediumFreeBlock;
  end;
  {Free all large blocks}
  LPLargeBlock := LargeBlocksCircularList.NextLargeBlockHeader;
  while LPLargeBlock <> @LargeBlocksCircularList do
  begin
    {Get the next large block}
    LPNextLargeBlock := LPLargeBlock.NextLargeBlockHeader;
    {Free this large block}
    VirtualFree(LPLargeBlock, 0, MEM_RELEASE);
    {Next large block}
    LPLargeBlock := LPNextLargeBlock;
  end;
  {There are no large blocks allocated}
  LargeBlocksCircularList.PreviousLargeBlockHeader := @LargeBlocksCircularList;
  LargeBlocksCircularList.NextLargeBlockHeader := @LargeBlocksCircularList;
end;

{----------------------------Memory Manager Setup-----------------------------}

{Initializes the lookup tables for the memory manager}
procedure InitializeMemoryManager;
var
  LInd, LSizeInd, LMinimumPoolSize, LOptimalPoolSize, LGroupNumber,
    LBlocksPerPool, LPreviousBlockSize: Cardinal;
  LPMediumFreeBlock: PMediumFreeBlock;
begin
{$ifdef EnableMMX}
  {$ifndef ForceMMX}
  UseMMX := MMX_Supported;
  {$endif}
{$endif}
  {Initialize the memory manager}
  {-------------Set up the small block types-------------}
  LPreviousBlockSize := 0;
  for LInd := 0 to high(SmallBlockTypes) do
  begin
    {Set the move procedure}
{$ifdef UseCustomFixedSizeMoveRoutines}
    {The upsize move procedure may move chunks in 16 bytes even with 8-byte
    alignment, since the new size will always be at least 8 bytes bigger than
    the old size.}
    if not Assigned(SmallBlockTypes[LInd].UpsizeMoveProcedure) then
  {$ifdef UseCustomVariableSizeMoveRoutines}
      SmallBlockTypes[LInd].UpsizeMoveProcedure := MoveX16L4;
  {$else}
      SmallBlockTypes[LInd].UpsizeMoveProcedure := @System.Move;
  {$endif}
{$endif}
    {Set the first "available pool" to the block type itself, so that the
     allocation routines know that there are currently no pools with free
     blocks of this size.}
    SmallBlockTypes[LInd].PreviousPartiallyFreePool := @SmallBlockTypes[LInd];
    SmallBlockTypes[LInd].NextPartiallyFreePool := @SmallBlockTypes[LInd];
    {Set the block size to block type index translation table}
    for LSizeInd := (LPreviousBlockSize div SmallBlockGranularity) to ((SmallBlockTypes[LInd].BlockSize - 1) div SmallBlockGranularity) do
      AllocSize2SmallBlockTypeIndX4[LSizeInd] := LInd * 4;
    {Cannot sequential feed yet: Ensure that the next address is greater than
     the maximum address}
    SmallBlockTypes[LInd].MaxSequentialFeedBlockAddress := pointer(0);
    SmallBlockTypes[LInd].NextSequentialFeedBlockAddress := pointer(1);
    {Get the mask to use for finding a medium block suitable for a block pool}
    LMinimumPoolSize :=
      ((SmallBlockTypes[LInd].BlockSize * MinimumSmallBlocksPerPool
        + SmallBlockPoolHeaderSize + MediumBlockGranularity - 1 - MediumBlockSizeOffset)
      and -MediumBlockGranularity) + MediumBlockSizeOffset;
    if LMinimumPoolSize < MinimumMediumBlockSize then
      LMinimumPoolSize := MinimumMediumBlockSize;
    {Get the closest group number for the minimum pool size}
    LGroupNumber := (LMinimumPoolSize - MinimumMediumBlockSize + MediumBlockBinsPerGroup * MediumBlockGranularity div 2)
      div (MediumBlockBinsPerGroup * MediumBlockGranularity);
    {Too large?}
    if LGroupNumber > 7 then
      LGroupNumber := 7;
    {Set the bitmap}
    SmallBlockTypes[LInd].AllowedGroupsForBlockPoolBitmap := Byte(-(1 shl LGroupNumber));
    {Set the minimum pool size}
    SmallBlockTypes[LInd].MinimumBlockPoolSize := MinimumMediumBlockSize + LGroupNumber * (MediumBlockBinsPerGroup * MediumBlockGranularity);
    {Get the optimal block pool size}
    LOptimalPoolSize := ((SmallBlockTypes[LInd].BlockSize * TargetSmallBlocksPerPool
        + SmallBlockPoolHeaderSize + MediumBlockGranularity - 1 - MediumBlockSizeOffset)
      and -MediumBlockGranularity) + MediumBlockSizeOffset;
    {Limit the optimal pool size to within range}
    if LOptimalPoolSize < OptimalSmallBlockPoolSizeLowerLimit then
      LOptimalPoolSize := OptimalSmallBlockPoolSizeLowerLimit;
    if LOptimalPoolSize > OptimalSmallBlockPoolSizeUpperLimit then
      LOptimalPoolSize := OptimalSmallBlockPoolSizeUpperLimit;
    {How many blocks will fit in the adjusted optimal size?}
    LBlocksPerPool := (LOptimalPoolSize - SmallBlockPoolHeaderSize) div SmallBlockTypes[LInd].BlockSize;
    {Recalculate the optimal pool size to minimize wastage due to a partial
     last block.}
    SmallBlockTypes[LInd].OptimalBlockPoolSize :=
      ((LBlocksPerPool * SmallBlockTypes[LInd].BlockSize + SmallBlockPoolHeaderSize + MediumBlockGranularity - 1 - MediumBlockSizeOffset) and -MediumBlockGranularity) + MediumBlockSizeOffset;
    {Set the previous small block size}
    LPreviousBlockSize := SmallBlockTypes[LInd].BlockSize;
  end;
  {-------------------Set up the medium blocks-------------------}
  {There are currently no medium block pools}
  MediumBlockPoolsCircularList.PreviousMediumBlockPoolHeader := @MediumBlockPoolsCircularList;
  MediumBlockPoolsCircularList.NextMediumBlockPoolHeader := @MediumBlockPoolsCircularList;
  {All medium bins are empty}
  for LInd := 0 to high(MediumBlockBins) do
  begin
    LPMediumFreeBlock := @MediumBlockBins[LInd];
    LPMediumFreeBlock.PreviousFreeBlock := LPMediumFreeBlock;
    LPMediumFreeBlock.NextFreeBlock := LPMediumFreeBlock;
  end;
  {------------------Set up the large blocks---------------------}
  LargeBlocksCircularList.PreviousLargeBlockHeader := @LargeBlocksCircularList;
  LargeBlocksCircularList.NextLargeBlockHeader := @LargeBlocksCircularList;
end;

procedure FinalizeMemoryManager;
begin
  {Clean up: Free all memory. If this is a .DLL that owns its own MM, then
   it is necessary to prevent the main application from running out of
   address space.}
  FreeAllMemory;
end;

initialization
  InitializeMemoryManager;

finalization
  FinalizeMemoryManager;

end.
