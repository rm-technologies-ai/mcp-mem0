📌 Check Current Git State
git status            # See current changes and branch
git branch            # Show current branch (with *)
git remote -v         # Display configured remote repositories
git log --oneline     # Compact view of recent commits

🌿 Branch Management
git branch <branch_name>        # Create new branch
git checkout <branch_name>      # Switch to existing branch
git checkout -b <branch_name>   # Create and switch to new branch
git branch -d <branch_name>     # Delete a local branch

📤 Sync with Remote Repository
git remote add origin <repo_url>    # Add remote (if not already added)
git remote -v                       # Verify remotes
git fetch origin                    # Fetch updates from remote without merging
git pull origin <branch_name>        # Pull latest changes into current branch
git push -u origin <branch_name>     # Push new branch and set upstream
git push                            # Push commits to upstream branch

📦 Staging and Committing Changes
git add .                           # Stage all modified files
git add <file>                      # Stage specific file
git commit -m "Your commit message" # Commit staged changes
git commit -am "Quick commit"       # Add and commit changes in one step
git diff                            # See unstaged changes
git diff --staged                   # See staged changes ready to commit

🔁 Pull Requests Workflow
1. Create and switch to a development branch:
git checkout -b dev

2. Make changes, then stage and commit:
git add .
git commit -m "Feature: Implemented XYZ"

3. Push branch to your fork:
git push -u origin dev

4. Go to GitHub → Your Fork → Click "Compare & Pull Request".

🧹 Clean Up
git stash               # Temporarily save uncommitted changes
git stash pop           # Reapply stashed changes
git reset --hard HEAD   # Discard all local changes


Remove-Item -Path "F:\repos\mcp-mem0" -Recurse -Force


As a stepping stone to multiple critical tasks, I need assistance in installing and configuring this self-hosted mcp server for memory to be cloned cloned from: https://github.com/rm-technologies-ai/mcp-mem0

I forked this repo from https://github.com/coleam00/mcp-mem0

I am using cursor ide for the build and source control. I need to create a dev branch and follow github protocols to request pulls to the author of the original repo so i can contribute. I need to create a dev branch before starting installation and configuration. 
*** do not offer options in responses. always follow the default, best-practice, preferred path of steps ***

Provide RPA-style step-by-step instructions to proceed with the installation, configure cursor to use it, and test that the mcp server is working. The next step is to clone the repo locally. proceed.

supabase:
Nghbfgngh9822$
postgresql://postgres:[YOUR-PASSWORD]@db.shueqqaomijvpascldwx.supabase.co:5432/postgres

& "C:\Program Files\Python312\python.exe" -m venv .venv