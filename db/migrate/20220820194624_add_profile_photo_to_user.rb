class AddProfilePhotoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profile_photo, :string, default: "default_profile_img.png"
  end
end
