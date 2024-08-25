local starArmor = table.deepcopy(data.raw["armor"]["heavy-armor"])

starArmor.name = "star-armor"
starArmor.icons = {
  {
    icon = starArmor.icon,
    icon_size = starArmor.icon_size,
    tint = {r=1,g=0,b=0,a=0.3}
  }
}

starArmor.resistances = {
  {
    type = "physical",
    decrease = 6,
    percent = 10
  },
  {
    type = "explosion",
    decrease = 10,
    percent = 50
  },
  {
    type = "acid",
    decrease = 5,
    percent = 30
  },
  {
    type = "fire",
    decrease = 0,
    percent = 100
  }
}

local recipe = {
  type = "recipe",
  name = "star-armor",
  enabled = true,
  energy_required = 10,
  ingredients = {{"processing-unit", 100}, {"steel-plate", 30}, {"solar-panel", 10}},
  result = "star-armor"
}

data:extend{starArmor, recipe}