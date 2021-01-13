---
title: Setting up Coq
---

# Introduction

In this tutorial we will learn how to setup our Coq programming
environment.  This will include installing and setting up:

- Coq
- VS Code
- Coq VSCode Plugin

After completeing this tutorial you will have everything you need to
read the book and complete your assignments using Coq.

# Getting Coq

We begin with installing the Coq environment. This is operating system
dependent, and so please read the section that corresponds to the
operating system you have on your computer.

## Coq on Windows

First, download the Coq environment by visiting their [website](
https://github.com/coq/coq/releases/download/V8.13.0/coq-8.13.0-installer-windows-x86_64.exe). Then
follow these instructions:

1. Double click the installer file to begin the installation. You
   should then see this:
   
   IMAGE

2. 


## Coq on the Mac

To install on the Mac it's best to do so using `opam`. Follow these
instructions:

1. Open the Terminal app.

2. Install Homebrew by running the following command:

   ```
   > /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

   Use copy and paste, but make sure to get all of it.

3. Use Homebrew to install `opam` by running the following commands:

   ```
   > brew update
   ...
   ```

   ```
   > brew install gpatch
   ...
   ```

   ```
   > brew install opam
   ...
   ```

4. Use opam to install Coq:

   ```
   > opam install coq
   ```

5. Check to  make sure coq is really there:

   ```
   > ls ~/.opam/default/bin/coqtop
   ~/.opam/default/bin/coqtop
   ```

   If you get a "file or directory cannot be found" error, then something
   went wrong. Otherwise, Coq is installed!

6. Next we need to install VS Code.  To do this visit
   <https://code.visualstudio.com/> and download and install it just
   like any other Mac OS X app.
   
7. Finally, we need to install the VS Code plugin:

    1. Open VS Code.
    2. Press F1 and start typing "Extensions: Install Extension", press enter, and search for vscoq"
    3. select "enable" on the extension
    4. Press F1 and start typing "settings" to open the user settings.
    5. Click "Extensions" and then "Coq Configuration"
    6. In the box labeld "Coqtop: Bin Path" add the directory `~/.opam/default/bin/coqtop`.
    
8. Bob's your uncle!

Coq is now setup.
