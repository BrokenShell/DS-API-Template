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
```
mkdir ds-api-test
cd ds-api-test
python3.7 -m venv venv
```

### Local Virtual Environment Activation
`source venv/bin/activate`

### Install Local Dependencies
`pip install -r requirements.txt`

### Elastic Beanstalk - Initialize
`eb init`

### Elastic Beanstalk - Deploy
`eb create --region us-east-1 ds-api-test`

### Elastic Beanstalk - Redeploy
`eb deploy ds-api-test`

### Elastic Beanstalk - Open App
`eb open ds-api-test`

### Elastic Beanstalk Environment Variables
In the Elastic Beanstalk Console go to your environment -> Configuration. Then
Software -> Edit. At the bottom of the page you can add a [key: value] pair for 
each of the environment variables required for the app.
