#!/bin/bash -x
MVN=$([[ -x ./mvnw ]] && echo "./mvnw" || echo "mvn")
$MVN -X -B -V install "$@"
