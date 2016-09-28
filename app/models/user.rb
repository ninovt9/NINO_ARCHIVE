class User < ApplicationRecord
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
    
    before_save { self.email = email.downcase }
    #before_save{email.downcase!}  炸弹方法
    
    validates :name,        presence: true,     length: {maximum: 50}
    validates :email,       presence: true,     length: {maximum: 255},
                            format: {with: VALID_EMAIL_REGEX },
                            uniqueness: {case_sensitive: false}
    validates :company,     presence: true,     length: {maximum: 255}
    validates :telephone,   presence: true,     length: {maximum: 11, minimum: 11}
    validates :password,    presence: true,     length: {minimum: 6}
   
    has_secure_password 
   
    
end
