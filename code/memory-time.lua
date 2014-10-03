-- Cabeçalho para uso de GnuPlot
print("# X Y")

t0 = os.clock()

for i =1, 10, 1 do

-- Criar objectos
for i=1 , 999, 1 do
table[i] = "0"
for j=0 , i , 1 do
table[i] = table[i] .. j
end
end

-- Remover referências
for i=1 , 999, 2 do
table[i] = nil
end

-- Obrigar a executar GC
x = os.clock()
y = collectgarbage("count")*1024
collectgarbage("collect")
print(y-collectgarbage("count")*1024 .. string.format(" %.5f ", os.clock()-x))

end