require 'redcarpet'

class ReadmeGenerator
  attr_accessor :markdown

  def initialize
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
  end

  def generate(name)
    @markdown.render(substitute(`polygen #{grammar_file}`, {"#name#" => name}))
  end

  protected

  def substitute(text, map)
    new_text = text.dup
    text.scan(/\#[a-zA-Z]+\#/) do |match|
      new_text.gsub!(match, map[match]) if map.has_key?(match)
    end

    return new_text
  end

  def grammar_file
    File.join(File.dirname(__FILE__), '..', 'grm', 'readme.grm')
  end
end
