class Catalog
  include Mongoid::Document
  
  field :call, type: String
  field :author, type: String
  field :title, type: String
  field :edition, type: String
  field :pub, type: String
  field :std, type: String
end