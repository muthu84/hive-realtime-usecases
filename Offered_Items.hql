SELECT basket.bsktno,
       item.itmdsc
FROM complexdt.json_store lateral view explode(bskt) b AS basket 
lateral view explode(basket.itm) i AS item
where item.itmprom.offerid is not null group by basket.bsktno,item.itmdsc;
