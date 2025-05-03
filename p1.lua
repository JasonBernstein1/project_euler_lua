#!/usr/bin/env lua

--[[
If we list all the natural numbers below 10 that are multiples of 3 or 5,
we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of
all the multiples of 3 or 5 below 1000.
--]]

--- Sum multiples of 3 or 5 below n.
---@param n number The integer upper bound, equal to 1,000 for this problem.
local function sum_integers(n)
    local total = 0
    for i = 1, n do
        if i % 3 == 0 or i % 5 == 0 then
            total = total + i
        end
    end
    return total
end

-- Compute solution
local n = 999
print(sum_integers(n)) -- 233,168
