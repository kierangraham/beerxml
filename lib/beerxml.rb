require 'dm-core'
require 'dm-validations'
require 'nokogiri'

unless defined? "".underscore
  class String
    def underscore
      self.gsub(/::/, '/').
      gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
      gsub(/([a-z\d])([A-Z])/,'\1_\2').
      tr("-", "_").
      downcase
    end
  end
end

module Beerxml
  def self.parse(string_or_io)
    Beerxml::Model.from_xml(Nokogiri::XML(string_or_io).root)
  end

  def self.round(float, to = 0)
    exp = 10 ** to
    (float * exp).round.to_f / exp
  end
end

require 'beerxml/model'

# This'll have to go eventually, but for now it's nice
DataMapper.setup(:default, "abstract::")