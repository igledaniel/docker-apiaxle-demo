# Apiaxle demo setup

This is a reference implementation of how to setup apiaxle in your environment

## Installation

Update your /etc/hosts file

```bash
127.0.0.1 apiaxle-api service-1 service-2
```

```bash
docker-compose build
docker-compose up
```

## Setup project and keys

On your browser you can open a ad-hoc admin screen where you can edit some of the api. This is application does not allow editing of all fields and is just intended for demonstration purposes.

```bash
http://apiaxle-api
```

### Using the API

```bash
curl 'http://apiaxle-api/v1/apis'

curl -H 'content-type: application/json' \
  -X POST \
    -d '{"endPoint":"fake-services:8001"}' \
      'http://apiaxle-api/v1/api/service-1'

curl -H 'content-type: application/json' \
  -X POST \
    -d '{"endPoint":"fake-services:8001"}' \
      'http://apiaxle-api/v1/api/service-2'

curl -H 'content-type: application/json' \
  -X POST \
    -d '{}' \
      'http://apiaxle-api/v1/key/something-special'

curl -H 'content-type: application/json' \
  -X PUT \
    'http://localhost/v1/api/service-1/linkkey/something-special'

curl -H 'content-type: application/json' \
  -X PUT \
    'http://localhost/v1/api/service-2/linkkey/something-special'

```

## Get some stats

```bash

curl 'http://apiaxle-api/v1/api/service-1/stats'

```
