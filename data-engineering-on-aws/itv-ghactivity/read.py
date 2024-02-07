def from_files(spark, data_dir, file_pattern, file_format):
    df = (spark.read.
          format('json').
          load(f'{data_dir}/{file_pattern}')
          )

    return df