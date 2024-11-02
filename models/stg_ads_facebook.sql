-- stg_ads_facebook.sql
select
    channel,
    impressions,
    clicks,
    spend,
from {{ source('dbt_leonardosv18', 'src_ads_creative_facebook_all_data') }}


