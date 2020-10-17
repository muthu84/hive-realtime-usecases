add jar '/usr/local/lib/hive/json-serde-1.3.8-jar-with-dependencies.jar'
SELECT 
         basket.bsktno,       
         count(item.itmdsc)TotalItems 
FROM complexdt.json_store 
lateral view explode(bskt) b AS basket 
lateral view explode(basket.itm) i AS item
group by basket.bsktno ;
