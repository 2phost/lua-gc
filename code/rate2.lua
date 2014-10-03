print("# X Y")

-- Tempo até alocar objecto (caracter - 10bytes)
table[1] = ""

for i=2 , 999990, 1 do
x = os.clock()
table[i] = table[i-1] .. "0"
print(i*10 .. string.format(" %.7f ", os.clock()-x))
end