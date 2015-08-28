class DropReferencesTable < ActiveRecord::Migration
  def change
    drop_table :references
  end
end
