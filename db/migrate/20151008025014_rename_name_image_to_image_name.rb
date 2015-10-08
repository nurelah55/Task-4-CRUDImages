class RenameNameImageToImageName < ActiveRecord::Migration
  def change
    rename_column :images, :name_image, :image_name
  end
end
