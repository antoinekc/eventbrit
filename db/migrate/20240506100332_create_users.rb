class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, default: ""
      t.string :first_name
      t.string :last_name
      t.text :description
      t.string :encrypted_password, null: false, default: ""
      t.timestamps
    end
  end

  def change
    add_reference :events, :user, foreign_key: true
  end

end
