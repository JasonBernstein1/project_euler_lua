#!/usr/bin/env lua

--[[
Find the difference between the sum of the squares of the first
one hundred natural numbers and the square of the sum.
--]]

--- Compute the desired difference of squares.
---@param n number The number of integers to sum over.
local function compute_diff(n)
    local sum_of_squares = 0
    local running_sum = 0
    for i = 1, n do
        sum_of_squares = sum_of_squares + i^2
        running_sum = running_sum + i
    end
    local square_of_sum = running_sum^2
    return square_of_sum - sum_of_squares
end

-- Compute solution
print(compute_diff(100)) -- 25,164,150
