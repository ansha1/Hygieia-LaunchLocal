# Hygieia-LaunchLocal
Scripts for launching a local hygieia instance in a Windows box.  Most of the work may be easily adapted for Linux/Unix boxes.

Prerequisites:

* Hygiea cloned from https://github.com/Hygieia/Hygieia and built following the instructions under http://hygieia.github.io/Hygieia/setup.html
* For parsing the properties files: Windows Git client downloaded from https://git-scm.com/download/win
* For the UI: Node.js (https://nodejs.org/).  Gulp installed (npm install -g gulp)

Optionally, define the following environment variables in order to alter the scripts behavior:

* HYGIEIA_BASE: Directory where Hygieia repository has been cloned.  Default: C:\Hygieia
* GIT_BASE: Installation directory for Git client.  Default: c:\program files\git
* HYGIEIA\_JAVA\_DEBUG: If set to true, it will launch the java services listening each one into its debug port.  Default: empty (no debug)

If HYGIEIA\_JAVA\_DEBUG is set to true, every collector will be launched listening to a certain debug port:

* API: 45001
* gitlab-ci: 45002
* gitlab: 45003
* jenkins: 45004