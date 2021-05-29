class UpdateNameFieldOnUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :namee, :name
  end
end
