-- Industrial Energy Consumption Analytics
-- SQL Business Analysis

-- 1. Total Energy Consumption
SELECT
    SUM(Usage_kWh) AS total_energy_consumption
FROM cleaned_energy_data;


-- 2. Average Energy Consumption
SELECT
    AVG(Usage_kWh) AS average_energy_consumption
FROM cleaned_energy_data;


-- 3. Total CO2 Emissions
SELECT
    SUM(CO2) AS total_co2_emissions
FROM cleaned_energy_data;


-- 4. Average Power Factor
SELECT
    AVG(Power_Factor) AS average_power_factor
FROM cleaned_energy_data;


-- 5. Energy Consumption by Load Type
SELECT
    Load_Type,
    SUM(Usage_kWh) AS total_energy_consumption
FROM cleaned_energy_data
GROUP BY Load_Type
ORDER BY total_energy_consumption DESC;


-- 6. Energy Consumption by Week Status
SELECT
    WeekStatus,
    SUM(Usage_kWh) AS total_energy_consumption
FROM cleaned_energy_data
GROUP BY WeekStatus
ORDER BY total_energy_consumption DESC;


-- 7. Energy Consumption by Hour
SELECT
    Hour,
    SUM(Usage_kWh) AS total_energy_consumption
FROM cleaned_energy_data
GROUP BY Hour
ORDER BY Hour;


-- 8. Energy Consumption by Month
SELECT
    Month,
    SUM(Usage_kWh) AS total_energy_consumption
FROM cleaned_energy_data
GROUP BY Month
ORDER BY total_energy_consumption DESC;


-- 9. Average Energy Consumption by Load Type
SELECT
    Load_Type,
    AVG(Usage_kWh) AS average_energy_consumption
FROM cleaned_energy_data
GROUP BY Load_Type
ORDER BY average_energy_consumption DESC;


-- 10. CO2 Emissions by Load Type
SELECT
    Load_Type,
    SUM(CO2) AS total_co2_emissions
FROM cleaned_energy_data
GROUP BY Load_Type
ORDER BY total_co2_emissions DESC;