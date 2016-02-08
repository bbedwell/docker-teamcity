# TeamCity Server With Docker

## Building
`docker build -t teamcity .`

## Starting with docker support
```
docker run -d \
        -p 8111:8111 \
        -v /var/run/docker.sock:/var/run/docker.sock \
        --name teamcity \
        teamcity
```

## Environment Variables
#### `TEAMCITY_DATA_PATH`
This variable specifies the directory to store teamcity data, usable with `-v` docker flag
#### `TEAMCITY_VERSION`
This variable specifies the teamcity version to pull down (defaults to `9.1.4`)
#### `DOCKER_VERSION`
This variable specifies the docker binary version to pull down (defaults to `1.10.0`)

