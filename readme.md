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

### create_c_files.sh

- **Description**: Automates the creation of multiple C source files with a basic template and compiles them.
- **Usage**:
  ```bash
  ./create_c_files.sh <ps_number> <task_from> <task_to>
  ```
  This will create and compile C files named `zadanie<task_number>.c` in the directory `./ps<ps_number>/zadania/` for each task number in the specified range.
- **Features**:
  - Initializes a basic C program structure in each source file.
  - Compiles each source file into an executable.
  - Creates directories as needed to organize tasks by problem set number.

## Getting Started

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/yourusername/your-repo.git
   ```

2. **Navigate to the Directory**:

   ```bash
   cd your-repo
   ```

3. **Run a Script**:
   Follow the usage instructions for each script to execute them.

## Contributing

Feel free to submit issues or pull requests if you have any improvements or bug fixes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
