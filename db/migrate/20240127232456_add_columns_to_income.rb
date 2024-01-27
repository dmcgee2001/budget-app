class AddColumnsToIncome < ActiveRecord::Migration[7.0]
  def change
    add_column :incomes, :monthly_salary, :decimal, :precision => 7, :scale => 2
    add_column :incomes, :biweekly_salary, :decimal, :precision => 7, :scale => 2
    add_column :incomes, :weekly_salary, :decimal, :precision => 7, :scale => 2
    add_column :incomes, :rental_properties, :decimal, :precision => 7, :scale => 2
    add_column :incomes, :car_rental, :decimal, :precision => 7, :scale => 2
    add_column :incomes, :item_sales, :decimal, :precision => 7, :scale => 2
    add_column :incomes, :other, :decimal, :precision => 7, :scale => 2
  end
end
