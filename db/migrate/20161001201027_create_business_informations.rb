class CreateBusinessInformations < ActiveRecord::Migration[5.0]
  def change
    create_table :business_informations do |t|
      t.boolean :is_vet
      t.boolean :is_vet_tech_nurse
      t.boolean :is_rsrchr
      t.string :best_desc_wrkplc
      t.string :how_load_be_used
      t.string :how_hear_abt_load
      t.boolean :terms_condtn
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
