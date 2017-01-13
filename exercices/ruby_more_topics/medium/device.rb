class Device
  def initialize
    @recordings = []
  end
  
  def listen
    record(yield) if block_given?
  end
  
  def play
    # @recordings.each { |record| puts record }
    puts @recordings.pop
  end
  
  private
  
  def record(recording)
    @recordings << recording
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play # Outputs "Hello World!"