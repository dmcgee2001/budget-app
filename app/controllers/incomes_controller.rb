class IncomesController < ApplicationController
  before_action :set_income, only: [:show, :update, :destroy]

  def show
    render :show
  end

  def index
    @incomes = Income.all
    render :index
  end

  def create
    @income = Income.new(income_params)

    if @income.save
      render :show
    else
      render json: { errors: @income.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if @income.update(income_params)
      render :show
    else
      render json: { errors: @income.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    if @income.destroy
      render json: { message: "Income removed." }
    else
      render json: { errors: @income.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def set_income
    @income = Income.find_by(id: params[:id])
  end

  def income_params
    params.permit(
      :monthly_salary, :biweekly_salary, :weekly_salary, :rental_properties, :car_rental, :item_sales, :other
    )
  end
end
