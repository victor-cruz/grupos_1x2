class AddPositionFieldToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :position, :integer
  end
end