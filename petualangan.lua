-- nomor 1
io.write "1). "
one = 1
while (one < 9)
    do 
      io.write (one)
      io.write " "
      one = (one + 1)
    
end
print ""


-- nomor 2
io.write "2). "
two = -5
while (two < 6)
    do
      if (two < 0)
      then
        io.write (two * two * -1)
        io.write " "
      else
        io.write (two * two)
        io.write " "
      end
      two = (two + 1)
    
end
print ""


-- nomor 3
io.write "3). "
three = 1
function fib(n) return n<2 and n or fib(n-1)+fib(n-2) end
while (three < 9)
    do
      io.write (fib(three))
      io.write " "
      three = (three + 1)
    
end
print ""


-- nomor 4
io.write "4). "
four = 2 -- dynamic loop limit, gets increased after every loop until 5 loops
goup = 1 -- local increasing variable for loop
while (four < 7) -- main loop, repeats until done 5 cycles
  do
    while (goup < four) do -- subloop, dynamically increasing loop
    io.write (goup)
    io.write " "
    goup = (goup + 1)
  end
  print ""
  io.write "    "
  four = (four + 1)
  goup = 1 -- reset local variable before restarting loop
end
print ""
