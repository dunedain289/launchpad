class Club
  include Mongoid::Document

  has_and_belongs_to_many :users

  embeds_many :club_events
end
