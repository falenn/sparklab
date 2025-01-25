#

## Installing packages
```
pip install pyspark
pip install findspark
pip install jupyterlab
```

Spark was also downloaded and placed in ~/apps/spark
```
cd ~/apps/spark
wget https://dlcdn.apache.org/spark/spark-3.5.4/spark-3.5.4-bin-hadoop3.tgz
tar -zxvf spark-3.5.4-bin-hadoop3.tgz
ln -s spark-3.5.4-bin-hadoop3 current
rm spark-3.5.4-bin-hadoop3.tgz
```

## Launch JupyterLab
As installed by pip-install above,
```
jupyter-lab
```
will start on `localhost:8888/lab`

You may have to forward this port so you can open jupyterlab on your desktop browser.


## Using Jupyterlab
Look at the console after starting `jupyter-lab`.  Copy the URL with the token to authenticate.

## First notebook
```
# set env
import os
os.environ['SPARK_HOME'] = "/home/cloud_user/apps/spark/current"
os.environ['PYSPARK_DRIVER_PYTHON'] = 'jupyter'
os.environ['PYSPARK_DRIVER_PYTHON_OPTS'] = 'lab'
os.environ['PYSPARK_PYTHON'] = 'python'
```

Shift+enter to execute

## SparkContext vs SparkSession
SparkContext is use to represent a connection to a Spark Cluster.
The context coordinates task execution accross the cluster.  Introduced in Spark 1.x.  Enables creation of RDDs.

SparkSession is new, combining all entrypoints (to a spark master, SQLContext, HiveContext, etc.  Introduced in Spark 2.x.  SparkSession also introduces dataFrames and SQL.

## Jupyterlab connectivity
https://www.geeksforgeeks.org/how-to-connect-a-local-jupyterlab-to-a-remote-kernel/



