function result = processData(number, text, flag)
    % input arguments validation block with check in size, class (datatype conversion) and further functions for validation
    arguments
        number (1,1) double {mustBeInRange(number, 0,100)} %checks if size (1,1), converts to double if possible, checks if value is in range between 0 and 100
        text (1,:) char %checks if size (1,:), converts to char if possible
        flag (1,1) logical %checks if size (1,1), converts to logical if possible
    end
    result = strcat(num2str(number), text, num2str(flag));
end