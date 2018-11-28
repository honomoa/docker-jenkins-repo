# DOCKER-JENKINS-REPO

Repo fit for jenkins pipeline

# How To Use

Jenkinsfile:

```
pipeline {
  agent {
    docker {
      image 'honomoa/jenkins-repo'
      args "-e HOME=/var/lib/jenkins/workspace/${JOB_BASE_NAME}" # optional
    }
  }
  stages {
    stage('Clone scm') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']],
          userRemoteConfigs: [[url: 'http://git-server/user/repository.git']]])
      }
    }
    stage('Run Repo') {
      steps {
        sh 'repo help'
      }
    }
  }
}
```
