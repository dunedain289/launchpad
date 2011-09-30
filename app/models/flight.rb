class Flight
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :rocket
  belongs_to :club_event

  field :result, type: String
  field :details, type: String
  field :motor_designation, type: String
  validates_format_of :motor_designation, with: %r{ (1/4A | 1/2A | [A-Z]) \d+ }x

  def name
    created_at.strftime("%Y-%m-%d")
  end
end
