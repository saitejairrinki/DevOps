# GitHub & Azure Repo
To link a GitHub repository with an Azure Pipeline using a Personal Access Token (PAT) and run the `ls` command in a command-line task within a Classic Azure Pipeline, you can follow these steps. I'll also provide an alternative process using the "Import repository" feature.

### Method 1: Linking GitHub Repo with Azure Pipeline using a PAT

#### Prerequisites:
- A GitHub account.
- A GitHub repository where you have administrative or collaborator access.
- An Azure DevOps organization and project.
- A Classic Azure Pipeline created in your project.

#### Step 1: Generate a Personal Access Token (PAT) in GitHub

1. Log in to your GitHub account.

2. Click on your profile picture in the top right corner and select "Settings."

3. In the left sidebar, click on "Developer settings."

4. Under "Access tokens," click on "Generate token."

5. Provide a token description and select the required scopes. At a minimum, select "repo" to access repositories.

6. Click "Generate token," and GitHub will generate a PAT. Copy the token; you won't be able to see it again.

#### Step 2: Link GitHub Repo to Azure Pipeline

1. Go to your Azure DevOps project.

2. Navigate to Pipelines > Pipelines.

3. Create a new Classic Pipeline or edit an existing one.

4. Configure your pipeline as needed. Ensure it's set up to trigger on code changes in your GitHub repository.

#### Step 3: Add a Command Line Task

1. In your pipeline configuration, click on "Tasks."

2. Click the "+" button to add a new task.

3. Search for "Command Line" and select the "Command Line" task.

#### Step 4: Configure the Command Line Task

1. In the Command Line task configuration, specify a display name (e.g., "Run ls command").

2. In the "Script" field, enter the `ls` command to list files, for example:

   ```bash
   ls
   ```

3. Below the "Script" field, expand the "Advanced" section.

4. Check the box for "Tool Installer," and select the version of Node.js you want to use (e.g., "LTS").

#### Step 5: Configure the GitHub PAT as a Secure Variable

1. In your Azure Pipeline, navigate to "Variables."

2. Click on "New variable" to add a new variable.

3. Provide a name for the variable (e.g., `GITHUB_PAT`) and paste the GitHub PAT you generated in Step 1 as the value.

4. Ensure that the variable is marked as "Secret" to keep it secure.

#### Step 6: Use the GitHub PAT in the Pipeline

1. Go back to your pipeline configuration and add a PowerShell or Bash script step that uses the `GITHUB_PAT` variable as an environment variable.

   For example, in a PowerShell script step:

   ```powershell
   $env:GITHUB_TOKEN = $(GITHUB_PAT)
   ```

   In a Bash script step:

   ```bash
   export GITHUB_TOKEN=$(GITHUB_PAT)
   ```

#### Step 7: Save and Run the Pipeline

1. Save your pipeline configuration.

2. Queue a new build by clicking "Save" and then "Queue" or trigger it manually.

Now, when your Azure Pipeline runs, it will execute the `ls` command as part of the Command Line task using the GitHub PAT for authentication.

### Method 2: Import GitHub Repository and Create Pipeline

#### Step 1: Import GitHub Repository to Azure DevOps

1. Go to your Azure DevOps project.

2. Navigate to Repos > Files > Import repository.

3. Provide the GitHub repository URL and configure import settings.

4. Click "Import" to bring your GitHub repository into Azure DevOps.

#### Step 2: Create a New Classic Azure Pipeline

1. Go to Pipelines > Pipelines.

2. Create a new Classic Pipeline or edit an existing one.

#### Step 3: Configure Pipeline and Run `ls` Command

1. Select the repository you imported from GitHub in Step 1 as the source.

2. Configure your pipeline steps as needed.

3. Add a Command Line task as described in Method 1, Step 3.

4. In the Command Line task, specify the `ls` command as described in Method 1, Step 4.

5. Save and run your pipeline as described in Method 1, Step 7.

Both methods will allow you to link a GitHub repository with an Azure Pipeline using a GitHub PAT and run the `ls` command or any other commands as part of your pipeline's tasks. Choose the method that best fits your workflow and project requirements.

To link an Azure DevOps repo with an Azure Pipeline and run the `ls` command in a command line task, you can follow these steps. I'll also provide an alternative process using the "Import repository" feature.

### Method 1: Linking Azure DevOps Repo with Azure Pipeline

#### Prerequisites:
- An Azure DevOps organization and project.
- An Azure Pipeline created in your project.

#### Step 1: Create an Azure Pipeline

1. Go to your Azure DevOps project.
2. Navigate to Pipelines > Pipelines.
3. Create a new pipeline or edit an existing one.

#### Step 2: Add a New Stage

1. In your pipeline configuration, click on "Stages."
2. Click "New stage" to add a new stage.

#### Step 3: Configure the Stage

1. Give your stage a name (e.g., "Build" or "Test").
2. In the stage, click "Add job."
3. Add a job and give it a name (e.g., "Command Line Job").

#### Step 4: Add a Command Line Task

1. Within the job, click on "Agent job 1."
2. Click the "+" button to add a new task.
3. Search for "Command Line" and select the "Command Line" task.

#### Step 5: Configure the Command Line Task

1. In the Command Line task configuration, you can set the display name.
2. In the "Script" field, you can enter the `ls` command or any other command you want to run. For example, to list files in a directory:
   
   ```
   ls
   ```

#### Step 6: Save and Queue the Pipeline

1. Save your pipeline configuration.
2. Queue a new build by clicking "Save & queue" or trigger it manually.

Now, when your pipeline runs, it will execute the `ls` command as part of the Command Line task.

### Method 2: Import Repository and Create Pipeline

#### Step 1: Import Repository

1. Go to your Azure DevOps project.
2. Navigate to Repos > Files > Import repository.
3. Provide the repository URL and configure import settings.
4. Click "Import."

#### Step 2: Create a New Pipeline

1. Go to Pipelines > Pipelines.
2. Create a new pipeline or edit an existing one.

#### Step 3: Configure Pipeline

1. Select the repository you imported in Step 1.
2. Configure your pipeline as needed (e.g., specify triggers, stages, and tasks).
3. Add a Command Line task as described in Method 1, Step 4.

#### Step 4: Configure Command Line Task

1. Within the job, click on "Agent job 1."
2. Click the "+" button to add a new task.
3. Search for "Command Line" and select the "Command Line" task.
4. Configure the task by setting the display name and entering the `ls` command or any other command you want to run in the "Script" field.

#### Step 5: Save and Queue the Pipeline

1. Save your pipeline configuration.
2. Queue a new build by clicking "Save & queue" or trigger it manually.

Both methods will link your Azure DevOps repo with an Azure Pipeline and allow you to run the `ls` command or any other commands you need as part of your pipeline's tasks. Choose the method that suits your workflow and project requirements.
