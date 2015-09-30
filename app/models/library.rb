class Library
  include Mongoid::Document

  embeds_man :books

  field :name, type: String
  field :location, type: String
  field :id, type: Int
end
