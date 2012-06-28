# This migration comes from spree_addings_for_rodamoto (originally 20120626155819)
class AddMultiplePvpToProducts < ActiveRecord::Migration
  def change
  add_column :spree_variants, :pvp3, :decimal, :precision => 8, :scale => 2
  add_column :spree_variants, :pvp7, :decimal, :precision => 8, :scale => 2
  add_column :spree_variants, :pvp9, :decimal, :precision => 8, :scale => 2
  add_column :spree_variants, :pvp12, :decimal, :precision => 8, :scale => 2
  end
end
