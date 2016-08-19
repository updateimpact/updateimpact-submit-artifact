#!/bin/bash
docker tag ui/latest softwaremill/updateimpact-submit-artifact:latest
docker push softwaremill/updateimpact-submit-artifact:latest
