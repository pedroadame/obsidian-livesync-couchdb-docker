include .env
setup:
	curl -X PUT -u ${COUCHDB_USER}:${COUCHDB_PASSWORD} http://localhost:5984/_users
	curl -X PUT -u ${COUCHDB_USER}:${COUCHDB_PASSWORD} http://localhost:5984/_global_changes
	curl -X PUT -u ${COUCHDB_USER}:${COUCHDB_PASSWORD} http://localhost:5984/_replicator
	curl -X PUT -u ${COUCHDB_USER}:${COUCHDB_PASSWORD} http://localhost:5984/${DB_NAME}

up:
	docker compose up

upd:
	docker compose up -d

build:
	docker compose build

create-db:
	curl -X PUT -u ${COUCHDB_USER}:${COUCHDB_PASSWORD} http://localhost:5984/${DB}


.PHONY=setup up upd build create-db
