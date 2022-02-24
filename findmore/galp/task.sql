Write the SQL statements that allow you to answer the following questions
• Total number of rows;
SELECT COUNT(*) from sensors;

• Number of distinct sensors present on the database;
SELECT DISTINCT name from sensors; 

• Number of rows for the sensor PPL340;
SELECT COUNT name from sensors
WHERE sensor.name = "PPL340"; 

• The number of rows by year for the sensor PPL340;
SELECT AVG(sensors.year) from sensors
WHERE sensors.name = "PPL340"
GROUP BY sensors.year; 

• Average number of readings by year for the sensor PPL340;
SELECT AVG(sensors.value) from sensors
WHERE sensors.name = "PPL340"
GROUP BY sensors.year;


• For PPL340, Identify the years in which the number of readings is less than the
average;

SELECT sensors.year from sensors
WHERE sensor.name = "PPL340"
GROUP BY sensors.year
HAVING sensors.value < AVG(sensors.value);

Modelo de dados Normalizado

union vs union all



--- 

Write the SQL statements that allow you to answer the following questions
• Total number of rows;
df.count()
• Number of distinct sensors present on the database;
df.distinct('sensors').count()
• Number of rows for the sensor PPL340;
df['name'].count()
• The number of rows by year for the sensor PPL340;
df['year'].count().filter( df['name' = 'PPL340'] )

• Average number of readings by year for the sensor PPL340;
df['year']filter( df['name' = 'PPL340'] ).agg(avg( df['reading'] ))


* For PPL340, Identify the years in which the number of readings is less than the
average;


---

Ação em concreto relacionado ao join em Spark


cron.job 


/6 * * * * 
if 
    do rm nome_do_arquivo.
    rm .

