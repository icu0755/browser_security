example1:
	docker build -t browser_sec -f docker/example1/Dockerfile . && docker run -it --rm -p 80:80 -p 443:443 browser_sec

example2:
	docker build -t browser_sec -f docker/example2/Dockerfile . && docker run -it --rm -p 80:80 -p 443:443 browser_sec

example3:
	docker build -t browser_sec -f docker/example3/Dockerfile .
	docker run -it --rm -p 80:80 -p 443:443 -d browser_sec

example4:
	docker build -t browser_sec -f docker/example4/Dockerfile .
	docker run -it --rm -p 80:80 -p 443:443 -d browser_sec

stopall:
	docker stop `docker ps -q`
