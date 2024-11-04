-- stg_ads_facebook.sql
select
    channel,
    impressions,
    clicks,
    spend,
    null as conversions,
    null as engagements,
from {{ source('dbt_leonardosv18', 'src_ads_creative_facebook_all_data') }}


