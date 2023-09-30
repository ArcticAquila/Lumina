# Lumina Package Manager

## Navigation
- [Overview](#overview)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Building](#building)
- [Contributing](#contributing)
- [License](#license)

## Overview
Lumina is a lightweight and efficient package manager designed to simplify the management of dependencies for your projects. With Lumina, you can easily install, update, and remove packages, making it a powerful tool for developers and project managers.

## Features
- Simple and intuitive command-line interface.
- Fast package installation and updates.
- Dependency resolution and version control.
- Customizable configuration options.

## Installation
You can install Lumina using one of the following methods:

### Method 1: Downloading from GitHub Releases
1. **Download the Executable:**
   - Visit the [GitHub Releases](https://github.com/ArcticAquila/Lumina/releases) page.
   - Download the latest release for your platform (e.g., `lumina-linux-x64`) to your local machine.

2. **Move the Executable:**
   - Open a terminal and navigate to the directory where you downloaded the Lumina executable.
   - Run the following command to move the executable to a directory in your system's PATH (e.g., `/usr/bin/`) to make it globally accessible:
   ```sudo mv lumina-linux-x64 /usr/bin/lumina```

3. **(OPTIONAL) FOR SELINUX SYSTEM run this commmand**
   ```sudo restorecon /usr/bin/lumina```

4. **(OPTIONAL) (RECOMMENDED) To verify that Lumina is installed, you can run the following command:**
   ```lumina --version```

### Method 2: Compiling from Git Source
1. **Clone the Repository:	**					
   If you haven't already, clone the Lumina repository to your local machine:
   ```git clone https://github.com/your-username/lumina.git --depth 1```
   ```cd lumina```

2. **Build Lumina using Make:**
   Use the make command to compile the source code and generate the lumina executable:
   ```make -j$(nproc)```

3. **Install Lumina:**
   Optionally, you can use the make install command to install Lumina system-wide:
   ```sudo make install```
   This command will typically move the lumina executable to a directory in your system's PATH (e.g., `/usr/bin/`).

4. **(OPTIONAL) FOR SELINUX SYSTEM run this commmand**
   ```sudo restorecon /usr/bin/lumina```

5. **(OPTIONAL) (RECOMMENDED) To verify that Lumina is installed, you can run the following command:**
   ```lumina --version```

## Usage
TODO

### Building
1. **Clone the Repository:	**					
   If you haven't already, clone the Lumina repository to your local machine:
   ```git clone https://github.com/your-username/lumina.git --depth 1```
   ```cd lumina```

2. **Build Lumina using Make:**
   Use the make command to compile the source code and generate the lumina executable:
   ```make -j$(nproc)```

## Contributing
We welcome contributions from the open-source community. :)

## License
This project is licensed under the [GNU General Public License v3.0](LICENSE).
