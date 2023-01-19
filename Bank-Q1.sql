CREATE VIEW public.check_natcode AS 
SELECT customer_id, name, natcode, birthdate, add, tel, (case WHEN result % 11 = 0 AND last_num = 0 THEN 'valid'
																	    WHEN result % 11 = 1 AND last_num = 1 THEN 'valid'
																	    WHEN result % 11 > 1 AND last_num = 11 - result % 11 THEN 'valid'
																		ELSE 'invalid'
																		END
																	   ) as check
FROM (SELECT customer_id, name, natcode, birthdate, add, tel,
	        cast(substring(natcode,10,1) as integer) AS last_num,
	        cast(substring(natcode,1,1) as integer)*10+
		 	cast(substring(natcode,2,1) as integer)*9+
		 	cast(substring(natcode,3,1) as integer)*8+
		 	cast(substring(natcode,4,1) as integer)*7+
		 	cast(substring(natcode,5,1) as integer)*6+
		 	cast(substring(natcode,6,1) as integer)*5+
		 	cast(substring(natcode,7,1) as integer)*4+
		 	cast(substring(natcode,8,1) as integer)*3+
		 	cast(substring(natcode,9,1) as integer)*2 AS result FROM customer) as customer_check_natcode
