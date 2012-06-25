# This migration comes from spree_addings_for_rodamoto (originally 20120607073314)
class CreateSpreeTireIcs < ActiveRecord::Migration
  def change
    create_table :spree_tire_ics do |t|
      t.string :name

      t.timestamps
    end
    file = "#{Rails.root}/db/datas/ics.csv"
    CSV.foreach(file, :col_sep =>',') do |row|
      Spree::TireIc.create(:name => row[0])
    end 
  end
end
