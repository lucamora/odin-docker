# ODIN Docker image (unofficial)
Unofficial [Docker image](https://hub.docker.com/r/lucamora/odin) of [ODIN](https://github.com/rnt-pmi/odin) pluggable meta-annotations and metrics for the diagnosis of classification and localization.

## Usage
Mount the folder with the notebooks inside a container based on the ODIN image:
```sh
docker run -it -p 8899:8899 -v $(pwd)/notebooks:/home/notebooks lucamora/odin
```

## Documentation
For the documentation, visit the [Odin website](https://rnt-pmi.github.io/odin-docs/).
