local AS = unpack(AddOnSkins)

if not AS:CheckAddOn('TellMeWhen') then return end

function AS:TellMeWhen()
	TMW.Classes.Icon:PostHookMethod("OnNewInstance", function(self)
		AS:SetTemplate(self)
		self:SetBackdropBorderColor(0, 0, 0, 0)
	end)

	TMW.Classes.IconModule_Texture:PostHookMethod("OnNewInstance", function(self)
		AS:SkinTexture(self.texture)
	end)
end

AS:RegisterSkinForPreload("TellMeWhen", AS.TellMeWhen)
