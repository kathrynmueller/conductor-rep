require 'test_helper'

class RepertoiresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repertoire = repertoires(:one)
  end

  test "should get index" do
    get repertoires_url
    assert_response :success
  end

  test "should get new" do
    get new_repertoire_url
    assert_response :success
  end

  test "should create repertoire" do
    assert_difference('Repertoire.count') do
      post repertoires_url, params: { repertoire: { composer: @repertoire.composer, date_performed: @repertoire.date_performed, ensemble_performed: @repertoire.ensemble_performed, title: @repertoire.title } }
    end

    assert_redirected_to repertoire_url(Repertoire.last)
  end

  test "should show repertoire" do
    get repertoire_url(@repertoire)
    assert_response :success
  end

  test "should get edit" do
    get edit_repertoire_url(@repertoire)
    assert_response :success
  end

  test "should update repertoire" do
    patch repertoire_url(@repertoire), params: { repertoire: { composer: @repertoire.composer, date_performed: @repertoire.date_performed, ensemble_performed: @repertoire.ensemble_performed, title: @repertoire.title } }
    assert_redirected_to repertoire_url(@repertoire)
  end

  test "should destroy repertoire" do
    assert_difference('Repertoire.count', -1) do
      delete repertoire_url(@repertoire)
    end

    assert_redirected_to repertoires_url
  end
end
