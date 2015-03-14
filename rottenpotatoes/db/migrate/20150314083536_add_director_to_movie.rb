class AddDirectorToMovie < ActiveRecord::Migration
  def change
      add_column :movies, :director, :string  #add attribute director
  end
end
