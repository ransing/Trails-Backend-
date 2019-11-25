class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :location, :image, :age, :password_digest
end
