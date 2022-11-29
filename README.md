[![thienntb](https://circleci.com/gh/thienntb/project-ml-microservice-kubernetes.svg?style=svg)](https://app.circleci.com/pipelines/github/thienntb/project-ml-microservice-kubernetes)
## Hello World Application

### Built With

- [Circle CI](www.circleci.com) - Cloud-based CI/CD service
- [Amazon AWS](https://aws.amazon.com/) - Cloud services
- [AWS CLI](https://aws.amazon.com/cli/) - Command-line tool for AWS
- [Kubernetes](https://kubernetes.io/)  - Container Orchestration
- [EKS](https://aws.amazon.com/eks/) - Amazon Elastic Kubernetes Service- 

## Local Environment Requirements
1. Install Python3.9, can be downloaded [here](https://www.python.org/downloads/mac-osx/) *Note: Do not install via brew*
2. Install NPM, can be downloaded [here](https://www.npmjs.com/get-npm)
3. Verify Python3 added to PATH

## Local Development
1. Create virtual environment within your repository directory:
    ```
    python3 -m venv ./python_env
    ```
2. Activate your virtual environment:
    ```
    source ./python_env/bin/activate
    ```
3. Install pip dependencies
    ```
    pip install -r requirements.txt
    ```
4. Make install
    ```
    make install
    ```
5. Docker build
    ```
    docker build . -t YOUR_TAG
    ```
6. Docker run
    ```
    docker run -d -p 5000:5000 YOUR_TAG
    ```
7. We gonna create docker-compose.yml later


### Run Unit Tests

```
source venv/bin/activate
pip install pytest pytest-cov
pip install -r requirements.txt
ENV=test pytest --cov ./src --cov-report html --cov-fail-under 95 tests/ -v
```
Or
```
make install
make test
```

### License

[License](LICENSE.md)
