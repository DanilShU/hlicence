class User < ApplicationRecord

  validates :password, :email, presence: true

  before_create do 
  	self.login = self.email if login.blank?
  end

  before_create do
  	self.password = generate_pass if password.blank?
  end

  before_initialize do 
  	self.name = login if if name.blank
  end

  before_create do 
  	self.password = generate_pass
  end

  def generate_pass
    SecureRandom.hex(8)
  end

end
