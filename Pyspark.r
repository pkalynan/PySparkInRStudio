# There will be several errors although if lines of codes within a variable (i.e.:  x = 2^2), and enter that labelled variable - 
# it will display as output - using R window not R-Studio.
# The tip above was retrieved from GitHub... 

# Kernal code was important along with the pyspark settings.
# Install libraries


library(reticulate)
repl_python()
from pyspark.sql.session import SparkSession
from pyspark import *
from pyspark import SparkContext
from pyspark import SparkConf

# This piece of code (4 lines) was taken from Stack Overflow.
import ctypes
kernel32 = ctypes.WinDLL('kernel32', use_last_error=True)
kernel32.SetStdHandle(-11, None)
kernel32.SetStdHandle(-12, None)


import pandas as pd
import numpy as np
conf = SparkConf().setMaster("local").setAppName("PySparkOnR").set('spark.executor.memory', '4G').set('spark.driver.memory', '45g').set('spark.driver.maxReultSize', '10g')
sc1 = SparkContext(conf=conf)
sc1

from pyspark.sql import SQLContext
sqlContext = SQLContext(sc1)
pdata = sqlContext.read.csv("haha.csv", header="true")

# Continue... with whichever model...

# The most important code if I ever needed to use pyspark/python on R-Studio.