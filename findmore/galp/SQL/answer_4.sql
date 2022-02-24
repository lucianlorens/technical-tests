-- The number of rows by year for the sensor PPL340;
SELECT AVG(sensors.year) from sensors
WHERE sensors.name = "PPL340"
GROUP BY sensors.year; 
