#!/bin/bash

aws lambda update-function-code \
    --function-name make_s3_object_private \
    --zip-file fileb://make_s3_object_private.zip