def addition(n1, n2)
 puts n1 + n2
end

def subtraction(n1, n2)
 puts n1 - n2
end

def multiply(n1, n2)
 puts n1 * n2
end

def division(n1, n2)
 puts n1 / n2
end

def power_of(n1, n2)
 puts n1 ** n2
end

def square_root(n1)
 puts   Math.sqrt(n1)
end

def calc(operator, number1, number2)
 case operator
   when '+'
     addition(number1, number2)
   when '-'
     subtraction(number1, number2)
   when '*'
     multiply(number1, number2)
   when '/'
     division(number1, number2)
   when '**'
     power_of(number1, number2)
   else
     puts"operator not recognised, try again"
     gets.chomp
   end
end

def ad_calc(n1)
 square_root(n1)
end

def menu 
 print"Do you want to use basic or advanced calculator?"
 calc_choice = gets.chomp
   if calc_choice == 'basic'
     print"Select first number"
     number1 = gets.chomp.to_i
     print"Select mathematical operator"
     operator = gets.chomp
     print"Select second number"
     number2 = gets.chomp.to_i
     calc(operator, number1, number2)
   elsif calc_choice == 'advanced'
     print"Select number"
     number1 = gets.chomp.to_i
     ad_calc(number1)
   end 
end


menu

  

 



  


