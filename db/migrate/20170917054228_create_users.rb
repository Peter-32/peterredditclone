class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :email
      t.string :username
      t.string :password
      t.string :status
      t.timestamps
    end
  end
end