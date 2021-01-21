FROM python:3.8-slim-buster

WORKDIR /app/

COPY requirements /app/requirements
RUN pip install --no-cache-dir -r /app/requirements/local.txt

COPY docker/entrypoint /entrypoint
RUN sed -i 's/\r$//g' /entrypoint
RUN chmod +x /entrypoint


COPY docker/start /start
RUN sed -i 's/\r$//g' /start
RUN chmod +x /start
COPY . /app

WORKDIR /app

ENTRYPOINT ["/entrypoint"]
