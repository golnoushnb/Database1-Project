DROP TABLE IF EXISTS result_table;
CREATE TABLE IF NOT EXISTS result_table(
	deposit_id integer, 
	src_or_des varchar,
	amount bigint
);

CREATE OR REPLACE FUNCTION find_src(voucherid varchar, src integer, des integer, amount_ bigint, trn_date date, trn_time varchar) RETURNS void
LANGUAGE plpgsql
AS $$
DECLARE cur trn_src_des;
DECLARE notlast boolean = false;
DECLARE sum integer = 0;
BEGIN
	FOR cur IN
		SELECT * 
		FROM trn_src_des 
		WHERE desdep = src and ((trn_date = trndate and trn_time > trntime) OR (trn_date > trndate)) 
		ORDER BY trn_date, trn_time ASC
	LOOP
		IF cur.amount <> amount_ AND cur.trndate <> trn_date THEN
			sum = sum + cur.amount;
		END IF;
		IF sum <= amount_ + 0.1 * amount_ THEN
			notlast = true;
			IF cast(cur.sourcedep as boolean) THEN
				PERFORM find_src(cur.voucher_id, cur.sourcedep, cur.desdep, cur.amount, cur.trndate, cur.trntime);
			ELSE
				INSERT INTO result_table VALUES (cur.sourcedep, 'Source', cur.amount);
			END IF;
		END IF;
	END LOOP;
	
	IF notlast = false THEN
		INSERT INTO result_table VALUES (src, 'Source', amount_);
	END IF;
END;
$$;

CREATE OR REPLACE FUNCTION find_des(voucherid varchar, src integer, des integer, amount_ bigint, trn_date date, trn_time varchar) RETURNS void
LANGUAGE plpgsql
AS $$
DECLARE cur trn_src_des;
DECLARE notlast boolean = false;
DECLARE sum int = 0;
BEGIN
	FOR cur IN
		SELECT * 
		FROM trn_src_des 
		WHERE (sourcedep = des) and ((trn_date = trndate and trn_time < trntime) OR (trn_date < trndate)) 
		ORDER BY trn_date, trn_time ASC
	LOOP
	    	IF cur.amount <> amount_ AND cur.trndate <> trn_date THEN
				sum = sum + cur.amount;
			END IF;
			IF sum <= amount_ + 0.1 * amount_ THEN 
		    	notlast = true;
			IF cast(cur.desdep as boolean) THEN
				PERFORM find_des(cur.voucher_id, cur.sourcedep, cur.desdep, cur.amount, cur.trndate, cur.trntime);
			ELSE
				INSERT INTO result_table VALUES (cur.desdep, 'Destination', cur.amount);
			END IF;
		END IF;
	END LOOP;
	IF notlast = false THEN
		INSERT INTO result_table VALUES (des, 'Destination', amount_);
	END IF;
END;
$$;

SELECT * FROM find_src('1234', 1240, 1250, 100000,'2023-01-01', '113008');
SELECT * FROM find_des('1234', 1240, 1250, 100000,'2023-01-01', '113008');
SELECT * FROM result_table

