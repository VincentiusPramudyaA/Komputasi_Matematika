clc
clear

target = 'vincentius';
len = length(target);
genes = create_genes(len);

fitnes = calculate_fitnes(genes, len);
population_size = 10;
population = create_populasi(target, population_size)
[parent1, parent2] = selection(population)
[child1, child2] = crossover(parent1, parent2)

mutation_rate = 0.5
mutan1 = mutation(child1, mutation_rate)
mutan2 = mutation(child2, mutation_rate)
children = [mutan1 mutan2]
population = regeneration(children, population)

