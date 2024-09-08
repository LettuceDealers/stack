local module = {}



function getRandomColor()
	local r = math.random(5, 255)
    local g = math.random(5, 255)
    local b = math.random(5, 255)
	return _G["Discordia"].Color.fromRGB(r,g,b).value
end

module.Commands = {
	["test"] = {
		["Name"] = "test",
		["Description"] = "test command",
		["Register"] = function(tools,myName,myDesc)
			slashCommand = tools.slashCommand(myName,myDesc)
			option = tools.string("string option!?", "string option description!?")
			 option = option:setRequired(true)
			slashCommand = slashCommand:addOption(option)
			return slashCommand
		end,
		["Execute"] = function(interaction,command,arguments)
			return
		end,
	},










}


return module