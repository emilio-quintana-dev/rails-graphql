menu = Menu.create!(
  identifier: 'pizza-menu',
  label: 'Pizza Menu',
  state: 'active',
  start_date: 1.year.ago,
  end_date: 1.year.from_now
)
section = Section.create!(
  identifier: 'classic-pizzas',
  label: 'Classic Pizzas',
  description: 'Our classic pizzas are made with our signature sauce and a blend of mozzarella and provolone cheeses.',
  display_order: 0
)
menu_section = MenuSection.create!(
  menu:,
  section:
)
item = Item.create!(
  identifier: 'margarita-pizza',
  label: 'Margarita Pizza',
  description: 'Our classic margarita pizza is made with our signature sauce, fresh mozzarella, and fresh basil.',
  price: 19.99,
  type: 'pizza'
)
# section_item = SectionItem.create!(
#   section:,
#   item:,
#   display_order: 0
# )
#
# modifier_group = ModifierGroup.create!(
#   identifier: 'pizza-size',
#   label: '10"',
#   selection_required_min: 1,
#   selection_required_max: 1
# )
#
# modifier = Modifier.create!(
#   modifier_group:,
#   item:,
#   display_order: 0,
#   default_quantity: 0,
#   price_override: nil
# )
# ItemModifierGroup.create!(
#   item:,
#   modifier_group:
# )
