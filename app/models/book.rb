class Book
  include Mongoid::Document

  belongs_to :user
  belongs_to :club
  belongs_to :library

  field :title, type: String
  field :author, type: String
  field :isbn, type: Integer
  field :description, type: String

  validates :isbn, :uniqueness => true
  validates :title, :presence => { :message => "Book must have a title"}
end
