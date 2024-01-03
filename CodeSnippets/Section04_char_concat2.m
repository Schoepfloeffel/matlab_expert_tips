% Lets say we want a three digit id, so instead of 1 a 001, instead of 13 a 013 etc.
for ii = 1:numel(ids)
    for jj = 1:numel(arr)
        my_id = ids(ii);
        id_len = numel(num2str(my_id));
        num_prefix = repmat('0',1, 3-id_len);
        my_file_name = ['This_is_my_filename_with_char_conc_' num2str(arr(jj)) '_' num_prefix num2str(ids(ii)) '.csv'] %
    end
end
% >>> my_file_name = 'This_is_my_filename_with_char_conc_1_001.csv'
% >>> my_file_name = 'This_is_my_filename_with_char_conc_1.3_001.csv'
% >>> ...
