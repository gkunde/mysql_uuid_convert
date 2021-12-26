# MySQL UUID Convert
These functions facilitate conversion of string based UUID (v1) values to and from binary values. Enabling the efficent storage of a UUID in databases where a UUID or GUID data type is not available, as well as efficient storage of the binary value. The functions can be used with any UUID or GUID value, however, it is most effective with version 1 UUID values.

Intended for use with non-version 4 UUID (GUID) values. These functions swap the "Time Low" and "Time High & Version" segments. The goal is to place the more random or frequently changing segment in the middle and the least random at the beginning. This optimizes the value for use as an index, as it allows the generated indexes to have longer contiguous blocks.

It is important to note, that if you use this for entering UUID values to your databse, all inserted values are processed by these functions to avoid collisions.

## Functions:
### convert_uuid_to_binary()
This function accepts a string based UUID value. It swaps "Time Low" and "Time High & Version" segments, while removing the delimiters between the segments.

### convert_uuid_from_binary()
This function restores the UUID from its binary representation. Restoring the "Time Low" and "Time High & Version" segments to their proper placement, as well as restoring the delimiters between segments.

For more information, including the origins of this code:
https://mariadb.com/kb/en/guiduuid-performance/
