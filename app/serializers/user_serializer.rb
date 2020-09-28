class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :unique_facilities
end
