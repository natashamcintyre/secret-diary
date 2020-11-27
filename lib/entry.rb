# understands how to add and get entries

class Entry
attr_accessor :entries
  def initialize
    @entries = []
  end

  def add
    puts "Type your entry, then press Enter"
    @entries << STDIN.gets.chomp
  end

  def get
    @entries
  end

end
