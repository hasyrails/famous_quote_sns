require 'test_helper'

class TwitterPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twitter_post = twitter_posts(:one)
  end

  test "should get index" do
    get twitter_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_twitter_post_url
    assert_response :success
  end

  test "should create twitter_post" do
    assert_difference('TwitterPost.count') do
      post twitter_posts_url, params: { twitter_post: { content: @twitter_post.content, kind: @twitter_post.kind, picture: @twitter_post.picture } }
    end

    assert_redirected_to twitter_post_url(TwitterPost.last)
  end

  test "should show twitter_post" do
    get twitter_post_url(@twitter_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_twitter_post_url(@twitter_post)
    assert_response :success
  end

  test "should update twitter_post" do
    patch twitter_post_url(@twitter_post), params: { twitter_post: { content: @twitter_post.content, kind: @twitter_post.kind, picture: @twitter_post.picture } }
    assert_redirected_to twitter_post_url(@twitter_post)
  end

  test "should destroy twitter_post" do
    assert_difference('TwitterPost.count', -1) do
      delete twitter_post_url(@twitter_post)
    end

    assert_redirected_to twitter_posts_url
  end
end
