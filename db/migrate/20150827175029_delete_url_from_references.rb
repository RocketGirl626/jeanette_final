class DeleteUrlFromReferences < ActiveRecord::Migration
  def change
    remove_column :references, :url
  end
end
