# viral-dynamics
Matlab code and data for simulation within-host viral dynamics.
The goal is to analyse the patterns by which viruses multiply and spread, and the immune response to infection.
Hypotheses on the efficacy of vaccines, antibodies and antivirals can be tested.
The most widely used formalism is ODE (ordinary differential equations).
The standard model is the so-called "limited target cell model".

SARS-CoV2 maintains high viral loads in respiratory fluids, starting very early since contamination.
The virus actively replicates in upper (nasopharinx) and lower (lungs) epithelium. In some patients, more that one genotype is detected. suggesting active virus replication in different points along the respiratory tract.


The source data for the two figures:
Ifluenza A, (WT HK/123/77 (H1N1))
Baccam P et al., Kinetics of Influenza A Virus Infection in Humans. Journal of Virology. 2006 Aug 1;80(15):7590–9. 
From Table 1.
viral levels in log10(TCID50 / ml of nasal wash) 

SARS-CoV2 
Wölfel R et al. Virological assessment of hospitalized patients with COVID-2019. Nature. 2020 May;581(7809):465–9.
From fig.2, digitized
viral levels in log10 (RNA copies / ml sputum) and log10 (RNA copies / swab)

SARS
Peiris J et al. Clinical progression and viral load in a community outbreak of coronavirus-associated SARS pneumonia: a prospective study. The Lancet. 2003 May;361(9371):1767–72. 
From fig.4, digitized
viral levels in log10 (RNA copies / ml of nasopharingeal aspirate)
