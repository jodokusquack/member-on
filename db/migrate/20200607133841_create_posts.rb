class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :body
      t.belongs_to :member, foreign_key: true

      t.timestamps
    end
  end
end
