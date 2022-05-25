function[classe_predita] = KNNClass(Base,rotulos,k,Objeto)

  for j=1:5
    for i=1:45
      distancias(i) = DISTEUCLIDIANA(Objeto(j,:),Base(i,:));
      %distancias(i) = DISTEUCLIDIANA([0.5,0.07],base(i,:));
    endfor
      [valores,indices] = sort(distancias);
      
      rotulos_dos_menores = rotulos(indices);
      
      vizinhosProximos = rotulos_dos_menores(1:k);
      classe_predita = mode(vizinhosProximos)
      
      idvizinhosProximos = indices(1:k);
      Baseviz=Base(idvizinhosProximos,:);
      
      if k==5 && j==1
        valores(1:k);
        plot(Base(:, 1), Base(:, 2), 'b*', Baseviz(:,1), Baseviz(:, 2),'r*', Objeto(j, 1), Objeto(j, 2), '+m');% hold on;
      endif
      %plot(Base(:, 1), Base(:, 2), 'b*', vizinhosProximos(:, 1), vizinhosProximos(:, 2),'ko', Objeto(:, 1), Objeto(:, 2), '+m')
  endfor   
endfunction