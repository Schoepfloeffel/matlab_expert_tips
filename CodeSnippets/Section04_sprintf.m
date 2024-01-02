%sprintf consists two parts:
% 1. your complete string with formaters (written with %, e.g. %d for digit, %s for string
% 2. your varibale inputs
for ii = 1:numel(ids)
    for jj = 1:numel(arr)
        my_file_name = sprintf("This_is_my_filename_with_char_conc_%.2f_%03d.csv", arr(jj), ids(ii))
        % "%.2f" print the number as a float with 2 decimals
        % "%03d" prints at least three digits with 3 padded zeros
    end
end

% >>> my_file_name = "This_is_my_filename_with_char_conc_1.00_001.csv"
% >>> my_file_name = "This_is_my_filename_with_char_conc_1.30_001.csv"
% >>> ...