# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :test_field,
          String,
          null: false,
          description: 'A field that returns the input string' do
      argument :input_string, String, required: true
    end

    def test_field(input_string:)
      input_string
    end

    # Menu Mutations

    # Create a new menu

    field :create_menu, Types::MenuType, null: false, description: 'Create a new menu' do
      argument :identifier, String
      argument :label, String
      argument :state, String
      argument :start_date, GraphQL::Types::ISO8601Date
      argument :end_date, GraphQL::Types::ISO8601Date
    end

    def create_menu(identifier:, label:, state:, start_date:, end_date:)
      Menu.create!(
        identifier:,
        label:,
        state:,
        start_date:,
        end_date:
      )
    end

    # Update a menu

    field :update_menu, Types::MenuType, null: false, description: 'Update a menu' do
      argument :id, ID, required: true
      argument :identifier, String, required: false
      argument :label, String, required: false
      argument :state, String, required: false
      argument :start_date, GraphQL::Types::ISO8601Date, required: false
      argument :end_date, GraphQL::Types::ISO8601Date, required: false
    end

    def update_menu(id:, identifier: nil, label: nil, state: nil, start_date: nil, end_date: nil)
      menu = Menu.find(id)
      update_params = {}
      update_params[:identifier] = identifier if identifier
      update_params[:label] = label if label
      update_params[:state] = state if state
      update_params[:start_date] = start_date if start_date
      update_params[:end_date] = end_date if end_date

      menu.update!(update_params)
      menu
    end

    # Delete a menu

    field :delete_menu, Types::MenuType, null: false, description: 'Delete a menu' do
      argument :id, ID, required: true
    end

    def delete_menu(id:)
      menu = Menu.find(id)

      menu.destroy!

      menu
    end

    # Section Mutations

    # Create a new section

    field :create_section, Types::SectionType, null: false, description: 'Create a new section' do
      argument :identifier, String, required: true
      argument :label, String
      argument :description, String
      argument :display_order, Integer
    end

    def create_section(identifier:, label:, description:, display_order:)
      Section.create!(
        identifier:,
        label:,
        description:,
        display_order:
      )
    end

    # Update a section

    field :update_section, Types::SectionType, null: false, description: 'Update a section' do
      argument :id, ID, required: true
      argument :identifier, String, required: false
      argument :label, String, required: false
      argument :description, String, required: false
      argument :display_order, Integer, required: false
    end

    def update_section(id:, identifier: nil, label: nil, description: nil, display_order: nil)
      section = Section.find(id)
      update_params = {}
      update_params[:identifier] = identifier if identifier
      update_params[:label] = label if label
      update_params[:description] = description if description
      update_params[:display_order] = display_order if display_order

      section.update!(update_params)
      section
    end

    # Delete a section

    field :delete_section, Types::SectionType, null: false, description: 'Delete a section' do
      argument :id, ID, required: true
    end

    def delete_section(id:)
      section = Section.find(id)

      section.destroy!

      section
    end

    # Item Mutations

    # Create a new item

    field :create_item, Types::ItemType, null: false, description: 'Create a new item' do
      argument :identifier, String, required: true
      argument :label, String, required: true
      argument :type, String, required: true
      argument :description, String
      argument :price, Float, required: true
    end

    def create_item(identifier:, label:, type:, description:, price:)
      Item.create!(
        identifier:,
        label:,
        type:,
        description:,
        price:
      )
    end

    # Update an item

    field :update_item, Types::ItemType, null: false, description: 'Update an item' do
      argument :id, ID, required: true
      argument :identifier, String, required: false
      argument :label, String, required: false
      argument :type, String, required: false
      argument :description, String, required: false
      argument :price, Float, required: false
    end

    def update_item(id:, identifier: nil, label: nil, type: nil, description: nil, price: nil)
      item = Item.find(id)
      update_params = {}
      update_params[:identifier] = identifier if identifier
      update_params[:label] = label if label
      update_params[:type] = type if type
      update_params[:description] = description if description
      update_params[:price] = price if price

      item.update!(update_params)
      item
    end

    # Delete an item

    field :delete_item, Types::ItemType, null: false, description: 'Delete an item' do
      argument :id, ID, required: true
    end

    def delete_item(id:)
      item = Item.find(id)

      item.destroy!

      item
    end

    # Modifier Mutations

    # Create a new modifier

    field :create_modifier, Types::ModifierType, null: false, description: 'Create a new modifier' do
      argument :item_id, Integer, required: true
      argument :modifier_group_id, Integer, required: true
      argument :display_order, Integer, required: false
      argument :default_quantity, Integer, required: false
      argument :price_override, Float, required: false
    end

    def create_modifier(item_id:, modifier_group_id:, display_order:, default_quantity:, price_override:)
      Modifier.create!(
        item_id:,
        modifier_group_id:,
        display_order:,
        default_quantity:,
        price_override:
      )
    end

    # Update a modifier

    field :update_modifier, Types::ModifierType, null: false, description: 'Update a modifier' do
      argument :id, ID, required: true
      argument :item_id, Integer, required: false
      argument :modifier_group_id, Integer, required: false
      argument :display_order, Integer, required: false
      argument :default_quantity, Integer, required: false
      argument :price_override, Float, required: false
    end

    def update_modifier(id:, item_id: nil, modifier_group_id: nil, display_order: nil, default_quantity: nil, price_override: nil)
      modifier = Modifier.find(id)
      update_params = {}
      update_params[:item_id] = item_id if item_id
      update_params[:modifier_group_id] = modifier_group_id if modifier_group_id
      update_params[:display_order] = display_order if display_order
      update_params[:default_quantity] = default_quantity if default_quantity
      update_params[:price_override] = price_override if price_override

      modifier.update!(update_params)
      modifier
    end

    # Delete a modifier

    field :delete_modifier, Types::ModifierType, null: false, description: 'Delete a modifier' do
      argument :id, ID, required: true
    end

    def delete_modifier(id:)
      modifier = Modifier.find(id)

      modifier.destroy!

      modifier
    end

    # Modifier Group Mutations

    # Create a new modifier group

    field :create_modifier_group, Types::ModifierGroupType, null: false, description: 'Create a new modifier group' do
      argument :identifier, String, required: true
      argument :label, String, required: true
      argument :selection_required_min, Integer, required: true
      argument :selection_required_max, Integer, required: true
    end

    def create_modifier_group(identifier:, label:, selection_required_min:, selection_required_max:)
      ModifierGroup.create!(
        identifier:,
        label:,
        selection_required_min:,
        selection_required_max:
      )
    end

    # Update a modifier group

    field :update_modifier_group, Types::ModifierGroupType, null: false, description: 'Update a modifier group' do
      argument :id, ID, required: true
      argument :identifier, String, required: false
      argument :label, String, required: false
      argument :selection_required_min, Integer, required: false
      argument :selection_required_max, Integer, required: false
    end

    def update_modifier_group(id:, identifier: nil, label: nil, selection_required_min: nil, selection_required_max: nil)
      modifier_group = ModifierGroup.find(id)
      update_params = {}
      update_params[:identifier] = identifier if identifier
      update_params[:label] = label if label
      update_params[:selection_required_min] = selection_required_min if selection_required_min
      update_params[:selection_required_max] = selection_required_max if selection_required_max

      modifier_group.update!(update_params)
      modifier_group
    end

    # Delete a modifier

    field :delete_modifier_group, Types::ModifierGroupType, null: false, description: 'Delete a modifier group' do
      argument :id, ID, required: true
    end

    def delete_modifier_group(id:)
      modifier_group = ModifierGroup.find(id)

      modifier_group.destroy!

      modifier_group
    end
  end
end
