# DS Flask API Template
## Iris Example Project


### Deployment URLs
- https://api-test.storysquad.dev

### Project Structure
- Project Directory
    - `/application` - Python package
        - `__init__.py` - `from application.main import application`
        - `main.py` - primary application routes and Flask app named `application`
        - `model.joblib` - joblib or pickled model
    - `.gitignore`
    - `.ebignore`
    - `builder.py` - ML model builder script (external)
    - `loader.py` - ML model loader script (external)
    - `README.md` - This file
    - `Dockerfile` - Environment
    - `requirements.txt` - Dependencies

### Iris Example Project Dependencies
- Python 3.7
- flask
- gunicorn
- joblib
- pandas
- scikit-learn

### EB Environment Variables
In the Elastic Beanstalk Console go to your environment -> Configuration. Then
Software -> Edit. At the bottom of the page you can add a [key: value] pair for 
each of the environment variables required for the app.

### EB - Initialize
`eb init`

### EB - Deploy
`eb create --region us-east-1 ds-api-test`

### EB - Redeploy
`eb deploy ds-api-test`

### EB - Open App
`eb open ds-api-test`
