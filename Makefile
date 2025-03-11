# Variables
DOCKER_COMPOSE=docker compose

# Commandes principales
.PHONY: help up down restart bash list-containers list-images list-volumes list-logs remove-all remove-volumes

## 📌 AIDE
help: ## Afficher cette aide
	@echo "Commandes disponibles :"
	@grep -E '(^## |^[a-zA-Z_-]+:.*?## .*)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; /^## / {printf "\n\033[1m%s\033[0m\n", substr($$0, 4)} /^[a-zA-Z_-]+:/ {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

## 📌 GESTION DES CONTENEURS
up: ## Démarrer le(s) conteneur(s)
	$(DOCKER_COMPOSE) up -d

down: ## Arrêter le(s) conteneur(s)
	$(DOCKER_COMPOSE) down --remove-orphans

restart: down up ## Redémarrer le(s) conteneur(s)

bash: ## Accéder au conteneur Minecraft Creative Bedrock
	$(DOCKER_COMPOSE) exec minecraft_creative_bedrock bash

## 📌 LISTE DES RESSOURCES ET LOGS
list-containers: ## Lister tous les conteneurs Docker
	docker ps -a

list-images: ## Lister toutes les images Docker
	docker images -a

list-volumes: ## Lister tous les volumes Docker
	docker volume ls

list-logs: ## Lister les 30 dernières lignes de logs
	docker logs --tail=30 minecraft-creative-bedrock

## 📌 NETTOYAGE DOCKER
remove-all: ## Supprimer tous les conteneurs et images Docker
	docker system prune -a

remove-volumes: ## Supprimer tous les volumes Docker
	docker volume rm $$(docker volume ls -q)
