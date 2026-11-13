WITH all_ad_stats AS (
    SELECT * FROM {{ ref('stg_facebook_ads_basic_all_levels') }}
),

formatted AS (
    SELECT
        -- FK
        ad_id,
        ad_spend,
       -- ad_impressions,
       -- ad_clicks,
       
        ad_date
    FROM
        all_ad_stats 
)
SELECT * FROM formatted
