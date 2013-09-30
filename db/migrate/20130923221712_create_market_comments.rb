class CreateMarketComments < ActiveRecord::Migration
  def change
    create_table :market_comments do |t|
      t.text :comment
      t.integer :status

      t.timestamps
    end
  end
end
