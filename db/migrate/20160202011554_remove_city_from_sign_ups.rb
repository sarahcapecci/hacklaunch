class RemoveCityFromSignUps < ActiveRecord::Migration
  def change
  	remove_column :sign_ups, :city, :string
  end
end
