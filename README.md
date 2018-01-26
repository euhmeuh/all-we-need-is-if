# all-we-need-is-if
Count the number of "if" in your code.

## Usage

```
~/git/my-repo$ all-we-need-is-if
~/git/my-repo$ all-we-need-is-if --database kpi.csv ./only/in/this/folder
~/git/my-repo$ all-we-need-is-if --fake-date 1969-01-01T09:30:00
```

## Requirements

```
$ sudo apt-get install racket
$ sudo pacman -S racket
$ my-favorite-package-manager install racket
```

## Walk up through git history

If you want to generate lots of KPI, you can study the evolution of the number of "if" in your code
since the beginning of times by walking through your repository's history!

```
~/git/my-repo$ vi walk-up-history.sh # you want to change global variables in this file
~/git/my-repo$ walk-up-history.sh
```

## Improvement tips

* All this code could have been implemented in Bash only. So if you don't want to install Racket, you can just refactor a bit the bash file to run the grep command itself and push the result in a csv file. I just felt like I wanted to code in Racket.

* All this code could have been implemented in Racket only. So if you don't like Bash, just do the thing, you know.

* You could setup a cron to keep track of your KPIs in real time!

## Is this a joke?

`#t`
