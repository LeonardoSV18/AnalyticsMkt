I could not find the data for Facebook : Engagements and Conversions, so it should be added manually or from another resource 


If we have a resource from where we could find the data we could use the following code: 

-- Step 1: Add the new column to the target table
ALTER TABLE stg_ads_facebook
ADD engagements VARCHAR(100);

-- Step 2: Update the new column with data from the other table
UPDATE engagements
SET stg_ads_facebook.engagements = NewData.engagements
FROM NewData
WHERE stg_ads_facebook.ad_id = NewData.ad_id;




