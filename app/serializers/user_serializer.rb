class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :first_name, :last_name, :email, :phone, :created_at, :updated_at

  attribute :created_date do |user|
    user.created_at && user.created_at.strftime("%d/%m/%Y")
  end
end
