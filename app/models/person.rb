class Person < ActiveRecord::Base
  has_many :addresses
  accepts_nested_attributes_for :addresses

  def address_attributes=(addresses_attributes)
    address_attributes.each do |i, addresses_attributes|
      self.addresses.build(address_attributes)
    end
  end
end
