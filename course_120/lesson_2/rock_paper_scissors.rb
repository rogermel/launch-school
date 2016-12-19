class Player
  CHOICE = %w(rock paper scissors).freeze

  attr_reader :move, :name

  def initialize
    set_name
  end
end

class Human < Player
  def set_name
    n = ''
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts 'Sorry, must enter a value.'
    end
    @name = n
  end

  def choose
    choice = nil
    loop do
      puts 'Please choose rock, paper, or scissors:'
      choice = gets.chomp
      break if CHOICE.include?(choice)
      puts "Sorry, invalid choice."
    end

    @move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    @name = %w(R2D2 Hal Chappie Sonny Number-5).sample
  end

  def choose
    @move = Move.new(CHOICE.sample)
  end
end

class Move
  VALUES = Player::CHOICE

  def initialize(value)
    unless VALUES.include? value.downcase
      raise ArgumentError, 'Must be rock,, paper or scissors'
    end
    @value = value
  end

  def scissors?
    @value == 'scissors'
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def to_s
    @value
  end

  def >(other_move)
    (rock? && other_move.scissors?) ||
      (paper? && other_move.rock?) ||
      (scissors? && other_move.paper?)
  end

  def <(other_move)
    (rock? && other_move.paper?) ||
      (paper? && other_move.scissors?) ||
      (scissors? && other_move.rock?)
  end
end

class RPSGame
  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts 'Welcome to Rock, Paper, Scissors'
  end

  def display_goodbye_message
    puts 'Thanks for playing Rock, Paper, Scissors. Good bye!'
  end

  def display_winner
    puts "#{@human.name} chose #{@human.move}."
    puts "#{@computer.name} chose #{@computer.move}."

    if @human.move > @computer.move
      puts "#{@human.name} won!"
    elsif @human.move < @computer.move
      puts "#{@computer.name} won!"
    else
      puts "It's a tie!"
    end
  end

  def play_again?
    answer = nil
    loop do
      puts 'Would you like to play again? (y/n)'
      answer = gets.chomp.downcase
      break if %w(y n).include? answer
      puts 'Sorry, must be y or n.'
    end

    answer == 'y'
  end

  def play
    display_welcome_message
    loop do
      @human.choose
      @computer.choose
      display_winner
      break unless play_again?
    end

    display_goodbye_message
  end
end

RPSGame.new.play
