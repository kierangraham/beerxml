class Beerxml::MashStep < Beerxml::Model
  include DataMapper::Resource

  property :name, String, :required => true
  property :type, String
  property :infuse_amount, Float
  property :infuse_temp, String
  property :step_time, Integer
  property :step_temp, Float
  property :ramp_time, Integer
  property :end_temp, Float
  property :description, String, :length => 65535
  property :water_grain_ratio, Float
  property :decoction_amt, String
  property :display_step_temp, String
  property :display_infuse_amt, String

  property :id, Serial
  belongs_to :mash, required: false
end