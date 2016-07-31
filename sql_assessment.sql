PROBLEM 5:


SQL [5]> SELECT * FROM brands WHERE founded IN (1852, 1901, 1902);

  id   |    name    | founded |    headquarters     | discontinued 
-------+------------+---------+---------------------+--------------
     5 | Cadillac   |    1902 | New York City, NY   |              
     9 | Studebaker |    1852 | South Bend, Indiana |         1967 
    12 | Rambler    |    1901 | Kenosha, Washington |         1969 
(3 rows)

-- -- -- -- -- -- --



PROBLEM 13:

SQL [13]>   SELECT b.name,
... [13]>          m.name,
... [13]>          m.year,
... [13]>          b.discontinued,
... [13]>          (b.discontinued - m.year) AS years_until_brand_discontinued
... [13]>   FROM models AS m
... [13]>     LEFT JOIN brands AS b
... [13]>       ON m.brand_name = b.name
... [13]>   WHERE b.discontinued IS NOT NULL
... [13]>   ORDER BY b.name, m.name, m.year;


    name    |       name       | year  | discontinued | years_until_brand_discontinued 
------------+------------------+-------+--------------+--------------------------------
 Austin     | Mini             |  1959 |         1987 |                             28 
 Austin     | Mini             |  1963 |         1987 |                             24 
 Austin     | Mini Cooper      |  1961 |         1987 |                             26 
 Austin     | Mini Cooper      |  1964 |         1987 |                             23 
 Austin     | Mini Cooper S    |  1963 |         1987 |                             24 
 Fairthorpe | Rockette         |  1960 |         1976 |                             16 
 Hillman    | Minx Magnificent |  1950 |         1981 |                             31 
 Plymouth   | Fury             |  1964 |         2001 |                             37 
 Pontiac    | Bonneville       |  1964 |         2010 |                             46 
 Pontiac    | Grand Prix       |  1962 |         2010 |                             48 
 Pontiac    | Grand Prix       |  1963 |         2010 |                             47 
 Pontiac    | Grand Prix       |  1964 |         2010 |                             46 
 Pontiac    | GTO              |  1964 |         2010 |                             46 
 Pontiac    | LeMans           |  1964 |         2010 |                             46 
 Pontiac    | Tempest          |  1961 |         2010 |                             49 
 Rambler    | Classic          |  1963 |         1969 |                              6 
 Studebaker | Avanti           |  1961 |         1967 |                              6 
 Studebaker | Avanti           |  1962 |         1967 |                              5 
 Studebaker | Avanti           |  1963 |         1967 |                              4 
 Studebaker | Avanti           |  1964 |         1967 |                              3 
(20 rows)
