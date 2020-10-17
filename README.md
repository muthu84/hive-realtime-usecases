# hive-realtime-usecases
Real time usecases of hive serdes/schema migration/evolution

Use case 1:
Process the Store stocks using HIVE :

Requirement: 
Customer will send the list of stock items as JSON format, we have to load it in HIVE and do some analysis in that data .

Pre-requisites:

Copy the data file into HDFS:

dowload the store.json file and copy it in your hdfs location '/tmp/stores' folder using copy_json.sh script.

Download JSON SERDE and Copy to HIVE LIB folder:

Download JSON SERDE from the below (org.openx.data.jsonserde.JsonSerDe)

https://jar-download.com/artifact-search/json-serde

Load the above JSON serde jar in hive lib directory (/usr/local/hive/lib) or add this jar while run this hql job.

Hive QL:
1. Use store_create.hql file to load this JSON data into hive.
   a. In this hql, I create a table with JSON serde to parse the store.json file.
2. Use lateralview.hql file to view the list of stock item array in lateral view:
   a. In this hql, user can view the list of stock items in lateral view with store id and basket id details.

