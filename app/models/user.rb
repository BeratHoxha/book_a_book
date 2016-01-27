class User < ActiveRecord::Base
  belongs_to :cart
  has_many :comments
  has_one :like
  has_secure_password 
end

