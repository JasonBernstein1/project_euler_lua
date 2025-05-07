#!/usr/bin/env lua

--[[
Work out the first ten digits of the sum of the following
one-hundred 50-digit numbers.
]]

-- Compute first ten digits of sum of numbers.
local function compute_first_ten_digits()
    -- Add numbers one-by-one
    local sum = 0
    for line in io.lines("./data/p13.txt") do
        sum = sum + tonumber(line)
    end
    local s = tostring(sum)
    -- Remove period used for scientific notation
    s = s:gsub('[%p]', '')
    return string.sub(s, 1, 10)
end

-- Compute solution
print(compute_first_ten_digits()) -- 5537376230