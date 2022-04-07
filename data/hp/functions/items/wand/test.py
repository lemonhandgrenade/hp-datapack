woodArr = [
	"Acacia",
	"Alder",
	"Apple",
	"Ash",
	"Aspen",
	"Beech",
	"Birch",
	"Blackthorn",
	"Black Walnut",
	"Cedar",
	"Cherry",
	"Chestnut",
	"Cypress",
	"Dogwood",
	"Ebony",
	"Elder",
	"Elm",
	"English oak",
	"Fir",
	"Hawthorn",
	"Hazel",
	"Holly",
	"Hornbeam",
	"Ivy",
	"Larch",
	"Laurel",
	"Mahogany",
	"Maple",
	"Pear",
	"Pine",
	"Poplar",
	"Prickly ash",
	"Red oak",
	"Redwood",
	"Reed",
	"Rosewood",
	"Rowan",
	"Silver lime",
	"Spruce",
	"Sugar Maple",
	"Swamp mayhaw",
	"Sycamore",
	"Tamarack",
	"Vine",
	"Walnut",
	"Willow",
	"Yew"
]

for x in range(len(woodArr)):
	f = open(woodArr[x].lower().replace(" ", "_") + ".mcfunction", "w")
	f.write(
		"give @s stick{display:{Name:'{\"text\":\"Wand\",\"italic\":false}'},CustomModelData:" + str(x+1) + ",Wood:" + str(x+1) + ",WoodName:'{\"text\":\"" + woodArr[x] + "\"}',Wand:1b,Set:0b} 1"
	)
	f.close()

