load 'compiler.rb'

ARGV.each do|a|
  compile(a)
end
