# Initial command to use repo
First, go to your projects folder.
Type this command in the projects folder: git clone [insert HTTPS clone link].
This will create a folder with 3 files.
Download the files in the main branch and insert them into the folder with the files.
Go to Godot and import the project.godot file (rename project to DemoGame).

# Using github plugin in Godot
Follow the instructions on: https://github.com/godotengine/godot-git-plugin/wiki.
Once finished, go into Godot and click on Project -> Version Control -> Set Up Version Control -> Initialize.
On the right side of your screen, you will see a tab labled "Commit"...after making changes to your project, click Stage All.
After staging, type a description of the changes in the box below and click Commit Changes.

# Pushing changes to GitHub
Now, open your command prompt and go to the directory where your DemoGame is stored.
Type: git push.
This pushes all the changes to GitHub.

# DO NOT PUSH TO MAIN BRANCH
In order to create a new branch, go to the directory where DemoGame is stored.
Type: git checkout -b [name of branch].
This will create a new branch in the Repo.
When doing this, only commit changes to the file that you are editing, because if you commit all the files, it will override changes other people make.

# Merging Branches
To merge your new branch with the main branch, open the command prompt again.
Type: git merge [branch name] main.
