


http://pcottle.github.io/learnGitBranching/

Fetch vs Pull

Git fetch just updates your repo data, but a git pull will basically perform a fetch and then merge the branch pulled

Merge vs Rebase
Merging brings two lines of development together while preserving the ancestry of each commit history.

In contrast, rebasing unifies the lines of development by re-writing changes from the source branch so that they appear as children of the destination branch – effectively pretending that those commits were written on top of the destination branch all along.





How do I force an overwrite of local files on a git repo
git fetch --all
git reset --hard origin/master
