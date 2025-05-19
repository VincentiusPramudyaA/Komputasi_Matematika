function populasi = create_populasi(target, populasi_size)

populasi = struct.empty(populasi_size, 0);
for i = 1:populasi_size
    genes = create_genes(length(target));
    fitnes = calculate_fitnes(genes, target);
    populasi(i).genes = genes;
    populasi(i).fitnes = fitnes;
end 
end