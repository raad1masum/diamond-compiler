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
  output = processor.render(markdown)

  out_file = File.new("index.html", "w")
  out_file.puts(output)
  out_file.close
end
