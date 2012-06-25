# This migration comes from spree_addings_for_rodamoto (originally 20120607073132)
class CreateSpreeTireWidths < ActiveRecord::Migration
  def change
    create_table :spree_tire_widths do |t|
      t.string :name

      t.timestamps
    end
    file = "#{Rails.root}/db/datas/anchos.csv"
    CSV.foreach(file, :col_sep =>',') do |row|
      Spree::TireWidth.create(:name => row[0])
    end    
  end
end
