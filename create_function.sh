#!/bin/bash

aws lambda create-function \
    --runtime python3.7 \
    --function-name make_s3_object_private \
    --zip-file fileb://make_s3_object_private.zip \
    --handler make_s3_object_private.lambda_handler \
    --timeout 3 \
    --role arn:aws:iam::859119227216:role/lambda_s3_make_object_private \
    --memory-size 256 