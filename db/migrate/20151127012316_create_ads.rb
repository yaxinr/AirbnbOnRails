class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.references :user, index: true
      t.string :title
      t.text :description
      t.binary :photo
      t.text :facilities
      t.decimal :price, precision: 10, scale: 2
      t.text :address

      t.timestamps
    end
  end
end
