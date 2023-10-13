MODULE = $(shell go list -m)

.PHONY: docker compose test build
build-test: # build dev server
	docker-compose -f docker-compose.test.yml --env-file .env up --force-recreate