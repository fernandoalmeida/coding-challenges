local function compute(a, b)
   local a = tostring(a)
   local b = tostring(b)
   local distance = 0
   local i = 1
   local n = math.max(#a, #b)

   while i <= n do
      if a:sub(i, i) ~= b:sub(i, i) then
	 distance = distance + 1
      end

      i = i + 1
   end

   return distance
end

return {
   compute = compute
}
