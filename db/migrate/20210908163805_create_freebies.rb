class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.string :item_name
      t.integer :value
      t.integer :company_id, foreign_key: true      #DON'T NECESSARILY NEED KEY HERE
      t.integer :dev_id, foreign_key: true
    end
  end
end
