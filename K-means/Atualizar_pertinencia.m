function[matriz_pertinencia] = Atualizar_pertinencia(distancia_cluster,linha) 
 for objeto=1:linha
      [valor,idx] = min(distancia_cluster(objeto,:));
      matriz_pertinencia(objeto,idx) = 1;
    endfor
endfunction
