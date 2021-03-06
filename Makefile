.PHONY: all birth crawl walk install
.EXPORT_ALL_VARIABLES:

SOCAT_VERSION ?= 1.0
SOCAT_BASE    ?= /var/landing
SOCAT_HOME    ?= ${SOCAT_BASE}/socat
SOCAT_DB      ?= ${SOCAT_HOME}/db
SOCAT_SHARE   ?= ${SOCAT_HOME}/share
SOCAT_PORT    ?= 8000

# TODO: (currently at crawl)
# Obviously, the passwords need to be encrypted yada yada
# These variables passed both to the postgres and postgres_admin images
# Currently hardcoded in the socat jdango
# Beware:  The docker images are inconsistent with these variables.
POSTGRES_USER      ?= postgres
POSTGRES_PASSWORD  ?= socat
POSTGRES_DB        ?= postgres
POSTGRES_EMAIL     ?= user@domain.com

all:    stand crawl walk run dance
	@echo "... danced" 

crawl:
	@echo "... crawl"
	@echo "Version ${SOCAT_VERSION}"

walk:   
        # using to test step by step
	@echo "... walk"
	docker-compose build postgres
	docker-compose build pgadmin

run:
        # one step at a time
	@echo "... run, well at least jog"
	docker-compose up -d postgres
	docker-compose up -d pgadmin

dance:
	docker-compose build web
	docker-compose up -d web

stand:
	@echo "... delete local folders"
        # clear local use
        # TODO:  ya, the db folder needs sudo ... 
	@echo "... 2nd time this is gonna fail and you'll need to :sudo rm"
	@echo ""
	@echo "... sudo make stand"
	rm -rf ${SOCAT_HOME}  # trash it all

	mkdir -p ${SOCAT_HOME}  
	mkdir -p ${SOCAT_DB}   
	mkdir -p ${SOCAT_SHARE}

	docker-compose build install
	docker-compose up --force-recreate  install

deepclean:
        # Beware THIS IS BRUTAL and will kill ALL stuff!!!!!
        #  using this to test 
        #  sudo make deepclean
	@echo "..."

	rm -rf ${SOCAT_HOME}  # trash it all

        # go ham here
	docker stop $$(docker ps -a -q) || true
	docker rm $$(docker ps -a -q) || true
	docker rmi $$(docker images -a -q)  --force || true
	docker volume rm socat_socat_db     --force || true
	docker volume rm socat_socat_share  --force || true
	docker volume rm socat_socat_base   --force || true

        # I thought this would kill everything... 
	docker images prune         || true
	docker volume prune --force || true
	docker system prune --force || true

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
