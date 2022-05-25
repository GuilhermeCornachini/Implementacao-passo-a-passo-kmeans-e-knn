function[matriz_prototipos] = Atualizar_cluster(matriz_pertinencia,base)
    [objetos,colunas] = size(matriz_pertinencia);
    
    [~,dimensoes] = size(base);
    
    matriz_prototipos = zeros(colunas,dimensoes);
    
    for i=1:colunas
      aux = (base.*matriz_pertinencia(:,i));
      total_objetos = sum(matriz_pertinencia(:,i));
      if total_objetos ~= 0
        matriz_prototipos(i,:) = sum(aux)/total_objetos;
      else
      matriz_prototipos(i,:) = sum(aux)/1;
      endif
      endfor
    matriz_prototipos;
endfunction