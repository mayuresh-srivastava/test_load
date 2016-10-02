class CreateDownloads < ActiveRecord::Migration[5.0]
  def change
    create_table :downloads do |t|
      t.string :language
      t.boolean :is_prdct_branded
      t.boolean :int_vst
      t.boolean :flp_vst
      t.boolean :both
      t.boolean :is_downloaded
      t.date :download_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
