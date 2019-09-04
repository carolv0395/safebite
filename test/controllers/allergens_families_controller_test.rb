require 'test_helper'

class AllergensFamiliesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get allergens_families_index_url
    assert_response :success
  end

  test "should get show" do
    get allergens_families_show_url
    assert_response :success
  end

end
