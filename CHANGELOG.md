# Change Log

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/) and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

TODO: add at least one Added, Changed, Deprecated, Removed, Fixed or Security section

### Add
- Add examples of jod to the README
- Display owl:NamedIndividuals
- Add sections to the navigation
- Adjust filter to filter for section contents

### Fixed
- Install `git` in build stage so that gem build does not fail

### Changed
- Specify registry for OCI base image in Dockerfile
- Show section headings only if section is not empty
- Disable buttons for empty sections

### Remove
- Remove empty "Overview" section

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
