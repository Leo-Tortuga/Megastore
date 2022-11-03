--Testdemo
SELECT * FROM MegaStore;

--Store With Highest count
SELECT
	StoreID_,
    Sales
FROM
	MegaStore
ORDER BY	
	Sales desc
LIMIT 10;
/*
StoreID_ 650 has the highest with $14920 
How many customers does it get daily?
*/
SELECT
	storeid_, 
    sales,
    customers
FROM	
	MegaStore
WHERE 
    storeid_ = 650;
/*
It gets about 860 customers daily. How does it compare to other top 25 stores?
*/
SELECT
	storeid_,
    customers
FROM	
	MegaStore
order BY	
	customers DESC
limit 25;
/* 
It doesnt have the highest amount of traffic compared to other stores not even in the top 25 stores. Why though?
Need more info about store 650.
*/
SELECT	
	*
FROM	
	MegaStore
where 
	storeid_ = 650;
/* 
So the store has 1989 sq/ft, 2414 products, 860 Customers, 116320 in sales.
Lets see the average for each field.
*/
SELECT	
    avg(sales) as avg_sales,
    avg(customers) as avg_cusomers,
    avg(store_footage) as avg_footage,
    avg(products) as avg_products
FROM	
	MegaStore;
/*
Hmm a lot of room to move around with the numbers lets make it easier to read it 
*/
SELECT	
    round(avg(sales)) as avg_sales,
    round(avg(customers)) as avg_cusomers,
    round(avg(store_footage)) as avg_footage,
    round(avg(products)) as avg_products
FROM	
	MegaStore;
/*
Alright it seems as though store 650 has more customers, footage, sales, and products than the average 
What about the stores with the max amount of everything?
*/
SELECT
	max(sales) as max_sales,
    max(customers) as max_cust,
    max(store_footage) as max_foot,
    max(products) as max_prod
FROM	
    megastore;   
/*

OK! So we know store 650 has the highest sales and we can see that :
	- it has nearly the same amount of footage and products compare the stores who have the most 
    - therefore we can see why it has the most sales compared to all the others 
    - though we do need to consider the location of the store, however we are not giving that,
		that could be a big factor as to why it has more sales as well as sales the type of products,
        and many more for the MegaStores but for know this is good information 
*/
