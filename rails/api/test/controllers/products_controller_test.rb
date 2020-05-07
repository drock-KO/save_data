require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get purchase" do
    get products_purchase_url
    assert_response :success
  end

end
