#! /bin/bash
. ./var.sh

cat << "EOF"
                                                        _              _     
                                                       | |            | |    
 _ __ ___   ___   _____   ____ _ _ __  _ __  ___ ______| |_ ___   ___ | |___ 
| '_ ` _ \ / _ \ / _ \ \ / / _` | '_ \| '_ \/ __|______| __/ _ \ / _ \| / __|
| | | | | | (_) | (_) \ V / (_| | |_) | |_) \__ \      | || (_) | (_) | \__ \
|_| |_| |_|\___/ \___/ \_/ \__,_| .__/| .__/|___/       \__\___/ \___/|_|___/
                                | |   | |                                    
                                |_|   |_|                                    

EOF

export RESTART_POLICY=$DOCKER_COMPOSE_TOOLS_RESTART_POLICY

# docker version;
# docker-compose version;

docker network create --driver=bridge moovapps-backend || true; # || true force exit code tu success

docker-compose \
	-f portainer.yml \
	-f ouroboros.yml \
	-p ${DOCKER_COMPOSE_TOOLS_PREFIX} \
    $@;

