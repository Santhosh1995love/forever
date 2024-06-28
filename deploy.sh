#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u santysanthosh1995 -p dckr_pat_HFQjmql_Mgbprub42SMVKz2573Q
    docker tag devops-build santysanthosh1995/dev
    docker push santysanthosh1995/dev

elif [[ $GIT_BRANCH == "origin/master" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u santysanthosh1995 -p dckr_pat_HFQjmql_Mgbprub42SMVKz2573Q
    docker tag devops-build santysanthosh1995/prod 
    docker push santysanthosh1995/prod
else
    echo "Failed"
fi
