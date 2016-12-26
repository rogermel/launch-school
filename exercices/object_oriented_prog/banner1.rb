class Banner
  def initialize(message)
    @message = message
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    '+' << '-' * (message_size + 2) << '+'
  end

  def empty_line
    '|' << ' ' * (message_size + 2) << '|' 
  end

  def message_line
    "| #{@message} |"
  end
  
  def message_size
    @message.size
  end
end

banner = Banner.new('To boldly go where no one has gone before.')
puts banner
banner2 = Banner.new('')
puts banner2