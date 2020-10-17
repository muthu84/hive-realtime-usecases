SELECT Version,
         StoreId,
         basket.bsktno,
         basket.tillno,
         basket.datetime,
         item.itmseq,
         item.itmdsc,
         item.gtin,
         item.itmprom.offerid,
         item.itmprom.promcd
FROM complexdt.json_store 
lateral view explode(bskt) b AS basket 
lateral view explode(basket.itm) i AS item;
