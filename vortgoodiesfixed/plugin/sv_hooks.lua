-- Originally created by NightAngel, fixed by Viz.

local PLUGIN = PLUGIN;

function PLUGIN:PlayerGiveWeapons(player)	
	if (string.lower(player:GetModel()) == "models/vortigaunt_slave.mdl" or player:GetFaction() == FACTION_VORTSLAVE) then
		Clockwork.player:GiveSpawnWeapon(player, "cw_broom");
	end;
end;

function PLUGIN:PlayerPlayPainSound(player, gender, damageInfo)
	if (self:PlayerIsVortigaunt(player) and damageInfo:IsBulletDamage() and math.random() <= 0.5) then
		return "vo/npc/vortigaunt/vortigese0"..table.Random({"4", "7", "8"})..".wav";
	end;
end;

-- Adds footstep sounds using HL2 vortigaunt foot sounds.
-- Personally don't like so I've commented it out.
--[[
function PLUGIN:PlayerFootstep(player)
	if (self:PlayerIsVortigaunt(player)) then
		player:EmitSound("npc/vort/vort_foot"..math.random(4)..".wav");

		return true;
	end;
end;
--]]
