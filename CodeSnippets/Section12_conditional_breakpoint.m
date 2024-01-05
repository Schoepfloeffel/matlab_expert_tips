rng("default")
data = rand(1, 1000)-0.1;
for val = data
    my_val = realsqrt(val); % right click on line 4 and select "Set Conditional Breakpoint". Put "val<0" to stop the when a negative value occurs
end
