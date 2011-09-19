class User
  include Mongoid::Document

  has_many :rockets
  has_and_belongs_to_many :clubs

  field :username, type: String
end
