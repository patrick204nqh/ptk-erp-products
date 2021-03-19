class AddCreatorToErpProductsProducts < ActiveRecord::Migration[6.1]
  def change
    add_reference :erp_products_products, :creator, references: :erp_users, index: true
  end
end
