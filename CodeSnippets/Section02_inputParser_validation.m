function result = processData(number, text, flag)
    % inits a inputParser instance, adds required parameters and calls "parse" for parsing
    p = inputParser;
    addRequired(p, 'number', @isnumeric);
    addRequired(p, 'text', @ischar);
    addRequired(p, 'flag', @islogical);
    parse(p, number, text, flag);
    result = strcat(num2str(number), text, num2str(flag));
end
