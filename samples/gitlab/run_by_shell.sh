
docker run --name gitlab-postgresql -d \
--env 'DB_NAME=gitlabhq_production' \
--env 'DB_USER=gitlab' --env 'DB_PASS=password' \
--volume /srv/docker/gitlab/postgresql:/var/lib/postgresql \
sameersbn/postgresql:9.4-3

docker run --name gitlab-redis -d \
sameersbn/redis:latest

docker run --name gitlab -d \
--link gitlab-postgresql:postgresql --link gitlab-redis:redisio \
--publish 10022:22 --publish 10080:80 \
--env 'GITLAB_HOST=192.168.121.68' \
--env 'GITLAB_PORT=10080' --env 'GITLAB_SSH_PORT=10022' \
--env 'GITLAB_SECRETS_DB_KEY_BASE=long-and-random-alpha-numeric-string' \
--volume /srv/docker/gitlab/gitlab:/home/git/data \
sameersbn/gitlab:8.0.2

