class Club
  include Mongoid::Document

  embeds_many :users
  has_one :book

  field :id, type: Integer
  field :name, type: String
  field :location, type: String

  validates :id, :uniqueness => true
end
