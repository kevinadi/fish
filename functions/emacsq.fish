# Defined in /var/folders/rk/17j8535147q2c3g99p4009mw0000gp/T//fish.7la6Lv/emacsq.fish @ line 2
function emacsq
	# for bash: alias emacsq="emacs -q --eval \"(progn (load-theme 'wombat) (package-initialize) (windmove-default-keybindings) (abbrev-mode) (setq confirm-kill-emacs 'y-or-n-p) (electric-pair-mode) (setq make-backup-files nil) )\" $@"
    emacs -q --eval "(progn (load-theme 'wombat) (package-initialize) (windmove-default-keybindings) (osx-clipboard-mode) (which-key-mode) (abbrev-mode) (setq confirm-kill-emacs 'y-or-n-p) (electric-pair-mode) (setq make-backup-files nil) )" $argv
end
