cd c:/git

alias gka="gitk --all"
alias gco="git checkout"
alias gs="git status"
alias ga="git add -A"
alias gcm="git commit -m"
alias gf="git fetch origin"

function vs17 {
	if [ -n "$1" ]; then
		file=$1
	else
		file=( $(ls -xt *.sln | head -n1))
	fi
	if [ -z "$file" ]; then
		echo "No solution found."

	else
		/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Community/Common7/IDE/devenv.exe "$file" &
	fi
}