require 'test_helper'

class JapanesesControllerTest < ActionController::TestCase
  setup do
    @japanese = japaneses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:japaneses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create japanese" do
    assert_difference('Japanese.count') do
      post :create, japanese: { deleted: @japanese.deleted, note: @japanese.note, sound_word: @japanese.sound_word, word_japanese: @japanese.word_japanese, word_vietnamese: @japanese.word_vietnamese }
    end

    assert_redirected_to japanese_path(assigns(:japanese))
  end

  test "should show japanese" do
    get :show, id: @japanese
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @japanese
    assert_response :success
  end

  test "should update japanese" do
    patch :update, id: @japanese, japanese: { deleted: @japanese.deleted, note: @japanese.note, sound_word: @japanese.sound_word, word_japanese: @japanese.word_japanese, word_vietnamese: @japanese.word_vietnamese }
    assert_redirected_to japanese_path(assigns(:japanese))
  end

  test "should destroy japanese" do
    assert_difference('Japanese.count', -1) do
      delete :destroy, id: @japanese
    end

    assert_redirected_to japaneses_path
  end
end
