# Change Log

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/) and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

TODO: add at least one Added, Changed, Deprecated, Removed, Fixed or Security section

### Add
-

### Fixed
-

### Changed
-


## [0.3.2] 2023-07-03

### Fixed
- Rename task to gem:push

## [0.3.1] 2023-07-03

### Fixed
- Update rake dependency to 13

## [0.3.0] 2023-07-03

### Add
- Taskfile

### Fixed
- Fix permissions for `write_config.sh` in docker image
- Fix environment value in `write_config.sh` in docker image

### Changed
- Depend on Jekyll RDF '~> 4.0'
- Remove support for linux/ppc64le
- Set gem version based on git tag


## [0.2.6] 2022-11-14

### Add
- Add the `_config.yml` to the gem
- Dockerfile
- CHANGELOG ;-)

### Changed
- Build header/title based on `site.title` from config, if it ist not empty, else based on the ontologies title
