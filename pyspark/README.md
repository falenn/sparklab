# Spark overview

## General
Improvement over MapReduce by enabling data shuffling / more in-memory processing, with streaming support, 10x faster for disk-based processing and 100x faster when doing in-memory processing.


### Standard libs
* SparkSQL
* Spark Streaming
* MLLib
* Graphx

### Schedulers
* Built-in manager
* Hadoop Yarn
* K8s

### Global storage systems
* Hadoop HDFS
* HBase
* Casandra
* others as well

### Streaming
* YES - Apache Kafka

## Example spark job 
* spark/examples/src/main/python/pagerank.py

### submission
```
spark-submit --master spark://10.1.1.1:7077 \
	spark/examples/src/main/python/pagerank.py \
	datasets/datasetfile.txt \
	10 
```
10 - the number of iterations to run (according to the pagerank.py program




