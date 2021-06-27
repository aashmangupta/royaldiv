class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.references :account
      t.string :name
      t.string :email
      t.string :address
      t.string :city
      t.string :sex
      t.string :cell_phone
      t.boolean :admin
      t.integer :age
      t.integer :zip_code
      t.integer :number_in_family
      t.string :photo
      t.timestamps
    end
  end
end
