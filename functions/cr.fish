function cr
	if [ (count $argv) = 0 ]
        echo First commit for CR:
        echo cr \"TSPROJ-XXXX short description here\" --rev GIT_COMMIT_HASH_OF_THE_COMMIT_JUST_BEFORE_YOUR_WORK
        echo
        echo Revise a CR:
        echo cr \"short description of additional changes\" --rev GIT_COMMIT_HASH_OF_THE_COMMIT_JUST_BEFORE_YOUR_WORK -i 12345678
    else
	    python ~/Development/github/kernel-tools/codereview/upload.py --email $CR_EMAIL --jira_user $CR_JIRA -m $argv
    end
end
