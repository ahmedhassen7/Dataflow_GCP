python dataflow_python_examples/data_ingestion.py\
--project=$PROJECT --region=us-central1\
--runner=DataflowRunner --staging_location=gs://$PROJECT/test\
--temp_location gs://$PROJECT/test\
--input gs://$PROJECT/data_files/head_usa_names.csv --save_main_session