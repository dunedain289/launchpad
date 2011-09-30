class Rocket
  include Mongoid::Document
  include Mongoid::Timestamps

  has_and_belongs_to_many :user
  embeds_many :flights

  field :name, type: String
  validates_presence_of :name
  field :diameter_mm, type: Float
  field :length_mm, type: Float
  field :motor_mount_mm, type: Integer
  field :mass_g, type: Float
  field :comment, type: String
end
