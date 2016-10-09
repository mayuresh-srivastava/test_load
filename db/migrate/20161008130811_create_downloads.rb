class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.string :language
      t.boolean :is_prdct_branded
      t.boolean :non_brand
      t.boolean :first_brand
      t.boolean :second_brand
      t.boolean :third_brand
      t.string :visit_name
      t.string :brand_name
      t.boolean :is_downloaded
      t.date :download_date
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
