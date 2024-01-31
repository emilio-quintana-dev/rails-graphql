# frozen_string_literal: true

module Types
  class ItemType < Types::BaseObject
    field :id, ID, null: false
    field :type, String
    field :identifier, String
    field :label, String
    field :description, String
    field :price, Float
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :section_items, [Types::SectionItemType], null: false
    field :modifiers, [Types::ModifierType], null: false
    field :direct_modifier_groups, [Types::ModifierGroupType], null: false, method: :direct_modifier_groups
    field :indirect_modifier_groups, [Types::ModifierGroupType], null: false, method: :indirect_modifier_groups
  end
end
