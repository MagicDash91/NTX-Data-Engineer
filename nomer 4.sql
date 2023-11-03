# Nomer 1
SELECT country, channelGrouping, SUM(productRevenue) FROM ecommerce.`ecommerce-session-bigquery` #Sum the total revenue
GROUP BY country, channelGrouping #Group by country and Channel Grouping
ORDER BY SUM(productRevenue) DESC #Arrange it from the highest value
LIMIT 5;  #Show top 5

# Nomer 2
SELECT fullVisitorId, AVG(timeOnSite), AVG(pageviews), AVG(sessionQualityDim) #Average time on site, page views, session quality dim
FROM ecommerce.`ecommerce-session-bigquery`
GROUP BY fullVisitorId; #for each fullVisitorId

# Nomer 3
SELECT v2ProductName, SUM(productRevenue), SUM(productQuantity), SUM(productRefundAmount) #total of productRevenue, productQuantity, productRefundAmount
FROM ecommerce.`ecommerce-session-bigquery`
GROUP BY v2ProductName; #for each product name