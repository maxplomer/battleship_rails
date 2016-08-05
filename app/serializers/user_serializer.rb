class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :time_took_to_win
end
