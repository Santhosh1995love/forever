#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u Santhosh1995love -p dckr_pat_HFQjmql_Mgbprub42SMVKz2573Q
    docker tag devops-build Santhosh1995love/dev
    docker push Santhosh1995love/dev

elif [[ $GIT_BRANCH == "origin/master" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u Santhosh1995love -p dckr_pat_HFQjmql_Mgbprub42SMVKz2573Q
    docker tag devops-build Santhosh1995love/prod 
    docker push Santhosh1995love/prod
else
    echo "Failed"
fi
