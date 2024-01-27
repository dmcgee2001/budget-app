class AddColumnsToFixedExpenses < ActiveRecord::Migration[7.0]
  def change
    add_column :fixed_expenses, :mortgage, :decimal, :precision => 6, :scale => 2
    add_column :fixed_expenses, :car_payment, :decimal, :precision => 6, :scale => 2
    add_column :fixed_expenses, :auto_insurance, :decimal, :precision => 6, :scale => 2
    add_column :fixed_expenses, :health_insurance, :decimal, :precision => 6, :scale => 2
    add_column :fixed_expenses, :life_insurance, :decimal, :precision => 6, :scale => 2
    add_column :fixed_expenses, :home_insurance, :decimal, :precision => 6, :scale => 2
    add_column :fixed_expenses, :renters_insurance, :decimal, :precision => 6, :scale => 2
    add_column :fixed_expenses, :dental_insurance, :decimal, :precision => 6, :scale => 2
    add_column :fixed_expenses, :other_insurance, :decimal, :precision => 6, :scale => 2
    add_column :fixed_expenses, :subscriptions, :decimal, :precision => 6, :scale => 2
    add_column :fixed_expenses, :student_loans, :decimal, :precision => 6, :scale => 2
    add_column :fixed_expenses, :cell_phone, :decimal, :precision => 6, :scale => 2
    add_column :fixed_expenses, :internet, :decimal, :precision => 6, :scale => 2
    add_column :fixed_expenses, :other, :decimal, :precision => 6, :scale => 2
  end
end
