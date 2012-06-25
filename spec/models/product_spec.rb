require 'spec_helper'

describe Product do
  subject {mock_model(Product)}

  it { should have_many(:product_collections) }   
  it { should have_many(:collections).through(:product_collections)}

end
