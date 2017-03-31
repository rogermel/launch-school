class Atbash
  ATBASH = {
    'a' => 'z', 'b' => 'y', 'c' => 'x', 'd' => 'w', 'e' => 'v', 'f' => 'u',
    'g' => 't', 'h' => 's', 'i' => 'r', 'j' => 'q', 'k' => 'p', 'l' => 'o',
    'm' => 'n', 'n' => 'm', 'o' => 'l', 'p' => 'k', 'q' => 'j', 'r' => 'i',
    's' => 'h', 't' => 'g', 'u' => 'f', 'v' => 'e', 'w' => 'd', 'x' => 'c',
    'y' => 'b', 'z' => 'a'
  }.freeze

  def self.encode(text)
    raise ArgumentError, "String is expected" unless text.is_a? String
    out = []
    clean_text = text.strip.downcase.gsub(/[^a-z0-9]/, '').chars

    len = clean_text.size
    clean_text.each_with_index do |letter, i|
      i += 1
      letter = ATBASH.key?(letter) ? ATBASH[letter] : letter
      out << letter
      out << ' ' if (i % 5).zero? && i < len
    end
    out.join
  end
end
