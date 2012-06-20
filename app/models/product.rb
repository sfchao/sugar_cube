class Product < ActiveRecord::Base
  attr_accessible :title, :description, :status, :multiple_variant, :sale_price, :origin_price

  has_many :product_collections
  has_many :collections, :through => :product_collections

  
  before_create:initial_status
  
  def status_list
  %w[publish unpublish archive]  
  end
  
  private
  def initial_status
    self.status = "unpublish"
  end
end
