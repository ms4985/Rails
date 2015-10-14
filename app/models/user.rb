class User
  include Mongoid::Document

  has_many :books
  embedded_in :clubs
  has_many :libraries

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String

  validates :email, :presence => { :message => "You must provide an email."}
end
