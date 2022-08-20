require "application_system_test_case"

class TwitterPostsTest < ApplicationSystemTestCase
  setup do
    @twitter_post = twitter_posts(:one)
  end

  test "visiting the index" do
    visit twitter_posts_url
    assert_selector "h1", text: "Twitter Posts"
  end

  test "creating a Twitter post" do
    visit twitter_posts_url
    click_on "New Twitter Post"

    fill_in "Content", with: @twitter_post.content
    fill_in "Kind", with: @twitter_post.kind
    fill_in "Picture", with: @twitter_post.picture
    click_on "Create Twitter post"

    assert_text "Twitter post was successfully created"
    click_on "Back"
  end

  test "updating a Twitter post" do
    visit twitter_posts_url
    click_on "Edit", match: :first

    fill_in "Content", with: @twitter_post.content
    fill_in "Kind", with: @twitter_post.kind
    fill_in "Picture", with: @twitter_post.picture
    click_on "Update Twitter post"

    assert_text "Twitter post was successfully updated"
    click_on "Back"
  end

  test "destroying a Twitter post" do
    visit twitter_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Twitter post was successfully destroyed"
  end
end
