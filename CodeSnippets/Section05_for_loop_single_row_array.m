myStruct.field1 = [1, 2, 3];
myStruct.field2 = [4, 5, 6];
myStruct.field3 = [7, 8, 9];
for field=string(fieldnames(myStruct))' % transposed string array of 1x3 dimension we iterate over
    data_from_the_field = myStruct.(field);
    disp(data_from_the_field)
end
% ans =
% >>>     1     2     3
% >>>     4     5     6
% >>>     7     8     9