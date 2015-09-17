How does tracking and adding changes make developers' lives easier?

Tracking and adding changes make developers lives easier because it helps tell when and who made what changes. It also allows developers to revert back to previous versions that are tracked when debugging their product.

What is a commit?

 A commit is like a checkpoint for your work. It officially saves and and allows you to even put in messages to briefly detail what changes were made.

What are the best practices for commit messages?

Commit messages should be capitalized, short (50 chars or less) summary. Write them in the imperative. Bullets are okay, used with a hyphen or asterisk followed by a single space.

What does the HEAD^ argument mean?

HEAD is the commit you are currently on, HEAD^ is the last commit, HEAD~3, HEAD~4, HEAD~5, are the 3rd 4th and 5th commit from HEAD respectively.

What are the 3 stages of a git change and how do you move a file from one stage to the other?

The three stages of a git change would be:

*nothing to commit, working directory clean (this is when there are no changes to the file and nothing to commit)

*Changes staged for commit. (This is when you have changes to the files you are using, but haven't staged them for commit using [git add <file>]. If you use [git status] it will show you your untracked and modified files that are waiting to be staged.)

*The last stage would be right before you commit the changes. The files that have been modified or added are staged already and are awaiting a [git commit] command using either [git commit -m "message goes here"] or a more thorough [git commit -v] then full description in the commit file.

Write a handy cheatsheet of the commands you need to commit your changes?

*git status
*git checkout -b branch-name
*git add
git commit -m "message"
git commit -v

What is a pull request and how do you create and merge one?

Pull requests are changes that are pushed to a git repository that notify the coders invovled that could potentially improve or modify their existing code.

*To create a pull request push the branch to github using "git push origin branch-name"

*Because github will recognize a difference in your branch a notification to fullfill the pull request will appear within your branch (if not go to your fork, click on your branch in the dropdown menu, and right below the dropdown menu there is a gray bar with pull request)

*If neccessary, "hack" GitHub by changing the URL from github.com/devbootcamp/phase-0-unit-1/compare/master...USERNAME:BRANCHNAME?expand=1 to
github.com/USERNAME/phase-0-unit-1/compare/master...USERNAME:BRANCHNAME?expand=1

*The "base for" should point to YOUR-USERNAME/phase-0-unit-1 with base:master

*Either comment on what has been changed or just press "Create Pull request"

[Merging changes]

*If you want to merge the changes you need to click on the pull request and click "Merge pull request".

*Confirm the merge and clean up your branches by deleting the extra branch that was made by clicking "Delete branch button"

Why are pull requests preferred when working with teams?

Pull requests are preferred when working with teams because it is a great way to review other code and have a better overall understanding of the project as a team. For example; a team that doesn't utilize pull requests can work on their part of the project with minimal understanding of parts that they are not involved in. Using PRs, it forces the team to review parts of the code they are not directly working with to increase code knowledge, see how others code on a more hands on level, and is a great way for constructive feedback on one's own code. PRs improve that fluency of the project.