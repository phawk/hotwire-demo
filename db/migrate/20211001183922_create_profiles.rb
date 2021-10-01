class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name, null: false
      t.string :phone
      t.string :email
      t.string :title
      t.string :team
      t.text :about

      t.timestamps
    end
  end
end
