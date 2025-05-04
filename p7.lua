#!/usr/bin/env lua

--[[
What is the 10,001st prime number?
]]

--- Compute the nth smallest prime number.
---@param n number The index of the prime to compute.
local function get_nth_prime(n)
    -- The first prime is 2
    if n == 1 then
        return 2
    end
    -- If n > 1, then iteratively compute prime numbers
    local primes = {2}
    local i = 3
    while #primes < n do
        -- Determine if i is prime by comparing against smaller primes
        local is_i_prime = true
        for j = 1, #primes do
            -- Can ignore potential factors greater than ceil(sqrt(i))
            if primes[j] > math.ceil(math.sqrt(i)) then
                break
            end
            -- If i is divisible by a smaller prime, then it is not prime
            if i % primes[j] == 0 then
                is_i_prime = false
                break
            end
        end
        if is_i_prime then
            table.insert(primes, i)
        end
        i = i + 2
    end
    return primes[#primes]
end

-- Compute solution
print(get_nth_prime(10001)) -- 104,743
