require 'spec_helper'

describe ProductCollection do
  subject {mock_model(ProductCollection)}
  it { should belong_to(:product)}
  it { should belong_to(:collection)}
end
