---
--- Author: RedNeath <theandre.bourry@ik.me>
--- Date: 2026-03-15
--- License: MIT
---
local rocks = require("rocks")

for rock, version in pairs (rocks) do
    local success = os.execute(string.format("luarocks install %s %s", rock, version))

    if not success then
        return 1
    end
end

return 0
