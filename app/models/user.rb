class User < ActiveRecord::Base
  attr_accessible :name

  has_many :external_authentications
  has_and_belongs_to_many :roles


  def self.create_from_hash!(hash)
    create(name:hash['info']['name'])
  end

  def role_symbols
    roles.map {|role| role.title.to_sym}
  end
end
