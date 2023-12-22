PLUGIN.name = "Passive Overwatch"
PLUGIN.description = "Automatic Overwatch Announcement"
PLUGIN.author = "Original by Stalker | This version is made by AzuRoss"

ix.util.Include("sv_hooks.lua")

do
	local CLASS = {}
	CLASS.color = Color(231,59,47)
	CLASS.format = "Overwatch Announcement \"%s\""

	function CLASS:OnChatAdd(speaker, text)
		chat.AddText(self.color, ix.util.GetMaterial("chat/talk/combine_overwatch_icon.png"), string.format(self.format, text))
	end

	ix.chat.Register("dispatchs", CLASS) 
end   