
from datetime import datetime, timedelta
from airflow import DAG
from airflow.operators.bash_operator import BashOperator
from airflow.operators.python_operator import PythonOperator
from airflow.utils.dates import days_ago
import os

default_args = {
    'owner': 'airflow',
    'depends_on_past': False,
    'start_date': days_ago(1),
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

dag = DAG(
    'dbt_airflow_sample',
    default_args=default_args,
    description='A simple dbt and Airflow example DAG',
    schedule_interval='@once',
)


# Define dbt commands as bash commands
dbt_seed = BashOperator(
    task_id='dbt_seed',
    bash_command='cd /yt_demo && dbt seed --profiles-dir .',
    dag=dag,
)

dbt_run = BashOperator(
    task_id='dbt_run',
    bash_command='/yt_demo && dbt run --profiles-dir .',
    dag=dag,
)

bt_compile = BashOperator(
    task_id='dbt_run',
    bash_command='/yt_demo && dbt compile --profiles-dir .',
    dag=dag,
)

# dbt_test = BashOperator(
#     task_id='dbt_test',
#     bash_command='dbt test',
#     dag=dag,
# )

# Define a Python function to update a Slack channel with DAG status
# def notify_slack():
#     slack_message = f'DAG execution complete: {dag.dag_id}'
#     # add code here to send the message to Slack

# notify_slack = PythonOperator(
#     task_id='notify_slack',
#     python_callable=notify_slack,
#     dag=dag,
# )

# Set up dependencies between tasks
dbt_seed >> dbt_run >> dbt_seed
