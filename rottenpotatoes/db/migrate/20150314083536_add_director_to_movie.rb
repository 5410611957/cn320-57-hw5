#Thotsawat Fukiatisut  5410611957
#Supanut Supamitgijja  5410610728

class AddDirectorToMovie < ActiveRecord::Migration
  def change
      add_column :movies, :director, :string  #add attribute director
  end
end
