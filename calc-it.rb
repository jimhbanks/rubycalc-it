def addition(num1, num2)
 puts num1 + num2
end

def subtraction(num1, num2)
 puts num1 - num2
end

def multiply(num1, num2)
 puts num1 * num2
end

def division(num1, num2)
 puts num1 / num2
end

def power_of(num1, num2)
 puts num1 ** num2
end

def square_root(num1)
 puts   Math.sqrt(num1)
end

def bmi_calc(weight, height)
  bmi = ((weight / height) / height).round(2)
  puts"your bmi is #{bmi}"
end

def mortgage_calc(loan_amount, interest_rate, loan_length)
  mortgage = (loan_amount * ((interest_rate * ((1 + interest_rate) **loan_length)) / (((1+interest_rate)**loan_length
    )-1))).round(2)
  puts"your mortage payments are #{mortgage}"
end  


# def trip_calc(trip_distance, mpg, cost, speed)
#  time = (distance / speed).round(2)
#  if mpg > 60
#    real_mpg = mpg - (speed - 60) * 2
#  else 
#    real_mpg = mpg
#  end
#  trip_cost = ((dtrip_distance / real_mpg) * cost).round(2)
#  puts"trip will cost you £#{trip_cost} and take #{time} hours"
# end

def calc(math_func, num1, num2)
 case math_func
   when '+'
     addition(num1, num2)
   when '-'
     subtraction(num1, num2)
   when '*'
     multiply(num1, num2)
   when '/'
     division(num1, num2)
   when '**'
     power_of(num1, num2)
   else
     puts"math function not supported, try again"
     gets.chomp
   end
end

def add_calc(num1)
 square_root(num1)
end

def menu 
 print'would you like the (a)advanced, (b)basic, (bmi)bmi, (m)mortgage calc-it app, or (q) quit?'
 calc_choice = gets.chomp
   if calc_choice == 'b'
     print'input first number'
     num1 = gets.chomp.to_i
     print'input math type'
     math_func = gets.chomp
     print'input second number'
     num2 = gets.chomp.to_i
     calc(math_func, num1, num2)

   elsif calc_choice == 'a'
     print'input number'
     number1 = gets.chomp.to_i
     add_calc(num1)

    elsif calc_choice == 'q'
      print''

  elsif calc_choice == 'bmi'
      print'input height in cm'
      height = gets.chomp.to_i
      print'input weight in lbs'
      weight = gets.chomp.to_f
      bmi_calc(weight, height)

  elsif calc_choice == 'm'
      print'input loan amount'
        loan_amount = gets.chomp.to_f
      print'input interest rate'
        interest_rate = gets.chomp
      print'input months to pay off'
        loan_length = gets.chomp
      mortgage_calc(loan_amount, interest_rate, loan_length)

  # elsif calc_choice == 't'
  #   print'how long is your trip?'
  #     trip_distance = gets.chomp.to_i
  #   print'whats your mpg?'
  #     real_mpg = gets.chomp
  #   print'cost of gallon'  
      
    end
   end 
menu






  

 



  


