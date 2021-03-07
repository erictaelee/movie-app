class AddEnlgishBoolean < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :english, :boolean, default: true
    add_column :actor, :gender, :string
  end
end
