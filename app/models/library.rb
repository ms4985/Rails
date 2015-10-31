class Library
  include Mongoid::Document

  belongs_to :user
  has_many :books

  field :name, type: String
  field :location, type: String
  field :id, type: Integer

  validates :id, :uniqueness => true
  validates :location, :presence => { :message => "Library must have a location"}
end
