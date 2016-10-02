class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :buss_name
      t.string :street
      t.string :city
      t.string :state_prvnc_cntry
      t.string :zip_postal_cd
      t.string :country

      t.timestamps null: false
    end
  end
end
