# Example application -> Docker and environment variables

Simple application to demonstrate the usage of environment variables set at runtime. You can
test this application with Docker.

```
docker build -t fuchsbau .
docker run -e FUCHSBAU_OWNER=WhatEver fuchsbau
```