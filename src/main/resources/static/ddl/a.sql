CREATE SEQUENCE seq_board;
DROP SEQUENCE seq_board;

DROP TABLE board;
CREATE TABLE board (
    serial_no NUMBER(10) PRIMARY KEY,
    board_no NUMBER(10) NOT NULL,
    board_title VARCHAR(1000) NOT NULL,
    board_content CLOB NOT NULL,
    board_view_cnt NUMBER(10) DEFAULT 0,
    board_date DATE default SYSDATE,
    category_no NUMBER(10) NOT NULL
);
COMMIT;

SELECT * FROM board;