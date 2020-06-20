require 'redcarpet'

def compile (file_name)
  md_options = {
    tables: true,
    fenced_code_blocks: true,
    autolink: true,
    strikethrough: true
  }
  
  processor = Redcarpet::Markdown.new(Redcarpet::Render::HTML, md_options)

  markdown = File.read(file_name.to_str)
  puts processor.render(markdown)
end
