class Club
  include Mongoid::Document

  has_many :users
  has_one :book

  field :name, type: String
  field :location, type: String
  field :id, type: Integer

  validates :name, :uniqueness => true
end
