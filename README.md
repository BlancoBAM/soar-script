# soar-list-enhanced

[![Official Website](https://img.shields.io/badge/Official-soar.qaidvoid.dev-blue?style=flat-square&logo=rust)](https://soar.qaidvoid.dev/)
[![Bash Script](https://img.shields.io/badge/Language-Bash-4EAA25?style=flat-square&logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)
[![Powered by pkgforge](https://img.shields.io/badge/Powered%20by-pkgforge-orange?style=flat-square)](https://github.com/pkgforge)
[![GitHub Repository](https://img.shields.io/badge/GitHub-Repo-181717?style=flat-square&logo=github)](https://github.com/BlancoBAM/soar-script)

A simple script to enhance the listing capabilities of the [soar package manager](https://github.com/pkgforge/soar). This repo is solely for the purpose to save the script for my own usage, but I dressed up this readme just in case others stumble across it while searching for soar and find it useful. Therefore, review the contents before running, as always, and I'm not liable for any effects of it should you choose to run it. I also recommend renaming the script (probably something shorter) and adding an alias to your shell config so that it can be ran anywhere when you need it with a shorthand of your choosing (this is how I use it).

## Purpose
While the `soar` package manager is incredibly powerful, the default `soar list` command provides a concise list without descriptions, and the detailed `soar Q <package>` command must be run individually for each package. 

This script bridges that gap by providing a scrollable terminal interface that combines the two:
- **Simple Mode:** Lists all packages with their one-line descriptions instantly.
- **Full Mode:** Iterates through every package to display the full, beautiful info boxes provided by `soar Q` in a single scrollable view.

## Usage
1. Make the script executable: `chmod +x soar-list-enhanced.sh`
2. Run for a fast list: `./soar-list-enhanced.sh`
3. Run for full details: `./soar-list-enhanced.sh --full`

## Navigation inside the list:
  The script pipes the output to less, which allows you to scroll using:
   * Arrow Keys / PageUp / PageDown: Scroll through the list.
   * / followed by text: Search for a specific package or keyword.
   * q: Quit the viewer and return to your terminal.

  This script uses only existing soar capabilities and does not modify any configurations or system files.

## Acknowledgments
A massive thank you to the developers at **pkgforge** for creating the incredible [soar](https://github.com/pkgforge/soar) package manager. It is a game-changer for package management on Linux, and this script is simply a small companion tool to help explore the vast ecosystem they have built. 

Praise to the pkgforge team for their hard work and dedication to the community!
# soar-script
