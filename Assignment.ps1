# i) Create a Repository
New-Item -ItemType Directory -Path ABC_Migration

git init

# ii) Add Two Directories and Some Raw Code Files to the Repository
New-Item -ItemType Directory -Path directory1,directory2
New-Item -ItemType File -Path directory1\file1.txt,directory2\file2.txt
git add .
git commit -m "Added directories and raw code files"

# iii) Move Code from One Directory to Another Directory
Move-Item directory1\file1.txt directory2\
git add .
git commit -m "Moved code from directory1 to directory2"

# iv) Update One Source Code File and Display the Difference
Add-Content directory2\file1.txt "New line of code"
git diff

# v) Create a Branch
git branch feature_branch

# vi) Add Some Raw Code to the Branch
git checkout feature_branch
New-Item -ItemType File -Path directory1\file3.txt
git add .
git commit -m "Added new file to feature branch"

# vii) Merge the Branch with Mainline
git checkout main
git merge feature_branch

# Summary of advantages
$advantages_summary = @"
Advantages of moving from Centralized Source Code to Distributed Version Control:
1. Offline Work: Developers can work offline and commit changes locally without needing constant access to a central server.
2. Faster Development: Branching and merging are lightweight and efficient, enabling faster development cycles and experimentation.
3. Improved Collaboration: Each developer has a complete copy of the repository, fostering better collaboration and reducing dependency on a central server.
4. Enhanced Security: With distributed version control, repositories are mirrored across multiple locations, reducing the risk of data loss.
5. Flexibility: Developers can choose from various workflows and tools that best suit their project requirements.
"@

Write-Output $advantages_summary
