#Web Flashcards

Git workflow

##Set up github repository
[X]Set up git repository and add everyone as collaborators. 

##Clone Repository onto everyone's local machine

[ ] git clone https://github.com/KevinFalank/web_flashcards.git web_flashacards


## Commit 

   git add 
   git commit -v 

## Create a new branch for new features

  _To create a new branch on the local machine, git checkout -b.  This creates a new branch. The branch should be named with your first three initials and the feature you are working on._ 

  git checkout -b TLR/Add-git-workflow-to-readme
  
  commit workflow

  _To make the branch appear on github, use git push -u origin.  Instead of pushing to master, in the place where you would usually type master, type the name of your branch. This will create a new branch on the remote repository called TLR/awesome-git-workflow-readme._

  git push -u origin TLR/Add-git-workflow-to-readme

## Create a pull request to merge two branches together.  

  1.To create a pull request, go to the github website. 
  2. Click on a branch. 
  3. A button will appear saying "compare and pull request". Click it. 
  4. You will see a new screen asking you to write a pull request message. Github is smart, so it will look at your latest commit message.  The title of the pull request will be the first 80 characters of your commit message. The body of the pull request will be the rest of the commit message. If you wrote a good commit message, you can just press send pull request.
  5. The pull request is created. 

  If there are no merge conflict, you can press the merge pull request button. If there are merge conflicts, 

## Handling a pull request with merge conflicts. 
  1. To be written



## 
