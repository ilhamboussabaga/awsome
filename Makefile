hello:
	@echo " hello "
welcome:
	@echo " hy "
build: 
	@hugo -d ./dist
clean:
	@rm -r dist/*
post:
	@hugo new "post/${POST_NAME}.md"
	@sed -i 's/title: ".*"/title: "${POST_TITLE}"/' "content/posts/${POST_NAME}.md"
help: ## HELP
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
