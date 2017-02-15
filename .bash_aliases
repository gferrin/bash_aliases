
# use: commit "message of import"
commit() {
    git add .
    git commit -n -m $1
}

push() {
	if [ -z "$1" ]; then
		git push
	else
		commit $1
		git push
	fi
}

pullover() {
	if [ -z "$1" ]; then
		echo "Error: Must pass branch name"
	else
		git fetch --all
		git reset --hard origin/$1
	fi
}

alias pull="git pull"

whois () {
    command whois "domain ${1}"
}
