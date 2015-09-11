class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product
      t.references :user, index: true
      t.integer :amount

      t.timestamps
    end
  end
end
