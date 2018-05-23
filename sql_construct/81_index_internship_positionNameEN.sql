USE rexchula;

ALTER  TABLE internship
ADD INDEX internPosName (PositionNameEN(5),CompanyID) USING BTREE;

