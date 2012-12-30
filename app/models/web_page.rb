class WebPage < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title, use: :slugged

  attr_accessible :content, :status, :title, :url

  before_save :write_html


  def write_html
    return if content.blank?
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(hardwrap:true), 
                                       no_intra_emphasis:true, 
                                       autolink:true,
                                       fenced_code_blocks:true)

    syntax_highlighter = SyntaxHighlighter.new(markdown.render(content))
    self.html = Redcarpet::Render::SmartyPants.render(syntax_highlighter.to_s)
  end
end
