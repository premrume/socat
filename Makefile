.PHONY: all crawl clean deepclean prime 
.EXPORT_ALL_VARIABLES:

SOCAT_VERSION ?= 1.0
SOCAT_ROOT ?= /var/landing
SOCAT_HOME ?= ${SOCAT_ROOT}/socat
SOCAT_DB   ?= ${SOCAT_HOME}/db
SOCAT_DOC  ?= ${SOCAT_HOME}/doc

all:    crawl 

prime:  crawl clean deepclean
	@echo "... prime"
        # I like to keep the data outside of docker install
	mkdir -p ${SOCAT_HOME}
	mkdir -p ${SOCAT_DB}
	mkdir -p ${SOCAT_DOC}
	@docker-compose build install
	@docker-compose up --force-recreate  install

crawl:
	@echo "... crawl"
	@echo "Version ${SOCAT_VERSION}"

clean:
	@echo "...clean"
	docker stop $$(docker ps -aq) || true
	docker rm $$(docker ps -aq) || true

deepclean:
	@echo "...deepclean"
	docker volume prune || true
	docker volume rm $$(docker volume ls -q | grep socat) || true
	docker rmi $$(docker images -q) || true
	docker rmi $$(docker images -q --filter "dangling=true") || true
	rm -rf ${SOCAT_HOME} || true
	rm -rf ${SOCAT_DB} || true
	rm -rf ${SOCAT_DOC} || true

devdown:
	docker-compose down --rmi all --volumes

devrm:
	@echo "...Stop and remove the container for ${foo}"
	docker-compose rm --force --stop ${foo}

devup:
	@echo "..Build  and Run in the forground the container for ${foo}"
	docker-compose build ${foo}
	docker-compose up ${foo}

dev:    devrm devup
