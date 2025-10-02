# ============================================================
# Makefile for the Jekyll site "tramvida"
# Runs the site inside Docker with live watch mode
# ============================================================

# Basic configuration
DOCKER_IMAGE := tramvida
DOCKER_TAG := latest
PORT := 4000

# ------------------------------------------------------------
# Default target: show help when running just "make"
# ------------------------------------------------------------
.DEFAULT_GOAL := help

# ------------------------------------------------------------
# Main targets
# ------------------------------------------------------------

## Serve the site locally with auto-regeneration enabled
serve-site:
	docker run --rm -it \
		-p $(PORT):4000 \
		-v "$$(pwd)":/srv/jekyll \
		$(DOCKER_IMAGE):$(DOCKER_TAG)

## Build the Docker image (only needed once, or after Dockerfile changes)
build-image:
	docker build -t $(DOCKER_IMAGE):$(DOCKER_TAG) .

## Stop running containers and remove unused images
clean-docker:
	@echo "🧹 Stopping containers and cleaning up unused images..."
	docker ps -aq | xargs -r docker stop
	docker image prune -f

# ------------------------------------------------------------
# Utility targets
# ------------------------------------------------------------

## Show Jekyll version inside the Docker container
jekyll-version:
	docker run --rm $(DOCKER_IMAGE):$(DOCKER_TAG) jekyll -v

## Open a shell inside the container for debugging
shell:
	docker run --rm -it -v "$$(pwd)":/srv/jekyll $(DOCKER_IMAGE):$(DOCKER_TAG) sh

# ------------------------------------------------------------
# Help
# ------------------------------------------------------------

## Display this help message
help:
	@echo ""
	@echo "Available commands:"
	@echo "  make build-image     - Build the Jekyll Docker image"
	@echo "  make serve-site      - Serve the site with live watch (http://localhost:$(PORT))"
	@echo "  make clean-docker    - Stop containers and remove unused images"
	@echo "  make jekyll-version  - Show Jekyll version inside Docker"
	@echo "  make shell           - Open an interactive shell inside the container"
	@echo ""

.PHONY: serve-site build-image clean-docker jekyll-version shell help
