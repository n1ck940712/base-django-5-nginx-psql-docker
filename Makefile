DOCKER-COMPOSE = docker-compose -p project  -f build/docker/docker-compose.yml

.PHONY: up
up:
	$(DOCKER-COMPOSE) up -d $(APP)

.PHONY: rebuild_up
rebuild_up:
	$(DOCKER-COMPOSE) up -d --build $(APP)
