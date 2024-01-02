a_100 = vpa(0.1,100);
b_100 = vpa(0.2,100);
digits(100) % you can also set digits in general to have the vpa parametrized
c_100 = vpa(0.3);

my_higher_precision_c_double = double(c_100); % we convert the "sym" datatype to a double to make a conditonal check possible

c == my_higher_precision_c_double % SUCCESS, we now calculated it with a higher precision and c and the high precision c passes our condition

% ans =
%
%   logical
%
%    1