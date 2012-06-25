# This migration comes from spree_cycle (originally 20111107145838)
class CreateCycleImages < ActiveRecord::Migration
  def change
    create_table :spree_cycle_images do |t|
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      
      t.string :description
      t.string :link
      
      t.integer :position

      t.timestamps
    end
  end
end
