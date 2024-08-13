URL ?= "http://localhost:8000"
	
build:
	scripts/preprocess.sh --include-releases
	@hugo --gc --buildFuture -b $(URL) --config=config.yaml --contentDir=targets

run: build
	@hugo server --config config.yaml -v

.PHONY: targets
targets:
	scripts/preprocess.sh --include-releases
