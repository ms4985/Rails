class Book
  include Mongoid::Document

  belongs_to :user 
  embedded_in :libraries
  belongs_to :clubs

  field :title, type: String
  field :author, type: String
  field :isbn, type: Integer
  field :description, type: String
end
