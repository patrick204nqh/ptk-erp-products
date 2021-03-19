class CreateErpProductsProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :erp_products_products do |t|
      t.boolean :archived, default: false
      t.string :sku
      t.string :barcode
      t.string :name
      t.string :short_description
      t.text :long_description
      t.text :meta_keywords
      t.text :meta_description
      t.string :color
      t.string :size
      t.decimal :weight, default: 0.0
      t.decimal :volume, default: 0.0
      t.decimal :cost, default: 0.0
      t.decimal :price, default: 1.0
      t.decimal :deal_price
      t.integer :deal_percent
      t.boolean :is_new, default: false
      t.boolean :is_deal, default: false
      t.boolean :is_bestseller, default: false
      t.boolean :is_business_choices, default: false
      t.boolean :is_top_business_choices, default: false
      t.boolean :is_sold_out, default: false
      t.boolean :is_stock_inventory, default: false
      t.datetime :deal_from_date
      t.datetime :deal_to_date
      t.boolean :can_be_sold, default: true
      t.boolean :can_be_purchased, default: true
      t.decimal :stock_min
      t.decimal :stock_max
      t.text :note

      t.timestamps
    end
  end
end
