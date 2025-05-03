#!/usr/bin/env lua

--[[
A palindromic number reads the same both ways. The largest palindrome made
from the product of two 2-digit numbers is 9009 = 91 * 99.

Find the largest palindrome made from the product of two 3-digit numbers.
--]]

--- Check if a number is a palindrome.
---@param m number Check if this number is a palindrome or not.
local function is_palindrome(m)
    local s = tostring(m)
    if s == string.reverse(s) then
        return true
    else
        return false
    end
end

--- Find the max number that is a palindrome and the product of two
--- 3-digit numbers.
local function max_palindrome()
    local current_max = 0
    for i = 999, 100, -1 do
        for j = i, 999 do
            if i * j > current_max then
                if is_palindrome(i * j) then
                    current_max = i * j
                end
            end
        end
    end
    return current_max
end

-- Compute solution
print(max_palindrome()) -- 906,609
