SHELL := /bin/bash

.PHONY: all
all: setup-s3


.PHONY: setup-s3
setup-s3: $(KUBECONFIG)
	oc apply -k overlays/default
