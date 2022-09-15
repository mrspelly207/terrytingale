io.write('inputkan angka tidak berurutan, disipah dengan spasi')
print("")
io.write('Input: ')

local s = io.read() -- let's assume 1 2 34 4342
local t = {}

for number in string.gmatch(s, "[^%s]+") do
    table.insert(t, number)
end


local function bubblesort(a)
  repeat
    local swapped = false
    for i = 2, #a do
      if tonumber(a[i - 1]) > tonumber(a[i]) then
        a[i], a[i - 1] = a[i - 1], a[i]
        swapped = true
      end -- if
      i = i + 1
    end -- for
  until swapped == false
end


print("")
print('blum sort')
for key, val in pairs(t) do
    io.write(' '..val)
end
print('')



bubblesort(t)

print("")
print('sortir urut dari terkecil ke terbesar')
for key, val in pairs(t) do
    io.write(' '..val)
end
print("")


