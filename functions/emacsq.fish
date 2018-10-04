# Defined in /var/folders/rk/17j8535147q2c3g99p4009mw0000gp/T//fish.PbVvGl/emacsq.fish @ line 2
function emacsq
	emacs -q --eval "(progn (load-theme 'wombat) (package-initialize) (windmove-default-keybindings))" $argv
end
