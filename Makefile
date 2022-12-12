#!make

help: _header
	${info }
	@echo Opciones:
	@echo -----------------------
	@echo start / stop / stop-all
	@echo stats / logs
	@echo clean
	@echo -----------------------

_header:
	@echo ----------------------
	@echo OWASP Dependency-Track
	@echo ----------------------

start:
	@docker-compose up -d --remove-orphans
	@$(MAKE) _urls

stop:
	@docker-compose stop

stop-all:
	@docker stop `docker ps -aq`

stats:
	@docker stats

logs:
	@docker-compose logs https-portal

logs-api-server:
	@docker-compose logs dtrack-apiserver

clean:
	@docker-compose down -v --remove-orphans

_urls: _header
	${info }
	@echo -----------------------------------------------------
	@echo [OWASP Dependency-Track] https://dependencytrack.test
	@echo -----------------------------------------------------
