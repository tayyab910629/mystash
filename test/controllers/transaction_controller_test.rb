require "test_helper"

class TransactionControllerTest < ActionDispatch::IntegrationTest
  test "should get showtrx" do
    get transaction_showtrx_url
    assert_response :success
  end
end
