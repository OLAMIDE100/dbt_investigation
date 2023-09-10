{% snapshot google_sheet_stage_snapshot %}

    {{
        config(
        target_database='mide-dbt-project',
        target_schema='snapshots',
        unique_key='Id',
        strategy='timestamp',
        updated_at='date'
        )
    }}

    select * from {{ ref('google_sheet_stage') }}

{% endsnapshot %}