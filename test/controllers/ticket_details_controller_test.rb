require "test_helper"

class TicketDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get ticket_details_new_url
    assert_response :success
  end
end
