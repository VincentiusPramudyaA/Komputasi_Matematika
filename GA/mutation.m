function[mutan] = mutation(child, mutation_rate)

mutan = child;

for i =1:length(child.genes)
    if rand <= mutation_rate
        mutam.genes(i) = char(randi([32,126]));
    end
end
end
