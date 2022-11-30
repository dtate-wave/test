FROM dwavesys/leapide:latest-v2-prod

USER root
WORKDIR /app

RUN apt update && \
    apt install -yq --no-install-recommends \
    nodejs \
    npm && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* /tmp/*

RUN pip install --no-cache-dir -r requirements.txt && \
    rm -rf /tmp/*