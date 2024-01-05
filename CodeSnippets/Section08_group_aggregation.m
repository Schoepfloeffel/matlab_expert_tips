T = readtable('airlinesmall.csv', 'TreatAsMissing', 'NA'); % reading the airlinesmall csv dataset and treat 'NA' as missing (in demos folder of your matlab installation)
groupvars = ["Year", "Month"]; % aggregates values based on "Year" and "Month" column
methods = ["mean", "std"]; % apply mean and std function on datavars
datavars = ["ArrDelay"; "DepDelay"]; % apply methods on "ArrDelay" and "DepDelay" columns
T_agg = groupsummary(T, groupvars, methods, datavars) % getting mean and std from ArrDelay and DepDelay for each month with the groupcount

% T_agg =
%
%   255×7 table
%
%     Year    Month    GroupCount    mean_ArrDelay    std_ArrDelay    mean_DepDelay    std_DepDelay
%     ____    _____    __________    _____________    ____________    _____________    ____________
%
%     1987     10         448            5.8108          16.721          4.5676           13.262
%     1987     11         423            7.5311          20.647          6.1005           16.112
%     1987     12         440             11.97          27.786          10.528           26.607
%     1988      1         436            11.053          22.862          8.1607           17.951
%     1988      2         413            8.2138          24.499          7.7824           21.678
%     1988      3         445            10.014          44.869          9.6159           43.979
%     1988      4         427            5.8892          19.931          6.0776           16.912
%     1988      5         436             5.963          23.634          7.3002           21.984
% ...
