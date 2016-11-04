require 'yaml'

MESSAGES = YAML.load_file('calculator_messages.yml')
LANG = 'fr'


def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = MESSAGES[LANG].include?(key) ? messages(key, LANG) : key
  puts "=> #{message}"
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

def operation_to_message(op)
  word =
    case op
    when '1' then MESSAGES[LANG]['add']
    when '2' then MESSAGES[LANG]['sub']
    when '3' then MESSAGES[LANG]['mul']
    when '4' then MESSAGES[LANG]['div']
    end
  word
end

prompt 'welcome'

name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt 'valid_name'
  else
    break
  end
end

prompt MESSAGES[LANG]['hello'] + " #{name}"

loop do
  num1 = ''
  loop do
    prompt 'first_num'
    num1 = gets.chomp
    if number?(num1)
      break
    else
      prompt 'invalid_num'
    end
  end

  num2 = ''
  loop do
    prompt 'second_num'
    num2 = gets.chomp
    if number?(num2)
      break
    else
      prompt 'invalid_num'
    end
  end

  prompt 'op_prompt'
  operator = ''
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt 'choice'
    end
  end

  prompt operation_to_message(operator) + MESSAGES[LANG]['msg_op']

  result =
    case operator
    when '1'
      num1.to_i + num2.to_i
    when '2'
      num1.to_i - num2.to_i
    when '3'
      num1.to_i * num2.to_i
    when '4'
      num1.to_f / num2.to_f
    end

  prompt MESSAGES[LANG]['result'] + " #{result}"

  prompt 'confirm_op'
  anwer = gets.chomp
  break unless anwer.downcase.start_with?('y')
end

prompt 'good_by'
