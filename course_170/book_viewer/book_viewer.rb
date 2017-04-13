require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"

before do
  @contents = File.readlines('data/toc.txt')
end

helpers do
  def in_paragraphs(text)
    text.split(/\n\n/).each_with_index.map { |line, i| "<p id=paragraph#{i}>#{line}</p>" }.join
  end

  def highlight(text, match)
    text.gsub(match, %(<strong>#{match}</strong>))
  end
end

not_found do
  redirect '/'
end

def each_chapter(&block)
  @contents.each_with_index do |name, i|
    num = i + 1
    contents = File.read("data/chp#{num}.txt")
    yield num, name, contents
  end
end

def chapters_matching(query)
  out = []
  return out unless query

  each_chapter do |num, name, contents|
    matches = {}
    contents.split("\n\n").each_with_index do |paragraph, index|
      matches[index] = paragraph if paragraph.include?(query)
    end
    out << {number: num, name: name, paragraphs: matches} if matches.any?
  end
  out
end

get "/" do
  @title = "The Adventures of Sherlock Holmes"
  @files = Dir.glob('public/*.*').map { |file| File.basename(file) }.sort
  @files.reverse! if params['desc']

  erb :home
end

get '/chapters/:id' do |id|
  id = id.to_i
  chap_title = @contents[id - 1]
  @title = "Chapter #{id}: #{chap_title}"

  @chapter = File.read("data/chp#{id}.txt")

  erb :chapter
end

get '/search' do
  @results = chapters_matching(params[:query])
  erb :search
end
