class Todo
  DONE_MARKER = 'X'.freeze
  UNDONE_MARKER = ' '.freeze
  
  attr_accessor :title, :description, :done
  
  def initialize(title, description = '')
    @title = title
    @description = description
    @done = false
  end
  
  def done!
    self.done = true
  end
  
  def done?
    done
  end
  
  def undone!
    self.done = false
  end
  
  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end
end

class TodoList
  attr_accessor :title
  
  def initialize(title)
    @title = title
    @todos = []
  end
  
  def add(to_do)
    raise ArgumentError.new("Can only add Todo objects") unless to_do.is_a? Todo
    @todos << to_do
  end
  
  def each
    @todos.each { |todo| yield todo }
    self
  end
  
  def select
    list = TodoList.new(title)
    each { |todo| list.add(todo) if yield todo }
  end
  
  # returns first Todo by title, or nil if no match
  def find_by_title(title)
    select { |todo| todo.title == title }.first
  end

  def all_done
    select { |todo| todo.done? }
  end

  def all_not_done
    select { |todo| !todo.done? }
  end

  def mark_done(title)
    find_by_title(title) && find_by_title(title).done!
  end

  def mark_all_done
    each { |todo| todo.done! }
  end

  def mark_all_undone
    each { |todo| todo.undone! }
  end
  
  def size
    @todos.size
  end
  
  def first
    @todos.first
  end
  
  def last
    @todos.last
  end
  
  def item_at(num)
    @todos.fetch(num)
  end
  
  def mark_done_at(num)
    item_at(num).done!
  end
  
  def mark_undone_at(num)
    item_at(num).undone!
  end
  
  def shift
    @todos.shift
  end
  
  def pop
    @todos.pop
  end
  
  def remove_at(num)
    @todos.delete(item_at(num))
  end
  
  def to_s
    out = "---- #{title} ----\n"
    out << @todos.map(&:to_s).join("\n")
    out
  end
end