require 'repl_set_manager'

m = ReplSetManager.new
m.start_set

node = m.kill_secondary
m.ensure_up

puts "Pausing..."
gets

m.start(node)
m.ensure_up
