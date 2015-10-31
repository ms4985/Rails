class User
  include Mongoid::Document
  include Mongoid::Slug

  has_many :books, :autosave => true
  belongs_to :clubs
  has_many :libraries

  accepts_nested_attributes_for :books, :allow_destroy => :true

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String

  slug :email, history: true

  validates :email, :presence => { :message => "You must provide an email."}
end
