class User < ApplicationRecord
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
    
    has_secure_password 
    
    before_save { self.email = email.downcase }
    #before_save{email.downcase!}  炸弹方法
    
    validates :name,        presence: true,     length: {maximum: 50}
    validates :email,       presence: true,     length: {maximum: 255},
                                format: {with: VALID_EMAIL_REGEX },
                                uniqueness: {case_sensitive: false}
    validates :company,     presence: true,     length: {maximum: 255}
    validates :telephone,   presence: true,     length: {maximum: 11, minimum: 11}
    validates :password,    presence: true,     length: {minimum: 6},
                                allow_nil: true
   
    #返回指定字符的哈希摘要
    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : 
                    BCrypt::Engine.cost 
        BCrypt::Password.create(string, cost: cost) 
    end
   
    
end
