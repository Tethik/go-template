default: | build

build:
	goreleaser --snapshot --rm-dist

# Used for manually releasing, normally running in github actions.
manual-release:
ifneq ($(shell git symbolic-ref --short HEAD),main)
	$(error Not on main branch)
endif
	goreleaser --rm-dist

test:
	go test ./...

.PHONY: lint test