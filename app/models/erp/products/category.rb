module Erp::Products
  class Category < ApplicationRecord
    # Validates
    # Relations
    has_many :products
    belongs_to :creator, class_name: "Erp::User"
    belongs_to :parent, class_name: "Erp::Products::Category", optional: true
    has_many :children, class_name: "Erp::Products::Category", foreign_key: "parent_id"

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

  end
end
