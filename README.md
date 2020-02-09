# cudd-ready
A static-library version of the famous CUDD-3.0.0 (Colorado University Decision Diagram) library with a C++ interface.
This version supports Linux, MacOS and Windows.


## Installation
For Linux and MAcOS, simply clone this repo and run the command:

$ make

For Windows, use the provided MS Visual Studio Project file.
Make sure to adjust the build configuration based on your needs.
We include build configurations for x64 and x32 systems.

This will generate a static-link library in the folder (./lib/).
Link against this library and use the include folder (./include/).

## Examples

Many examples are provided by [David Kebo](http://davidkebo.com/cudd). 
