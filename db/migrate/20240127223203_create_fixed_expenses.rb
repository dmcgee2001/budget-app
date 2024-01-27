class CreateFixedExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :fixed_expenses do |t|

      t.timestamps
    end
  end
end
