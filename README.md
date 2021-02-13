# DS Flask API Template
## Iris Example Project

### Deployment URL
- https://api-test.storysquad.dev

### Project Structure
- Project Directory
    - `/application` Python package directory
        - `__init__.py`
        - `main.py` Primary application routes and Flask app named `application`
        - `model.joblib` joblib or pickled model
    - `.gitignore`
    - `.ebignore`
    - `builder.py` ML model builder script (external)
    - `loader.py` ML model loader script (external)
    - `Procfile` Web app entrypoint
    - `README.md` This file
    - `requirements.txt` Dependencies

### Project Dependencies
- Python 3.7
    - Flask
    - gunicorn
    - joblib
    - pandas
    - scikit-learn
- awscli
- eb

## Setup Instructions - Unix/Linux
In the following steps replace `ds-api-test` with your project's name.

### Local Virtual Environment Setup
```shell
mkdir ds-api-test
cd ds-api-test
python3.7 -m venv venv
```

### Local Virtual Environment Activation
```shell
source venv/bin/activate
```

### Install Local Dependencies
```shell
pip install -r requirements.txt
```

### Run App Locally
```shell
gunicorn application:application
```

### Elastic Beanstalk - Initialize
```shell
eb init
```
This is an interactive prompt. It will ask you a series of questions about your project.
For more details - refer to this walk through: https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-configuration.html

### Elastic Beanstalk - Deploy
```shell
eb create --region us-east-1 ds-api-test
```

### Elastic Beanstalk - Redeploy
```shell
eb deploy ds-api-test
```

### Elastic Beanstalk - Open App
```shell
eb open ds-api-test
```

### Elastic Beanstalk Environment Variables
In the Elastic Beanstalk Console go to your environment -> Configuration. Then
Software -> Edit. At the bottom of the page you can add a [key: value] pair for 
each of the environment variables required for the app.
