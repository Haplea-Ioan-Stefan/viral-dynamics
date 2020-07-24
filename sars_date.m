% prelucreaza datele despre SARS, virus in secretii. din fig.4 din 
% "Clinical progression and viral load in a community
% outbreak of coronavirus-associated SARS pneumonia: a prospective study"

% SARS sampled in nasopharingeal aspirate
% at 5, 10 and 15 days after symptom onset
% in log10(copies/ml nasopharingeal aspirate)

clear
clc

load sars
a = nan(12, 3);
i = 9;
for i = 1:9
    s = strcat('Data00', int2str(i),'(:,2)')
    a(i,:) = eval(s);
end

for i = 10:12
    s = strcat('Data0', int2str(i),'(:,2)')
    a(i,:) = eval(s);
end


a
t = [5 10 15];
plot(t, mean(a))

save('sars_out.mat', 'a', 't');
