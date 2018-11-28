# Hygieia-LaunchLocal
Scripts for launching a local hygieia instance in a Windows box.  Most of the work may be easily adapted for Linux/Unix boxes.

Prerequisites:

* Hygiea cloned from https://github.com/Hygieia/Hygieia and built following the instructions under http://hygieia.github.io/Hygieia/setup.html
* For parsing the properties files: Windows Git client downloaded from https://git-scm.com/download/win
* For the UI: Node.js (https://nodejs.org/).  Gulp installed (npm install -g gulp)

Optionally, define the following environment variables in order to alter the scripts behavior:

* HYGIEIA_BASE: Directory where Hygieia repository has been cloned.  Default: C:\Hygieia
* GIT_BASE: Installation directory for Git client.  Default: c:\program files\git
* HYGIEIA\_JAVA\_DEBUG\_PORT: If set, it will launch the java services listening to debug in that port.  Default: empty (no debug)
