
SMODS.Seal {
	key = 'pipis',
	atlas = 'seal',
	yes_pool_flag = 'nope',
	badge_colour = HEX('00BFFF'),
	pos = { x = 0, y = 0 },
	loc_vars = function(self, info_queue, card)
		return { vars = {} }
	end,
	calculate = function(self, card, context)
		if context.destroy_card == card and context.cardarea == G.play then
			return {
				remove = true
			}
		end
	end
}