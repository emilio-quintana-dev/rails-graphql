class AddModifierGroupReferenceToModifiers < ActiveRecord::Migration[7.0]
  def change
    add_column :modifiers, :modifier_group_id, :integer, null: false
  end
end
