create external table Stores (version float,storeId bigint,Bskt array<struct<
TillNo:int,BsktNo:bigint,DateTime:string,OpID:bigint,Itm:array<
struct<ItmSeq:int,GTIN:bigint,ItmDsc:string,ItmProm:struct<
PromCD:string,OfferID:bigint>>>>>)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
location '/tmp/stores/store.json';

