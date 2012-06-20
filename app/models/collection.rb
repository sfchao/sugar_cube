class Collection < ActiveRecord::Base
  has_many :production_collections
  has_many :product, :through => :production_collections
end
