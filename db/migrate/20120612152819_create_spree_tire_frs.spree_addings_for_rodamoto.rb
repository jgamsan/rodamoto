# This migration comes from spree_addings_for_rodamoto (originally 20120607073400)
class CreateSpreeTireFrs < ActiveRecord::Migration
  def change
    create_table :spree_tire_frs do |t|
      t.string :name

      t.timestamps
    end
    file = "#{Rails.root}/db/datas/fr.csv"
    CSV.foreach(file, :col_sep =>',') do |row|
      Spree::TireFr.create(:name => row[0])
    end 
  end
end
