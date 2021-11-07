check_vars: 
ifndef REGISTRY_REPO
	$(error REGISTRY_REPO is not set)
endif
ifndef IMAGE_NAME
	$(error IMAGE_NAME is not set)
endif
ifndef IMAGE_TAG
	$(error IMAGE_TAG is not set)
endif
pre_flight:
	@echo '--> Checking podman version'
	@podman version

build: pre_flight check_vars

	@echo '--> Building container image using Containerfile'
	@podman build --compress --tag=$(value IMAGE_NAME) .
	@echo '--> Tagging container image'
	@podman tag localhost/$(value IMAGE_NAME) $(value REGISTRY_URL)/$(value REGISTRY_REPO)/$(value IMAGE_NAME):$(value IMAGE_TAG)
	@echo '--> Pushing container image to image registry'
	@podman push docker.io/$(value REGISTRY_REPO)/$(value IMAGE_NAME):$(value IMAGE_TAG)
	@echo '<!> Image pushed successfully :D'