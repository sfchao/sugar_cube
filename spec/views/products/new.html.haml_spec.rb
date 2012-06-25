require 'spec_helper'

describe "products/new" do
  before(:each) do
    assign(:product, stub_model(Product,
      :title => "MyString",
      :description => "MyText",
      :status => "MyString",
      :multiple_variant => "",
      :sale_price => "",
      :origin_price => ""
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path, :method => "post" do
      assert_select "input#product_title", :name => "product[title]"
      assert_select "textarea#product_description", :name => "product[description]"
      assert_select "input#product_multiple_variant", :name => "product[multiple_variant]"
      assert_select "input#product_sale_price", :name => "product[sale_price]"
      assert_select "input#product_origin_price", :name => "product[origin_price]"
    end
  end
end
