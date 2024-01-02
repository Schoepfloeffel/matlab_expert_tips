T = readtable('airlinesmall.csv', 'TreatAsMissing', 'NA'); %reading the airlinesmall csv dataset and treat 'NA' as missing (in demos folder of your matlab installation)

%% rule 1: numeric arrays missing -> NaN, hence double
class(T.AirTime)
% >>> ans = 'dobule'

%% rule 2: datetime missing -> NaT
T.Year(1) = missing; %set the first year to missing
T.Date = datetime(T.Year, T.Month, T.DayofMonth); %construct datetime column
T.Date(1)
% >>> ans = datetime 'NaT'

%% rule 3: categorical missing ->  <undefined>
T.UniqueCarrier = categorical(T.UniqueCarrier); % change cell type column to categories
T.UniqueCarrier(1) = missing;
T.UniqueCarrier(1)
% >>> ans = categorical <undefined>

%% rule 4: string missing -> <missing>
T.Origin = string(T.Origin); % change cell type column to categories
T.Origin(1) = missing;
T.Origin(1)
% >>> ans = <missing>

%% rule 5: missing values are distinct
distinct_nan_values = unique(T.TailNum)
% >>> ans = 0, 112, NaN, NaN, NaN ...

%% rule 6: aggregation function will return missing if missing is in array
mean_val_tailNum = mean(T.TailNum)
% ans = NaN
mean_val_tailNum_wo_missing = mean(T.TailNum, "omitnan")
% ans = 1.862232779097387

%% rule 7: conditional checks can be done on missing
missing_array_Date = ismissing(T.Date); % works on datetime
missing_array_UniqueCarrier = ismissing(T.UniqueCarrier); % works on categories
missing_array_Origin = ismissing(T.Origin); % works on strings