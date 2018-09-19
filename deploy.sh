#!/bin/bash

kubectl set image deployment hello hello=alycert/hello:${CIRCLE_SHA1:0:10}
