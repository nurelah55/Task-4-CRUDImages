class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.string :name_image

      t.timestamps
    end
  end
end
