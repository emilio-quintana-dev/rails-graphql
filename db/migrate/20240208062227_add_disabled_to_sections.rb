class AddDisabledToSections < ActiveRecord::Migration[7.0]
  def change
    add_column :sections, :disabled, :boolean, default: false
  end
end
