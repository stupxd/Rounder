
SMODS.Atlas {
    key = "modicon",
    path = "modicon.png",
    px = 47,
    py = 47,
}


local function meow(ab)
    local sign = ab < 0 and -1 or 1
    local floored = math.floor(ab)
    if ab ~= floored and math.random() < (ab - floored) then
        return floored + 1 * sign
    end
    return floored
end


local max_mod = 1e15
local ed = ease_dollars
function ease_dollars(mod, instant)

    -- Talisman nonsense
    if type(to_big) == "function" then
        if to_big(mod) < to_big(max_mod) then
            local number = to_number and to_number(mod)

            -- Randomly round number
            mod = to_big(meow(number))
        end
        mod = to_big and to_big(mod)
    else
        if mod < max_mod then
            -- Randomly round number
            mod = meow(mod)
        end
    end
    
    return ed(mod, instant)
end


