# frozen_string_literal: true

module Mutations
  class CreateMenu < BaseMutation
    # Define the input fields required for creating a menu
    # class CreateMenuInput < Types::BaseInputObject
    #   argument :identifier, String, required: true
    #   argument :label, String, required: true
    #   argument :state, String, required: true
    #   argument :start_date, GraphQL::Types::ISO8601Date, required: false
    #   argument :end_date, GraphQL::Types::ISO8601Date, required: false
    # end

    # Define the arguments this mutation accepts
    argument :input, CreateMenuInput, required: true

    # Define the return type
    type Types::MenuType

    # Define the mutation's resolve method
    def resolve(input:)
      # Logic to create a new menu
      Menu.create!(
        identifier: input[:identifier],
        label: input[:label],
        state: input[:state],
        start_date: input[:start_date],
        end_date: input[:end_date]
      )
    end
  end
end
