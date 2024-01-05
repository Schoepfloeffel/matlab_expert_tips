arr = 1:0.3:2;
ids = [1, 4, 13];
for ii = 1:numel(ids)
    for jj = 1:numel(arr)
        my_file_name = ['This_is_my_filename_with_char_conc_' num2str(arr(jj)) '_' num2str(ids(ii)) '.csv'] % num2str converts double to char array not string!
    end
end
% >>> my_file_name = 'This_is_my_filename_with_char_conc_1_1.csv'
% >>> my_file_name = 'This_is_my_filename_with_char_conc_1.3_1.csv'
% >>> ...
