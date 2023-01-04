#!/bin/sh

JOD_CONFIG_BASEURL="/${JOD_URL#http*\://*/}"
JOD_CONFIG_URL="${JOD_URL%$JOD_CONFIG_BASEURL}"

export JOD_CONFIG_BASEURL JOD_CONFIG_URL

{ echo "---"; jq -n -r 'env|to_entries[]|(.key+": \""+.value+"\"")'; echo "---"; } | mustache - /docker-resources/_config.yml.mustache > /tmp/_config.yml

jekyll build --disable-disk-cache --config /tmp/_config.yml
