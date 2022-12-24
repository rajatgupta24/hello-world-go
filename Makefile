docker.build: 
	docker build -t rajatguptag/hello-world-go:1.0.0-scratch .

docker.push: docker.build
	docker push rajatguptag/hello-world-go:1.0.0-scratch
