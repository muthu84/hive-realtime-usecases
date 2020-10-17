# hive-realtime-usecases
Real time usecases of hive serdes/schema migration/evolution

Use case 1:
Process the Store stocks using HIVE :

Requirement: 
Customer will send the list of stock items from his store as JSON format, we have to load it in HIVE and do some analysis in that data like get list of stocks group by store.

Pre-requisites:

Copy the data file into HDFS:

dowload the store.json file and copy it in your hdfs location '/tmp/stores' folder using copy_json.sh script.

Download JSON SERDE and Copy to HIVE LIB folder:

From Maven repository download the Hive Hcatalog (hive-hcatalog-core-1.2.1.jar)

https://repo1.maven.org/maven2/org/apache/hive/hcatalog/hive-hcatalog-core/1.2.1/

Load the above JSON serde jar in hive lib directory (/usr/local/hive/lib) or add this jar while run this hql job.

Hive QL:
1. Use store_create.hql file to load this JSON data into hive.
   a. In this hql, I create a table with JSON serde to parse the store.json file.
2. Use lateralview.hql file to view the list of stock item array in lateral view:
   a. In this hql, user can view the list of stock items in lateral view with store id and basket id details.
3. Use Bsk_group.hql file to view the no. of items in the each basket for the specific store.
   a. In this hql, user can get list of items per Basket on the specific store.
4. Use Offered_item.hql file to view the list of items which has offer.
   a. In this hql, user can get the list of items which has some offer in the store.
