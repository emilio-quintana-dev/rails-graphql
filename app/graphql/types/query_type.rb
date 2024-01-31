# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Menu Endpoints

    # Get all
    field(
      :menus,
      [Types::MenuType],
      null: true,
      description: 'Endpoint to retrieve all menus'
    )

    def menus
      Menu.all
    end

    # Get one (by ID)
    field(
      :menu,
      Types::MenuType,
      null: true,
      description: 'Endpoint to retrieve a menu'
    ) do
      argument :id, ID, required: true, description: 'ID of the menu'
    end

    def menu(id:)
      Menu.find(id)
    end

    # Section Endpoints

    # Get all
    field(
      :sections,
      [Types::SectionType],
      null: true,
      description: 'Endpoint to retrieve all sections'
    )

    def sections
      Section.all
    end

    # Get one (by ID)
    field(
      :section,
      Types::SectionType,
      null: true,
      description: 'Endpoint to retrieve a section'
    ) do
      argument :id, ID, required: true, description: 'ID of the section'
    end

    def section(id:)
      Section.find(id)
    end

    # Items Endpoints

    # Get all
    field(
      :items,
      [Types::ItemType],
      null: true,
      description: 'Endpoint to retrieve all items'
    )

    def items
      Item.all
    end

    # Get one (by ID)
    field(
      :item,
      Types::ItemType,
      null: true,
      description: 'Endpoint to retrieve an item'
    ) do
      argument :id, ID, required: true, description: 'ID of the item'
    end

    def item(id:)
      Item.find(id)
    end

    # Modifier Groups Endpoints

    # Get all
    field(
      :modifier_groups,
      [Types::ModifierGroupType],
      null: true,
      description: 'Endpoint to retrieve all modifier groups'
    )

    def modifier_groups
      ModifierGroup.all
    end

    # Get one
    field(
      :modifier_group,
      Types::ModifierGroupType,
      null: true,
      description: 'Endpoint to retrieve a modifier group'
    ) do
      argument :id, ID, required: true, description: 'ID of the modifier group'
    end

    def modifier_group(id:)
      ModifierGroup.find(id)
    end

    # Modifiers Endpoints

    # Get all
    field(
      :modifiers,
      [Types::ModifierType],
      null: true,
      description: 'Endpoint to retrieve all modifiers'
    )

    def modifiers
      Modifier.all
    end

    # Get one
    field(
      :modifier,
      Types::ModifierType,
      null: true,
      description: 'Endpoint to retrieve a modifier'
    ) do
      argument :id, ID, required: true, description: 'ID of the modifier'
    end

    def modifier(id:)
      Modifier.find(id)
    end
  end
end
