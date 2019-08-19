
local function append_all(list, list1)
	for i, v in ipairs(list1) do
		table.insert(list, v)
	end
end

local property = {
}


local filepath = {
}

local header = {
	type = 7,
	name = "beatoraja default (lua)",
	w = 1280,
	h = 720,
	scene = 3600000,
	input = 500,
	fadeout = 500,
	property = property,
	filepath = filepath
}

local function main()

	local skin = {}
	for k, v in pairs(header) do
		skin[k] = v
	end


	skin.source = {
		{id = 0, path = "../system.png"},
		{id = 1, path = "../resultbg.png"},
		{id = 2, path = "../number.png"},
		{id = 3, path = "../clear.png"},
	}
	skin.font = {
		{id = 0, path = "../VL-Gothic-Regular.ttf"}
	}

	skin.image = {
		{id = 0, src = 0, x = 0, y = 0, w = 8, h = 8},
		{id = 1, src = 1, x = 0, y = 0, w = 1280, h = 720},
		{id = 100, src = 3, x = 0, y = 0, w = 200, h = 220, divy = 11, len = 11, ref = 370},
		{id = 101, src = 3, x = 0, y = 0, w = 200, h = 220, divy = 11, len = 11, ref = 371},

		{id = 200, src = 0, x = 0, y = 355, w = 15, h = 15, act = 19},
		{id = 201, src = 0, x = 0, y = 370, w = 15, h = 15, act = 316},
		{id = 202, src = 0, x = 0, y = 385, w = 15, h = 15, act = 317},
		{id = 203, src = 0, x = 0, y = 400, w = 15, h = 15, act = 318},
	}

	skin.imageset = {
	}
	skin.value = {
		{id = 400, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 5, ref = 150},
		{id = 401, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 5, ref = 71},
		{id = 402, src = 2, x = 0, y = 24, w = 288, h = 48, divx = 12, divy = 2, digit = 5, ref = 152},
		{id = 410, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 5, ref = 176},
		{id = 411, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 5, ref = 76},
		{id = 412, src = 2, x = 0, y = 24, w = 288, h = 48, divx = 12, divy = 2, digit = 5, ref = 178},
		{id = 420, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 5, ref = 173},
		{id = 421, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 5, ref = 75},
		{id = 422, src = 2, x = 0, y = 24, w = 288, h = 48, divx = 12, divy = 2, digit = 5, ref = 175},

		{id = 500, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 110},
		{id = 501, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 410},
		{id = 502, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 411},
		{id = 503, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 111},
		{id = 504, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 412},
		{id = 505, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 413},
		{id = 506, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 112},
		{id = 507, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 414},
		{id = 508, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 415},
		{id = 509, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 113},
		{id = 510, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 416},
		{id = 511, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 417},
		{id = 512, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 114},
		{id = 513, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 418},
		{id = 514, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 419},
		{id = 515, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 420},
		{id = 516, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 421},
		{id = 517, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 422},
		{id = 518, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 423},
		{id = 519, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 424},

		{id = 600, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 5, ref = 74},

		{id = 700, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 4, ref = 372},
		{id = 701, src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 2, ref = 373},
		
		{id = "ir_rank", src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 5, ref = 179},
		{id = "ir_total", src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 5, ref = 180},
		{id = "ir_prevrank", src = 2, x = 0, y = 0, w = 240, h = 24, divx = 10, digit = 5, ref = 182},
	}
	skin.text = {
		{id = 1000, font = 0, size = 24, align = 1, ref = 12},
	}
	skin.gaugegraph = {
		{id = 2000}
	}
	skin.judgegraph = {
		{id = 3000, type = 1},
		{id = 3001, type = 2},
	}
	skin.destination = {

		{id = 0, op = {90}, dst = {
			{x = 0, y = 0, w = 1280, h = 720, r = 0, g = 0, b = 64},
		}},
		{id = -100, op = {90}, dst = {
			{x = 0, y = 0, w = 1280, h = 720},
		}},
		{id = 0, op = {91}, dst = {
			{x = 0, y = 0, w = 1280, h = 720, r = 64, g = 0, b = 0},
		}},
		{id = -100, op = {91}, dst = {
			{x = 0, y = 0, w = 1280, h = 720, r = 128, g = 32, b = 32},
		}},

		{id = 1, dst = {
			{x = 0, y = 0, w = 1280, h = 720},
		}},

		{id = 500, dst = {{x = 230, y = 255, w = 18, h = 24}}},
		{id = 501, dst = {{x = 320, y = 255, w = 18, h = 24}}},
		{id = 502, dst = {{x = 410, y = 255, w = 18, h = 24}}},
		{id = 503, dst = {{x = 230, y = 225, w = 18, h = 24}}},
		{id = 504, dst = {{x = 320, y = 225, w = 18, h = 24}}},
		{id = 505, dst = {{x = 410, y = 225, w = 18, h = 24}}},
		{id = 506, dst = {{x = 230, y = 195, w = 18, h = 24}}},
		{id = 507, dst = {{x = 320, y = 195, w = 18, h = 24}}},
		{id = 508, dst = {{x = 410, y = 195, w = 18, h = 24}}},
		{id = 509, dst = {{x = 230, y = 165, w = 18, h = 24}}},
		{id = 510, dst = {{x = 320, y = 165, w = 18, h = 24}}},
		{id = 511, dst = {{x = 410, y = 165, w = 18, h = 24}}},
		{id = 512, dst = {{x = 230, y = 135, w = 18, h = 24}}},
		{id = 513, dst = {{x = 320, y = 135, w = 18, h = 24}}},
		{id = 514, dst = {{x = 410, y = 135, w = 18, h = 24}}},
		{id = 515, dst = {{x = 230, y = 105, w = 18, h = 24}}},
		{id = 516, dst = {{x = 320, y = 105, w = 18, h = 24}}},
		{id = 517, dst = {{x = 410, y = 105, w = 18, h = 24}}},
		{id = 518, dst = {{x = 320, y = 75, w = 18, h = 24}}},
		{id = 519, dst = {{x = 410, y = 75, w = 18, h = 24}}},

		{id = 100, dst = {{x = 440, y = 405, w = 200, h = 20}}},
		{id = 101, dst = {{x = 230, y = 405, w = 200, h = 20}}},

		{id = 400, dst = {{x = 240, y = 375, w = 24, h = 24}}},
		{id = 401, dst = {{x = 410, y = 375, w = 24, h = 24}}},
		{id = 402, dst = {{x = 550, y = 375, w = 12, h = 24}}},

		{id = 410, dst = {{x = 240, y = 345, w = 24, h = 24}}},
		{id = 411, dst = {{x = 410, y = 345, w = 24, h = 24}}},
		{id = 412, dst = {{x = 550, y = 345, w = 12, h = 24}}},

		{id = 420, dst = {{x = 240, y = 315, w = 24, h = 24}}},
		{id = 421, dst = {{x = 410, y = 315, w = 24, h = 24}}},
		{id = 422, dst = {{x = 550, y = 315, w = 12, h = 24}}},

		{id = 600, dst = {{x = 360, y = 486, w = 12, h = 12}}},

		{id = 700, dst = {{x = 20, y = 80, w = 18, h = 18}}},
		{id = 701, dst = {{x = 92, y = 80, w = 12, h = 12}}},

		{id = "ir_prevrank", dst = {{x = 20, y = 50, w = 18, h = 18}}},
		{id = "ir_rank", dst = {{x = 128, y = 50, w = 18, h = 18}}},
		{id = "ir_total", dst = {{x = 236, y = 50, w = 18, h = 18}}},

		{id = 1000, dst = {{x = 640, y = 23, w = 24, h = 24}}},

		{id = 2000, dst = {{x = 20, y = 500, w = 400, h = 200}}},
		{id = 3000, dst = {{time = 0, x = 500, y = 500, w = 700, h = 200}}},
		{id = 3001, loop = 0, dst = {
			{time = 5000, x = 500, y = 500, w = 700, h = 200},
			{time = 10000, x = 500, y = 500, w = 700, h = 200}}
		},

		{id = 200, op = {196, -198}, dst = {{x = 700, y = 100, w = 30, h = 30, a = 64}}},
		{id = 200, op = {197, -198}, dst = {{x = 700, y = 100, w = 30, h = 30}}},
		{id = 200, op = {198}, loop = 0, dst = {
			{time = 0, x = 700, y = 100, w = 30, h = 30},
			{time = 500, a = 0},
			{time = 1000, a = 255}}
		},
		{id = 201, op = {1196, -1198}, dst = {{x = 740, y = 100, w = 30, h = 30, a = 64}}},
		{id = 201, op = {1197, -1198}, dst = {{x = 740, y = 100, w = 30, h = 30}}},
		{id = 201, op = {1198}, loop = 0, dst = {
			{time = 0, x = 740, y = 100, w = 30, h = 30},
			{time = 500, a = 0},
			{time = 1000, a = 255}}
		},
		{id = 202, op = {1199, -1201}, dst = {{x = 780, y = 100, w = 30, h = 30, a = 64}}},
		{id = 202, op = {1200, -1201}, dst = {{x = 780, y = 100, w = 30, h = 30}}},
		{id = 202, op = {1201}, loop = 0, dst = {
			{time = 0, x = 780, y = 100, w = 30, h = 30},
			{time = 500, a = 0},
			{time = 1000, a = 255}}
		},
		{id = 203, op = {1202, -1204}, dst = {{x = 820, y = 100, w = 30, h = 30, a = 64}}},
		{id = 203, op = {1203, -1204}, dst = {{x = 820, y = 100, w = 30, h = 30}}},
		{id = 203, op = {1204}, loop = 0, dst = {
			{time = 0, x = 820, y = 100, w = 30, h = 30},
			{time = 500, a = 0},
			{time = 1000, a = 255}}
		},

		{id = 0, op = {90}, loop = 500, timer = 0, dst = {
			{time = 0, x = 0, y = 0, w = 1280, h = 720, a = 255, r = 0, g = 255, b = 255},
			{time = 500, a = 0}
		},
		{id = 0, op = {91}, loop = 500, timer = 0, dst = {
			{time = 0, x = 0, y = 0, w = 1280, h = 720, a = 255, r = 255, g = 0, b = 0},
			{time = 500, a = 0}
		},

		{id = 0, loop = 500, timer = 2, dst = {
			{time = 0, x = 0, y = 0, w = 1280, h = 720, a = 0, r = 0, g = 0, b = 0},
			{time = 500, a = 255}
		}
	}

	return skin
end

return {
	header = header,
	main = main
}