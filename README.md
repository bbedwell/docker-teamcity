# TeamCity Server

## Starting server
```
docker run -d \
        -p 8111:8111 \
        --name teamcity \
        bbedwell/teamcity-server
```

## Environment Variables
#### `TEAMCITY_DATA_PATH`
This variable specifies the directory to store teamcity data, usable with `-v` docker flag
