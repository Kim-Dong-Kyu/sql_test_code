CREATE OR REPLACE VIEW TEST_TABLE_VW
        AS SELECT A.ID
                        ,A.NAME
                        ,A.AMT
                        ,B.CHECK_YN
           FROM TEST_TABLE_ONE A,
                     TEST_TABLE_TWO B
                 WHERE A.IDX = B.IDX
