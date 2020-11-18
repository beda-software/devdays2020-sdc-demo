# SDC demo for https://www.devdays.com/

## Initial setup

### Prepare you machine

- [Get and setup docker](https://docs.docker.com/get-docker/);

### Setup environment variables

- Copy .env.tpl to .env
- Specify **AIDBOX_LICENSE_ID** and **AIDBOX_LICENSE_KEY** (You can get key and id from the [https://license-ui.aidbox.app/](https://license-ui.aidbox.app/))


## Launch compiled docker images
- Run ```docker-compose -f docker-compose.production.yaml up```
- It may take a few minutes for the environment to warm up, please wait untile docker-compose stops firing logs
- Open http://localhost:5000 in the browser 

## Launch in development mode 
- Update submodules ```git submodule update --init --recursive```
### Launch backend
- Build backend docker container ```docker-compose build```
- Start dev environment ```docker-compose up```
### Launch frontend
- [Install yarn](https://classic.yarnpkg.com/en/docs/instal)
- ```cd frontend```
- Install packages. Run command:
   ```yarn install```
- Start project. ```yarn start```

## References
- Slides for devdays https://drive.google.com/file/d/11BErnYoKvalCLFyakdIFDEsqeWFReTZv/view?usp=sharing
- Form render engine from https://github.com/beda-software/sdc-hl7-sydney
- Backend SDC implementation https://github.com/beda-software/aidbox-sdc
- FHIR React helpers https://github.com/beda-software/aidbox-react
- FHIR server https://www.health-samurai.io/aidbox

