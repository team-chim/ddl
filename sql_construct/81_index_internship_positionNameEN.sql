USE rexchula;

ALTER TABLE internship
DROP INDEX posName IF EXIST internPosName;

ALTER  TABLE internship
ADD INDEX internPosName (PositionNameEN(5)) USING BTREE;

