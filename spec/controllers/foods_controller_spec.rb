require 'rails_helper'

RSpec.describe FoodsController, type: :controller do
  params =  { name: "food name", description: "desc", price: 10.0 }
  describe "GET #index" do
    it "returns http success" do
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
     it "add food by 1 new instances" do
        expect { post(:create, params: { food: params }) }.to change(Food, :count).by(1)
    end
  end

  describe "GET #new" do
    it "returns http success" do
        get :new, params: {food: params}
        expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns http success" do
      food = Food.create! params
      get :show, params: {id: food.to_param}
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      food = Food.create! params
      get :edit, params: {id: food.to_param}
      expect(response).to be_successful
    end
  end

  describe "PUT #update" do
   let(:new_attributes){
       {
        'name' => 'updated_name',
        'description' => 'updated_desc',
        'price' => 10000.0,
       }
    }
    it "updates the requested food" do
      food = Food.create! params
      put :update, params: {id: food.to_param, food: new_attributes}
      food.reload
      expect(food.name).to eql new_attributes['name']
      expect(food.description).to eql new_attributes['description']
      expect(food.price).to eql new_attributes['price']
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested food" do
        food = Food.create! params
        expect {
            delete :destroy, params:{id: food.to_param}
        }.to change(Food, :count).by(-1)
    end
  end
end
