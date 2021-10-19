class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :username, uniqueness: true, on: :create
    has_many :pets
    has_many :scores
    has_many :adventures
end
