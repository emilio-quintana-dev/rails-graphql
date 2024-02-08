# frozen_string_literal: true

module Types
  class ItemType < Types::BaseObject
    field :id, ID, null: false
    field :type, String
    field :identifier, String
    field :label, String
    field :description, String
    field :price, Float
    field :disabled, Boolean, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :section_item, Types::SectionItemType, null: false
    field :modifier, Types::ModifierType
    field :modifier_groups, [Types::ModifierGroupType], null: false
    field :modifiers, [Types::ModifierType]
    field :items, [Types::ItemType]
  end
end
