class Project < ApplicationRecord
    
    validates :name,        presence: true,     length: {maximum: 255},
                        uniqueness: true
    validates :position,    presence: true,     length: {maximum: 255}
    validates :developer,   presence: true,     length: {maximum: 255}
    
end
