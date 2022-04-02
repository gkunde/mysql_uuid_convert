CREATE FUNCTION `convert_uuid_to_bin`(
	val BINARY(36)
) RETURNS binary(16)
    DETERMINISTIC
RETURN 
	UNHEX(
        CONCAT(
            SUBSTR(val, 15, 4),
            SUBSTR(val, 10, 4),
            SUBSTR(val,  1, 8),
            SUBSTR(val, 20, 4),
            SUBSTR(val, 25)
        )
    )
