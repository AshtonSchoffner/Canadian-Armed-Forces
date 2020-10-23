require 'test_helper'

class EquipmentTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get equipment_types_show_url
    assert_response :success
  end

end
