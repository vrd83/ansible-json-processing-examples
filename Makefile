help:                           ## Show this help.
	@grep -h "##" $(MAKEFILE_LIST) | grep -v grep | tr -d '##' | tr -d '$$'

git:                            ## Stage, commit and push all changes to main. Example usage: 'make git m="commit msg"'
	@git add -A
	git commit -m "$m"
	git push -u origin main

ap:                             ## Run the Ansible playbook
	@ansible-playbook ./playbook.yml

clean:                          ## Clean the output folder
	@rm -f ./output/*