function is_palindrome(n)
  str = tostring(n)
  return str == string.reverse(str)
end

print ('ayooooo, mau cek palindrom ya ?? tulis dibawah!!')
io.write ("input lo : ")
local name = io.read()

if (is_palindrome(name) == true)
  then
  print ("YEAHHHHH PALINDROMEE WOOOOOO")
else
  print ("                                   ")
  print ("                 %%%&&&(((**       ")
  print ("              %%&&&%&&&(((**       ")
  print ("            #(//&&//***%((**       ")
  print ("             *%%%%%%%%%%((**       ")
  print ("            %%%%%%%%%%%%((**       ")
  print ("         #######%%%%%%%%//**       ")
  print ("         *//****#%%%%%%///***      ")
  print ("         #%%%%##%######///**       ")
  print ("         #(%%%/#######///*         ")
  print ("        #%##########/////*         ")
  print ("        (##########********        ")
  print ("        .(((((##**/*******         ")
  print ("             ((((/***              ")
  print ("                                   ")
  print("not a palindrome man... such disappointment")
end

-- test git commit push
