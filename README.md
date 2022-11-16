# GraphicsProject
Programming framework for Computer Graphics course at DIKU

## Cloning for your assignments ##

You can clone this into a private repository. First, create a private repository. Then follow these steps (in terminal):

1) `$ git clone --bare git@github.com:diku-dk/ComputerGrafikProjektStudents.git`
2) `$ cd ComputerGrafikProjektStudents.git`
3) `$ git push --mirror git@github.com:<your_account>/<your_repo>.git`
4) `$ cd ..`
5) `$ rm -rf ComputerGrafikProjektStudents.git/`
6) `$ git clone git@github.com:<your_account>/<your_repo>.git`

No you have a perfect clone of the public repository, but as a private mirror.


## Installing on Mac OS 10.13.6

Remark: Current version numbers we used are shown. The framework may work with other versions.

We used MacPorts (https://www.macports.org/) to install third party dependencies. Afer having installed macport then open a terminal and do write as follows

```console  
  sudo port install glew @2.1.0_0
  sudo port install glfw @3.2.1_0+docs
  sudo port install glm @0.9.9.0_0
```

We downloaded CMake ver 3.13.1 from (https://cmake.org/) and installed this.

* Open up CMake gui
* Browse to source folder that contains top-level CMakeLists.txt file
* Specify a folder where to build the binaries. IMPORTANT: Keep binary tree separate from source tree. See figure below for illustration

<center>
<img src="Documentation/macos/cmake_gui.png" width="50%">
</center>

* Click configure

<center>
<img src="Documentation/macos/cmake_first_configure.png" width="50%">
</center>

* Inspect CMake variables to see if you need to specify anything
* Click configure until no pink entries are shown

<center>
<img src="Documentation/macos/cmake_second_configure.png" width="50%">
</center>

* Click generate

<center>
<img src="Documentation/macos/cmake_generate.png" width="50%">
</center>

* Click open project, you should see your IDE open op.

<center>
<img src="Documentation/macos/cmake_open_project.png" width="50%">
</center>

Finally you can build all using your favourite IDE environment

## Installing on Windows

Remark: The framework may work with other versions than what is used below.

For our Windows installation we will be using Visual Studio as our compiler and IDE, and Vcpkg as our library manager. Codeblocks or another compiler/IDE should be just as viable as Visual Studio, however the following procedure has yet to be tested with anything but Visual Studio.

The following is done in Windows 10 with Visual Studio 2017 and Windows PowerShell.

Before continuing ensure that git and a version of Visual Studio is installed. If you have not already done so, download/clone this project to your machine.



#### Vcpkg

Use the 'Quick Start' guide on  https://github.com/Microsoft/vcpkg to install Vcpkg.



#### GLEW, GLFW & GLM

When Vcpkg is installed, navigate to the root folder of Vcpkg and run the following three commands:

##### For Visual Studio 2017 (32bit versions)

```console  
.\vcpkg.exe install glfw3:x86-windows
.\vcpkg.exe install glew:x86-windows
.\vcpkg.exe install glm:x86-windows
```

##### For Visual Studio 2019 (64bit versions)

```console  
.\vcpkg.exe install glfw3:x64-windows
.\vcpkg.exe install glew:x64-windows
.\vcpkg.exe install glm:x64-windows
```

At the time of writing the latest versions of these packages are 3.3-3, 2.1.0-6 and 0.9.9.5-3, respectively.

Use the ``.\vcpkg.exe list `` command to ensure that these three packages are properly installed. The result of the command should look something like this (and similar for Visual Studio 2019):

<center>
<img src="Documentation/windows/vcpkg-list.png" width="100%">
</center>

#### CMake

We downloaded CMake ver 3.15.5 from (https://cmake.org/) and installed this via
the installer.

* Open up CMake gui
* Browse to the source folder that contains the top-level CMakeLists.txt file (./GraphicsFolder/)
* Specify a folder where to build the binaries. IMPORTANT: Keep binary tree separate from source tree. We create a ./GraphicsFolder/Build folder for our binaries. See image below for illustration:

<center>
<img src="Documentation/windows/cmake-buildfolder.png" width="100%">
</center>

* Click 'Configure' once. This will prompt a window where you must select a generator. We choose the 'Visual Studio 15 2017' option. You need to select an option that matches your installed compiler/IDE. After selecting a generator, ensure that 'Specify toolchain file for cross-compiling' is selected as seen in the image below:

<center>
<img src="Documentation/windows/cmake-generator.png" width="50%">
</center>

* Click 'Next' and specify the full path to the '...\vcpkg\scripts\buildsystems\vcpkg.cmake' file as shown in the image below:

<center>
<img src="Documentation/windows/cmake-toolchain.png" width="50%">
</center>

* Click 'Finish' and the configuration process will automatically start.
* The configuration might fail at this point. If so, ensure that the 'VCPKG_TARGET_TRIPLET' value is properly set in the CMake window. It must be set to 'x86-windows' for Visual Studio 2017 and 'x64-windows' for Visual Studio 2019. In other words it must match the versions you chose to download through vcpkg. (If you have downloaded both 32bit and 64bit versions of the packages you may have to manually correct the filepaths for 'GLEW_DIR', 'GLM_DIR' & 'glfw3_DIR' before configurating again.)
* There should be no configuration left to be done and everything should be setup properly now. Should there still be configuration left to be done, then do so now, before clicking 'Configure' again.
* Once the configuration has succeeded, click 'Generate'.
* Upon generation success click 'Open Project' to open the project in Visual Studio.

Use Visual Studio to build the project to ensure that everything is setup properly. If build errors occur please revise the above steps.

You are now good to go!



#### Running the project

You should now have a solution with name 'GRAPHICS_PROJECT' and several targets as shown in the image below:

<center>
<img src="Documentation/windows/visualstudio-targets1.png" width="35%">
</center>

To change target right click any of the 'assignment-X' subprojects and click 'Set as StartUp Project'. The active subproject is the one in bold. When changed to any of the assignment projects run the project by clicking 'Local Windows Debugger' in Visual Studio as shown below:

<center>
<img src="Documentation/windows/visualstudio-run.png" width="50%">
</center>



## Installing on Linux

How to install third party dependencies will vary depending on the linux distro that you are using. Even if you are using a different package manager the process should be the same.

**Ubuntu:**
```console  
  sudo apt install libglew-dev 
  sudo apt install libglfw3-dev 
  sudo apt install libglm-dev
```

**Arch:**
```console  
  sudo pacman -S glew 
  sudo pacman -S glfw-x11
  sudo pacman -S glfw-docs
  sudo pacman -S glm
```

**Nix**

This is for linux and mac users using Nix.

```console
    nix-shell ./GraphicsProject/shell.nix
```
This gives a shell with all dependencies correctly linked which is 100% reproducible, remember to use the shell every time you are developing.


We downloaded CMake ver 3.13.1 from (https://cmake.org/) and installed this. On arch you should be able to get the newest version of CMake using pacman
```console
  sudo pacman -S cmake
```

### CMake
* Open up a terminal and navigate to `./GraphicsProject`
* Run
```console
  mkdir build
  cd build
  cmake ..
  make all
```

If CMake fails because it can't find GLM and OpenGL open up `CMakeLists.txt` and edit line 20 from `FIND_PACKAGE(GLM)` to `FIND_PACKAGE(glm)` and line 27 from `FIND_PACKAGE(OPENGL)` to `FIND_PACKAGE(OpenGL)`


