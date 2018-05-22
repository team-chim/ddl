USE rexchula;

ALTER  TABLE internship
ADD INDEX internPosName (PositionNameEN(5)) USING BTREE;

