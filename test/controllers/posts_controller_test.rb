require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @post = Post.create(title: "Another Post", description: "Another Post Description")
  end
  
  test "should get show with setup" do
    get post_url(@post)
    assert_response :success
    assert_equal 200, response.status 
    assert_equal "text/html", response.media_type 
    assert_equal "utf-8", response.charset
  end

