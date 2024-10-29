create database blinkit;

use blinkit;

select * from grocery_sales gs ;

#2
select item_identifier from grocery_sales gs ;

#3
select count(item_identifier) from grocery_sales gs ;

#4
select max(item_weight) from grocery_sales gs;

#5
select min(item_weight) from grocery_sales gs;

#6
select avg(item_weight) from grocery_sales gs;

#7
select count(item_fat_content) from grocery_sales gs
where item_fat_content ='Low Fat' ;

#8
select count(item_fat_content) from grocery_sales gs
where item_fat_content ='regular' ;

#9
select max(item_mrp) from grocery_sales gs ;

#10
select min(item_mrp) from grocery_sales gs ;

#11
select item_identifier ,item_fat_content ,item_type ,item_mrp 
from grocery_sales gs
where item_mrp >200;

#12
select max(item_mrp) 
from grocery_sales gs 
where item_fat_content ='Low Fat' ;

#13
select min(item_mrp) 
from grocery_sales gs 
where item_fat_content ='Low Fat' ;

#14
select * from grocery_sales gs
where Item_MRP between 50 and 100;

#15
select distinct item_fat_content from  grocery_sales gs ;

#16
select distinct item_type from  grocery_sales gs ;

#17
select * from grocery_sales gs 
order by item_mrp desc;

#18
select * from grocery_sales gs 
order by item_outlet_sales asc;

#19
select * from grocery_sales gs order by item_type asc;

#20
select * from grocery_sales gs 
where item_type in ('dairy','meat');

#21
select distinct outlet_size from grocery_sales gs;

#22
select distinct outlet_location_type from grocery_sales gs;

#23
select distinct outlet_type from grocery_sales gs;

#24
select item_type , count(Item_Identifier) as No_Of_Item  
from grocery_sales gs  
group by item_type  
order by No_Of_Item desc ; 

#25
select Outlet_Size , count(Item_Identifier) as No_Of_Item  
FROM grocery_sales gs  
GROUP BY Outlet_Size  
ORDER BY No_Of_Item asc;

#26
select outlet_type , count(item_identifier) as no_of_item 
from grocery_sales gs
group by outlet_type 
order by no_of_item desc ;

#27
select outlet_location_type,count(item_identifier) as no_of_item 
from grocery_sales gs 
group by outlet_location_type 
order by no_of_item desc ;

#28
select item_type , max(item_mrp) as max_mrp
from grocery_sales gs
group by item_type;

#29
select item_type , min(item_mrp) as min_mrp
from grocery_sales gs
group by item_type ;

#30
select outlet_establishment_year ,min(item_mrp) as min_mrp
from grocery_sales gs
group by outlet_establishment_year 
order by min_mrp desc;

#31
select outlet_establishment_year ,max(item_mrp) as max_mrp
from grocery_sales gs
group by outlet_establishment_year 
order by max_mrp desc;

#32
select outlet_size ,avg(item_mrp) as avg_mrp 
from grocery_sales gs
group by outlet_size 
order by avg_mrp desc;

#33
select outlet_type ,avg(item_mrp) as avg_mrp 
from grocery_sales gs
group by outlet_type 
order by avg_mrp asc;

#34
select outlet_type,max(item_mrp) as max_mrp
from grocery_sales gs
group by outlet_type
order by max_mrp;

#35
select item_type, max(item_weight) as max_weight
from grocery_sales gs 
group by item_type 
order by max_weight;

#36
select outlet_establishment_year ,max(item_weight) as max_weight
from grocery_sales gs 
group by outlet_establishment_year 
order by max_weight;

#37
select outlet_type,min(item_weight) as min_weight 
from grocery_sales gs 
group by outlet_type 
order by min_weight;

#38
select outlet_location_type ,avg(item_weight) as avg_weight
from grocery_sales gs
group by outlet_location_type 
order by avg_weight desc ;

#39
select item_type ,max(item_outlet_sales) as max_sales
from grocery_sales gs
group by item_type 
order by max_sales;

#40
select item_type ,min(item_outlet_sales) as min_sales
from grocery_sales gs
group by item_type 
order by min_sales;

#41
select outlet_establishment_year ,min(item_outlet_sales) as min_sales
from grocery_sales gs
group by outlet_establishment_year 
order by min_sales;

#42
select outlet_establishment_year ,max(item_outlet_sales) as max_sales
from grocery_sales gs
group by outlet_establishment_year 
order by max_sales desc;

#43
select outlet_size ,avg(item_outlet_sales) as avg_sales
from grocery_sales gs 
group by outlet_size 
order by avg_sales desc ;

#44
select outlet_type ,avg(item_outlet_sales) as avg_sales 
from grocery_sales gs 
group by outlet_type 
order by avg_sales;

#45
select outlet_type ,max(item_outlet_sales) as max_sales 
from grocery_sales gs 
group by outlet_type 
order by max_sales;

#46
select item_type ,sum(item_outlet_sales) as total_sales 
from grocery_sales gs 
group by item_type 
order by total_sales;

#47
select item_fat_content, sum(item_outlet_sales) as total_sales 
from grocery_sales gs
group by item_fat_content 
order by total_sales;

#48
select item_type , max(item_visibility) as max_visibility  
from grocery_sales gs 
group by item_type 
order by max_visibility;

#49
select item_type , min(item_visibility) as min_visibility  
from grocery_sales gs 
group by item_type 
order by min_visibility;

#50
select Item_Type, sum(Item_Outlet_Sales) as Total_sales
from grocery_sales gs where Outlet_Location_Type = 'Tier 1'
group by Item_Type 
order by Total_sales;

#51
select Item_Type, sum(Item_Outlet_Sales)Total_sales
from grocery_sales gs where item_fat_content in ('low fat','LF')
group by Item_Type 
order by Total_sales;

select * from grocery_sales gs ;



