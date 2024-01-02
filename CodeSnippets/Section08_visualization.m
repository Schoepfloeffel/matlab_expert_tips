figure;
hold on; grid on;
u_years = unique(T_joined.Year)';
for year = u_years
    T_yearData = T_joined(T_joined.Year == year, :);
    plot(T_yearData, "Month", "mean_ArrDelay");
end
colororder(jet(numel(u_years)))
hold off;
title('ArrDelay by Month');
legend(string(u_years), 'Location', 'eastoutside');