#
# async-checker.rb
#

require 'json'

failures = 0

JSON.parse(File.read('compile_commands.json')).each do |item|
  file = item['file']
  # async-checker can only parse C code
  next unless File.extname(file) == '.c'
  # skip files that don't declare any asyncsafe functions
  next unless system("grep -q asyncsafe #{file}")
  command = item['command'].split(' -o ')[0] + ' -E | /Users/nick/go/src/async-checker/async-checker'
  puts "Checking #{file}"
  system(command) or failures = failures + 1
end

exit(failures)
