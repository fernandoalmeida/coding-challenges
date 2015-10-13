local function hello(name)
   local name = name or 'world'

   return 'Hello, ' .. name .. '!'
end

return {
   hello = hello
}
