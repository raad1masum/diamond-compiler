require 'redcarpet'

md_options = {
  tables: true,
  fenced_code_blocks: true,
  autolink: true,
  strikethrough: true
}

processor = Redcarpet::Markdown.new(Redcarpet::Render::HTML, md_options)

print "Enter file to compile: "
file = gets.chomp

markdown = File.read(file.to_str)

puts processor.render(markdown)
