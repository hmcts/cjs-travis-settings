#!/bin/bash -x
# We only deploy on release tags
TAG_MATCH=${TAG_MATCH:-release-*}
MVN=$([[ -x ./mvnw ]] && echo "./mvnw" || echo "mvn")
[[ $GITHUB_REF_NAME == $TAG_MATCH ]] && $MVN -X -DskipTests=true -DskipITs=true -Dmaven.javadoc.skip=true -Prelease -DdeployAtEnd=true -DretryFailedDeploymentCount=2 -B --errors deploy "$@"
