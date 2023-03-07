const fs = require('fs');
const { arr } = require('./card_list.json');

function setData(data, index) {

	lore = []
	lore.push({
		"text": data.Year,
		"italic": false
	})
	descArr = data.Description.split('\n')
	for (j=0;j<descArr.length;j++) {
		lore.push({
			"text": descArr[j],
			"italic": false
		})
	}
	lore.push({
		"text": data.Card,
		"italic": false,
		"color": `${data.Card.endsWith('Silver') ? "#878E9F" : data.Card.endsWith('Gold') ? "#FFD700" : data.Card.endsWith('Bronze') ? "#CD7F32" : "#FFFFFF"}`
	})
	
	obj = {
	"pools": [
		{
			"rolls": 1,
			"entries": [
				{
					"type": "minecraft:item",
					"name": "minecraft:paper",
					"functions": [
						{
							"function": "minecraft:set_name",
							"entity": "this",
							"name": {
								"text": data.Name,
								"italic": false
							}
						},
						{
							"function": "minecraft:set_lore",
							"entity": "this",
							"lore": lore,
							"replace": true
						},
						{
							"function": "minecraft:set_nbt",
							"tag": `{CustomModelData:${data.Card.endsWith('Silver') ? 10001 : data.Card.endsWith('Gold') ? 10002 : data.Card.endsWith('Bronze') ? 10003 : data.Card.endsWith('Cards') ? 10004 : 10000 },WizardCard:1b,${data.Name.toLowerCase().replace(/ /g, "_")}:1b}`
            			}
					]
				}
			]
		}
	]
}
	return JSON.stringify(obj, null, 4);
}

let index = 11000
for (i = 0; i < arr.length; i++) {
	index++;
	console.log(`Writing ${arr[i].Name.toLowerCase().replace(/ /g, "_")}.json`)
	fs.writeFile(`../../../loot_tables/frog_card/${arr[i].Name.toLowerCase().replace(/ /g, "_")}.json`, setData(arr[i], index), err => {
		if (err) {
			console.error(err);
		}
	});
}