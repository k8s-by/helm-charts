TAG=1.16.1-b2

docker-build:
	docker build --build-arg PGBOUNCER_VERSION=1.16.1 -t alex202/pgbouncer:${TAG} .
	docker build --build-arg PGBOUNCER_VERSION=1.16.1 -t quay.io/alex202/pgbouncer:${TAG} .

docker-push:
	docker push alex202/pgbouncer:${TAG}
	docker push quay.io/alex202/pgbouncer:${TAG}