class User < ApplicationRecord
    has_many :trips
    
    has_secure_password

    validates :first_name, presence: true, length: { minimum: 2 }
    validates :last_name, presence: true, length: { minimum: 2 }
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true, length: { in: 6..20 }

    def full_name
        self.first_name + " " + self.last_name
    end
end
