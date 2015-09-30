class Club
  include Mongoid::Document

   embeds_many :users
   has_one :book

  field :id, type: Int
  field :name, type: String
  field :location, type: String
end
