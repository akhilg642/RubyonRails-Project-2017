require 'test_helper'

class Line1ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @line1_item = line1_items(:one)
  end

  test "should get index" do
    get line1_items_url
    assert_response :success
  end

  test "should get new" do
    get new_line1_item_url
    assert_response :success
  end

  test "should create line1_item" do
    assert_difference('Line1Item.count') do
      post line1_items_url, params: { line1_item: { cart_id: @line1_item.cart_id, product1_id: @line1_item.product1_id } }
    end

    assert_redirected_to line1_item_url(Line1Item.last)
  end

  test "should show line1_item" do
    get line1_item_url(@line1_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_line1_item_url(@line1_item)
    assert_response :success
  end

  test "should update line1_item" do
    patch line1_item_url(@line1_item), params: { line1_item: { cart_id: @line1_item.cart_id, product1_id: @line1_item.product1_id } }
    assert_redirected_to line1_item_url(@line1_item)
  end

  test "should destroy line1_item" do
    assert_difference('Line1Item.count', -1) do
      delete line1_item_url(@line1_item)
    end

    assert_redirected_to line1_items_url
  end
end
