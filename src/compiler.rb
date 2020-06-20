require 'redcarpet'

markdown = File.read('README.md')

md_options = {
  tables: true,
  fenced_code_blocks: true,
  autolink: true,
  strikethrough: true
}

processor = Redcarpet::Markdown.new(Redcarpet::Render::HTML, md_options)

puts processor.render(markdown)
