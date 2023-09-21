# Azure DevOps Exercises

**Exercise 1: Create a 1st Pipeline to Run Hello World in Windows Microsoft Hosted**

1. **Sign in to Azure DevOps:**
   - Go to the Azure DevOps portal at https://dev.azure.com/.

2. **Create a New Project:**
   - If you haven't already, create a new project to organize your pipelines.

3. **Create a New Build Pipeline:**
   - Click on "Pipelines" in the left menu.
   - Click "New Pipeline."
   - Select your repository.

4. **Configure the Build Steps:**
   - In the "Build Pipeline" wizard, select "Empty Job."

   - Click on the "+" button to add a build task.
   
   - Search for "Command Line" and add it.

   - In the Command Line task:
     - Set the "Tool" to `cmd`.
     - In the "Script" field, enter the following command:
       ```shell
       echo Hello, World!
       ```

5. **Save and Queue the Build:**
   - Save your pipeline configuration.

   - Click "Queue" to run the build.

6. **View Results:**
   - After the build completes, view the build logs to see "Hello, World!" printed.

**Exercise 2: Run the Same Pipeline in Ubuntu Microsoft Hosted**

1. **Edit the Build Pipeline:**
   - Open the build pipeline created in Exercise 1.

2. **Clone and Modify Steps:**
   - Clone the existing build task.
   
   - Change the agent specification for the cloned task to use an Ubuntu agent.

   - Save your changes.

3. **Queue the Build Again:**
   - Queue the build again to run on the Ubuntu agent.

4. **View Results:**
   - After the build completes, view the build logs to see "Hello, World!" printed from an Ubuntu agent.

**Exercise 3: Use Variables**

1. **Edit the Build Pipeline:**
   - Open the build pipeline created in Exercise 1.

2. **Add a Variable:**
   - In the pipeline editor, click "Variables" on the left.

   - Add a new variable, e.g., `myVar`, with a value like "This is a variable."

3. **Use the Variable in a Task:**
   - Go back to the build steps.
   
   - Edit the Command Line task.

   - In the "Tool" field, set it to `cmd`.

   - In the "Script" field, use the variable like this:
     ```shell
     echo $(myVar)
     ```

4. **Save and Queue the Build:**
   - Save your changes and queue the build.

5. **View Results:**
   - The pipeline will print the value of the `myVar` variable.

**Exercise 4: Calling a Variable in Inline Script**

1. **Edit the Build Pipeline:**
   - Open the build pipeline created in Exercise 1.

2. **Modify the Command Line Task:**
   - In the Command Line task:
     - Set the "Tool" to `cmd`.
     - In the "Script" field, replace the existing script with:
       ```shell
       echo $(myVar)
       ```

3. **Save and Queue the Build:**
   - Save your changes and queue the build.

4. **View Results:**
   - The pipeline will execute the inline script with the variable.

**Exercise 5: Calling a Variable in Shell Script File**

1. **Create a Shell Script File:**
   - Create a shell script file (e.g., `myscript.sh`) in your repository.

   - Inside the script file, use the variable like this:
     ```shell
     #!/bin/bash
     echo $myVar
     ```

2. **Edit the Build Pipeline:**
   - Open the build pipeline created in Exercise 1.

3. **Add a New Task:**
   - Add a "Copy Files" task to copy your script file to the build agent.

   - Add a "Command Line" task to run the script file.

4. **Configure the Command Line Task:**
   - Set the "Tool" to `bash`.
   
   - In the "Script" field, enter the path to your script file.

   - Save your changes.

5. **Save and Queue the Build:**
   - Save your changes and queue the build.

6. **View Results:**
   - The pipeline will execute the shell script file with the variable.

**Exercise 6: Using Advanced Directory**

1. **Edit the Build Pipeline:**
   - Open the build pipeline created in Exercise 1.

2. **Configure Workspace Mapping:**
   - In the pipeline editor, click "Get sources" on the left.

   - Configure the repository mapping, specifying a different directory to checkout code into.

   - Save your changes.

3. **Modify Build Steps:**
   - Update your build steps to reflect the new directory structure as needed.

**Exercise 7: Using YAML**

Classic pipelines primarily use UI-based configuration, and YAML pipelines are not supported in the classic pipeline editor. YAML pipelines are created and configured using YAML files in the repository.

For YAML pipelines, you can refer to Exercise 2 from your original list.

**Exercise 8: Scheduling Pipeline**

1. **Edit the Build Pipeline:**
   - Open the build pipeline created in Exercise 1.

2. **Configure Trigger:**
   - In the pipeline editor, click "Triggers" on the left.

   - Set up a schedule for your pipeline, such as a daily or weekly build.

   - Save your changes.

3. **Save and Queue the Build:**
   - Save your changes.

4. **View Results:**
   - The pipeline will be automatically triggered based on the schedule you defined.

**Exercise 9: Enabling CI, Including and Excluding Branches**

1. **Edit the Build Pipeline:**
   - Open the build pipeline created in Exercise 1.

2. **Configure Continuous Integration (CI):**
   - In the pipeline editor, click "Triggers" on the left.

   - Enable "Continuous integration."

   - Specify branch filters to include or exclude certain branches.

   - Save your changes.

3. **Save and Queue the Build:**
   - Save your changes.

4. **View Results:**
   - The pipeline will be automatically triggered when there are changes to the specified branches based on your include/exclude filters.

**Exercise 10: Chaining Build Pipelines (Build One After Another If Previous One Succeeded)**

**Pipeline 1: HelloWorld-Windows**

1. **Create Pipeline 1:**
   - Go to the Azure DevOps portal and select your project.

   - Click on "Pipelines" in the left menu.

   - Click "New Pipeline."

   - Select your repository.

2. **Configure Pipeline 1:**
   - Choose the template "Starter pipeline" or create an empty job.

   - Add a build task (e.g., "Command Line").

   - In the Command Line task:
     - Set the "Tool" to `cmd`.
     - In the "Script" field, enter the following command:
       ```shell
       echo Hello, World from Windows!
       ```

3. **Save and Queue Pipeline 1:**
   - Save your pipeline configuration.

   - Click "Queue" to run Pipeline 1.

4. **View Results:**
   - After Pipeline 1 completes successfully, proceed to create Pipeline 2.

**Pipeline 2: HelloWorld-Ubuntu (Triggered by Pipeline 1)**

1. **Create Pipeline 2:**
   - Go to the Azure DevOps portal and select your project.

   - Click on "Pipelines" in the left menu.

   - Click "New Pipeline."

   - Select your repository.

2. **Configure Pipeline 2:**
   - Choose the template "Starter pipeline" or create an empty job.

   - Add a build task (e.g., "Command Line").

   - In the Command Line task:
     - Set the "Tool" to `bash`.
     - In the "Script" field, enter the following command:
       ```shell
       echo Hello, World from Ubuntu!
       ```

3. **Configure Trigger (Pipeline 2):**
   - In the pipeline editor for Pipeline 2, click on "Triggers" on the left.

   - Enable "Continuous integration."

   - Set the branch filters or paths as needed.

   - Under "Build completion," select "Trigger the pipeline after the build is complete."

   - In the "Select pipeline" dropdown, choose "HelloWorld-Windows."

   - Save your changes.

4. **View Results:**
   - After Pipeline 1 (HelloWorld-Windows) succeeds, Pipeline 2 (HelloWorld-Ubuntu) will be automatically triggered.

5. **Queue Pipeline 2 (Optional):**
   - If you want to manually queue Pipeline 2 for testing, you can do so. However, it will also be triggered automatically after the successful completion of Pipeline 1.

6. **View Results:**
   - After both pipelines complete, you will see the respective "Hello, World" messages from Windows and Ubuntu.

  > This exercise demonstrates the chaining of build pipelines, where Pipeline 2 is triggered automatically when Pipeline 1 succeeds. This workflow can be useful for building and testing across different environments or configurations sequentially.

You've now completed all the exercises from 1 to 10 using classic pipelines in Azure DevOps, with updated instructions for using pipeline variables and `.sh` files. These exercises cover a wide range of concepts and practices in Azure DevOps, helping you become more proficient in using the platform for CI/CD and pipeline management.
