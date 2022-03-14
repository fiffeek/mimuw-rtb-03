FROM python:3.9

WORKDIR /code

COPY ./dist /code/dist

RUN pip install /code/dist/*.whl

COPY ./app /code/app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]

