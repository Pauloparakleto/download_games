class AddZipFileToRoms < ActiveRecord::Migration[6.0]
  def change
    add_column :roms, :zip_file_link, :string
  end
end
