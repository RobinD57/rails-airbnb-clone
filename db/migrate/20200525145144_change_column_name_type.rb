class ChangeColumnNameType < ActiveRecord::Migration[6.0]
  def change
    rename_column :listings, :type, :listing_type
  end
end
