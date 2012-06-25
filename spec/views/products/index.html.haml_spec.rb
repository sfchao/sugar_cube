require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :title => "Title",
        :description => "MyText",
        :status => "Status",
        :multiple_variant => "true",
        :sale_price => "300",
        :origin_price => "350"
      ),
      stub_model(Product,
        :title => "Title",
        :description => "MyText",
        :status => "Status",
        :multiple_variant => "false",
        :sale_price => "200",
        :origin_price => "250"
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "true".to_s, :count => 1
    assert_select "tr>td", :text => "false".to_s, :count => 1
    assert_select "tr>td", :text => "250.0".to_s, :count => 1
    assert_select "tr>td", :text => "200.0".to_s, :count => 1
    assert_select "tr>td", :text => "300.0".to_s, :count => 1
    assert_select "tr>td", :text => "350.0".to_s, :count => 1
  end
end
