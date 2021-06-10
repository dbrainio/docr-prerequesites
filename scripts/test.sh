#!/bin/bash

cd $(dirname "$0")

IMG_PATH=${IMG_PATH:-../img/synth1.jpg}
TOKEN=${TOKEN:-any}

curl -X POST "http://localhost:8080/recognize?doc_type=passport_main&mode=default&with_hitl=false" -H  "accept: application/json" -H  "authorization: $TOKEN" -H  "Content-Type: multipart/form-data" -F "image=@${IMG_PATH};type=image/jpeg"
