function git-pr
	git fetch origin pull/$argv/head:PR-$argv
    git checkout PR-$argv
end
