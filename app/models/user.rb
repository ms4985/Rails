class User
  include Mongoid::Document

  has_many :books
  embedded_in :clubs


  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
end
