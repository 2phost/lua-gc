-- Comparação do tempo da execução do código com e sem GC

-- Cabeçalho para uso de GnuPlot
print("# X Y1 Y2")

for j=1000000 , 100000000, 1000000 do
tabley = {}
tablex = {}
-- Forçar o GC a limpar todos os objectos das duas tabelas anteriores
collectgarbage("collect")

-- Teste sem GC ('setpause' com numero grande)
collectgarbage("setpause", 999999999999999999999)
x = os.clock()
for i=1 , j/2 do
tablex[i] = i
end
for i=1 , j/2 do
tablex[i] = nil
i = i+10
end
for i=j/2 , j do
tablex[i] = i
end
x = os.clock() - x

-- Colocar nas mesmas condições que o teste anterior
tablex = {}
collectgarbage("collect")

-- Teste com GC ('setpause' para default)
collectgarbage("setpause", 200)
y = os.clock()
for i=1 , j/2 do
tabley[i] = i
end
for i=1 , j/2 do
tabley[i] = nil
i = i+10
end
for i=j/2 , j do
tabley[i] = i
end
y = os.clock() - y

print(j/1000 .. string.format(" %.2f %.2f", x, y))
end