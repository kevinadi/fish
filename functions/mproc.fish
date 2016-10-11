function mproc
	ps -Ao 'pid,command' | grep --color 'mongod' | grep -v 'grep .* mongod'
end
