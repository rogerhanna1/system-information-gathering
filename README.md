# Assignment: System Information Gathering

## Introduction

In this assignment, you will use the basic Bash commands learned in the previous lesson to gather important system information and save it to text files. This assignment will give you practice working with relative and absolute paths in the file system, creating directories and files, and using commands to retrieve system details.

### Starter Files

The `gather_system_info.sh` script file inside this repository (which is empty and you will complete it following the instructions below).

## Steps

First open the `gather_system_info.sh` file using an appropriate text editor (e.g., VSCode, vim, nano, etc.). Add the following line of text to the very first line of your script file:
```bash
#!/bin/bash
```
This line (called the "shebang" line) indicates to the operating system that the contents of the `gather_system_info.sh` file should be executed by a bash interpreter.  
  
After the shebang line, add commands that accomplish the following tasks (each on their own line) to the `gather_system_info.sh` script.

1. Create a new directory called `system_info`.
2. Create a new empty file called `info.txt` that lives inside the `system_info` directory.
3. Run a command that will print your current working directory and append it to the `system_info/info.txt` file.
4. Run the `ls` command with the `-l` option to enumerate the contents of the `/etc` directory and redirect the output to a new file named `system_info/etc_files.txt`.
5. Copy the `/etc/os-release` file to the `system_info` directory.
6. Rename the file you copied over in the previous step to `os_details.txt` (it should remain in the `system_info` directory).
7. Use the `cat` command to append the contents of `system_info/os_details.txt` to the `system_info/info.txt` file.
8. Use the `uname` command with the `-a` option to fetch system information and append the contents to `system_info/info.txt`.
9. Use the `df` command with the `-h` option to fetch disk-space usage and append the output to `system_info/info.txt`.
10. Use the `chmod` command to change the permissions of `system_info/info.txt` so that it is readable and writable by the owner alone.

## Testing/Debugging

To run your script, simply invoke it in an interactive terminal like this (your working directory needs to be the repository directory):
```bash
./gather_system_info.sh
```

The `gather_system_info.sh` script should already have executable permissions from when you cloned the repository. If for some reason you see `Permission denied` when you try to run it, simply add executable permissions to the file by running the `chmod` command:
```bash
chmod u+x gather_system_info.sh
```

Since each run of your script will try to create the `system_info` directory, you will need to delete this directory prior to each subsequent run of your script, which you can do with the `rm` command:
```bash
rm -rf system_info
```

If implemented correctly, your script should have created three files inside of the `system_info/` directory: `etc_files.txt`, `info.txt`, and `os_details.txt`. You can check this by running `ls system_info/` after executing your script.

## Deliverables

Your completed `gather_system_info.sh` script is the only required deliverable, which you must commit to your git repository locally and push up to GitHub.  
  
_Note:_ The `system_info/` directory and its contents are artifacts produced by running your `gather_system_info.sh` script. Files like this are typically not commited to a git repository because they are only relevant to the machine on which the script was run. You will not lose points if you commit/push the files in this directory, but the accuracy of your script is what will ultimately be graded, not any committed output files. (The best practice in this sort of situation is to add a `.gitignore` file to your repository and indicate that `system_info/` should be omitted from git tracking. Feel free to implement this in your repository if you wish.)

## Conclusion

By completing this assignment, you have practiced using essential Bash commands to navigate the file system, create directories and files, copy and rename files, retrieve system information, and manage file permissions. These skills are crucial for performing various system administration tasks and understanding the Linux environment.

Remember to refer to the `man` pages or use the `--help` option if you need more information about a specific command. Don't hesitate to ask for assistance if you encounter any challenges during the assignment.
