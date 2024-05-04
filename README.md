# SFML_XMAKE
This template project serves as a foundational structure for developing applications using Visual Studio as the Integrated Development Environment (IDE), [XMake](https://xmake.io/#/guide/installation) as the build system, and SFML (Simple and Fast Multimedia Library) for graphics and multimedia functionality.

Forked from `JasonJayPower/SFML_VS2022_CMAKE_64-Bit`

## Benefits of XMake compared to CMake

- Package Manager similar to NPM / PIP (Allows you to install any package in [xrepo](https://xrepo.xmake.io/#/))
- Uses Lua instead of CMake's DSL (Domain Specific Language) for Simpler Syntax
- Faster git clone for this repository

[Page discussing why to use XMake](https://github.com/xmake-io/xmake/wiki/C-and-Cplusplus-build-system,-I-use-xmake)

## Information about the following commands

```xmake``` - Compiles the project

```xmake project -k vsxmake``` - Builds the Visual Studio Solution file '.sln'

View the `xmake.lua` file for more information about it.

### Other

- [Visual Studio Code Extension](https://marketplace.visualstudio.com/items?itemName=tboox.xmake-vscode)
- [API](https://xmake.io/#/manual/project_target)