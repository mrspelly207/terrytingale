-- non functional
print ('ayooooo, mau cek vowel ya ?? tulis dibawah!!')
io.write ("input lo : ")
input = tostring(io.read())
print(#(input:gsub("[^aiueo]","")))


