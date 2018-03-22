SESSION=vimconfig

.PHONY=workspace

workspace:
	tmux new-session -s $(SESSION) -n main
