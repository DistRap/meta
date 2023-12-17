PHONY: format

format:
	find . -name '*.dhall' -exec dhall format {} \;

todolist:
	echo '(./dhall-proj/render.dhall).Project.renderTODOList ./dist.dhall' \
		| dhall text > TODO.org

cloner:
	echo '(./dhall-proj/render.dhall).Project.renderCloner ./dist.dhall' \
		| dhall text > cloner.sh
	chmod +x cloner.sh
