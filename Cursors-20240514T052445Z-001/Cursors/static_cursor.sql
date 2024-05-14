--Declare the variables for holding data.  
DECLARE @Column1Value VARCHAR(50), @Column2Value VARCHAR(50)

DECLARE static_cursor CURSOR STATIC FOR
SELECT EmployeeID, FirstName
FROM Employee;

OPEN static_cursor;

FETCH NEXT FROM static_cursor INTO @Column1Value, @Column2Value;

-- Process the fetched rows
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Do something with the fetched data
    PRINT @Column1Value + ' ' + @Column2Value;

    FETCH NEXT FROM static_cursor INTO @Column1Value, @Column2Value;
END;

CLOSE static_cursor;
DEALLOCATE static_cursor;
