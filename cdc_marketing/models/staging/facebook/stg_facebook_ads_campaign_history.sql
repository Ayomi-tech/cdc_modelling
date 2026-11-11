WITH source_data AS (
    SELECT * FROM {{ source('facebook_ads', 'campaign') }}
),

formatted AS (
    SELECT
        -- FK
        CAST(campaign_id AS STRING) AS campaign_id,
        
        CAST(campaign_name AS STRING) AS campaign_name,
       
        CAST(campaign_updated_at AS TIMESTAMP) AS campaign_updated_at
    FROM
        source_data
)
SELECT * FROM formatted
