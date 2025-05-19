function new_population = regeneration(children, population)
fitnes = zeros(1, length(population));
for i=1:length(fitnes)
    fitnes(i) = population(i).fitnes;
end
for i = 1:length(children)
    [~, index] = min(fitnes);
    population(index)=[];
    fitnes(index)=[];
end
for i=1:length(children)
    n = length(population)+1;
    population(n) = children(i);
end
new_population = population;
end