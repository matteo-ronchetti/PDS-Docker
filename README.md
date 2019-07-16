# Docker container for the Parallel and Distributed Systems course
This container provides:
 - The latest installation of GCC (8.3)
 - GRPPI ([https://github.com/arcosuc3m/grppi](https://github.com/arcosuc3m/grppi))
 - rplsh ([https://github.com/Murray1991/rplsh](https://github.com/Murray1991/rplsh))
 - FastFlow 
## Installation
First you should install Docker, then:
```
docker pull matteoronchetti/pds
```

## Usage
To build your project instead of running `make` run
```
docker run -v $(pwd):/mnt/src --rm --user $(id -u):$(id -g) matteoronchetti/pds
```

To start `rplsh` run
```
docker run --rm -it matteoronchetti/pds rplsh
```
