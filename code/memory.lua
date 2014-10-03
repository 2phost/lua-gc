-- Cabeçalho para uso de GnuPlot
print("# X Y")

t0 = os.clock()
print(string.format("%.2f ", os.clock()-t0) .. collectgarbage("count")*1024)

for i =1, 10, 1 do

-- Criar objectos
for i=1 , 999, 1 do
table[i] = "0"
for j=0 , i , 1 do
table[i] = table[i] .. j
end
end

print(string.format("%.2f ", os.clock()-t0) .. collectgarbage("count")*1024)

-- Remover referências
for i=1 , 999, 2 do
table[i] = nil
end

-- Obrigar a executar GC
collectgarbage("collect")

print(string.format("%.2f ", os.clock()-t0) .. collectgarbage("count")*1024)

end