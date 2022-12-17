require "test_helper"

class SeaFishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sea_fish = sea_fishes(:one)
  end

  test "should get index" do
    get sea_fishes_url
    assert_response :success
  end

  test "should get new" do
    get new_sea_fish_url
    assert_response :success
  end

  test "should create sea_fish" do
    assert_difference("SeaFish.count") do
      post sea_fishes_url, params: { sea_fish: { behavior_143: @sea_fish.behavior_143, characteristic_143: @sea_fish.characteristic_143, color_143: @sea_fish.color_143, habitat_143: @sea_fish.habitat_143, name_143: @sea_fish.name_143, size_143: @sea_fish.size_143 } }
    end

    assert_redirected_to sea_fish_url(SeaFish.last)
  end

  test "should show sea_fish" do
    get sea_fish_url(@sea_fish)
    assert_response :success
  end

  test "should get edit" do
    get edit_sea_fish_url(@sea_fish)
    assert_response :success
  end

  test "should update sea_fish" do
    patch sea_fish_url(@sea_fish), params: { sea_fish: { behavior_143: @sea_fish.behavior_143, characteristic_143: @sea_fish.characteristic_143, color_143: @sea_fish.color_143, habitat_143: @sea_fish.habitat_143, name_143: @sea_fish.name_143, size_143: @sea_fish.size_143 } }
    assert_redirected_to sea_fish_url(@sea_fish)
  end

  test "should destroy sea_fish" do
    assert_difference("SeaFish.count", -1) do
      delete sea_fish_url(@sea_fish)
    end

    assert_redirected_to sea_fishes_url
  end
end
