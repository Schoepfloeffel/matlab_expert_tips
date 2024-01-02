arr = [1, 2, 4, 8, 16, nan] %nan is a keyword and signals a missing value in an double array
% >>> arr =  1     2     4     8    16   NaN

class(arr(6)) % nan is a "double" datatype
% >>> ans = 'double'

arr = ["1", "2", "4", "8", "16", nan] % Non double arrays will yield missing
% >>> arr =
%
%   1×6 string array
%
%     "1"    "2"    "4"    "8"    "16"    <missing>