function left_tune(Data)

left_tune_list = Data.left_tune.Data;
left_tune_list = reshape(left_tune_list, length(left_tune_list), 1);
plot(Data.left_tune.Time, left_tune_list)
end