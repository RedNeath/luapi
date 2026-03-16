---
--- Author: RedNeath <theandre.bourry@ik.me>
--- Date: 2026-03-15
--- License: MIT
---
if #arg < 1 then
    table.insert(arg, "help") --- Execute help script in case no script is specified
end

local script = string.format("bin.%s", arg[1])

os.exit(require(script))
