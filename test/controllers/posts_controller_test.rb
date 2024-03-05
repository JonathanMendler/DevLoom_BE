require 'test_helper'
require 'date'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/posts.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Post.count, data.length
  end

  test "create" do
    assert_difference "Post.count", 1 do
      post "/posts.json", params: { title: "The Turtle", content: "Lorem Ipsum" }
      assert_response 200
    end

    assert_equal Date.today, Post.last.date, "Date attribute should match the current date"
  end

  test "show" do
    get "/posts/#{Post.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "date", "title", "content", "created_at", "updated_at"], data.keys
  end
  
end
