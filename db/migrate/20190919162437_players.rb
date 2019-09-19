class Players < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :firstname
      t.string :lastname
      t.references :team
    end
  end
end
