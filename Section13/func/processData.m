function result = processData(number, text, flag)
    % Converts a numbers, text and bool to a string and combine them to one string
    %
    % :param number: A number that must be in range [0;100]
    % :type number: double
    % :param text: A char array with size 1xN
    % :type text: char array
    % :param flag: A logical value like 0, 1, true, false
    % :type flag: bool
    %
    % :returns: Concatenated string
    % :rtype: string
    %
    % Example:
    %   .. code-block:: matlab
    %
    %       output = processData(5, '#123', 1);
    %       >>> ans = "5#1231"
    %
    %   .. note:: This is a note. Users often read this first.
    %
    arguments
        number (1,1) double {mustBeInRange(number, 0,100)}
        text (1,:) char
        flag (1,1) logical
    end
    result = strcat(num2str(number), text, num2str(flag)); %sprintf is also an option to handle this here ;) (see section 4)
end
