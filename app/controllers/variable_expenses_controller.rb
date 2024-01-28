class VariableExpensesController < ApplicationController
  before_action :set_variable_expense, only: [:show, :update, :destroy]

  def show
    render :show
  end

  def index
    @variable_expenses = VariableExpense.all
    render :index
  end

  def create
    @variable_expense = VariableExpense.new(variable_expense_params)

    if @variable_expense.save
      render :show
    else
      render json: { errors: @variable_expense.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if @variable_expense.update(variable_expense_params)
      render :show
    else
      render json: { errors: @variable_expense.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    if @variable_expense.destroy
      render json: { message: "Expense removed." }
    else
      render json: { errors: @variable_expense.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def set_variable_expense
    @variable_expense = VariableExpense.find_by(id: params[:id])
  end

  def variable_expense_params
    params.permit(
      :groceries, :gas, :eating_out, :personal_care, :utilities, :entertainment, :auto_maintenance, :property_maintenance, :other
    )
  end
end
