--Example to alter a table to add a computed column.

--CHG02-20190704 (04/07/2019)
--CHG01-20190704. (04/07/2019)


use myDatabase
GO


ALTER TABLE LOCATION 
ADD Shape AS (CONVERT(GEOMETRY, CASE WHEN x<> 0 
                                    AND y<> 0 
                               THEN GEOMETRY::STGeomFromText('POINT(' 
                                                          + CONVERT(VARCHAR, x) 
                                                          + ' ' 
                                                          + CONVERT(VARCHAR, y) 
                                                          + ')', 4238) 
                               ELSE NULL 
                          END)) 