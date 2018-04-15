USE rexchula;

DROP TABLE IF EXISTS nationality;

CREATE TABLE nationality
(
	NationName VARCHAR(128) PRIMARY KEY,
    IsThai BOOL AS (NationName = 'Thai')
);