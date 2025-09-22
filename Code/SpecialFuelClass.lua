DefineClass.UnitConsumer = {
	__parents = {"UnitComponent"},
	properties = {
		{ category = "Consumer", id = "res_consumed",		name = "The consumed Resource", 
			editor = "preset_id", preset_class = "Resource", default = false, template = true, translate = true, help = "Fuel resource required for the functioning of the device", },
		{ category = "Consumer", id = "res_max_stored",		name = "Max amount possible to be stored on the unit", 
			editor = "number", scale = const.ResourceScale, default = 0, template = true, translate = true, help = "The amount of fuel resource stored inside the device", },
		{ category = "Consumer", id = "res_used",			name = "Resource used per instance",
			editor = "number", scale = const.ResourceScale, default = 0, template = true, translate = true, help = "The amount of fuel resource used per instance", },
		{ category = "Consumer", id = "res_stored",			name = "Resource currently held, includes amount the unit has on spawn.",
			editor = "number", scale = const.ResourceScale, default = 0, template = true, translate = true, help = "The amount of fuel on this units body", },
		{ category = "Consumer", id = "ConsumeDescription",	name = "Description of the resource and how the unit uses it.",
			editor = "text", translate = true, default = T(159662765679, "<u(id)>"), help = "This can be oil to fuel the unit, limited amounts of poison, or ammunition.", },
		{ category = "Consumer", id = "ConsumeTitle",		name = "Name of the thing using/giving charges.",
			editor = "text", translate = true, default = T(159662765679, "<u(id)>"), help = "Short description of the thing this unit is doing with it's resources (Like a quiver/clip/poison vials)", },
		{ category = "Consumer", id = "ConsumeUIDetail",		name = "Text on UI Bar",
			editor = "text", translate = true, default = T(159662765679, "<u(id)>"), help = "Keep this short, as it will be in the UI. Something like \"Ammo Left\"", },
		{ category = "Consumer", id = "UI_Bar_Percent",		name = "Show percentage amount left?",
			editor = "bool", default = false, help = "If left unchecked, UI bar will show the absolute units left to consume.", },
	},
}

function UnitConsumer:Init()
	self:Refuel(self.res_stored)
end

function UnitConsumer:CurrentResAmount()
	if self.res_consumed == false then
		return false
	end
	return self:GetResAvailable(self.res_consumed)
end

function UnitConsumer:GetIPConsume()
	local pct = DivRound(self.res_stored*100, self.res_max_stored)
	return Clamp(pct, 0, 100)
end

function UnitConsumer:GetConsumeUIDetail()
	return T{946850102369, "Fuel<right><res(res, supplied, needed)>", res = self.fuel_consumed, supplied = self.current_fuel_amount, needed = self.fuel_stored}
end

function StorageDepotComponent:GetConsumeText(res, amount)
	local hide = self.hide_UI_on_empty
	res = res or self:GetStoredResourceId()
	amount = amount or self:GetResAvailable(res)
	if amount <= 0 and hide then return "" end
	return T{208397528211, "<res(res, amount)>", res = res, amount = amount}
end

function UnitConsumer:Refuel(amount)
	amount = amount or self.res_used
	if amount + self.res_stored > self.res_max_stored then
		self.res_stored = self.res_max_stored
	else
		self.res_stored = self.res_stored + amount
	end
end

function UnitConsumer:ConsumeFuel(amount)
	amount = amount or self.res_used
	if self.res_stored <= amount then return false end
	self.res_stored = self.res_stored - amount
	return true
end


function TFormat.FuelBarShort(context_obj,obj)
	if not obj or not obj.ConsumeUIDetail then
		return T{121110100821,"N/A"}
	else
		return obj.ConsumeUIDetail
	end
end

function TFormat.FuelAbs(context_obj,obj)
	local return_int = DivRound(obj.res_stored,const.ResourceScale)
	return FormatInt(return_int)
end