-- ads_performance.sql
select * from {{ ref('stg_ads_tiktok') }}
union all
select * from {{ ref('stg_ads_twitter') }}
union all
select * from {{ ref('stg_ads_facebook') }}
union all
select * from {{ ref('stg_ads_bing') }}
