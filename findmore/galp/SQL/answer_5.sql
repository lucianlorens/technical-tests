-- Average number of readings by year for the sensor PPL340;
SELECT AVG(sensors.value) from sensors
WHERE sensors.name = "PPL340"
GROUP BY sensors.year;
