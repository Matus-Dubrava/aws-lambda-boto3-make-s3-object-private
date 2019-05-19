# input: s3 create object event

# sets object ACL to private

import boto3

s3_client = boto3.client('s3')


def lambda_handler(event, context):
    objects = []

    for record in event['Records']:
        objects.append({
            'bucket': record['s3']['bucket']['name'],
            'key': record['s3']['object']['key']
        })

    for obj in objects:
        res = s3_client.put_object_acl(
            Bucket=obj['bucket'],
            Key=obj['key'],
            ACL='private'
        )
        print(
            'Object: bucket - {}, key - {} made PRIVATE'.format(obj['bucket'], obj['key']))

    return None
