require 'test_helper'

class ContractorItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contractor_item = contractor_items(:one)
  end

  test "should get index" do
    get contractor_items_url
    assert_response :success
  end

  test "should get new" do
    get new_contractor_item_url
    assert_response :success
  end

  test "should create contractor_item" do
    assert_difference('ContractorItem.count') do
      post contractor_items_url, params: { contractor_item: { comment: @contractor_item.comment, contact_person_name: @contractor_item.contact_person_name, email: @contractor_item.email, phone: @contractor_item.phone, position: @contractor_item.position } }
    end

    assert_redirected_to contractor_item_url(ContractorItem.last)
  end

  test "should show contractor_item" do
    get contractor_item_url(@contractor_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_contractor_item_url(@contractor_item)
    assert_response :success
  end

  test "should update contractor_item" do
    patch contractor_item_url(@contractor_item), params: { contractor_item: { comment: @contractor_item.comment, contact_person_name: @contractor_item.contact_person_name, email: @contractor_item.email, phone: @contractor_item.phone, position: @contractor_item.position } }
    assert_redirected_to contractor_item_url(@contractor_item)
  end

  test "should destroy contractor_item" do
    assert_difference('ContractorItem.count', -1) do
      delete contractor_item_url(@contractor_item)
    end

    assert_redirected_to contractor_items_url
  end
end
