class AddDirectorToMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :director, :string
    # add_column :actor, :gender, :string #<--- is this acceptable?

  end
end
