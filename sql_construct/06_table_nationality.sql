USE rexchula;

DROP TABLE IF EXISTS nationality;

CREATE TABLE nationality
(
	Foreigness VARCHAR(128) PRIMARY KEY,
    IsThai BOOL AS (Foreigness = 'Thai')
);