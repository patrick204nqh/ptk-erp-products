class AddCategoryToErpProductsProducts < ActiveRecord::Migration[6.1]
  def change
    add_reference :erp_products_products, :category, references: :erp_products_categories, index: true
  end
end
