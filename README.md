# Go template

My own minimalist template for setting up a new Go project.

## Setup

0. Besides the standard go tooling, ensure you have [goreleaser](https://goreleaser.com/) and `make` installed
1. Copy the template (e.g. via github)
2. Modify default code. Replace `example` with the name of your project
3. Modify `.goreleaser.yaml`

```
release:
  github:
    owner: Tethik
    name: go-template

```

### Github release workflow

Ensure you set `Actions -> Workflow permissions` to `Read and write permissions`

## Usage

- `make build` - to build locally
- `make test` - to run tests

### Releases

To create a new release:

```sh
git tag -a vX.Y.Z # set your
git push origin vX.Y.Z
```

Alternatively you can a manual release via make:

`make manual-release`

### References

- [Repo by @nobe4 which this steals a bunch from](https://github.com/nobe4/safe)
- [Golang Standards Project Layout](https://github.com/golang-standards/project-layout)
