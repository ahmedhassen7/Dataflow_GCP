# ETL_Dataflow

## Overview 

In this repo we are building an ETL process through several Data Pipelines that ingest data from a publicly available dataset into BigQuery, using these Google Cloud services:
- Cloud Storage
- Dataflow
- BigQuery

### Copy files into the Storage Bucket 

- gsutil cp gs://spls/gsp290/data_files/usa_names.csv gs://$PROJECT/data_files/
- gsutil cp gs://spls/gsp290/data_files/head_usa_names.csv gs://$PROJECT/data_files/

Using these commandes we are copying the publics files into our bucket which is a temporary/staging folder

### Create the BigQuery Dataset

Next we are creating the BQ dataset named **lake** which is going to held the output
This is where all of your tables will be loaded in BigQuery

 - bq mk lake
 
### Build the dataflow Pipeline 

First we need to install the Apache-beam library wich will call the Dataflow Job and execute the data ingestion python code 

#### Virtual environment 

We have to set-up a virtual envireonment to work with

cd dataflow-python-examples/
# Here we set up the python environment.
sudo pip install virtualenv
#Dataflow requires python 3.7
virtualenv -p python3 venv
source venv/bin/activate
pip install apache-beam[gcp]==2.24.0

####  launch the Dataflow Pipeline 

through the command Line available in Dataflow_pipeline.sh we launch the dataflow Pieline 


