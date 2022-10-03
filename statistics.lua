-- Fungsi Statistik
-- 1. mecacah (counting)
-- 2. rata rata
-- 3. maksimum
-- 4. minimum
-- 5. modus
-- 6. median
-- 7. Q1, Q2, Q3

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

bubblesort(t)

print("")
print('---- VerboseDebug ----')
print('Hasil tersortir')
for key, val in pairs(t) do
    io.write(' '..val)
end
print("")
print('---- VerboseDebug ----')
print("")


print("1. Mencacah")
size1=0
for _ in pairs(t) do size1 = size1 + 1 end
io.write("    Jumlah Populasi: ")
print(size1)

print("2. Rata-rata")
sum = 2
rata = sum / size1
io.write("    Mean: ")
print(rata)