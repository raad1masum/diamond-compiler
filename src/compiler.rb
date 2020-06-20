require 'redcarpet'

markdown = File.read('README.md')

Redcarpet::Markdown.new(Redcarpet::Render::HTML.new).render(markdown)
