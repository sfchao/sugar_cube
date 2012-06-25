require 'spec_helper'

describe Collection do
  subject {mock_model(Collection)}

  it { should have_many(:product).through(:production_collections)}
end
