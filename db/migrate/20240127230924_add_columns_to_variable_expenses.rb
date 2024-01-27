class AddColumnsToVariableExpenses < ActiveRecord::Migration[7.0]
  def change
    add_column :variable_expenses, :groceries, :decimal, :precision => 7, :scale => 2
    add_column :variable_expenses, :gas, :decimal, :precision => 7, :scale => 2
    add_column :variable_expenses, :eating_out, :decimal, :precision => 7, :scale => 2
    add_column :variable_expenses, :personal_care, :decimal, :precision => 7, :scale => 2
    add_column :variable_expenses, :utilities, :decimal, :precision => 7, :scale => 2
    add_column :variable_expenses, :entertainment, :decimal, :precision => 7, :scale => 2
    add_column :variable_expenses, :auto_maintenance, :decimal, :precision => 7, :scale => 2
    add_column :variable_expenses, :property_maintenance, :decimal, :precision => 7, :scale => 2
    add_column :variable_expenses, :other, :decimal, :precision => 7, :scale => 2
  end
end
