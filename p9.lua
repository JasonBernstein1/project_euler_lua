#!/usr/bin/env lua
    
--[[
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which
a^2 + b^2 = c^2. There exists exactly one Pythagorean triplet for which
a + b + c = 1,000. Find the product a * b * c.
]]

--- Compute product of side lengths of right triangle that sum to 1,000.
local function pythagorean_triple()
    for a = 1, 999 do
        for b = a + 1, 999 do
            local c = 1000 - a - b
            if a^2 + b^2 == c^2 then
                return a * b * c
            end
        end
    end
end

-- Compute solution
print(pythagorean_triple()) -- 31,875,000
