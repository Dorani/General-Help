class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :user_name
      t.string :class_type
      t.string :level
      t.string :comment

      t.timestamps null: false
    end
  end
end
