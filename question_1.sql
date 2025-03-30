SELECT SUM(staff_numbers) AS total_staff_in_UK
FROM dim_stores
WHERE country = 'United Kingdom'