function[] = CarregarDados()
base = load('C:\Users\06944461145\Desktop\sintetica.m');
rotulos = load('C:\Users\06944461145\Desktop\rotulos.m'); 
Objeto = load('C:\Users\06944461145\Desktop\objetos.m'); 

k = input('Valor de k=');

KNNClass(base,rotulos,k,Objeto)


endfunction