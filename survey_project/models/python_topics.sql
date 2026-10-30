-- Build this model as a physical table in BigQuery
{{ config(materialized='table') }}

-- Select all columns but remove any duplicate rows
select distinct *
-- Read from the python_topics table declared in sources.yml
from {{ source('survey_raw', 'python_topics') }}