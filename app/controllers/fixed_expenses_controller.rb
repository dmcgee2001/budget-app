class FixedExpensesController < ApplicationController
  before_action :set_fixed_expense, only: [:show, :update, :destroy]

  def show
    render :show
  end

  def index
    @fixed_expenses = FixedExpense.all
    render :index
  end

  def create
    @fixed_expense = FixedExpense.new(fixed_expense_params)

    if @fixed_expense.save
      redirect_to @fixed_expense, notice: "Fixed expense was successfully created."
    else
      render json: { errors: @fixed_expense.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if @fixed_expense.update(fixed_expense_params)
      render :show
    else
      render json: { errors: @fixed_expense.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    if @fixed_expense.destroy
      render json: { message: "Expense removed." }
    else
      render json: { errors: @fixed_expense.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def set_fixed_expense
    @fixed_expense = FixedExpense.find_by(id: params[:id])
  end

  def fixed_expense_params
    params.permit(
      :mortgage, :car_payment, :auto_insurance, :health_insurance, :life_insurance,
      :home_insurance, :renters_insurance, :dental_insurance, :other_insurance,
      :subscriptions, :student_loans, :cell_phone, :internet, :other
    )
  end
end
