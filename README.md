# brilws-docker

## Tools from the BRIL work suite in a Docker container

## To use
Pull the image from Docker Hub and start it up interactively:
```
docker run --name brilws -it tpmccauley/brilws
```

This should bring you to a command line prompt. Then you can test `brilcalc`:

```
bril@48c3625738ff:~$ brilcalc --version
3.6.2
```

If you exit you can start up the container again with the command:

```
docker start -i brilws
```

More information on how to run `brilcalc` and what it does can be found [here](http://opendata.cern.ch/docs/cms-guide-luminosity-calculation) and [here](https://cms-opendata-workshop.github.io/workshop-lesson-luminosity/).
