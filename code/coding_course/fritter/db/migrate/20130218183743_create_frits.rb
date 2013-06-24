class CreateFrits < ActiveRecord::Migration
  def change
    create_table :frits do |t|
      t.text :text
      t.integer :user_id
      t.datetime :publish_date

      t.timestamps
    end
  end
end
