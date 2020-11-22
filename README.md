# MySQL UUID Convert
User defined functions for converting UUID values to and from binary.

These functions facilitate conversion of UUID values to binary values that can be efficiently used for primary keys and indices.

Intended for use with non-version 4 UUID (GUID) values. These functions swap the "Time Low" and "Time High & Version" segments. The goal is to place the more random or frequently changing segment in the middle and the least random at the beginning. This optimizes the value for use as an index, as it allows the generated indexes to have longer contiguous blocks. Additionally, the conversion works to and from binary values reducing the size requirements for a database field storing the value.
