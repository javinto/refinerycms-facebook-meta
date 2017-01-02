class AddFacebookPropertiesToSeoMeta < ActiveRecord::Migration
  def change
    add_column :seo_meta, :og_title, :string
    add_column :seo_meta, :og_description, :text
    add_column :seo_meta, :og_image_id, :integer
  end
end