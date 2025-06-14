
SMODS.current_mod.optional_features = function()
    return {
        post_trigger = true,
    }
end

SMODS.Atlas {
	key = "scrut",
	path = "scrut.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "mpreg",
	path = "mpreg.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "seal",
	path = "seal.png",
	px = 71,
	py = 95
}

SMODS.load_file("content/scrut.lua")()
SMODS.load_file("content/mpreg.lua")()
SMODS.load_file("content/pipis.lua")()
SMODS.load_file("content/rules.lua")()

