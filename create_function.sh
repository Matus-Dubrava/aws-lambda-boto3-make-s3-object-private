#!/bin/bash

aws lambda create-function \
    --runtime python3.7 \
    --function-name make_s3_object_private \
    --zip-file fileb://make_s3_object_private.zip \
    --handler make_s3_object_private.lambda_handler \
    --timeout 3 \
    --role <iam-role> \
    --memory-size 256 