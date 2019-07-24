class User < ApplicationRecord

  def self.find_or_create_by_omniauth(auth_hash)
    self.where(uid: auth_hash[:uid]).first_or_create do |u|
      u.name = auth_hash[:info][:name]
      u.email = auth_hash[:info][:email]
      u.image = auth_hash[:info][:image]
    end
  end
end
