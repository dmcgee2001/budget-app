class CreateVariableExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :variable_expenses do |t|

      t.timestamps
    end
  end
end
