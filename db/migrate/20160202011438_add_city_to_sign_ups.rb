class AddCityToSignUps < ActiveRecord::Migration
  def change
    add_column :sign_ups, :city, :string
  end
end
