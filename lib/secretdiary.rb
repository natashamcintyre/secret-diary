# SecretDiary
#   - lock
#   - unlock
#   - add_entry
#   - get_entries
#
# Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.
#
# When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.
#
# When the user calls `lock` again they throw errors again.

# understands user instructions?

# require_relative './security.rb'
require_relative './entry.rb'

class SecretDiary
  attr_reader :state

  def initialize
    @contents = Entry.new
    @state = true
  end

  def unlock
    @state = false
  end

  def lock
    @state.lock
  end

  def add_entry
    @state.locked? ? "Diary locked!" : @contents.add
  end

  def get_entries
    @state.locked? ? "Diary locked!" : @contents.get
  end

end
