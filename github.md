# Git and GitHub Basics

## What is Git?
Git is a distributed version control system (VCS) that helps developers track changes in their code over time. It allows multiple developers to work on the same project efficiently by managing versions and merging changes.

### Example:
If you're working on a project and accidentally delete some code, Git allows you to revert back to a previous version of the file.

---

## What is GitHub?
GitHub is a web-based platform that hosts Git repositories. It allows developers to collaborate, share, and manage projects online. GitHub provides additional features like issue tracking, project boards, and automated workflows.

### Example:
Developers from different parts of the world can collaborate on the same codebase by pushing their changes to a shared repository on GitHub.

---

## Difference Between Git and GitHub
| Feature         | Git                                     | GitHub                                      |
|-----------------|-----------------------------------------|---------------------------------------------|
| Definition      | A version control system.              | A platform for hosting Git repositories.   |
| Usage           | Works locally on your system.          | Requires internet access to sync changes.  |
| Features        | Tracks changes and manages versions.   | Adds collaboration and sharing tools.      |

---

## What is a Version Control System (VCS)?
A VCS is a tool that helps track changes in files and enables collaboration among multiple developers. It records changes over time, making it easy to revert or analyze history.

### Example:
When working on a website, a VCS keeps track of all changes made to the HTML, CSS, and JavaScript files.

---

## How to Clone a Git Repository
Cloning a repository copies the project from GitHub (or another remote source) to your local machine.

### Steps:
1. Navigate to your desired folder in the terminal.
2. Use the `git clone` command with the repository URL.
   ```bash
   git clone git@github.com:username/repository.git
   ```

---

## Basic Git Commands
| Command                        | Description                                   |
|--------------------------------|-----------------------------------------------|
| `git init`                     | Initializes a new Git repository.            |
| `git clone <url>`              | Clones an existing repository.               |
| `git add .`                    | Stages all changes for the next commit.      |
| `git commit -m "message"`      | Saves staged changes with a descriptive message. |
| `git push`                     | Uploads local changes to the remote repository. |
| `git pull`                     | Fetches and merges changes from the remote repository. |
| `git status`                   | Shows the status of changes in the repository. |
| `git log`                      | Displays a log of commits.                   |

---

## How to Add SSH Keys to GitHub
Using SSH keys allows secure authentication without entering your credentials each time.

### Steps:
1. **Generate an SSH Key:**
   ```bash
   ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
   ```
   Press `Enter` to save the key to the default location.
2. **View the Public Key:**
   ```bash
   cat ~/.ssh/id_rsa.pub
   ```
   Copy the output.
3. **Add the Key to GitHub:**
   - Go to GitHub > Settings > SSH and GPG keys > New SSH key.
   - Paste the copied key and save.
4. **Test the Connection:**
   ```bash
   ssh -T git@github.com
   ```

---

## What is `git pull`?
The `git pull` command updates your local repository by fetching changes from the remote repository and merging them into your current branch.

### Example:
```bash
git pull
```

---

## What is `git push`?
The `git push` command uploads your local commits to a remote repository.

### Example:
```bash
git push
```

---

## What are Collaborators?
Collaborators are individuals who are granted access to a repository to contribute, review, and manage changes. In GitHub, the repository owner can add collaborators to allow them to push changes or review pull requests.

### Steps to Add Collaborators on GitHub:
1. Go to your repository on GitHub.
2. Navigate to **Settings** > **Manage Access** > **Invite a collaborator**.
3. Enter the collaborator's GitHub username or email.
4. Send the invitation.

The collaborator will receive an email to accept the invitation, gaining access to the repository.

---

## Using Git with Bitbucket
Bitbucket is another platform for hosting Git repositories. It integrates seamlessly with Atlassian tools like Jira and Trello and offers both cloud-hosted and on-premise solutions (Bitbucket Server).

### Key Features:
- **Pull Requests:** Collaborate on code reviews.
- **Pipeline Integration:** Built-in CI/CD support.
- **Team Collaboration:** Manage team access and permissions.

### Example Workflow:
1. Clone a repository from Bitbucket:
   ```bash
   git clone git@bitbucket.org:username/repository.git
   ```
2. Push changes:
   ```bash
   git add .
   git commit -m "message"
   git push
   ```
3. Pull changes:
   ```bash
   git pull
   ```

---

## Using Git with Azure Repos
Azure Repos is a part of Azure DevOps Services, offering unlimited private Git repositories with advanced collaboration tools.

### Key Features:
- **Branch Policies:** Enforce quality with required reviewers or build validations.
- **Integration:** Connects with Azure Pipelines for CI/CD.
- **Code Search:** Enables searching across repositories.

### Example Workflow:
1. Clone a repository from Azure Repos:
   ```bash
   git clone https://dev.azure.com/organization/project/_git/repository
   ```
2. Push changes:
   ```bash
   git add .
   git commit -m "message"
   git push
   ```
3. Pull changes:
   ```bash
   git pull
   ```

---

## Practiced Commands
```bash
ssh-keygen
ssh-keygen -t rsa
ls ~
ls -a ~
cd ~/.ssh/
ls
rm id_e*
ls
cat id_rsa.pub
cd ~/winterbatch/
git clone git@github.com:saitejairrinki/winterbatch.git
ls
cd winterbatch/
ls
cat README.md
ls
git log
git revert b2d1162b2c9175b83284036b6f289cd5e3bc142c
cat README.md
ls
git status
git add .
git status
touch sample.txt
cat README.md
mkdir winter
ls
git status
vim README.md
git status
ls
ls winter/
touch winter/example.txt
git status
git add .
git status
git push
vim sample.txt
git add .
git push
git status
git commit -m "adding files"
git push
cat README.md
git pull
cat README.md
vim README.md
git add .
git commit -m "def commit"
git push
history
```

