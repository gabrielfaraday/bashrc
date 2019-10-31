cd c:/git

#general
alias c="clear"
alias restart="exec bash"

#git
alias gka="gitk --all &"
alias gco="git checkout"
alias gs="git status"
alias ga="git add -A"
alias gac="git add -A && git commit -m"
alias gf="git fetch origin"

#dotnet
alias dnr="dotnet restore"
alias dnb="dotnet build"
alias dnt="dotnet test"

#code-coverage
alias dnts="dotnet test src/Test/ //p:CollectCoverage=true //p:CoverletOutputFormat=OpenCover"
alias cv="reportgenerator "-reports:src/Test/coverage.opencover.xml" "-targetdir:src/Test/reports" "-sourcedirs:src/" -reporttypes:HTML;Cobertura"

#docker
alias dkps="docker ps"
alias dkb="docker build . -t"
alias dkr="docker run"

#functions
function repo() {
    path="$(pwd)/"
	basepath="/c/git/"
	myrepo=${path#${basepath}}

	start chrome https://<<base_url_of_your_repo>>/${myrepo%%/*}
}

function pipe() {
    path="$(pwd)/"
	basepath="/c/git/"
	myrepo=${path#${basepath}}

	start chrome https://<<base_url_of_your_repo>>/${myrepo%%/*}/pipelines
}

function jira() {
	start chrome https://<<url_of_your_board>>
}

function sonar() {
    path="$(pwd)/"
	basepath="/c/git/"
	myrepo=${path#${basepath}}

	start chrome http://<<base_url_of_your_sonar>>?id=${myrepo%%/*}
}

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
