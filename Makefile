help:
	@echo "----------------------"
	@echo "OWASP Dependency-Track"
	@echo "----------------------"
	@echo "Opciones:"
	@echo ""
	@echo "start / stop / stop-all"
	@echo "stats / logs"
	@echo "clean"

start:
	@docker-compose up -d
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

_urls:
	@echo ""
	@echo "-----------------------------------------------------"
	@echo "[OWASP Dependency-Track] https://dependencytrack.test"
	@echo "-----------------------------------------------------"
