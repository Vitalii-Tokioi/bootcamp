import os
import boto3
import requests

os.environ.setdefault('AWS_DEFAULT', 'ITV-GitHubUser')

s3_client = boto3.client('s3')

# s3_objects = s3_client.list_objects(
#     Bucket='rusichv-itv-github'
# )

file = '2024-01-25-0.json.gz'
res = requests.get(f'https://data.gharchive.org/{file}')

upload_res = s3_client.put_object(
    Bucket='rusichv-itv-github',
    Key='2024-01-25-0.json.gz',
    Body=res.content
)

print(upload_res)