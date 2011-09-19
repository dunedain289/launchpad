class Flight
  include Mongoid::Document

  embedded_in :rocket
  belongs_to :club_event
end
