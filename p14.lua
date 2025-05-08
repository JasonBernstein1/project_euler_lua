#!/usr/bin/env lua

--[[
Which starting number, under one million, produces the longest Collatz chain?
]]

--- Compute the next value of the Collatz sequence.
---@param n number The current value of the Collatz sequence.
local function step(n)
    if n % 2 == 0 then
        n = n / 2
    else
        n = 3 * n + 1
    end
    return n
end

--- Compute the starting value for the longest Collatz chain for starting
--- values between 1 and 1,000,000.
local function start_value_longest_chain()
    local chain_length = {}
    chain_length[1] = 1
    local max_start_value = 1
    local max_length = 1
    for i = 2, 1000000 do
        chain_length[i] = 0
        local head = i
        while head ~= 1 do
            head = step(head)
            chain_length[i] = chain_length[i] + 1
            if chain_length[head] then
                chain_length[i] = chain_length[i] + chain_length[head]
                if chain_length[i] > max_length then
                    max_length = chain_length[i]
                    max_start_value = i
                end
                break
            end
        end
    end
    return max_start_value
end

-- Compute solution
print(start_value_longest_chain()) -- 837,799
