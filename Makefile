
all: deploy

deploy:
	@rm -rf build docs
	@npm run build
	@cp CNAME build docs
	@git add docs
	@git commit -m "Deployed via Makefile"
	@git push

