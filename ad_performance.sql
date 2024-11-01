-- models/ad_performance.sql
with facebook as (
    select 
        date,
        campaign_name,
        sum(impressions) as total_impressions,
        sum(clicks) as total_clicks
    from {{ ref('src_ads_creative_facebook_all_data') }}
    group by date, campaign_name
),
bing as (
    select 
        date,
        campaign_name,
        sum(impressions) as total_impressions,
        sum(clicks) as total_clicks
    from {{ ref('src_ads_bing_all_data') }}
    group by date, campaign_name
),
tiktok as (
    select 
        date,
        campaign_name,
        sum(impressions) as total_impressions,
        sum(clicks) as total_clicks
    from {{ ref('src_ads_tiktok_ads_all_data') }}
    group by date, campaign_name
),
twitter as (
    select 
        date,
        campaign_name,
        sum(impressions) as total_impressions,
        sum(clicks) as total_clicks
    from {{ ref('src_promoted_tweets_twitter_all_data') }}
    group by date, campaign_name
)

select 
    date,
    campaign_name,
    sum(total_impressions) as total_impressions,
    sum(total_clicks) as total_clicks
from (
    select * from facebook
    union all
    select * from bing
    union all
    select * from tiktok
    union all
    select * from twitter
) as all_data
group by date, campaign_name



