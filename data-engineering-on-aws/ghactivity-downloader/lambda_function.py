import json, os
from download import download_file
from upload import upload_s3


def lambda_handler(event, context):
    file = '2024-01-26-1.json.gz'
    download_res = download_file(file)

    bucket = os.environ.get('BUCKET_NAME')
    environ = os.environ.get('ENVIRONMENT')
    if environ == 'DEV':
        print(f'Running in {environ} environment')
        os.environ.setdefault('AWS_DEFAULT', 'ITV-GitHubUser')

    upload_res = upload_s3(
        download_res. content,
        bucket,
        file
    )

    return upload_res
