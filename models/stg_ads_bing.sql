-- stg_ads_bing.sql
select
    channel,
    imps as impressions,  -- Aliasing imps as impressions
    clicks,
    spend,
    conv as conversions, 
    null as engagements,
from {{ source('dbt_leonardosv18', 'src_ads_bing_all_data') }}
