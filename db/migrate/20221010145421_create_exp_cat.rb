class CreateExpCat < ActiveRecord::Migration[7.0]
  def change
    create_table :exp_cats do |t|
      t.references :expenses, null: false, foreign_key: true
      t.references :categories, null: false, foreign_key: true

      t.timestamps
    end
  end
end
