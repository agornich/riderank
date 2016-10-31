class CreateTaxiproviders < ActiveRecord::Migration
  def change
    create_table :taxiproviders do |t|
        t.string :taxiprovider_name
        t.timestamps null: false
    end
  end
end
