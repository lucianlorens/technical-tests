## Interview Challenge

## Description

Galp is going to open a new store in New York City and our team needs to create a new
pipeline to ingest all the generated transactions to our data lake. As the local currency (dollars) is different, we need to use a Rest API to do the exchange rate to euros. Airflow will be used
for the store ingestion and NiFi will be used to get the dollar / euro exchange rate.

## Airflow
We need to ingest all transactions from the new store in New York. The data is locally stored on a database (MySQL). Once a day, Airflow pipeline will read the data for the previous day and save it on Galp’s data lake.

All transactions table data format:

<table>
    <tr>
        <th>Field Name</th>
        <th>Type</th>
    </tr>
    <tr>
        <td>timestamp</td>
        <td>Timestamp</td>
    </tr>
    <tr>
        <td>product_id</td>
        <td>Varchar</td>
    </tr>
    <tr>
        <td>product_name</td>
        <td>Varchar</td>
    </tr>
    <tr>
        <td>product_price</td>
        <td>Double</td>
    </tr>
    <tr>
        <td>cliente_id</td>
        <td>Long</td>
    </tr>
</table> 

Think how you can build this pipeline in Airflow

## SQL 
The table shown below store all the readings of a set of sensors in a refinery

<table>
    <tr>
        <th>Field Name</th>
        <th>Type</th>
        <th>Comments</th>
    </tr>
    <tr>
        <td>name</td>
        <td>string</td>
        <td>Sensor name</td>
    </tr>
    <tr>
        <td>ts</td>
        <td>timestamp</td>
        <td>Sensor reading timestamp</td>
    </tr>
    <tr>
        <td>value</td>
        <td>double</td>
        <td>Sensor reading value</td>
    </tr>
    <tr>
        <td>status</td>
        <td>Int</td>
        <td>Sensor status</td>
    </tr>
    <tr>
        <td>year</td>
        <td>Int</td>
        <td>Sensor reading year</td>
    </tr>
    <tr>
        <td>month</td>
        <td>Int</td>
        <td>Sensor reading month</td>
    </tr>
    <tr>
        <td>day</td>
        <td>Int</td>
        <td>Sensor reading day</td>
    </tr>
</table> 
Write the SQL statements that allow you to answer the following questions:

1. Total number of rows: 
[Link to Answer_1](./SQL/answer_1.sql)

2. Number of distinct sensors present on the database: 
[Link to Answer_2](./SQL/answer_2.sql)

3. Number of rows for the sensor PPL340: 
[Link to Answer_3](./SQL/answer_3.sql)

4. The number of rows by year for the sensor PPL340: 
[Link to Answer_4](./SQL/answer_4.sql)

5. Average number of readings by year for the sensor PPL340: 
[Link to Answer_5](./SQL/answer_5.sql)

6. For PPL340, Identify the years in which the number of readings is less than the average: 
[Link to Answer_6](./SQL/answer_6.sql)

## Spark

Answer the qestions from the previous exercise (SQL) using any Apache Spark API:
[Link to Jupyter Notebook](./Spark/)


## Bash
Every six months, we need to  run a script bash to delete all the files older than six months.

### Solution:
I've created this file as an example of one possible solution:

[crontab](./Bash/crontab)

## Data Building Tool - dbt
What is dbt? how it works?

## Python (Database extraction)

Imagine you need to extract all the data from a proprietary database through an ODBC driver
on an hourly basis. 

The primary key is a field called “sensor_name” and there are more than
46000 sensors. The output of the extraction will be a Parquet file for all the sensors and to a
one-hour window (example: 2020-01-01 00:00:00 to 2020-01-01 00:59:59).

Think how you would build your code to do this hourly extraction so that it will be ready to be
consumed by other applications as soon as possible.

Fields and data format: 

<table>
    <tr>
        <th>Field Name</th>
        <th>Type</th>
    </tr>
    <tr>
        <td>timestamp</td>
        <td>Timestamp</td>
    </tr>
    <tr>
        <td>sensor_name</td>
        <td>Varchar</td>
    </tr>
    <tr>
        <td>value</td>
        <td>Double</td>
    </tr>
</table>

_Notes:_
* _It takes more than one hour to complete the query: “ SELECT * FROM table WHERE timestamp >= '2020-01-01 00:00:00' AND timestamp < '2020-01-01 01:00:00' “._
* _You cannot modify anything on the database side._

## Data lake Structure:

* Raw – where source data lands.
* Standardized – transform raw data to Parquet.
* Aggregated – aggregated data based in standardized data.

_Note: For all exercises keep in mind the data lake structure._

## Appendix
To create an Airflow cluster use Docker with the image “apache/airflow:1.10.15”.

## Extra Questions
1. What is a normalized data in database context? 
A:

2. What is the difference between Union vs Union All keywords in SQL?
A:

3. The Join operation in Spark is performative? Is there another better solution for the operation?
A:
