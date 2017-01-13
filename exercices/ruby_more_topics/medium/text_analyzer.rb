class TextAnalyzer
  def process
    open('test_file.txt', 'r') { |f| yield f.read }
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |file| puts "#{file.split("\n\n").count} paragraphs" }
analyzer.process { |file| puts "#{file.split("\n").count} lines" }
analyzer.process { |file| puts "#{file.split(" ").count} words" }