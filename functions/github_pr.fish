function github_pr
	git fetch upstream pull/$argv/head:PR-$argv
end
