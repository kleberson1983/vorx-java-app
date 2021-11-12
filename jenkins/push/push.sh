#!/bin/bash
echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u kbsouza -p $PASS

echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG kbsouza/$IMAGE:$BUILD_TAG

echo "*** Pushing image ***"
docker push kbsouza/$IMAGE:$BUILD_TAG
