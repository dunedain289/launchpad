class Rocket
  include Mongoid::Document

  belongs_to :user
  embeds_many :flights
end
