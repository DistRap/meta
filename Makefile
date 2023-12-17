PHONY: format

format:
	find . -name '*.dhall' -exec dhall format {} \;

todolist:
	echo '(./dhall-proj/render.dhall).Project.renderTODOList ./distrap.dhall' \
		| dhall text > TODO.org

cloner:
	echo '(./dhall-proj/render.dhall).Project.renderCloner ./distrap.dhall' \
		| dhall text > cloner.sh
	chmod +x cloner.sh

http-cloner:
	echo '(./dhall-proj/render.dhall).Project.renderHTTPCloner ./distrap.dhall' \
		| dhall text > http-cloner.sh
	chmod +x http-cloner.sh
