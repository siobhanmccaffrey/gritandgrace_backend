class User < ApplicationRecord
    has_secure_password
    has_many :meetings
    has_many :packages, through: :meetings

    validates :email, uniqueness: { case_sensitive: false }

    

end
