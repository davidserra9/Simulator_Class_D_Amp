function [comparationResult] = pwm(sinIn,triIn)

    comparationResult = 0:1:length(sinIn)-1;

    for i = 1:length(comparationResult)
            if (sinIn(i)>triIn(i))
                comparationResult(i) = 1;
            else 
                comparationResult(i) = -1;
            end
    end

end

