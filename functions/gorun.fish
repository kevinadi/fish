# Defined in /var/folders/rk/17j8535147q2c3g99p4009mw0000gp/T//fish.Mw52d7/gorun.fish @ line 2
function gorun
	go run (ls -1 *.go | grep -v test) $argv[2..-1]
end
