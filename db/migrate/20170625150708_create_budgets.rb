class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.references :user, index: true, null: false
      t.references :category, index: true, null: false
      t.references :currency, index: true, null: false
      t.decimal :limit, null: false, precision: 10, scale: 2

      t.timestamps null: false
    end
  end
end
