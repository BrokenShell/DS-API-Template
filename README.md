# DS API Template


### Deployment URLs
- Todo

### Project Structure
- Project Directory
    - `/application` - Python package
        - `__init__.py` - `from application.main import application`
        - `main.py` - primary application routes and Flask app named `application`
        - `model.joblib` - joblib or pickled model
    - `.gitignore`
    - `builder.py` - ML model builder script (external)
    - `loader.py` - ML model loader script (external)
    - `README.md` - This file
    - `Dockerfile` - Environment
    - `requirements.txt` - Dependencies


### The deployment zip archive should include only the following
- Python package: `/application`
- Project dependencies: `requirements.txt`


### Iris Example Project Dependencies
- flask
- gunicorn
- joblib
- pandas
- scikit-learn


### EB Environment Variables
In the Elastic Beanstalk Console go to your environment -> Configuration. Then
Software -> Edit. At the bottom of the page you can add a [key: value] pair for 
each of the environment variables required for the app.


### Docker Commands
- `docker build . -t ds-api`
- `docker run -p 5000:5000 ds-api`
