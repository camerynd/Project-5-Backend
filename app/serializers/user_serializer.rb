class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :bio, :id
  has_many :pets
  has_many :scores
  has_many :adventures
end
