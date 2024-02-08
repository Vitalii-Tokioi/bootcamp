import os
from util import get_spark_session
from read import from_files
from process import transform
from write import to_files


def main():
    env = os.environ.get('ENVIRONMENT')   # DEV
    src_dir = os.environ.get('SRC_DIR')   # /home/vtokioy/Projects/Internal/bootcamp/data-engineering-on-aws/itv-ghactivity/data/itv-github/landing/ghactivity
    src_file_pattern = f'{os.environ.get("SRC_FILE_PATTERN")}-*'  # 2024-02-07
    src_file_format = os.environ.get("SRC_FILE_FORMAT")           # json
    tgt_dir = os.environ.get('TGT_DIR')  # /home/vtokioy/Projects/Internal/bootcamp/data-engineering-on-aws/itv-ghactivity/data/itv-github/landing/ghactivity
    tgt_file_format = os.environ.get("TGT_FILE_FORMAT")  # json

    spark = get_spark_session(env, 'ITV GitHub activity  - Getting Started')
    df = from_files(spark, src_dir, src_file_pattern, src_file_format)
    df_transformed = transform(df)
    to_files(df_transformed, tgt_dir, tgt_file_format)


if __name__ == '__main__':
    main()