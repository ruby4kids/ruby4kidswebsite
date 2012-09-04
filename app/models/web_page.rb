class WebPage < ActiveRecord::Base
  attr_accessible :content, :status, :title, :url
end
