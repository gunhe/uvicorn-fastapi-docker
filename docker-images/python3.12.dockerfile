# FROM python:3.12-slim
FROM docker.1ms.run/python:3.12

maintainer="f15827325743@163.com"

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./app /code/app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80", "--workers", "1"]