#!/bin/bash -x
MVN=$([[ -x ./mvnw ]] && echo "./mvnw" || echo "mvn")
$MVN -B -V -Dmaven.repo.local=~/.m2/repository install "$@"
