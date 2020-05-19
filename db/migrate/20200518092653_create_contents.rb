class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.date :time
      t.string :detail
      t.integer :yen
      t.string :buy_or_sell
      t.integer :user_id

      t.timestamps
    end
  end
end
