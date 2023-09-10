{% snapshot google_sheet_stage_check_snapshot %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='id',
          check_cols=['status'],
          invalidate_hard_deletes=True
        )
    }}

    select * from {{ ref('google_sheet_stage') }}

{% endsnapshot google_sheet_stage_check_snapshot %}