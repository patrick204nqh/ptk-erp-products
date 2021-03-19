module Erp::Products
  class Product < ApplicationRecord
    # Validates
    # Relations
    belongs_to :creator, class_name: "Erp::User"
    belongs_to :category

    # Set archive
    def archive
			update_columns(archived: true)
		end

		def unarchive
			update_columns(archived: false)
		end

    def self.archive_all
			update_all(archived: true)
		end

    def self.unarchive_all
			update_all(archived: false)
		end

    # Set bestseller
    def check_is_bestseller
			update_columns(is_bestseller: true)
		end

    def uncheck_is_bestseller
			update_columns(is_bestseller: false)
		end

    def self.check_is_bestseller_all
			update_all(is_bestseller: true)
		end

    def self.uncheck_is_bestseller_all
			update_all(is_bestseller: false)
		end

    # Set is sold out
    def check_is_sold_out
			update_columns(is_sold_out: true)

			if Erp::Core.available?("online_store")
        self.hkerp_set_sold_out
      end
		end

    def uncheck_is_sold_out
			update_columns(is_sold_out: false)

			if Erp::Core.available?("online_store")
        self.hkerp_set_sold_out
      end
		end

    def self.check_is_sold_out_all
			update_all(is_sold_out: true)
		end

    def self.uncheck_is_sold_out_all
			update_all(is_sold_out: false)
		end

    # Set is stock inventory
    def check_is_stock_inventory
			update_columns(is_stock_inventory: true)
		end

    def uncheck_is_stock_inventory
			update_columns(is_stock_inventory: false)
		end

    def self.check_is_stock_inventory_all
			update_all(is_stock_inventory: true)
		end

    def self.uncheck_is_stock_inventory_all
			update_all(is_stock_inventory: false)
		end

    # Set is business choices
    def check_is_business_choices
			update_columns(is_business_choices: true)
		end

    def uncheck_is_business_choices
			update_columns(is_business_choices: false)
		end

    def self.check_is_business_choices_all
			update_all(is_business_choices: true)
		end

    def self.uncheck_is_business_choices_all
			update_all(is_business_choices: false)
		end

    # Set is top business choices
    def check_is_top_business_choices
			update_columns(is_top_business_choices: true)
		end

    def uncheck_is_top_business_choices
			update_columns(is_top_business_choices: false)
		end

    def self.check_is_top_business_choices_all
			update_all(is_top_business_choices: true)
		end

    def self.uncheck_is_top_business_choices_all
			update_all(is_top_business_choices: false)
		end

    # Creator name
    def creator_name
			creator.present? ? creator.name : ''
		end

    # Category name
    def category_name
			category.present? ? category.name : ''
		end


  end
end
