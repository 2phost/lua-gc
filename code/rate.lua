print("# X Y")

-- Criar objectos
for i=1 , 9999, 1 do
table[i] = "0"
for j=0 , i , 1 do
table[i] = table[i] .. j
end
end

-- Remover referências
for i=1 , 9999, 2 do
table[i] = nil
end

-- Obrigar a executar GC
collectgarbage("collect")


-- Tempo até alocar objecto (caracter - 10bytes)
table[1] = ""

for i=2 , 99999, 1 do
x = os.clock()
table[i] = table[i-1] .. "0"
print(i*10 .. string.format(" %.7f ", os.clock()-x))
end