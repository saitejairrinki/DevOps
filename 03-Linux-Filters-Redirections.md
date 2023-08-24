
**File Operations:**
1. **cat:** Display the contents of a file.
   Example: `cat myfile.txt`

2. **head:** Display the first few lines of a file.
   Example: `head -n 5 myfile.txt`

3. **tail:** Display the last few lines of a file.
   Example: `tail -n 10 myfile.txt`

4. **more:** Display a file's content one page at a time.
   Example: `more longfile.txt`

5. **less:** Navigate through a file's content backward and forward.
   Example: `less bigfile.txt`

**Filters:**
1. **grep:** Search for lines containing a specific pattern in a file.
   Example: `grep "error" logfile.txt`

2. **sed:** Replace a specific pattern with a replacement string in a file.
   Example: `sed 's/apples/oranges/g' fruits.txt`

3. **awk:** Print the first field of lines containing a pattern in a file.
   Example: `awk '/success/ {print $1}' results.txt`

4. **find:** Search for files or directories with a specific name within a directory.
   Example: `find /path/to/search -name "file.txt"`

**Redirections:**
1. Redirect standard output to a file:
   - `ls > file_list.txt`

2. Redirect standard output to a file and append:
   - `ls >> file_list.txt`

3. Redirect standard error to a file:
   - `ls no_directory 2> error.log`

4. Redirect standard error to a file and append:
   - `ls no_directory 2>> error.log`

5. Redirect both standard output and standard error to a file:
   - `ls &> output_and_error.log`

6. Redirect both standard output and standard error to a file and append:
   - `ls &>> output_and_error.log`

**Piping:**
1. Combine `grep` and `sort` to find specific lines and sort them:
   - `grep "error" logfile.txt | sort`

2. Count the number of lines containing a specific word using `grep` and `wc`:
   - `grep -i "apple" fruits.txt | wc -l`

Remember that these examples are meant to illustrate the concepts. Actual command usage might vary based on your specific use case and file content. Also, don't hesitate to explore the `--help` option or respective man pages for more detailed information about each command.
