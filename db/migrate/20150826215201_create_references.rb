class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.column :name, :string
      t.column :title, :string
      t.column :company, :string
      t.column :email, :string
      
      t.timestamps
    end
  end
end
