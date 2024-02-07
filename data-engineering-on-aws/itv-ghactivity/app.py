import os
from util import get_spark_session


def main():
    env = os.environ.get('ENVIRONMENT')
    spark = get_spark_session(env, 'ITV GitHub activity  - Getting Started')
    # print(type(spark))
    spark.sql('select current_date').show()


if __name__ == '__main__':
    main()
