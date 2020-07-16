require 'test_helper'

class RomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rom = roms(:one)
  end

  test "should get index" do
    get roms_url
    assert_response :success
  end

  test "should get new" do
    get new_rom_url
    assert_response :success
  end

  test "should create rom" do
    assert_difference('Rom.count') do
      post roms_url, params: { rom: { image_url: @rom.image_url, name: @rom.name } }
    end

    assert_redirected_to rom_url(Rom.last)
  end

  test "should show rom" do
    get rom_url(@rom)
    assert_response :success
  end

  test "should get edit" do
    get edit_rom_url(@rom)
    assert_response :success
  end

  test "should update rom" do
    patch rom_url(@rom), params: { rom: { image_url: @rom.image_url, name: @rom.name } }
    assert_redirected_to rom_url(@rom)
  end

  test "should destroy rom" do
    assert_difference('Rom.count', -1) do
      delete rom_url(@rom)
    end

    assert_redirected_to roms_url
  end
end
