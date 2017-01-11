function mproc
	ps -Ao 'pid,command' | grep -v 'grep .* mongod' | grep --color '\smongo[ds]\s'
end
