#!/usr/bin/env lua

--[[
How many routes are there to go from one corner of a 20x20 grid to the
diagonal corner?
]]

-- Compute choose(40, 20) as (21 / 1) * (22 / 2) * ... * (40 / 20).
local function binom()
    local prod = 1
    for j = 1, 20 do
        prod = prod * (j + 20) / j
    end
    return math.floor(prod)
end

-- Compute solution
print(binom()) -- 137,846,528,820
