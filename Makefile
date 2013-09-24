SITE_NAME='basic-site'

default:
	@echo 'Hi'

run: build
	@echo '+++ Docker Run'
	@docker run -d $(SITE_NAME)
	@echo '+++ Docker Processes'
	@docker ps

build:
	@echo '+++ Docker Build'
	@docker build -t $(SITE_NAME) .
