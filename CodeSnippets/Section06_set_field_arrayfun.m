% define a struct
fun = @(n)struct('dur',n, 'typ','X', 'lat',n*n, 'ure',sqrt(n), 'nested_struct', struct('field1', "a_string", 'field2', n^exp(1)));
ALL.BLAH = 0;
ALL.EVNT = arrayfun(fun,1:1209);

% change field in the in all structs, "array of structs"
ALL.EVNT = arrayfun(@(x) setfield(x, 'typ', 'my_new_type'), ALL.EVNT); %set specified field in each struct (1209 fields)

% change field in the first three structs with 'setfield'
ALL.EVNT(1:3) = arrayfun(@(x) setfield(x, 'typ', 'my_newest_type'), ALL.EVNT(1:3)); %set specified field in slice of struct array (changes field in struct 1 to 3)

ALL.EVNT(1:5).typ
% >>> ans = 'my_newest_type'
% >>> ans = 'my_newest_type'
% >>> ans = 'my_newest_type'
% >>> ans = 'my_new_type'
% >>> ans = 'my_new_type'