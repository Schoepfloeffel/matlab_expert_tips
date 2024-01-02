classdef AddNumbersClass
    properties
        Number1
        Number2
    end

    methods
        function obj = AddNumbersClass(number1, number2)
            % Constructor to create an object with two numbers
            obj.Number1 = number1;
            obj.Number2 = number2;
        end

        function result = calculateSum(obj)
            % Method to add the two numbers
            result = obj.Number1 + obj.Number2;
        end
    end
end