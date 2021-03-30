# ================================================
# DOCKER VARIABLES
# ================================================

ifeq ($(OS), Windows_NT)
	DOCKER_CONTAINER_LIST = $(shell docker ps -aq)
else
	DOCKER_CONTAINER_LIST = $(shell docker ps -aq)
endif

# ================================================
# DOCKER SHORTCUTS
# ================================================

docker-stop:
	$(if $(strip $(DOCKER_CONTAINER_LIST)), docker stop $(DOCKER_CONTAINER_LIST))

docker-remove:
	$(if $(strip $(DOCKER_CONTAINER_LIST)), docker rm $(DOCKER_CONTAINER_LIST))

docker-volume-prune:
	@docker volume prune -f

docker-network-prune:
	@docker network prune -f

docker-system-prune:
	@docker system prune -af

docker-clean: docker-stop docker-remove docker-volume-prune docker-network-prune
	@echo "# --------------------------------------"
	@echo "# Cleaning Docker Environment"
	@echo "# --------------------------------------"

docker-deep-clean: docker-stop docker-remove docker-volume-prune docker-network-prune docker-system-prune
	@echo "# --------------------------------------"
	@echo "# Deep cleaning Docker Environment"
	@echo "# --------------------------------------"

# ================================================
# DOCKER COMPOSE SHORTCUTS
# ================================================

compose-up:
	docker-compose up --build

compose-up-background:
	docker-compose up --build -d

compose-down:
	docker-compose down

compose-ps:
	docker-compose ps

compose-run: compose-ps compose-down compose-up
ifneq ("$(wildcard $(./.env))","")
  compose-ps compose-down compose-up
endif

compose-run-background: compose-ps compose-down compose-up-background
ifneq ("$(wildcard $(./.env))","")
  compose-ps compose-down compose-up-background
endif
