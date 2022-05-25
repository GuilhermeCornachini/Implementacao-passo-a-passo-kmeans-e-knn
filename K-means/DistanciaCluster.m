function[distancia_cluster] = DistanciaCluster(base,centroids,n_centroids,linha)
 for objeto=1:linha
  for centroid=1:n_centroids
      distancia_cluster(objeto,centroid) = DISTEUCLIDIANA(base(objeto,:),centroids(centroid,:));
      endfor
  endfor
      
endfunction