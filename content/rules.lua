
SMODS.Joker {
	key = 'rules',
	rarity = 3,
	atlas = 'mpreg',
	pos = { x = 2, y = 0 },
	soul_pos = { x = 3, y = 0 },
	cost = 10,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	config = { extra = { odds = 2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.odds, G.GAME.probabilities.normal } }
	end,
	calculate = function(self, card, context)
        local other_joker = nil
		local another_joker = nil
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i] == card then 
				other_joker = G.jokers.cards[i + 1]
				another_joker = G.jokers.cards[i - 1]
			end
		end
		if pseudorandom('other') < G.GAME.probabilities.normal / card.ability.extra.odds then
        	return SMODS.blueprint_effect(card, other_joker, context)
		end
		if pseudorandom('another') < G.GAME.probabilities.normal / card.ability.extra.odds then
			return SMODS.blueprint_effect(card, another_joker, context)
		end
    end,
}
