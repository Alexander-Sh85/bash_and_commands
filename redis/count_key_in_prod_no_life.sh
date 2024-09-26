redis-cli $(cat ~/.ssh/redis_creds) EVAL "$(cat lua_count_key_no_life.lua)" 0
