function[] = Principal()

  numero_da_base = input('Informe o numero da base, 1 para ruspini, 2 para iris ou 3 para heart statlog=');
%  interacoes = input('Informe o numero de interações interna, padrão 15 =');
  n_centroids = input('Informe o numero de centroids=');
  interacoes=15;
  base = CarregarDados(numero_da_base);

  [linha,coluna] = size(base);
  base;
  classe = base(:,coluna);
  n_classes = max(classe);
  coluna = coluna-1;
  base = base(:,1:coluna);

  base = Normalizar(base);
  centroids = rand(n_centroids,coluna);

  plot(centroids(:,1),centroids(:,2),'ko');hold on;

  for i=1:interacoes
    [centroids,matriz_pertinencia] = Kmeans(base,centroids,n_centroids,linha,coluna);
      
endfor

    matriz_pertinencia;
    
    [linha,coluna] = size(matriz_pertinencia);
    confusao = zeros(n_centroids,n_classes)
    for i=1:linha
        [~,aux] = max(matriz_pertinencia(i,:));
          confusao(aux,classe(i)) +=1;
    endfor
     [linha,coluna] = size(confusao);
     pureza_global = 0;
    for i=1:linha
        aux1 = max(confusao(i,:));
        aux2 = sum(confusao(i,:));
        pureza_do_grupo = (aux1/aux2)*100
        pureza_global += pureza_do_grupo;
      endfor
      pureza_global /=i
    confusao
    
if numero_da_base==1
for j=1:coluna
      [indice,~] = find(matriz_pertinencia(:,j)==1);
      if j==1
      m1 = base(indice,:);
      endif
      if j==2
      m2 = base(indice,:);
      endif
      if j==3
      m3 = base(indice,:);
      endif
      if j==4
      m4 = base(indice,:);
      endif 
endfor
      plot(centroids(:,1),centroids(:,2),'r<>');hold on;
      plot(m1(:,1),m1(:,2),'k*', m2(:,1),m2(:,2),'g*', m3(:,1),m3(:,2),'p*',m4(:,1),m4(:,2),'y*');hold on;
endif

if numero_da_base !=1
      plot(base(:,1),base(:,2),'b*');hold on;
endif
endfunction