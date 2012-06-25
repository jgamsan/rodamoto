# This migration comes from spree_addings_for_rodamoto (originally 20120607073224)
class CreateSpreeTireProfiles < ActiveRecord::Migration
  def change
    create_table :spree_tire_profiles do |t|
      t.string :name

      t.timestamps
    end
    file = "#{Rails.root}/db/datas/perfiles.csv"
    CSV.foreach(file, :col_sep =>',') do |row|
      Spree::TireProfile.create(:name => row[0])
    end 
  end
end
