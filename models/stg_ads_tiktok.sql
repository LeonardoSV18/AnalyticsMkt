-- stg_ads_tiktok.sql
select
    channel,
    impressions,
    clicks,
    spend,
    conversions, 
    null as engagements,
from {{ source('dbt_leonardosv18', 'src_ads_tiktok_ads_all_data') }}
