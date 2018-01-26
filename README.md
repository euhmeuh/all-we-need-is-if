# all-we-need-is-if
Count the number of "if" in your code by walking up your repository's history.

## Usage

You need to edit the global variables to fit your project:

`GIT_URL`: the url to clone  
`GIT_REPO`: the name of the repo root folder  
`FOLDER`: an optional specific folder to scan in your repo (defaults to '.')  
`DB_PATH`: the path to the CSV file used as a database for this important KPI  

:warning: **Be careful! Don't start this script in your working repository, it'll revert all the way back to the first commit.**

```
$ all-we-need-is-if
```

## Improvement tips

* You could setup a cron to keep track of your KPIs in real time!

## Is this a joke?

`:)`
