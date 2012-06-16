class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :amount, :precision => 17, :scale => 2

      t.timestamps
    end
  end
end
