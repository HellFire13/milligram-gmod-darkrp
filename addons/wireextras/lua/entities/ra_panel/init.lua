AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()
	self.gain = 19.5 -- dB
	self.pol = 1 -- Vertical Polarization
	self.beamWidth = 8.0 -- Degrees
	self.active = false -- TX enabled (if TX)
	self.txchannels = {} -- tx data
	self.txwatts = 0 -- tx power
	self:SetModel("models/radio/ra_panel.mdl")
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:PhysicsInit(SOLID_VPHYSICS)

	local phys = self:GetPhysicsObject()
	if phys:IsValid() then phys:Wake() end
end