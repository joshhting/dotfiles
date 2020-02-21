export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

_imp () {
  python manage.py import --type $1 --source data/xml
}

alias g='git'
alias h='hub'
alias cm='django-admin compilemessages'
alias dam='django-admin makemessages -a -i=dependencies/env/* -i=install/dependencies/*'
alias mm='python manage.py makemigrations'
alias m='python manage.py migrate'
alias run='python manage.py runserver'
alias imp='_imp'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "


source ~/dotfiles/docker.sh