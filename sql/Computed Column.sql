--Example to alter a table to add a computed column.

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