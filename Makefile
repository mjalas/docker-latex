tag = mjalas/latex
container_name = latex
build_cmd = docker build -t $(tag) .
run_cmd = docker run --name $(container_name) -it $(tag) /bin/bash
stop_cmd = docker stop $(container_name)
rm_cmd = docker rm $(container_name)
rmi_cmd = docker rmi $(tag)

.PHONY: build run stop clean

build:
	$(build_cmd)

run: build
	$(run_cmd)

stop:
	$(stop_cmd)

rm: stop
	$(rm_cmd)

clean: rm stop
	$(rmi_cmd)
