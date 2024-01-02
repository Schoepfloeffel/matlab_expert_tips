%% arrayfun
numbers = [1, 2, 3, 4, 5];
squaredNumbers = arrayfun(@(x) x^2, numbers) % Applying a function to each element

% >>> squaredNumbers =
%
%      1     4     9    16    25
%
%% cellfun
cells = {1, 2, 3; 4, 5, 6}
squaredCells = cellfun(@(x) x^2, cells, 'UniformOutput', false) %set 'UniformOutput' to true to return a double array

% >>> squaredCells =
%
%   2×3 cell array
%
%     {[ 1]}    {[ 4]}    {[ 9]}
%     {[16]}    {[25]}    {[36]}

%% structfun
myStruct.a = 1;
myStruct.b = 2;
myStruct.c = 3;
squaredValues = structfun(@(x) x^2, myStruct, 'UniformOutput', false) %set 'UniformOutput' to true to return a double array

% >>> squaredValues =
%
%   struct with fields:
%
%     a: 1
%     b: 4
%     c: 9
