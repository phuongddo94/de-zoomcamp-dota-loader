variable "credentials" {
    description = "My GCP JSON credtional file"
    default = "C:\\Users\\do_du\\git\\key\\de-zoomcamp-d2loader-4f3bc6734a5b.json"
}


variable "project" {
    description = "My GCP project name"
    default = "de-zoomcamp-d2loader"
}

variable "region" {
    description = "My GCP region"
    default = "europe-west2"
}

variable "location" {
    description = "My GCP location"
    default = "EU"
}


variable "bq_dataset_name" {
    description = "My BigQuery dataset name"
    default = "dota_data_test"
}


variable "gcs_bucket_name" {
    description = "My GCS bucket name"
    default = "de-zoomcamp-d2loader-dota-data-bucket"
}

variable "gcs_bucket_class" {
    description = "Bucket Storage Class"
    default = "STANDARD"
}