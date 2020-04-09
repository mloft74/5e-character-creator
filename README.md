# 5e Character Creator

This project is a character creator for 5e D&D.

## Resources

* [Flexbox tutorial](https://www.youtube.com/watch?v=k32voqQhODc)

## Environment setup

This section details the project development tools and dependencies, and how to install them.

### Sdks

First, install [Haxe 4.0.5](https://haxe.org/download/). Then, run `haxelib install react 1.11.0`. If haxelib asks you to set up a library directory (I believe it will be `haxelib setup [path]`), do so as directed. Finally, install [Node.js 13.11.0](https://nodejs.org/en/).

### Editor

Visual Studio Code is a great editor for Haxe. The extensions "Haxe" and "Haxe Checkstyle" should be enough to get up and running. It is also a good idea to turn on Auto Save when focus changes.

#### Gotchas with VS Code

When using the build task in VS Code, build errors will be displayed on the editor. These will not go away until fixed and rebuilt.

The linter (Haxe Checkstyle) only runs when the file is saved.

## Building the project

This section describes the step that need to be taken to build the project.

### First time setup

First, run `npm install --global npm` to update npm. Next, run `npm install` in the directory with [package.json](package.json) in it. This will install the build dependencies of the project.

### Normal building

Run `haxe build.hxml` to compile the Haxe code to Javascript. A default build task is included in the repo, which can be run with `ctrl+shift+b` or `cmd+shift+b` from VS Code.

Use `npm start` to start the devlopment server, or use the npm scripts shortcut in VS Code. The development server will detect when code has changed (in our case, whenever we compile the Haxe code), and reload the webpage.
