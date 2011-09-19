class ClubEvent
  include Mongoid::Document

  embedded_in :club

  has_many :flights
end
