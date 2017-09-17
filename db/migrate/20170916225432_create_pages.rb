class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :body
      t.float :rating, default: 0
      t.integer :up_votes, default: 0
      t.integer :down_votes, default: 0
      t.timestamps
    end
  end
end
