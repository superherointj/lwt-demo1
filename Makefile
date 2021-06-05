
docker-esy:
	docker build -t archlinux-esy -f archlinux-esy.Dockerfile .

docker: docker-esy
	docker build -f Dockerfile .