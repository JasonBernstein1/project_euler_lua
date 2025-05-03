#!/usr/bin/env lua

--[[
2,520 is the smallest number that can be divided by each of the numbers
from 1 to 20 without any remainder.

What is the smallest positive number that is evenly divisible by all of
the numbers from 1 to 20?
--]]

--- Determine if a number is divisible by 1, 2, ..., 20.
---@param n number The number to check the divisibility of.
local function is_evenly_disible(n)
    for j = 2, 20 do
        if n % j ~= 0 then
            return false
        end
    end
    return true
end

--- Determine the smallest number evenly divisible by 1, 2, ..., 20.
local function smallest_evenly_disible()
    local step_size = 2 * 3 * 5 * 7 * 11 * 13 * 17 * 19
    local i = step_size
    while not is_evenly_disible(i) do
        i = i + step_size
    end
    return i
end

-- Compute solution
print(smallest_evenly_disible()) -- 232,792,560
