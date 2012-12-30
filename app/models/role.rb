class Role < ActiveRecord::Base
  attr_accessible :title

  has_and_belongs_to_many :users

  def self.roles
    %w(admin).map {|name| Role.find_or_create_by_title(name)}
  end
end
