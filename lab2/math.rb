class Math2
    def calc(number1,number2,operator)
      begin
        if(!number1.is_a? Numeric || !number2.is_a? || !number1.empty? || !number2.empty?)
          raise "Please enter valid numbers"
        end
        if(!number2 == 0)
          raise "Second number can't be zero"
        end
        if(operator == "+" || operator == "*" || operator == "-" || operator == "/")
          eval(number1.to_s + operator + number2.to_s)
        else
          raise "Not supported operator, please enter valid operator"
        end
  
  
      end
    end
  
  end
  
  
  m = Math2.new
  
  
  p m.calc(1,2,"+")