class AddDobToSetup < ActiveRecord::Migration[5.1]
  def change
    add_column :setups, :dob, :integer
  end
end
