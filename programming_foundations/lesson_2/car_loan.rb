def prompt(message)
  puts "=> #{message}"
end

def invalid_value(val)
  val.empty? || val.to_f < 0
end

loop do
  prompt 'Welcome to Mortgage Calculator!'
  prompt '-------------------------------'

  prompt 'What is the load amount?'

  amount = ''
  loop do
    amount = gets.chomp

    if invalid_value(amount)
      prompt 'Must enter positive number.'
    else
      break
    end
  end

  prompt 'What is the interest rate?'
  prompt '(Example: 5 for 5% or 2.5 for 2.5%)'

  interest_rate = ''
  loop do
    interest_rate = gets.chomp

    if invalid_value(interest_rate)
      prompt 'Must enter positive number.'
    else
      break
    end
  end

  prompt "What is the loan duration (in years)?"
  years = ''

  loop do
    years = gets.chomp

    if invalid_value(years)
      prompt'Must enter positive number.'
    else
      break
    end
  end

  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i * 12

  monthly_payment = amount.to_f *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**-months.to_i))

  prompt "Your monthly payment is: $#{format('%02.2f', monthly_payment)}"

  prompt "Another calculation?"
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for using the Mortgage Calculator!"
prompt "Good bye!"
