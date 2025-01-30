# Lua Pairs Iteration Bug

This repository demonstrates a common error when using Lua's `pairs` iterator to traverse tables, especially nested tables.  The problem stems from the fact that `pairs` doesn't guarantee a specific iteration order, and modifying the table during iteration can lead to elements being skipped or processed unexpectedly.

## Bug Description

The `bug.lua` file contains a function `foo` that recursively iterates over a nested table using `pairs`.  However, if the table structure is modified during iteration, the results are unpredictable. 

## Solution

The `bugSolution.lua` provides a solution using an explicit iteration approach which avoids the problems encountered with the `pairs` function and maintains order.  This approach manually manages the stack of tables to visit ensuring all elements are processed. 
