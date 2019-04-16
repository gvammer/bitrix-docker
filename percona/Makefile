all: image

build: image
	

image:
	docker build . -t mango-percona

run: image
	docker run mango-percona --verbose
	#docker run -e MYSQL_ALLOW_EMPTY_PASSWORD=yes --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci
	docker ps --all

ls:
	docker ps --all
	docker images

clean:
	docker ps --all | awk '/mango-percona/  { print $$1 }' | xargs -n 1 --no-run-if-empty docker rm
	docker images   | awk '/^mango-percona/ { print $$3 }' | xargs -n 1 -r docker image rm

#docker image rm percona56
