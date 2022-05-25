function[base] = Normalizar(base)

[linha,coluna] = size(base);
for i=1:coluna
  valor_minimo = min(base(:,i));
  valor_maximo = max(base(:,i));
  for j=1:linha
    base(j,i) = (base(j,i)-valor_minimo)/(valor_maximo-valor_minimo);
  endfor
endfor
endfunction