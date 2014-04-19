CorrelationPlotMatrix
=====================

A very simple method for creating ggplot2 correlation plot matrices.

This script allows the creation of correlation plot matrices using ggplot2.


It requires minimal input from the user, requiring only the input data and a colour palette.

The script will look for an input dataframe named 'dat'. This should be a dataframe of numerical values. Each column will be treated as a separate variable, and named according to the stored column name.


