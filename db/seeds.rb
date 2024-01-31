# Menus
menu = Menu.create!(
  identifier: 'pizza-menu',
  label: 'Pizza Menu',
  state: 'active',
  start_date: 1.year.ago,
  end_date: 1.year.from_now
)

# Sections
section_without_configurable_items = Section.create!(
  identifier: 'classic-pizzas',
  label: 'Classic Pizzas',
  description: 'Our classic pizzas are made with our signature sauce and a blend of mozzarella and provolone cheeses.',
  display_order: 0
)
section_with_configurable_items = Section.create!(
  identifier: 'signature-pizzas',
  label: 'Signature Pizzas',
  description: 'Our signature pizzas are made with our signature sauce and a blend of mozzarella and provolone cheeses.',
  display_order: 1
)

# Menu Sections
MenuSection.create!(
  menu:,
  section: section_without_configurable_items
)
MenuSection.create!(
  menu:,
  section: section_with_configurable_items
)

# Items
margarita_pizza_item = Item.create!(
  identifier: 'margarita-pizza',
  label: 'Margarita Pizza',
  price: 19.99,
  type: 'product'
)

pepperoni_pizza_item = Item.create!(
  identifier: 'pepperoni-pizza',
  label: 'Pepperoni Pizza',
  price: 19.99,
  type: 'product'
)
extra_large_pepperoni_pizza_item = Item.create!(
  identifier: 'extra-large-pepperoni-pizza',
  label: 'Extra Large Pepperoni Pizza',
  price: 29.99,
  type: 'component'
)

# Section Items

# Non-configurable items
SectionItem.create!(
  section: section_without_configurable_items,
  item: margarita_pizza_item,
  display_order: 0
)

# Configurable items
SectionItem.create!(
  section: section_with_configurable_items,
  item: pepperoni_pizza_item,
  display_order: 0
)
SectionItem.create!(
  section: section_with_configurable_items,
  item: extra_large_pepperoni_pizza_item,
  display_order: 0
)

# Modifier Groups
pizza_size_modifier_group = ModifierGroup.create!(
  identifier: 'pizza-size',
  label: 'Pizza Size',
  selection_required_min: 1,
  selection_required_max: 1
)

# Modifiers
modifier = Modifier.create!(
  modifier_group: pizza_size_modifier_group,
  item: extra_large_pepperoni_pizza_item,
  display_order: 0,
  default_quantity: 0,
  price_override: nil
)

# Item Modifier Groups
ItemModifierGroup.create!(
  item: pepperoni_pizza_item,
  modifier_group: pizza_size_modifier_group
)
