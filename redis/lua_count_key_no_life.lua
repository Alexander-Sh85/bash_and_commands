-- cat <<EOL >> lua_count_key.lua
local cursor = "0"
local keys = {}

repeat
    local result = redis.call("SCAN", cursor)
    cursor = result[1]
    local current_keys = result[2]

    for _, key in ipairs(current_keys) do
        local ttl = redis.call("ttl", key)
        if ttl == -1 then
            table.insert(keys, key)
        end
    end
until cursor == "0"

return keys
-- EOL

-- redis-cli -h redis EVAL "$(cat lua_count_key.lua)" 0 "test*"
