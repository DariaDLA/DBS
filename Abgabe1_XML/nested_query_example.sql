use employment_styria;
SELECT NUTS3, LAU_CODE, 
       (SELECT EMPL_TOTAL, LAU_CODE
        FROM   dbo.ERW_ST_BERUF statistiken
		WHERE gemeinde.LAU_CODE = statistiken.LAU_CODE
        FOR XML AUTO, TYPE, ELEMENTS  
       )
FROM  dbo.ERW_ST_BERUF gemeinde
FOR XML AUTO, TYPE; 