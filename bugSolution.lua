local function foo(t)
  local stack = {t}
  while #stack > 0 do
    local current = table.remove(stack)
    for k, v in ipairs(current) do --ipairs for maintaining order
      if type(v) == "table" then
        table.insert(stack, v)
      end
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)