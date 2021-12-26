CREATE FUNCTION `convert_uuid_from_binary`(val BINARY(16)) RETURNS VARCHAR(36) CHARSET utf8mb4
RETURN
    CONCAT_WS(
        '-',
        HEX(SUBSTR(val,  5, 4)),
        HEX(SUBSTR(val,  3, 2)),
        HEX(SUBSTR(val,  1, 2)),
        HEX(SUBSTR(val,  9, 2)),
        HEX(SUBSTR(val, 11))
    )
