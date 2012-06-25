# This migration comes from spree_addings_for_rodamoto (originally 20120607071604)
class AddSpecificFieldsToVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :tire_width_id, :integer
    add_column :spree_variants, :tire_profile_id, :integer
    add_column :spree_variants, :tire_innertube_id, :integer
    add_column :spree_variants, :tire_ic_id, :integer
    add_column :spree_variants, :tire_speed_code_id, :integer
    add_column :spree_variants, :tire_fr_id, :integer
    add_column :spree_variants, :tire_tttl_id, :integer
  end
end
