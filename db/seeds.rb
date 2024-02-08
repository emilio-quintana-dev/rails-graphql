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
  disabled: true,
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

# ----------------------------
# Margarita Pizza

# <Product id: 10 label: "Margherita Pizza">
margarita_pizza_item = Item.create!(
  identifier: 'margarita-pizza',
  description: 'Our signature pizza with our signature sauce and a blend of mozzarella and provolone cheeses.',
  label: 'Margarita Pizza',
  price: 19.99,
  type: 'product'
)

# <ModifierGroup id: 100 label: "Size">
size_modifier_group = ModifierGroup.create!(
  identifier: 'size',
  label: 'Size',
  selection_required_min: 1,
  selection_required_max: 1
)

# <ItemModifierGroup item_id: 10 modifier_group_id: 100>
ItemModifierGroup.create!(
  item: margarita_pizza_item,
  modifier_group: size_modifier_group
)

# <Component id: 11 label: 10">
ten_inch_pizza_item = Item.create!(
  identifier: '10-inch-pizza',
  description: 'Our signature pizza with our signature sauce and a blend of mozzarella and provolone cheeses.',
  label: "10'",
  type: 'component',
  price: 19.99
)

# <Modifier modifier_group_id: 100 item_id: 12>
Modifier.create!(
  modifier_group: size_modifier_group,
  item: ten_inch_pizza_item,
  display_order: 0,
  default_quantity: 0,
  price_override: nil
)

# <Component id: 12 label: 12">
twelve_inch_pizza_item = Item.create!(
  disabled: true,
  identifier: '12-inch-pizza',
  description: 'Our signature pizza with our signature sauce and a blend of mozzarella and provolone cheeses.',
  label: "12'",
  type: 'component',
  price: 19.99
)

# <Modifier modifier_group_id: 100 item_id: 13>
Modifier.create!(
  modifier_group: size_modifier_group,
  item: twelve_inch_pizza_item,
  display_order: 1,
  default_quantity: 0,
  price_override: nil
)

# <Component id: 13 label: 16">
sixteen_inch_pizza_item = Item.create!(
  identifier: '16-inch-pizza',
  description: 'Our signature pizza with our signature sauce and a blend of mozzarella and provolone cheeses.',
  label: "16'",
  type: 'component',
  price: 19.99
)

# <Modifier modifier_group_id: 100 item_id: 13
Modifier.create!(
  modifier_group: size_modifier_group,
  item: sixteen_inch_pizza_item,
  display_order: 2,
  default_quantity: 0,
  price_override: nil
)

# <ModifierGroup id: 101 label: "Extra Toppings">
extra_toppings_modifier_group = ModifierGroup.create!(
  identifier: 'extra-toppings',
  label: 'Extra Toppings',
  selection_required_min: 1,
  selection_required_max: 1
)

# <ItemModifierGroup item_id: 10 modifier_group_id: 101>
ItemModifierGroup.create!(
  item: margarita_pizza_item,
  modifier_group: extra_toppings_modifier_group
)

# <Component id: 14 label: "Extra cheese">
extra_cheese_pizza_item = Item.create!(
  identifier: 'extra-chesse-pizza',
  description: 'Our signature pizza with our signature sauce and a blend of mozzarella and provolone cheeses.',
  label: 'Extra cheese',
  type: 'component',
  price: 19.99
)

# <Modifier modifier_group_id: 101 item_id: 14>
Modifier.create!(
  modifier_group: extra_toppings_modifier_group,
  item: extra_cheese_pizza_item,
  display_order: 4,
  default_quantity: 0,
  price_override: nil
)

# <Component id: 15 label: "Chilli flakes">
chilli_flakes_pizza_item = Item.create!(
  identifier: 'chilli-flakes-pizza',
  description: 'Our signature pizza with our signature sauce and a blend of mozzarella and provolone cheeses.',
  label: 'Chilli flakes',
  type: 'component',
  price: 19.99
)

# <Modifier modifier_group_id: 101 item_id: 15>
Modifier.create!(
  modifier_group: extra_toppings_modifier_group,
  item: chilli_flakes_pizza_item,
  display_order: 3,
  default_quantity: 0,
  price_override: nil
)

# ----------------------------
# Pepperoni Pizza

# <Product id: 11 label: "Pepperoni Pizza">
pepperoni_pizza_item = Item.create!(
  identifier: 'pepperoni-pizza',
  description: 'Our signature pizza with our signature sauce and a blend of mozzarella and provolone cheeses.',
  label: 'Pepperoni Pizza',
  price: 19.99,
  type: 'product'
)

# <ItemModifierGroup item_id: 11 modifier_group_id: 100 >
# ItemModifierGroup.create!(
#   item: pepperoni_pizza_item,
#   modifier_group: size_modifier_group
# )

# ----------------------------

# Section Items

# Non-configurable items
SectionItem.create!(
  section: section_without_configurable_items,
  item: pepperoni_pizza_item,
  display_order: 1
)

# Configurable items
SectionItem.create!(
  section: section_with_configurable_items,
  item: margarita_pizza_item,
  display_order: 2
)
