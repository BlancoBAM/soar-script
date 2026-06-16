# soar-list-enhanced

A simple script to enhance the listing capabilities of the [soar package manager](https://github.com/pkgforge/soar).

## Purpose
While the `soar` package manager is incredibly powerful, the default `soar list` command provides a concise list without descriptions, and the detailed `soar Q <package>` command must be run individually for each package. 

This script bridges that gap by providing a scrollable terminal interface that combines the two:
- **Simple Mode:** Lists all packages with their one-line descriptions instantly.
- **Full Mode:** Iterates through every package to display the full, beautiful info boxes provided by `soar Q` in a single scrollable view.

## Usage
1. Make the script executable: `chmod +x soar-list-enhanced.sh`
2. Run for a fast list: `./soar-list-enhanced.sh`
3. Run for full details: `./soar-list-enhanced.sh --full`

## Acknowledgments
A massive thank you to the developers at **pkgforge** for creating the incredible [soar](https://github.com/pkgforge/soar) package manager. It is a game-changer for package management on Linux, and this script is simply a small companion tool to help explore the vast ecosystem they have built. 

Praise to the pkgforge team for their hard work and dedication to the community!
# soar-script
