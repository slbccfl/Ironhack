class CreateBids < ActiveRecord::Migration[5.0]
  def change
    create_table :bids do |t|
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true
      t.decimal :amount

      t.timestamps
    end
  end
end
