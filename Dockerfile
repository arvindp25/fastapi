FROM python:3.10

WORKDIR /fastapi-crud

COPY ./requirements.txt /fastapi-crud/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /fastapi-crud/requirements.txt

COPY ./apps /fastapi-crud/apps

CMD ["uvicorn", "apps.main:app", "--host", "0.0.0.0", "--port", "80"]