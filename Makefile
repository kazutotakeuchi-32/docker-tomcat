build: 
	docker build -t tomcat-image .
run: 
	docker run -d -p 3000:8080 --name tomcat tomcat-image
init:
	@make build
	@make run
	@make open
start: 
	docker start tomcat
	@make open
stop: 
	docker stop tomcat
destroy_all: 
	@make rm
	@make rmi
rm: 
	docker rm tomcat
rmi:
	docker rmi tomcat
curl: 
	curl http://localhost:3000 
open:
	open http://localhost:3000 
logs:
	docker logs -f tomcat 


