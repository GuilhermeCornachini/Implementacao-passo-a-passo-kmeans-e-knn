function[base] = CarregarDados(numero_da_base)
if numero_da_base == 1
  base = dlmread("Ruspini.csv");
endif

if numero_da_base == 2
base = dlmread("Iris.csv");
endif

if numero_da_base == 3
base = dlmread("heart statlog.csv");
endif

endfunction