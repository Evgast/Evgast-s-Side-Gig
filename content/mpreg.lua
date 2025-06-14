
SMODS.Joker {
	key = 'mpreg',
	rarity = 2,
	atlas = 'mpreg',
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 6,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,
	config = { extra = { mpreg_rounds = 0, total_rounds = 3 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mpreg_rounds, card.ability.extra.total_rounds, card.ability.extra.h_size } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.main_eval and not context.blueprint then
            card.ability.extra.mpreg_rounds = card.ability.extra.mpreg_rounds + 1
			if card.ability.extra.mpreg_rounds == card.ability.extra.total_rounds then
                local eval = function(card) return not card.REMOVED end
                juice_card_until(card, eval, true)
			end
			return {
				message = "" .. card.ability.extra.mpreg_rounds
			}
		end
		if context.selling_self and (card.ability.extra.mpreg_rounds >= card.ability.extra.total_rounds) and not context.blueprint then
			SMODS.add_card({set = "Joker", rarity = "Rare"})
		end
	end
}
