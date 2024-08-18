FROM python:3.7

WORKDIR /usr/src/app

RUN pip install --no-cache-dir pipenv

COPY Pipfile Pipfile.lock ./

RUN pipenv install --deploy --ignore-pipfile

COPY . .

EXPOSE 5000

CMD ["pipenv", "run", "python", "app.py"]