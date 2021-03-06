class CreatePhoneNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :phone_numbers do |t|
      t.integer :user_id
      t.string :phone_number, null: false
      t.string :pin
      t.boolean :verified, default: false

      t.timestamps
    end
  end
end
