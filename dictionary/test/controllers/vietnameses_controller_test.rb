require 'test_helper'

class VietnamesesControllerTest < ActionController::TestCase
  setup do
    @vietnamese = vietnameses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vietnameses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vietnamese" do
    assert_difference('Vietnamese.count') do
      post :create, vietnamese: { deleted: @vietnamese.deleted, note: @vietnamese.note, sound_word: @vietnamese.sound_word, word_japanese: @vietnamese.word_japanese, word_vietnamese: @vietnamese.word_vietnamese }
    end

    assert_redirected_to vietnamese_path(assigns(:vietnamese))
  end

  test "should show vietnamese" do
    get :show, id: @vietnamese
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vietnamese
    assert_response :success
  end

  test "should update vietnamese" do
    patch :update, id: @vietnamese, vietnamese: { deleted: @vietnamese.deleted, note: @vietnamese.note, sound_word: @vietnamese.sound_word, word_japanese: @vietnamese.word_japanese, word_vietnamese: @vietnamese.word_vietnamese }
    assert_redirected_to vietnamese_path(assigns(:vietnamese))
  end

  test "should destroy vietnamese" do
    assert_difference('Vietnamese.count', -1) do
      delete :destroy, id: @vietnamese
    end

    assert_redirected_to vietnameses_path
  end
end
