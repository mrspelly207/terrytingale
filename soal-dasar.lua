-- nomor 1
print ("1). Hitung Huruf Vokal") -- minta input dan judul masalah
io.write ("input : ")

input = tostring(io.read()) -- pembersihan input agar string
io.write("")
io.write("ada ")
io.write (#(input:gsub("[^aiueo]",""))) -- penyelesaian sekalian print
print(" huruf vokal di kalimat anda !!")
print("")



-- nomor 2
print ("2). Menyatakan Ganjil/Genap") -- minta input dan judul masalah
io.write ("input : ")

input = (io.read())
if (input % 2) == (0) then -- penyelesaian dengan melakukan modulo
    print ("angka anda genap") -- print jawaban jika genap
    else
    print ("angka anda ganjl" )-- print jawaban jika ganjil
end
print("")



-- nomor 3
print ("3). Mendeteksi Palindrom") -- minta input dan judul masalah
io.write ("input : ")

input = string.lower(tostring(io.read())) -- pembersihan input agar string
if (input == string.reverse(input)) == true --penyelesaian
  then
    print ("kalimat anda termasuk Palindrom") -- print jawaban jika palindrom
else
    print ("kalimat anda tidak termasuk palindrom")-- print jawaban jika bukan palindrom
end
print("")



-- nomor 4
io.write "4). "
four = 0 -- dynamic loop limit, gets increased after every loop until 5 loops
goup = 5 -- local increasing variable for loop

blankfour = 2 -- same as above, but for blank spacing
blankgoup = 1 -- ditto

while (four < 5) -- main loop, repeats until done 5 cycles
  do
    while (blankgoup < blankfour ) do
    io.write "  "
    blankgoup = (blankgoup + 1)
    end

    while (goup > four) do -- subloop, dynamically increasing loop
    io.write (goup)
    io.write " "
    goup = (goup - 1)
    end

  print ""
  io.write "    "
  four = (four + 1)
  goup = 5 -- reset local variable before restarting loop
  blankfour = (blankfour + 1)
  blankgoup = 1
end
print ""
