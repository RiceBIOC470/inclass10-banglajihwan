%In this directory, you will find some example data, which is a 300x8
%array stored in a .mat file. Image these are measurements for 300 genes are 8 different time
%points

%1. Use matlab to perform pca on this data, getting the transformation
%matrix, the transformed data, and the eigenvalues.
load('example_dat.mat');
[coeff, sc, eig] = pca (dat);
%2. Look at the eigenvalues - how many dimensions are necessary to explain
%the data? 

% ->only 1 row show relatively higher eigenvalue, therefore 1. 

%3. Using kmeans clustering to cluster the data into 3 clusters. 
% Make a plot of the first coordinate of the raw data vs the second color coded
% by which cluster it is in. Make the same plot but use the first two
% principle components instead. 
ids = kmeans(dat, 3); 

first_cor = dat(:,1); 
second_cor = dat(:,2); 
scatter (first_cor, second_cor, 10, ids);

PCA1 = sc (:,1);
PCA2 = sc(:,2);

scatter (PCA1, PCA2, 10, ids);


%4. Repeat part 3 but use 7 clusters. Which is a more appropriate number of
%clusters for the data?

ids2= kmeans(dat, 7);
first_cor = dat(:,1); 
second_cor = dat(:,2); 
scatter (first_cor, second_cor, 10, ids2);

PCA1 = sc (:,1);
PCA2 = sc(:,2);

scatter (PCA1, PCA2, 10, ids2);

%3 is more appropriate. 