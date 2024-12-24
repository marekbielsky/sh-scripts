# Shell Script Repository

This repository contains shell scripts for automating tasks related to C programming. Below is a brief description of each script.

## Scripts

### compile_on_save.sh

- **Description**: Watches a specified C file for changes and recompiles it automatically using `gcc` whenever a change is detected.
- **Usage**:
  ```bash
  ./compile_on_save.sh /absolute/path/to/your/file.c
  ```
- **Dependencies**:
  - `fswatch`: A file change monitor that triggers the recompilation.

#### Installation of fswatch

- **macOS**: Install using Homebrew

  ```bash
  brew install fswatch
  ```

- **Linux**: Install using a package manager

  - **Debian-based systems**:

    ```bash
    sudo apt-get update
    sudo apt-get install fswatch
    ```

  - **Red Hat-based systems**:
    ```bash
    sudo yum install epel-release
    sudo yum install fswatch
    ```

- **Windows**: Use Windows Subsystem for Linux (WSL) to install `fswatch`.
  1. **Enable WSL**: Follow the [Microsoft guide](https://docs.microsoft.com/en-us/windows/wsl/install) to enable WSL.
  2. **Install a Linux distribution**: Install a distribution like Ubuntu from the Microsoft Store.
  3. **Install fswatch**: Open the installed Linux distribution and run:
     ```bash
     sudo apt-get update
     sudo apt-get install fswatch
     ```

### create_files.sh

- **Description**: Automates the creation of multiple C source files with a basic template and compiles them.
- **Usage**:

  ```bash
  ./create_files.sh <output_dir> <file_prefix> <task_from> <task_to>
  ```

- **Arguments**:

  - `<output_dir>`: The directory where the C files will be created. If the directory does not exist, it will be created.
  - `<file_prefix>`: The prefix for the generated C files (e.g., `task`).
  - `<task_from>`: The starting number for the task files (e.g., `1`).
  - `<task_to>`: The ending number for the task files (e.g., `10`).

- **Example**:

  ```bash
  ./create_files.sh ./ps1/tasks task 1 10
  ```

  This command will create and compile C files named `task1.c`, `task2.c`, ..., `task10.c` in the directory `./ps1/tasks/`.

- **Features**:

  - Initializes a basic C program structure in each source file.
  - Compiles each source file into an executable.
  - Creates directories as needed to organize tasks by problem set number.

- **Dependencies**:
  - `gcc`: The GNU Compiler Collection for compiling C programs.

#### Installation of GCC

- **macOS**: Install using Homebrew

  ```bash
  brew install gcc
  ```

- **Linux**: Install using a package manager

  - **Debian-based systems**:
    ```bash
    sudo apt-get update
    sudo apt-get install gcc
    ```
  - **Red Hat-based systems**:
    ```bash
    sudo yum install gcc
    ```

- **Windows**: Use Windows Subsystem for Linux (WSL) to install `gcc`.
  1. **Enable WSL**: Follow the [Microsoft guide](https://docs.microsoft.com/en-us/windows/wsl/install) to enable WSL.
  2. **Install a Linux distribution**: Install a distribution like Ubuntu from the Microsoft Store.
  3. **Install gcc**: Open the installed Linux distribution and run:
     ```bash
     sudo apt-get update
     sudo apt-get install gcc
     ```

## Getting Started

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/marekbielsky/sh-scripts.git
   ```

2. **Navigate to the Directory**:

   ```bash
   cd sh-scripts
   ```

3. **Run the Script**:
   Follow the usage instructions for the `create_files.sh` script to execute it.

## Contributing

Feel free to submit issues or pull requests if you have any improvements or bug fixes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
