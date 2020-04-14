require 'rails_helper'

RSpec.describe "foods/show", type: :view do
  before(:each) do
    @food = assign(:food, Food.create!(
      name: "Name",
      description: "MyText",
      image_url: "Image Url",
      price: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Image Url/)
    expect(rendered).to match(/9.99/)
  end
end
