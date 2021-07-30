FROM python:3.9.5-alpine3.12

WORKDIR /app

# Build requirements
COPY Pipfile Pipfile.lock ./
RUN pip install pipenv && \
  apk add --update --no-cache --virtual .build-deps build-base python3-dev linux-headers || true && \
  pipenv install --system --deploy --ignore-pipfile && \
  apk del .build-deps build-base python3-dev linux-headers && \
  pip uninstall pipenv -y && \
  apk add --no-cache tzdata

COPY suplex suplex
COPY bin/run.sh ./
RUN chmod +x run.sh

VOLUME /movies
ENV PYTHONUNBUFFERED=1
ENV ROOT_MOVIES_DIR=/movies
ENV ORGANISE_DELAY_S=30
CMD /app/run.sh
