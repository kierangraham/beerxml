class Beerxml::Mash < Beerxml::Model
  include DataMapper::Resource

  property :name, String, :required => true
  property :notes, String, :length => 65535
  property :grain_temp, Float
  property :tun_temp, Float
  property :sparge_temp, Float
  property :ph, Float
  property :tun_weight, Float
  property :tun_specific_heat, Float
  property :equip_adjust, Boolean, default: false
  property :display_grain_temp, String
  property :display_tun_temp, String
  property :display_sparge_temp, String
  property :display_tun_weight, String

  property :id, Serial

  has n, :mash_steps

  belongs_to :recipe, required: false

  def as_json
    super.merge({
      mash_steps: mash_steps.map(&:as_json)
    })
  end
end