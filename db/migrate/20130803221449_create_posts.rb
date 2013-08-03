class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :message
      t.string :title

      t.timestamps
    end
  end
end
