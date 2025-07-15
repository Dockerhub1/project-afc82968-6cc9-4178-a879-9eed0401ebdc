Dockerfile:
FROM python:3.8-slim-buster
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py .
ENV FLASK_APP=app.py
ENV CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
USER root
`requiremeints.txt`:
text
python3.8/lib/python3.8/site-packages
pip/dist-packages
pip/_vendor
pip/lib/
pip/_internal
pip/ext/
pip/_vendor/
pip/req
pip/_vendor/cache
pip/_vendor/backports.ssl_match_hostname
pip/compat
pip/__init__.py
pip/_new_collections
pip/_utils
pip/__test__
pip/compat/__init__.py