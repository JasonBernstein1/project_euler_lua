#!/usr/bin/env lua

--[[
The prime factors of 13,195 are 5, 7, 13 and 29. What is
the largest prime factor of the number 600,851,475,143?
]]

--- Check if an integer is a prime number.
---@param m number The integer to be checked.
---@param primes number[] The prime numbers up to m.
local function is_prime(m, primes)
    for i = 1, #primes do
        if m % primes[i] == 0 then
            return false
        end
    end
    return true
end

--- Get largest prime factor of n.
---@param n number Number to get the largest prime factor of.
local function largest_prime_factor(n)
    local target = n
    local primes = {2}
    local num = 3
    while target ~= 1 do
        num = num + 2
        if is_prime(num, primes) and n % num == 0 then
            while target % num == 0 do
                target = target / num
            end
            if target == 1 then
                break
            end
        end
    end
    return num
end

-- Compute solution
local n = 600851475143
print(largest_prime_factor(n)) -- 6,857
