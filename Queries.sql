Queries :

1) Each Sale Date-> MARGIN :-

SELECT DATE(sale_datetime)AS saledate,SUM(total_amount),SUM(total_cost),SUM(total_amount)-SUM(total_cost) FROM sales WHERE order_status='Completed' GROUP BY saledate ORDER BY saledate;
+------------+-------------------+-----------------+-----------------------------------+
| saledate   | SUM(total_amount) | SUM(total_cost) | SUM(total_amount)-SUM(total_cost) |
+------------+-------------------+-----------------+-----------------------------------+
| 2023-01-15 |            670.75 |          480.25 |                            190.50 |
| 2023-01-16 |            980.40 |          700.00 |                            280.40 |
| 2023-01-17 |            715.70 |          500.00 |                            215.70 |
| 2023-01-18 |           1300.00 |          950.00 |                            350.00 |
| 2023-01-19 |            325.00 |          250.00 |                             75.00 |
| 2023-01-20 |           1305.00 |          900.00 |                            405.00 |
| 2023-01-21 |           1280.00 |          940.00 |                            340.00 |
| 2023-01-22 |           1080.00 |          780.00 |                            300.00 |
| 2023-01-23 |            135.00 |           90.00 |                             45.00 |
| 2023-01-24 |            890.00 |          660.00 |                            230.00 |
| 2023-01-26 |            739.99 |          520.00 |                            219.99 |
| 2023-01-27 |           1195.50 |          850.00 |                            345.50 |
| 2023-01-28 |            754.00 |          520.00 |                            234.00 |
| 2023-01-29 |             75.00 |           50.00 |                             25.00 |
| 2023-01-30 |            640.00 |          450.00 |                            190.00 |
| 2023-01-31 |           1449.00 |         1050.00 |                            399.00 |
| 2023-02-01 |            560.00 |          430.00 |                            130.00 |
| 2023-02-02 |            744.99 |          520.00 |                            224.99 |
| 2023-02-03 |           2555.00 |         1880.00 |                            675.00 |
| 2023-02-04 |            470.00 |          330.00 |                            140.00 |
| 2023-02-05 |           1980.00 |         1440.00 |                            540.00 |
| 2023-02-06 |           1305.00 |          940.00 |                            365.00 |
| 2023-02-07 |            210.00 |          160.00 |                             50.00 |
| 2023-02-08 |           1340.00 |          950.00 |                            390.00 |
| 2023-02-09 |            655.00 |          450.00 |                            205.00 |
| 2023-02-10 |           1365.00 |          960.00 |                            405.00 |
| 2023-02-11 |           1515.00 |         1080.00 |                            435.00 |
| 2023-02-12 |           2190.00 |         1560.00 |                            630.00 |
| 2023-02-13 |            780.00 |          580.00 |                            200.00 |
| 2023-02-14 |            700.00 |          490.00 |                            210.00 |
| 2023-02-15 |           1779.99 |         1220.00 |                            559.99 |
| 2023-02-16 |            930.00 |          660.00 |                            270.00 |
| 2023-02-17 |           1325.00 |          920.00 |                            405.00 |
| 2023-02-18 |           1225.00 |          850.00 |                            375.00 |
| 2023-02-19 |            835.00 |          580.00 |                            255.00 |
| 2023-02-20 |            810.00 |          560.00 |                            250.00 |
| 2023-02-21 |           1280.00 |          890.00 |                            390.00 |
| 2023-02-22 |           1520.00 |         1100.00 |                            420.00 |
| 2023-02-23 |            704.00 |          500.00 |                            204.00 |
| 2023-02-24 |           2180.00 |         1600.00 |                            580.00 |
| 2023-02-25 |            810.00 |          580.00 |                            230.00 |
| 2023-02-26 |            800.00 |          540.00 |                            260.00 |
| 2023-02-27 |            920.00 |          650.00 |                            270.00 |
| 2023-02-28 |           1380.00 |         1020.00 |                            360.00 |
| 2023-03-01 |           2379.99 |         1760.00 |                            619.99 |
| 2023-03-02 |           1100.00 |          800.00 |                            300.00 |
| 2023-03-03 |            770.00 |          540.00 |                            230.00 |
| 2023-03-04 |           2200.00 |         1580.00 |                            620.00 |
| 2023-03-05 |           1230.00 |          890.00 |                            340.00 |
| 2023-03-06 |           1130.00 |          790.00 |                            340.00 |
| 2023-03-07 |            780.00 |          560.00 |                            220.00 |
| 2023-03-08 |            940.00 |          700.00 |                            240.00 |
| 2023-03-09 |            815.00 |          575.00 |                            240.00 |
| 2023-03-10 |           1555.00 |         1130.00 |                            425.00 |
| 2023-03-11 |            920.00 |          650.00 |                            270.00 |
| 2023-03-12 |           1760.00 |         1280.00 |                            480.00 |
| 2023-03-13 |            375.00 |          258.00 |                            117.00 |
| 2023-03-14 |            805.00 |          600.00 |                            205.00 |
| 2023-03-15 |            435.00 |          300.00 |                            135.00 |
| 2023-03-16 |            695.00 |          520.00 |                            175.00 |
| 2023-03-17 |            785.00 |          560.00 |                            225.00 |
| 2023-03-18 |           1240.00 |          880.00 |                            360.00 |
| 2023-03-19 |            780.00 |          550.00 |                            230.00 |
| 2023-03-20 |             88.00 |           60.00 |                             28.00 |
| 2023-03-21 |            720.00 |          520.00 |                            200.00 |
| 2023-03-22 |           1485.00 |         1090.00 |                            395.00 |
| 2023-03-23 |            620.00 |          470.00 |                            150.00 |
| 2023-03-24 |            754.00 |          535.00 |                            219.00 |
| 2023-03-25 |           2485.00 |         1820.00 |                            665.00 |
| 2023-03-26 |            485.00 |          345.00 |                            140.00 |
| 2023-03-27 |           1775.00 |         1310.00 |                            465.00 |
| 2023-03-28 |           1290.00 |          930.00 |                            360.00 |
And So On.


2) Product and there Quantity Top that sale :-

SELECT p.product_name AS product,SUM(s.quantity)AS quantity FROM products p JOIN sale_items s ON p.product_id=s.product_id JOIN sales a ON s.sale_id=a.sale_id WHERE order_status='Completed' GROUP BY product ORDER BY quantity LIMIT 5;
+--------------------+----------+
| product            | quantity |
+--------------------+----------+
| PowerLaptop 16"    |        1 |
| HeadsetX Pro       |        1 |
| SmartWatch Gen3    |        1 |
| SmartWatch Gen4    |        1 |
| Men T-Shirt Cotton |        1 |
+--------------------+----------+


3) Recent Sale By Staff,From Which Store And Date :-

 SELECT st.staff_id,
           st.first_name,
          st.hire_date,
          s.store_name,
          s.store_id
     FROM (
         SELECT staff_id,
               store_id,
               first_name,                    
               hire_date,
              ROW_NUMBER() OVER (
                  PARTITION BY store_id
                  ORDER BY hire_date DESC
              ) AS rn
        FROM staff
    ) st
    JOIN stores s ON s.store_id = st.store_id
    WHERE st.rn = 1;
+----------+------------+------------+------------------------------+----------+
| staff_id | first_name | hire_date  | store_name                   | store_id |
+----------+------------+------------+------------------------------+----------+
|       41 | Myra       | 2023-06-03 | Dubai Mall Store             |        1 |
|       16 | Reyansh    | 2020-04-11 | Mumbai Central Store         |        2 |
|       39 | Sara       | 2020-02-09 | Cairo City Store             |        3 |
|       12 | Ayaan      | 2018-12-19 | London Downtown Store        |        4 |
|       13 | Meera      | 2017-08-27 | Delhi Connaught Store        |        5 |
|       42 | Arjun      | 2022-10-21 | New York Fifth Ave Store     |        6 |
|        3 | Ishaan     | 2023-01-18 | Sharjah Mega Store           |        7 |
|       49 | Aarohi     | 2018-01-29 | Bangalore Tech Park Store    |        8 |
|       48 | Ishaan     | 2023-08-03 | Toronto Eaton Store          |        9 |
|       28 | Ananya     | 2020-09-08 | Singapore Orchard Store      |       10 |
|       45 | Aarohi     | 2023-06-21 | Abu Dhabi Marina Store       |       11 |
|        9 | Sai        | 2021-07-13 | Doha City Centre Store       |       12 |
|       29 | Rohan      | 2022-10-26 | Sydney Harbour Store         |       13 |
|       25 | Ayaan      | 2015-01-07 | Berlin Alexanderplatz Store  |       14 |
|       34 | Ananya     | 2022-07-30 | Paris Champs-Élysées Store   |       15 |
|       47 | Meera      | 2020-01-18 | Tokyo Shibuya Store          |       16 |
|       46 | Aadhya     | 2019-10-14 | Seoul Gangnam Store          |       17 |
|       43 | Aarohi     | 2017-10-17 | Madrid Gran Via Store        |       18 |
|       33 | Rohan      | 2021-10-20 | Rome Colosseum Store         |       19 |
|       36 | Aditya     | 2018-10-04 | Kuala Lumpur Pavilion Store  |       20 |
+----------+------------+------------+-------------------


4) Store That Sale the Higher Than Other. Top Stores :-

 SELECT store_id,sale_id,total_amount FROM ( SELECT store_id,sale_id,total_amount,ROW_NUMBER() OVER (PARTITION BY store_id ORDER BY total_amount DESC) rn FROM sales WHERE order_status='Completed')t WHERE rn=1;
+----------+---------+--------------+
| store_id | sale_id | total_amount |
+----------+---------+--------------+
|        1 |     912 |      1522.00 |
|        2 |      37 |      2100.00 |
|        3 |      89 |      1999.99 |
|        4 |     867 |       875.00 |
|        5 |      61 |      1599.99 |
|        6 |     603 |       995.00 |
|        7 |     932 |      1500.00 |
|        8 |     910 |      1105.00 |
|        9 |      56 |      1880.00 |
|       10 |     741 |      1685.00 |
|       11 |      75 |      1520.00 |
|       12 |      42 |      1500.00 |
|       13 |      32 |      1290.00 |
|       14 |      96 |      1340.00 |
|       15 |     938 |       542.00 |
|       16 |     951 |      1365.00 |
|       17 |     907 |      1488.00 |
|       18 |     937 |      2145.00 |
|       19 |      49 |       560.00 |
|       20 |       3 |       980.40 |
+----------+---------+--------------+
20 rows in set (0.00 sec)


5) 7 Days Rolling Sales, Revenue And Date Of Sale :-

SELECT DATE(sale_datetime) AS saledate,SUM(total_amount)AS revenue,SUM(SUM(total_amount)) OVER (ORDER BY DATE(sale_datetime) ROWS BETWEEN 6 PRECEDING AND CURRENT ROW)AS 7DAYROLLING FROM sales WHERE order_status='Completed' GROUP BY DATE(sale_datetime) ORDER BY saledate;
+------------+---------+-------------+
| saledate   | revenue | 7DAYROLLING |
+------------+---------+-------------+
| 2023-01-15 |  670.75 |      670.75 |
| 2023-01-16 |  980.40 |     1651.15 |
| 2023-01-17 |  715.70 |     2366.85 |
| 2023-01-18 | 1300.00 |     3666.85 |
| 2023-01-19 |  325.00 |     3991.85 |
| 2023-01-20 | 1305.00 |     5296.85 |
| 2023-01-21 | 1280.00 |     6576.85 |
| 2023-01-22 | 1080.00 |     6986.10 |
| 2023-01-23 |  135.00 |     6140.70 |
| 2023-01-24 |  890.00 |     6315.00 |
| 2023-01-26 |  739.99 |     5754.99 |
| 2023-01-27 | 1195.50 |     6625.49 |
| 2023-01-28 |  754.00 |     6074.49 |
| 2023-01-29 |   75.00 |     4869.49 |
| 2023-01-30 |  640.00 |     4429.49 |
| 2023-01-31 | 1449.00 |     5743.49 |
| 2023-02-01 |  560.00 |     5413.49 |
| 2023-02-02 |  744.99 |     5418.49 |
| 2023-02-03 | 2555.00 |     6777.99 |
| 2023-02-04 |  470.00 |     6493.99 |
| 2023-02-05 | 1980.00 |     8398.99 |
| 2023-02-06 | 1305.00 |     9063.99 |
| 2023-02-07 |  210.00 |     7824.99 |
| 2023-02-08 | 1340.00 |     8604.99 |
| 2023-02-09 |  655.00 |     8515.00 |
| 2023-02-10 | 1365.00 |     7325.00 |
| 2023-02-11 | 1515.00 |     8370.00 |
| 2023-02-12 | 2190.00 |     8580.00 |
| 2023-02-13 |  780.00 |     8055.00 |
| 2023-02-14 |  700.00 |     8545.00 |
| 2023-02-15 | 1779.99 |     8984.99 |
| 2023-02-16 |  930.00 |     9259.99 |
| 2023-02-17 | 1325.00 |     9219.99 |
| 2023-02-18 | 1225.00 |     8929.99 |
| 2023-02-19 |  835.00 |     7574.99 |
| 2023-02-20 |  810.00 |     7604.99 |
| 2023-02-21 | 1280.00 |     8184.99 |
| 2023-02-22 | 1520.00 |     7925.00 |
| 2023-02-23 |  704.00 |     7699.00 |
| 2023-02-24 | 2180.00 |     8554.00 |
| 2023-02-25 |  810.00 |     8139.00 |
| 2023-02-26 |  800.00 |     8104.00 |
| 2023-02-27 |  920.00 |     8214.00 |
| 2023-02-28 | 1380.00 |     8314.00 |
| 2023-03-01 | 2379.99 |     9173.99 |
| 2023-03-02 | 1100.00 |     9569.99 |
| 2023-03-03 |  770.00 |     8159.99 |
| 2023-03-04 | 2200.00 |     9549.99 |
| 2023-03-05 | 1230.00 |     9979.99 |
 And So On.


6)Each Month Total Order And In That How Many Returned Or Cancelled Orders Plus In Percentage How Many Orders Returned Or Cancelled :-

 SELECT DATE_FORMAT(sale_datetime,'%y-%m')AS month,COUNT(*)AS totalorders,SUM(CASE WHEN order_status IN ('Returned','Cancelled')THEN 1 ELSE 0 END)AS bad_order,ROUND(100 * SUM(order_status IN ('Returned','Cancelled'))/ COUNT(*),2)AS pct_bad FROM sales GROUP BY month ORDE
R BY month;
+-------+-------------+-----------+---------+
| month | totalorders | bad_order | pct_bad |
+-------+-------------+-----------+---------+
| 23-01 |          32 |         6 |   18.75 |
| 23-02 |          56 |         4 |    7.14 |
| 23-03 |          62 |         8 |   12.90 |
| 23-04 |          60 |         5 |    8.33 |
| 23-05 |          62 |         7 |   11.29 |
| 23-06 |          60 |         7 |   11.67 |
| 23-07 |          62 |         5 |    8.06 |
| 23-08 |          62 |         6 |    9.68 |
| 23-09 |          60 |         6 |   10.00 |
| 23-10 |          62 |         6 |    9.68 |
| 23-11 |          60 |         7 |   11.67 |
| 23-12 |          62 |         5 |    8.06 |
| 24-01 |          62 |         7 |   11.29 |
| 24-02 |          58 |         6 |   10.34 |
| 24-03 |          62 |         6 |    9.68 |
| 24-04 |          60 |         6 |   10.00 |
| 24-05 |          58 |         5 |    8.62 |
+-------+-------------+-----------+---------+


7)Which Product Customer Viewed But Not Purchased :-

SELECT w.session_id,c.customer_id,w.event_type,p.product_id FROM web_events w JOIN customers c ON w.customer_id=c.customer_id JOIN products p ON p.product_id=w.product_id WHERE
event_type='view_product' GROUP BY w.session_id,c.customer_id,w.event_type,p.product_id;
+------------+-------------+--------------+------------+
| session_id | customer_id | event_type   | product_id |
+------------+-------------+--------------+------------+
| SID1004    |           9 | view_product |        112 |
| SID1009    |          12 | view_product |        215 |
| SID1044    |           2 | view_product |        118 |
| SID1045    |           9 | view_product |        264 |
+------------+-------------+--------------+------------+


8) Which Customer Got Highest Margin Top 5 :-

 SELECT c.customer_name,c.customer_id,SUM(si.quantity * si.unit_price - si.line_total)AS gross_margin FROM sale_items si JOIN sales s ON s.sale_id=si.sale_id JOIN customers c ON c.customer_id=s.customer_id WHERE s.order_status='Completed' GROUP BY c.customer_id,c.customer_name ORDER BY gross_margin DESC LIMIT 5;
+---------------+-------------+--------------+
| customer_name | customer_id | gross_margin |
+---------------+-------------+--------------+
| Nikhil Rao    |          77 |      1732.94 |
| Felix Morales |          64 |      1480.36 |
| Fatma Youssef |          78 |       826.90 |
| Hana Novak    |          48 |       552.01 |
| Zubair Khan   |          81 |       443.20 |
+---------------+-------------+--------------+
5 rows in set (0.00 sec)


9) Which Product Get Out Of Stock:-

 SELECT product_id,COUNT(*)AS STOCKOUT_count FROM inventory_snapshots WHERE stock_on_hand=0 GROUP BY product_id ORDER BY STOCKOUT_count DESC;
+------------+----------------+
| product_id | STOCKOUT_count |
+------------+----------------+
|        277 |              1 |
+------------+----------------+

10) Which Product Get Atleast Viewed Top 10:-

 SELECT product_id,SUM(event_type='view_product')AS views,SUM(event_type='add_to_cart')AS adds,SUM(event_type='begin_checkout')AS checkout,SUM(event_type='purchase')AS purchases FROM web_events GROUP BY product_id ORDER BY views DESC LIMIT 10;
+------------+-------+------+----------+-----------+
| product_id | views | adds | checkout | purchases |
+------------+-------+------+----------+-----------+
|        128 |     1 |    0 |        0 |         1 |
|        215 |     1 |    0 |        0 |         0 |
|         24 |     1 |    0 |        0 |         0 |
|         26 |     1 |    0 |        0 |         0 |
|        118 |     1 |    0 |        0 |         0 |
|         32 |     1 |    0 |        0 |         0 |
|        198 |     1 |    0 |        0 |         0 |
|        112 |     1 |    0 |        1 |         0 |
|         50 |     1 |    0 |        0 |         0 |
|         75 |     1 |    0 |        0 |         0 |
+------------+-------+------+----------+-----------+


11) Product That Get Returned Top 5 :-

SELECT si.product_id,p.product_name,COUNT(*)AS returned_count FROM sales s JOIN sale_items si ON s.sale_id=si.sale_id JOIN products p ON p.product_id=si.product_id WHERE s.order_status='Returned' GROUP BY si.product_id,p.product_name ORDER BY returned_count DESC LIMIT 5;
+------------+------------------+----------------+
| product_id | product_name     | returned_count |
+------------+------------------+----------------+
|         13 | Tablet 10"       |              1 |
|         17 | DSLR Camera 24MP |              1 |
|         49 | Cheese 200g      |              1 |
|         65 | Chair Wooden     |              1 |
|         82 | Football         |              1 |
+------------+------------------+----------------+


12) Data Cleaning :- Check Duplicate Customers :-

 SELECT customer_name,COUNT(*)AS cnt,GROUP_CONCAT(customer_id)AS ids FROM customers GROUP BY customer_name HAVING COUNT(*)>1 ORDER BY cnt DESC;
Empty set (0.00 sec)
 This shows data is clean.


13) Show Last Order That Should Be Less Than 1 year :-

 SELECT s.customer_id,c.customer_name,MAX(sale_datetime)AS lastorder FROM sales s LEFT JOIN customers c ON s.customer_id=c.customer_id GROUP BY s.customer_id,c.customer_name HAVING lastorder IS NULL OR lastorder < DATE_SUB(CURDATE(),INTERVAL 1 YEAR);

+-------------+----------------+---------------------+
| customer_id | customer_name  | lastorder           |
+-------------+----------------+---------------------+
|          45 | Kaito Suzuki   | 2023-01-15 10:35:00 |
|         128 | NULL           | 2024-04-27 12:55:00 |
|         302 | NULL           | 2023-10-31 12:10:00 |
|          89 | Rina Saito     | 2024-02-24 09:15:00 |
|         511 | NULL           | 2023-01-17 11:05:00 |
|          67 | Saeed Abdullah | 2023-01-17 19:15:00 |
|         219 | NULL           | 2023-08-02 17:30:00 |
|         410 | NULL           | 2023-12-04 10:05:00 |
|          76 | Grace Kim      | 2024-01-20 11:10:00 |
|         512 | NULL           | 2023-01-20 09:50:00 |
|         210 | NULL           | 2023-10-31 17:45:00 |
|         155 | NULL           | 2023-02-27 16:15:00 |

And So On.




