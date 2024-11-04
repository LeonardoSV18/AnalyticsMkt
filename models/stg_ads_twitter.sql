-- stg_ads_twitter.sql
select
    channel,
    impressions,
    clicks,
    spend,
    null as conversions,
    engagements,
from {{ source('dbt_leonardosv18', 'src_promoted_tweets_twitter_all_data') }}
