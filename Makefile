PHONY: format repolist http-cloner deleter updater

format:
	find . -name '*.dhall' -exec dhall format {} \;

repolist:
	echo '(./dhall-proj/render.dhall).Project.renderRepoList ./distrap.dhall' \
		| dhall text > repolist.txt

todolist:
	echo '(./dhall-proj/render.dhall).Project.renderTODOList ./distrap.dhall' \
		| dhall text > TODO.org

cloner:
	echo '(./dhall-proj/render.dhall).Project.renderCloner ./distrap.dhall' \
		| dhall text > cloner.sh
	chmod +x cloner.sh

deleter:
	echo '(./dhall-proj/render.dhall).Project.renderDeleter ./distrap.dhall' \
		| dhall text > deleter.sh
	chmod +x deleter.sh

updater:
	echo '(./dhall-proj/render.dhall).Project.renderUpdater ./distrap.dhall' \
		| dhall text > updater.sh
	chmod +x updater.sh

http-cloner:
	echo '(./dhall-proj/render.dhall).Project.renderHTTPCloner ./distrap.dhall' \
		| dhall text > http-cloner.sh
	chmod +x http-cloner.sh
