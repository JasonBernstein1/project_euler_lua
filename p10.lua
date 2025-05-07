#!/usr/bin/env lua

--[[
Find the sum of all the primes below two million.
]]

-- Sum the primes below two million.
local function sum_primes()
    local sum = 5
    local primes = {2, 3}
    local target = 2000000
    for i = 5, target, 2 do
        local is_prime = true
        for j = 2, #primes do
            if primes[j] > math.ceil(math.sqrt(target)) then
                break
            end
            if i % primes[j] == 0 then
                is_prime = false
                break
            end
        end
        -- i is prime if completed previous for loop
        if is_prime then
            table.insert(primes, i)
            sum = sum + i
        end
    end
    return sum
end

-- Compute solution
print(sum_primes()) -- 142,913,828,922
