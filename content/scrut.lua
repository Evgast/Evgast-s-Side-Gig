local scoopies = { "c_scrut_scoopy", "c_scrut_scoopy1", "c_scrut_scoopy2", "c_scrut_scoopy3", "c_scrut_scoopy4" }


SMODS.ConsumableType{
    key = "scoop",
    primary_colour = HEX("638fe1"), 
    secondary_colour = HEX("638fe1"), 
    loc_txt = {
        name = "Scoopies",
        collection = "Scoopies",
        undiscovered = {
            name = "???",
            text = {
                'You have to go run around the world',
				'and collect {C:attention}"Scoopies"{}!'
            }
        }
    },
    collection_rows = { 5, 1 },
    shop_rate = 0
}

SMODS.Consumable {
	key = 'scoopy',
	set = 'scoop',
	atlas = "scrut",
	pos = { x = 1, y = 0 },
	cost = 0,
	loc_vars = function(self, info_queue, card)
	end,
	can_use = function(self, card)
			if #G.hand.highlighted == 999999999 then
			return true else return false
		end
	end
}

SMODS.Consumable {
	key = 'scoopy1',
	set = 'scoop',
	atlas = "scrut",
	pos = { x = 2, y = 0 },
	cost = 0,
	loc_vars = function(self, info_queue, card)
	end,
	can_use = function(self, card)
			if #G.hand.highlighted == 999999999 then
			return true else return false
		end
	end
}

SMODS.Consumable {
	key = 'scoopy2',
	set = 'scoop',
	atlas = "scrut",
	pos = { x = 3, y = 0 },
	cost = 0,
	loc_vars = function(self, info_queue, card)
	end,
	can_use = function(self, card)
			if #G.hand.highlighted == 999999999 then
			return true else return false
		end
	end
}

SMODS.Consumable {
	key = 'scoopy3',
	set = 'scoop',
	atlas = "scrut",
	pos = { x = 4, y = 0 },
	cost = 0,
	loc_vars = function(self, info_queue, card)
	end,
	can_use = function(self, card)
			if #G.hand.highlighted == 999999999 then
			return true else return false
		end
	end
}

SMODS.Consumable {
	key = 'scoopy4',
	set = 'scoop',
	atlas = "scrut",
	pos = { x = 5, y = 0 },
	cost = 0,
	loc_vars = function(self, info_queue, card)
	end,
	can_use = function(self, card)
			if #G.hand.highlighted == 999999999 then
			return true else return false
		end
	end
}

SMODS.Joker {
	key = 'scrut',
	loc_txt = {
		name = "Scrut'nhaus'r",
		text = {
			"Create a {C:attention}Scoopy{} at the",
            "start of the round",
		}
	},
	rarity = 2,
	atlas = 'scrut',
	pos = { x = 0, y = 0 },
	cost = 5,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	config = { extra = { x_mult = 3, check = 0 } },
	loc_vars = function(self, info_queue, card)
	end,
	calculate = function(self, card, context)
		local scoopmeup = pseudorandom_element(scoopies, scrutnseed)
		if context.setting_blind and (#G.consumeables.cards < G.consumeables.config.card_limit) then
			SMODS.add_card { key = scoopmeup }
		end
	end
}

local set_cost_ref = Card.set_cost
function Card:set_cost()
    set_cost_ref(self)
    if self.config.center.key == "c_scrut_scoopy" then
       self.sell_cost = 2
    end
	if self.config.center.key == "c_scrut_scoopy1" then
       self.sell_cost = 3
	end
	if self.config.center.key == "c_scrut_scoopy2" then
       self.sell_cost = 4
	end
	if self.config.center.key == "c_scrut_scoopy3" then
       self.sell_cost = 5
	end
	if self.config.center.key == "c_scrut_scoopy4" then
       self.sell_cost = 6
	end
end
