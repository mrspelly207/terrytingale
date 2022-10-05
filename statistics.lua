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
print('Hasil tersortir')
for key, val in pairs(t) do
  io.write(' ' .. val)
end
print("")


print("1. Mencacah")
size1 = 0
for _ in pairs(t) do size1 = size1 + 1 end
io.write("    Jumlah Populasi: ")
print(size1)

-- do sum of all
cursor = 1
sum = 0
while cursor ~= size1 do
  sum = sum + t[cursor]
  cursor = cursor + 1
end

print("2. Rata-rata")
rata = sum / size1
io.write("    Mean: ")
print(rata)

print("3. Maksimum")
io.write("    Max: ")
max = t[size1]
print(max)

print("4. Minimum")
min = t[1]
io.write("    Min: ")
print(min)

print("5. Modus")
local counts = {}
for _, v in pairs(t) do
  counts[v] = counts[v] and counts[v] + 1 or 1
end
local modes = {}
local modeCount = 0
for k, v in pairs(counts) do
  if v > modeCount then
    modeCount = v
    modes = { k }
  elseif v == modeCount then
    table.insert(modes, k)
  end
end
io.write("    Modus: ")
for key, val in pairs(modes) do
  io.write(val .. ', ')
end
print("")

print("6. Median")
if ((size1 - 1) % 2) == (0) then -- penyelesaian dengan melakukan modulo
  halfy = (size1 + 1) / 2
  median = t[halfy]
else
  halfy1 = (size1 / 2)
  halfy2 = (size1 / 2) + 1
  median = t[halfy1] + ((t[halfy2] - t[halfy1]) / 2)
end
io.write("    Median: ")
print(median)

print("7. Kuartil")

quart1e = (size1 + 1) / 4
quart3e = (size1 + 1) / 4 * 3
print("quart1e", quart1e)
print("quart3e", quart3e)
quart1 = math.floor(quart1e + 0.5)
quart3 = math.floor(quart3e + 0.5)
if (quart1e % 1) > 0.5 then
  bulatatas1 = true
else
  bulatatas1 = false
end
if (quart3e % 1) > 0.5 then
  bulatatas3 = true
else
  bulatatas3 = false
end
print("quart1", quart1)
print("quart3", quart3)
if (((size1 / 2) - ((size1 / 2) % 1)) % 2) == 0 then -- penyelesaian dengan melakukan modulo
  if bulatatas1 == true then
    print("riwet bulatatas Q1")
    Q1 = (t[quart1] + t[(quart1 + 1)]) / 2
  else
    print("riwet bulatbawah Q1")
    Q1 = ((t[quart1] + t[(quart1 + 1)]) / 2)
  end
  if bulatatas3 == true then
    print("riwet bulatatas Q3")
    Q3 = (t[quart3] + t[(quart3 - 1)]) / 2
  else
    print("riwet bulatbawah Q3")
    Q3 = ((t[quart3 - 1] + t[(quart3)]) / 2) - 1
  end
else
  print("gak riwet")
  Q1 = t[quart1]
  Q3 = t[quart3]
end



io.write("    Q1: ")
print(Q1)
io.write("    Q2: ")
print(median)
io.write("    Q3: ")
print(Q3)
