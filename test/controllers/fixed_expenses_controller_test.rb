require "test_helper"

class FixedExpensesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/fixed_expenses.json"

    assert_response :success
    assert_template "fixed_expenses/index"
  end
  test "show" do
    get "/fixed_expenses/#{FixedExpense.first.id}.json"
    assert_response :success

    data = JSON.parse(response.body)
    assert_equal ["id", "mortgage", "car_payment", "auto_insurance", "health_insurance", "life_insurance", "home_insurance", "renters_insurance", "dental_insurance", "other_insurance", "subscriptions", "student_loans", "cell_phone", "internet", "other", "created_at", "updated_at"], data.keys
  end
  test "create" do
    assert_difference "FixedExpense.count", 1 do
      post "/fixed_expenses.json", params: { mortgage: 1200.50, car_payment: 400, life_insurance: 300 }
      assert_response :success
    end
  end
  test "update" do
    fixed_expense = FixedExpense.first
    patch "/fixed_expenses/#{fixed_expense.id}.json", params: { mortgage: 1000.69 }
    assert_response :success

    data = JSON.parse(response.body)
    assert_equal "1000.69", data["mortgage"]
  end
  test "destroy" do
    assert_difference "FixedExpense.count", -1 do
      delete "/fixed_expenses/#{FixedExpense.first.id}.json"
      assert_response :success
    end
  end
end
