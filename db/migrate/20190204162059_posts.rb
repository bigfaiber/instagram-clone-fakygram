class Posts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |p|
      p.float :user_id
      p.string :image_url
  end
end
end
