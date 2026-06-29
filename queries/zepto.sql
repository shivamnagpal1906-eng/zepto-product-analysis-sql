drop table if exists zepto;


create table zepto(
	sku_id SERIAL Primary key,
	category Varchar(120),
	name varchar(150) Not Null,
	mrp Numeric (8,2),
	discountPercent Numeric(5,2),
	availableQuantity INteger,
	discountedSellingPrice Numeric(8,2),
	weightInGms Integer,
	outofStock Boolean,
	quantity Integer
	);

	select * from zepto;

	--Data Exploration

	--count of rows
	select count(*) from zepto;

	--Sample Data
	select * from zepto

	--Q1. Find the top 10 best-value products based on the discount percentage
	Select distinct name,mrp,discountpercent
	from zepto
	order by discountpercent desc
	limit 10;

	-- Q2. What are the Products with high MRP but out of stock
	 select distinct name,mrp
	 from zepto
	 where outofstock = True and mrp >300
	 order by mrp desc

	 --Q.3 Calculate the estimated Revenue for each category
	 Select category , sum(discountedsellingprice*availablequantity) as total_revenue
	 from zepto
	 group by category
	 order by total_revenue

	 --Q.4 Find all the products where mrp is higher than 500 and discount is less than 10%
	 Select distinct name,mrp,discountpercent
	 from zepto
	 where mrp>500 and discountpercent < 10
	 order by mrp desc,discountpercent desc;

	 --Q.5 Identify the top 5 categories offering the highest average discount percentage
	 select category ,round(avg(discountpercent),2) as avg_discountpercent
	 from zepto
	 group by category
	 order by avg_discountpercent desc

	 --Q.6 Find the price per gram for product above 100g and sort by best value
	 select distinct name,weightingms,discountedsellingprice, round((weightingms/discountedsellingprice),2) as price_per_gm
	 from zepto
	 where weightingms>=100
	 order by price_per_gm desc

	 --Q.7 Group the products into categories like low,medium,bulk
	 select distinct name,weightingms,
	 case when weightingms<1000 then 'Low'
	 when weightingms<5000 then 'Medium'
	 else 'Bulk'
	 end as weight_category
	 from zepto

	 --Q.8  What is the total Inventory weight per category
	 select category,
	 sum(weightingms*availablequantity) as total_weight
	 from zepto
	 group by category
	 order by total_weight
	
	 
	