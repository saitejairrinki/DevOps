**Session Notes: Using .bashrc, Command Line Arguments, Conditional Statements, Loops, and Export Command in Linux**

---

## Using .bashrc to Create Aliases:

The `.bashrc` file in Linux is a script that's executed whenever you start a new terminal session. It allows you to customize your shell environment by defining aliases, functions, variables, and more. Here's how you can use `.bashrc` to create aliases:

1. Open your terminal.
2. Use a text editor like `nano` or `vim` to edit your `.bashrc` file. The file is usually located in your home directory.
3. Add alias definitions at the end of the file, like this:
   
   ```bash
   alias ll='ls -l'
   alias update='sudo apt update && sudo apt upgrade'
   ```

4. Save the file and exit the text editor.
5. To apply the changes, either restart your terminal or run `source ~/.bashrc`.

Now, you can use the aliases you defined in your terminal. For example, `ll` will be equivalent to `ls -l`.

---

## Usage of Command Line Arguments in Bash Script:

Command line arguments allow you to pass input values to a Bash script when executing it. They are accessed using special variables: `$1`, `$2`, `$3`, ..., where `$1` represents the first argument, `$2` the second, and so on. Here are a few more details about command line arguments:

- `$0`: Name of the script itself.
- `$#`: Number of arguments passed.
- `$@`: All arguments as a list.
- `$*`: All arguments as a single string.

Example usage in a script named `myscript.sh`:
```bash
#!/bin/bash

echo "Script name: $0"
echo "Number of arguments: $#"
echo "Arguments list: $@"
echo "Arguments as string: $*"
```

When you run `./myscript.sh arg1 arg2 arg3`, the script will output:
```
Script name: ./myscript.sh
Number of arguments: 3
Arguments list: arg1 arg2 arg3
Arguments as string: arg1 arg2 arg3
```

---

## Conditional Statements: if-else and elif:

Conditional statements allow you to make decisions in your scripts based on conditions. The most common conditional statements are `if`, `else`, and `elif` (short for "else if"). Here's their structure:

```bash
if condition; then
    # Code to execute if condition is true
elif another_condition; then
    # Code to execute if another_condition is true
else
    # Code to execute if none of the conditions are true
fi
```

Example:
```bash
#!/bin/bash

age=25

if [ "$age" -lt 18 ]; then
    echo "You're a minor."
elif [ "$age" -ge 18 ] && [ "$age" -lt 65 ]; then
    echo "You're an adult."
else
    echo "You're a senior."
fi
```

---

## Loops: for and while:

Loops allow you to execute a block of code repeatedly. Two common loop types are `for` and `while`.

**For Loop:**
```bash
#!/bin/bash

for i in {1..5}; do
    echo "Iteration $i"
done
```

**While Loop:**
```bash
#!/bin/bash

count=1

while [ $count -le 5 ]; do
    echo "Count: $count"
    ((count++))
done
```

In both examples, the loops will run five times, printing the corresponding output.

---

## Export Command Usage in Linux:

The `export` command is used to set environment variables that are accessible to child processes of the current shell. This is often used to make certain variables available to other scripts or programs you run.

Example:
```bash
#!/bin/bash

# Set an environment variable
export MY_VAR="Hello, world!"

# Run another script that uses the environment variable
./another_script.sh
```

In `another_script.sh`:
```bash
#!/bin/bash

echo "Value of MY_VAR: $MY_VAR"
```

When running the main script, it will set the environment variable, and the `another_script.sh` will be able to access its value using `$MY_VAR`.

---

By mastering these concepts and commands, you'll have a solid foundation for scripting and working with the Linux command line. Remember to practice and experiment to gain a deeper understanding.
