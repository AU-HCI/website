---
title: Setting up Coq
---

# Introduction

In this tutorial we will learn how to setup our Coq programming
environment.  This will include installing and setting up:

- Coq
- VS Code
- Coq VS Code Plugin

After completeing this tutorial you will have everything you need to
read the book and complete your assignments using Coq.

# Getting Coq

We begin with installing the Coq environment. This is operating system
dependent, and so please read the section that corresponds to the
operating system you have on your computer.

## Coq on Windows

First, download the Coq environment by visiting this [link](
https://github.com/coq/coq/releases/download/V8.13.0/coq-8.13.0-installer-windows-x86_64.exe). Then
follow these instructions:

1. Double click the installer file to begin the installation. You
   should then see this:
   
   ![](/plweb/images/coq-install/coq-install-window-start.png ){ width=80% } 

2. Click "Next" to arrive at this screen:

    ![](/plweb/images/coq-install/coq-install-window-copyright.png ){ width=80% } 
    
    Select "I Agree".
    
3. Next the installer will ask you to select which packages to install:

   ![](/plweb/images/coq-install/coq-install-window-options.png ){ width=80% }
   
   Simply click "Next" to install the defaults.
   
4. Then the installer will ask you to select where to install Coq on your computer:

   ![](/plweb/images/coq-install/coq-install-window-path.png ){ width=80% }
    
   __Do not modify this!__ Click "Next" to accept the default path.
   
5. At this point the installation process will begin.  You should see the install status bar:

   ![](/plweb/images/coq-install/coq-install-window-statusbar.png ){ width=80% }
   
   Wait for this to complete, and the click "Next".
   
6. You should now be seeing that the installation was complete:

   ![](/plweb/images/coq-install/coq-install-window-complete.png ){ width=80% }
   
   Click "Finish" to exit the installer.

7. Now install VS Code by following the instructions in the VS Code section below.

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
   
   If you already have homebrew installed (which means you skipped the
   previous instruction), you might get an error of the form:
   
   ```
   Error: homebrew-core is a shallow clone.
   ```
   
   This means that your homebrew is out of date.  To update brew and
   fix this problem run this command:
   
   ```
   > git -C "/usr/local/Homebrew/Library/Taps/homebrew/homebrew-core" fetch --unshallow
   ```
   
   You might also get an error:
   
   ```
   Error: homebrew-cask is a shallow clone.
   ```
   
   To update brew and fix this problem run this command:
   
   ```
   git -C "/usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask" fetch --unshallow
   ```
   
   Then proceed with the above installation again.

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

6. Next we need to install VS Code. Using the instructions below.

# Getting VS Code

VS Code is a new editor built by Microsoft as a light-weight
programming environment that is usable across all platforms.  Thus, no
matter what operating system you are running you can install and use
VS Code, and the instructions do not very much.  However, the screen
shots below are for windows if you are on a Mac or Linux then the
screens may be different.

1. Download the VS Code installer from [here](https://code.visualstudio.com/download ).  

2. Double click the installer to start the installation process.  You should see:

   ![](/plweb/images/coq-install/vscode-install-window-start.png ){ width=80% }
   
   Select "I accept the agreement" and click "Next".
   
3. Next the installer will ask you where you would like to install VS Code:


   ![](/plweb/images/coq-install/vscode-install-window-path.png ){ width=80% }

   Keep the default and click "Next".
   
4. Then the installer allows you to customize the name of the VS Code
   shortcut:
   
   ![](/plweb/images/coq-install/vscode-install-window-name.png ){ width=80% }
   
   You can change this or use the default.  When you are ready click "Next" to proceed.

5. At this point the installer will ask about additional options:

   ![](/plweb/images/coq-install/vscode-install-window-additional.png ){ width=80% }

   When you are ready click "Next".
   
6. Next we find that the installer is ready to begin the installation process:

   ![](/plweb/images/coq-install/vscode-install-window-ready.png ){ width=80% }
   
   Click "Next".

7. The status bar will now appear to show the progress of the installation process:

   ![](/plweb/images/coq-install/vscode-install-window-status-window.png ){ width=80% }
   
8. After the installation process finishes you should see:

   ![](/plweb/images/coq-install/vscode-install-window-finish.png ){ width=80% }
   
   Click "Finish" to open VS Code.
   
9. Configuring VS Code:

    1. You should have VS Code open, and seeing:
    
       ![](/plweb/images/coq-install/vscode-open.png ){ width=80% }
       
    2. Press "F1" and start typing "Extensions: Install Extension", you should see this screen:
    
       ![](/plweb/images/coq-install/vscode-extensions-install.png ){ width=80% }

       Click "Extension: Install Extension".
       
    3. Start typing "vscoq" which will look like:

       ![](/plweb/images/coq-install/vscode-vscoq-search.png ){ width=80% }
       
       Click "install" to begin installing the VS Coq plugin, but when
       it completes do not close this window.
       
    4. Now click the gear icon next to "Installed" to bring up the
       plugin's settings:
       
       ![](/plweb/images/coq-install/vscode-vscoq-extension-config.png ){ width=80% }

    5. Now scroll down slowly until you see "Coq Bin":
    
       ![](/plweb/images/coq-install/vscode-vscoq-binpath.png ){ width=80% }
       
       The box on your screen will be empty, but:
       
       - Windows: enter `C:/Coq/bin`
       - Mac OS X: enter `/Users/username/.opam/default/bin`
       - Linux: enter `/home/username/.opam/default/bin`
       
       In the above replace `username` with your username on your computer. 
       There is no save button, because these settings are saved
       automatically.
       
    7. At this point you are done, and can close the "Settings" tab by
       selecting the "X" next to the word "Settings".
       
    8. Now test out the install by opening:
    
       ```
       sf_src/vol1_lf/Basics.v
       ```
       
       in VS Code in your Git repository.  Once it's open, press `Alt-downarrow` until you see this screen:
       
       ![](/plweb/images/coq-install/vscode-vscoq-example-run.png ){ width=100% }
       
       If you eventually see the same screen as above, then you can have installed all the required tools necessary for this course. 🎉
