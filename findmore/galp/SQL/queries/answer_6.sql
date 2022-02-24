-- For PPL340, Identify the years in which the number of readings is less than the average;

SELECT sensors.year from sensors
WHERE sensor.name = "PPL340"
GROUP BY sensors.year
HAVING sensors.value < AVG(sensors.value);
