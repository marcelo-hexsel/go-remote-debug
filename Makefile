build-docker:
	docker build -t go-debug .

debug-docker: build-docker
	docker container run -p 2345:2345 -v $(PWD):/app go-debug