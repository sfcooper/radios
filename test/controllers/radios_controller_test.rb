require 'test_helper'

class RadiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @radio = radios(:one)
  end

  test "should get index" do
    get radios_url
    assert_response :success
  end

  test "should get new" do
    get new_radio_url
    assert_response :success
  end

  test "should create radio" do
    assert_difference('Radio.count') do
      post radios_url, params: { radio: { desc: @radio.desc, name: @radio.name, price: @radio.price } }
    end

    assert_redirected_to radio_url(Radio.last)
  end

  test "should show radio" do
    get radio_url(@radio)
    assert_response :success
  end

  test "should get edit" do
    get edit_radio_url(@radio)
    assert_response :success
  end

  test "should update radio" do
    patch radio_url(@radio), params: { radio: { desc: @radio.desc, name: @radio.name, price: @radio.price } }
    assert_redirected_to radio_url(@radio)
  end

  test "should destroy radio" do
    assert_difference('Radio.count', -1) do
      delete radio_url(@radio)
    end

    assert_redirected_to radios_url
  end
end
