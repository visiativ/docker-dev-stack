#! /bin/bash
. ./var.sh

cat << "EOF"
                                                                            _               
                                                                           (_)              
 _ __ ___   ___   _____   ____ _ _ __  _ __  ___ ______ ___  ___ _ ____   ___  ___ ___  ___ 
| '_ ` _ \ / _ \ / _ \ \ / / _` | '_ \| '_ \/ __|______/ __|/ _ \ '__\ \ / / |/ __/ _ \/ __|
| | | | | | (_) | (_) \ V / (_| | |_) | |_) \__ \      \__ \  __/ |   \ V /| | (_|  __/\__ \
|_| |_| |_|\___/ \___/ \_/ \__,_| .__/| .__/|___/      |___/\___|_|    \_/ |_|\___\___||___/
                                | |   | |                                                   
                                |_|   |_|                                                   
EOF

export RESTART_POLICY=$DOCKER_COMPOSE_SERVICES_RESTART_POLICY

docker-compose \
	-f consul.yml \
	-f keycloak.yml \
	-f mongodb.yml \
	-f mariadb.yml \
	-f kafka.yml \
	-p ${DOCKER_COMPOSE_SERVICES_PREFIX} \
	$@ ;
