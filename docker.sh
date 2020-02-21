# docker shortcuts
alias d='docker'
alias db='docker build -t'
alias di='docker images'
_dr() {
	docker run -d --name $1 $2
}
alias dr='_dr'
alias dps='docker ps'
alias dpsa='docker ps -a'