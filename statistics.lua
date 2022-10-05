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
	for _,v in pairs(t) do
		counts[v] = counts[v] and counts[v] + 1 or 1
	end
	local modes = {}
	local modeCount = 0
	for k,v in pairs(counts) do
		if v > modeCount then
			modeCount = v
			modes = {k}
		elseif v == modeCount then
			table.insert(modes, k)
		end
	end
sum = 2 -- sum is not true, i havent solution yet
rata = sum / size1
io.write("    Modus: ")
for key, val in pairs(modes) do
  io.write(val .. ', ')
end
print("")

print("6. Median")
if (size1 % 2) == (0) then -- penyelesaian dengan melakukan modulo
  halfy1 = (size1 / 2)
  halfy2 = (size1 / 2) + 1
  median = t[halfy1] + ((t[halfy2] - t[halfy1]) / 2)
else
  halfy = (size1 + 1) / 2
  median = t[halfy]
end
io.write("    Median: ")
print(median)

print("7. Q1, Q2, Q3")

quart1 = (size1 + 1) / 4
quart3 = (size1 + 1) / 4 * 3
if (size1 % 2) == (0) then -- penyelesaian dengan melakukan modulo
  Q1 = t[quart1]
  Q3 = t[quart3]
else
  Q1 = (t[quart1] + t[(quart1 + 1)]) / 2
  Q3 = (t[quart3] + t[(quart3 + 1)]) / 2
end


io.write("    Q1: ")
print(Q1)
io.write("    Q2: ")
print(median)
io.write("    Q2: ")
print(Q3)
