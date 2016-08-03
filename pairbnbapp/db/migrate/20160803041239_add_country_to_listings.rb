class AddCountryToListings < ActiveRecord::Migration
  def change
    add_column :listings, :country_code, :string
  end
end
