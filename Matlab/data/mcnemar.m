function [H, p] = mcnemar(labels1, labels2, true_labels)
% MacNemar test for two classifiers
H = 0
p = 0

v1 = labels1(:) == true_labels(:);

end