function mproc
	ps -Ao 'pid,command' | grep -v 'grep .* mongod' | grep --color '\smongod\s'
end
