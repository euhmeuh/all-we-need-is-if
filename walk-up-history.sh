#!/bin/bash

# Walk up through a repository's history and report the number of "if" in a CSV file.
# With all those KPIs you can make beautiful graphics for your powerpoint presentations.
# Because the number of "if" in your code should be the most precious insight of software quality.
# Don't let anyone tell you otherwise.

GIT_PATH=/home/user/git
GIT_URL=https://github.com/user/your-repo.git
GIT_REPO=your-repo
DB_PATH=/home/user/result.csv

git_move_to_previous_commit () {
  git reset --hard HEAD^1
}

git_current_date () {
  echo `git show -s --format=%cI HEAD`
}

cd $GIT_PATH
rm -rf $GIT_REPO
git clone $GIT_URL
cd $GIT_REPO

commit_date=`git_current_date`
while [[ 1 ]]
do
  all-we-need-is-if --database $DB_PATH --fake-date $commit_date
  message=`git_move_to_previous_commit 2>&1`
  if [[ $message == fatal* ]]
  then
    break
  fi
  echo $message
  commit_date=`git_current_date`
done
