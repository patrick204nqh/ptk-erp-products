class CreateErpProductsCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :erp_products_categories do |t|
      t.string :name
      t.boolean :archived, default: false
      t.text :description

      t.timestamps
    end
  end
end
