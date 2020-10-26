# Concatenate operator

##### Description

The `concatenate operator` concatenates strings contained in different variables.

##### Usage

Input projection|.
---|---
`row1`, `row2`, ...           | character, variables to concatenate row-wise

Output relations|.
---|---
`concatenated`        | character, concatenated strings

##### Details

The operator concatenates all strings from left to right and separated them with the predefined separator. This operation is done per row.

##### See Also

[separate_operator](https://github.com/tercen/separate_operator)
, [replace_operator](https://github.com/tercen/replace_operator)

