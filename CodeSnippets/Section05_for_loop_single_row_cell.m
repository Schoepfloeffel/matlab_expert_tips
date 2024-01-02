cell_arr = {1;2;3};
for cell_element = cell_arr
    disp(cell_element) % cell still needs to be unwrapped to get the value 1, 2, 3.
end
% ans =
% >>>    {[1]}
% >>>    {[2]}
% >>>    {[3]}