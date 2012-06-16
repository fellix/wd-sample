require 'spec_helper'

feature 'Product API' do
  include Rack::Test::Methods

  before do
    [
      {:name => "Macbook Pro",:amount => 2999},
      {:name => "Macbook Air", :amount => 3299},
      {:name => 'Ultrabook HP',  :amount => 1799}
    ].each do |attributes|
      Product.create attributes
    end
  end

  scenario 'list all the products' do
    header 'Accept', 'application/json'
    result = get '/products'

    result.should have_api_response(:get, '/products')
  end
end