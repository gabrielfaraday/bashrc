cd c:/git/

#general
alias c="clear"
alias restart="exec bash"
alias this="explorer ."
alias edit="code /c/Users/user/.bashrc"

#git
alias gka="gitk --all &"
alias gco="git checkout"
alias gs="git status"
alias ga="git add -A"
alias gac="git add -A && git commit -m"
alias gf="git fetch origin"
alias gpo="git push origin"
alias email=" git config --global user.email"
alias name=" git config --global user.name"
alias pai="git shortlog -s -n --all --no-merges"

#dotnet
alias dnr="dotnet restore"
alias dnb="dotnet build"
alias dnt="dotnet test"
alias dnts="dotnet test src/Test/ //p:CollectCoverage=true //p:CoverletOutputFormat=OpenCover"
alias config_cv="dotnet tool install -g dotnet-reportgenerator-globaltool && dotnet tool install dotnet-reportgenerator-globaltool --tool-path tools"
alias cv="reportgenerator "-reports:src/Test/coverage.opencover.xml" "-targetdir:src/Test/reports" "-sourcedirs:src/" -reporttypes:HTML;Cobertura"

#docker
alias dkps="docker ps"
alias dkb="docker build . -t"
alias dkr="docker run"
alias dki="docker images"

#gcloud
alias gcloud="gcloud.cmd"

#kubernetes
alias k="kubectl"
alias kg="kubectl get"
alias kgn="kubectl get namespace"
alias kgp="kubectl get pods -o wide -n"
alias kd="kubectl describe"
alias kdp="kubectl describe pod"
alias kdel="kubectl delete"
alias kdelp="kubectl delete pod"
alias kdeln="kubectl delete namespace"

#functions
function gcl {
    git clone $1

	path=$1
	basepath="https://gitbasepath/"
	end=".git"

	myfolder=${path#${basepath}}
	myfolder=${myfolder%${end}}
	
	cd ${myfolder}
}

function repo() {
    path="$(pwd)/"
    basepath="/c/git/"
    myrepo=${path#${basepath}}
    start chrome https://url.com/${myrepo%%/*}
}

function pipe() {
    path="$(pwd)/"
    basepath="/c/git/"
    myrepo=${path#${basepath}}
    start chrome https://url.com/${myrepo%%/*}/pipelines
}

function gcp() {
    start chrome https://console.cloud.google.com/home/dashboard
}

function vs {
	if [ -n "$1" ]; then
		file=$1
	else
		file=( $(ls -xt *.sln | head -n1))
	fi
	if [ -z "$file" ]; then
		echo "No solution found."

	else
		/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2019/Community/Common7/IDE/devenv.exe "$file" &
	fi
}
