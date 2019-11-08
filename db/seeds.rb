# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seeding Rock and Mineral Types into the Type model
types = Type.create([{ name: "Ignous" }, {name: "Sedimentary"}, { name: "Metamorphic"}, {name: "Obsidian"},{ name: "Limestone"}, {name: "Marble"}, { name: "Sandstone"}, {name: "Gneiss"},{ name: "Quartzite"}, {name: "Basalt"}, { name: "Granite"}, {name: "Slate"},{ name: "Schist"}, {name: "Shale"},{ name: "Conglomrate"}, {name: "Rhyolite"},{ name: "Pumice"}, {name: "Chert"}, { name: "Breccia"}, {name: "Andesite"}, { name: "Amethyst"}, {name: "Tigers Eye"}, { name: "Ruby"}, {name: "Emerald"}, { name: "Sapphire"}, {name: "Moonstone"}, { name: "Native Elements (Mineral)"}, {name: "Oxide (Mineral)"}, { name: "Silicates (Mineral)"}, {name: "Sulfides (Mineral)"}, { name: "Sulfates (Mineral)"}, {name: "Carbonates (Mineral)"}, { name: "Phosphates (Mineral)"}])

# Seeding Australian states into the State model used for signing up new users
states = State.create([{ name: "QLD"}, {name: "NT"}, { name: "SA"}, {name: "WA"}, { name: "ACT"}, {name: "TAS"}, { name: "NSW"}, {name: "VIC"}])

# user = User.create

# { name: }, {name: },