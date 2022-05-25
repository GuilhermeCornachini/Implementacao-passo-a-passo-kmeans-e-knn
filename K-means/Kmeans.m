function[centroids,matriz_pertinencia] = Kmeans(base,centroids,n_centroids,linha,coluna)

 matriz_pertinencia = zeros(linha,n_centroids);
 
 distancia_cluster = DistanciaCluster(base,centroids,n_centroids,linha);
 distancia_cluster;
 matriz_pertinencia = Atualizar_pertinencia(distancia_cluster,linha);
 
 centroids = Atualizar_cluster(matriz_pertinencia,base);
 
endfunction 