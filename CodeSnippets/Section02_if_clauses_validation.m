function result = processData(number, text, flag)
    % checks if inputs are the correct datatype
    if ~isnumeric(number) || ~ischar(text) || ~islogical(flag)
        error('Invalid input types');
    end
    result = strcat(num2str(number), text, num2str(flag));
end
