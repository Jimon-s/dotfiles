all-in-one: init-all deploy-all

deploy-all:
	@$(foreach val, $(wildcard ./setup/deploy/*.sh), bash $(val);)

deploy-home:
	@$(foreach val, $(wildcard ./setup/deploy/deploy_home.sh), bash $(val);)

deploy-idea:
	@$(foreach val, $(wildcard ./setup/deploy/deploy_idea.sh), bash $(val);)

deploy-vscode:
	@$(foreach val, $(wildcard ./setup/deploy/deploy_vscode.sh), bash $(val);)

init-all:
	@$(foreach val, $(wildcard ./setup/init/*.sh), bash $(val);)

init-brew:
	@$(foreach val, $(wildcard ./setup/init/init_homebrew.sh), bash $(val);)
	