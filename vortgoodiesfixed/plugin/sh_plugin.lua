-- Originally created by NightAngel, fixed by Viz.

local PLUGIN = PLUGIN;

Clockwork.kernel:IncludePrefixed("sv_hooks.lua");
Clockwork.kernel:IncludePrefixed("cl_plugin.lua");

-- Called when the Clockwork schema has loaded.
function PLUGIN:ClockworkSchemaLoaded()
	--[[
		Overwrite the stored Vortigaunt animations, as non-enum
		sequences cannot be overriden by SetForcedAnimation.
	--]]
	Clockwork.animation.stored.vortigaunt = {
		["crouch_grenade_aim_idle"] = "CrouchIdle",
		["crouch_grenade_aim_walk"] = ACT_WALK,
		["stand_grenade_aim_idle"] = ACT_IDLE,
		["crouch_pistol_aim_idle"] = "CrouchIdle",
		["stand_grenade_aim_walk"] = ACT_WALK,
		["crouch_pistol_aim_walk"] = ACT_WALK,
		["crouch_heavy_aim_idle"] = "CrouchIdle",
		["crouch_blunt_aim_idle"] = "CrouchIdle",
		["stand_grenade_aim_run"] = ACT_RUN,
		["crouch_blunt_aim_walk"] = ACT_WALK,
		["crouch_heavy_aim_walk"] = ACT_WALK,
		["stand_pistol_aim_walk"] = ACT_WALK,
		["stand_pistol_aim_idle"] = ACT_IDLE_ANGRY,
		["crouch_fist_aim_walk"] = ACT_WALK,
		["crouch_slam_aim_walk"] = ACT_WALK,
		["stand_pistol_aim_run"] = ACT_RUN,
		["crouch_fist_aim_idle"] = ACT_IDLE_ANGRY,
		["stand_heavy_aim_idle"] = ACT_IDLE_ANGRY,
		["stand_blunt_aim_idle"] = ACT_IDLE_ANGRY,
		["crouch_slam_aim_idle"] = "CrouchIdle",
		["stand_blunt_aim_walk"] = ACT_WALK,
		["stand_heavy_aim_walk"] = ACT_WALK,
		["stand_fist_aim_idle"] = ACT_IDLE_ANGRY,
		["crouch_smg_aim_walk"] = ACT_WALK,
		["crouch_smg_aim_idle"] = ACT_IDLE_ANGRY,
		["stand_fist_aim_walk"] = ACT_WALK,
		["stand_blunt_aim_run"] = ACT_RUN,
		["stand_heavy_aim_run"] = ACT_RUN,
		["crouch_grenade_walk"] = ACT_WALK,
		["crouch_grenade_idle"] = "CrouchIdle",
		["stand_slam_aim_idle"] = ACT_IDLE,
		["stand_slam_aim_walk"] = ACT_WALK,
		["stand_slam_aim_run"] = ACT_RUN,
		["stand_smg_aim_idle"] = ACT_IDLE_ANGRY,
		["stand_smg_aim_walk"] = ACT_WALK,
		["stand_fist_aim_run"] = ACT_RUN,
		["crouch_pistol_idle"] = "CrouchIdle",
		["stand_grenade_walk"] = ACT_WALK,
		["crouch_pistol_walk"] = ACT_WALK,
		["stand_grenade_idle"] = ACT_IDLE,
		["stand_grenade_run"] = ACT_RUN,
		["crouch_blunt_idle"] = "CrouchIdle",
		["stand_pistol_walk"] = ACT_WALK,
		["crouch_blunt_walk"] = ACT_WALK,
		["crouch_heavy_walk"] = ACT_WALK,
		["stand_pistol_idle"] = ACT_IDLE,
		["crouch_heavy_idle"] = "CrouchIdle",
		["stand_smg_aim_run"] = ACT_RUN,
		["stand_heavy_walk"] = ACT_WALK,
		["stand_blunt_walk"] = ACT_WALK,
		["stand_blunt_idle"] = ACT_IDLE,
		["crouch_fist_idle"] = "CrouchIdle",
		["crouch_fist_walk"] = ACT_WALK,
		["crouch_slam_idle"] = "CrouchIdle",
		["stand_pistol_run"] = ACT_RUN,
		["stand_heavy_idle"] = ACT_IDLE_ANGRY,
		["crouch_slam_walk"] = ACT_WALK,
		["stand_heavy_run"] = ACT_RUN,
		["stand_slam_idle"] = ACT_IDLE,
		["stand_fist_walk"] = ACT_WALK,
		["stand_slam_walk"] = ACT_WALK,
		["stand_blunt_run"] = ACT_RUN,
		["crouch_smg_walk"] = ACT_WALK,
		["crouch_smg_idle"] = "CrouchIdle",
		["stand_fist_idle"] = ACT_IDLE,
		["stand_slam_run"] = ACT_RUN,
		["stand_smg_idle"] = ACT_IDLE_ANGRY,
		["stand_fist_run"] = ACT_RUN,
		["stand_smg_walk"] = ACT_WALK,
		["stand_smg_run"] = ACT_RUN,
		["crouch_idle"] = "CrouchIdle",
		["crouch_walk"] = ACT_WALK,
		["stand_idle"] = ACT_IDLE,
		["stand_walk"] = ACT_WALK,
		["stand_run"] = ACT_RUN,
		["jump"] = ACT_BARNACLE_CHOMP, -- Change this to 'ACT_IDLE' or something if you don't like the weird jumping animation. Alternatively, use EP2 anims.
		["sit"] = "chess_wait"
	};
end;

-- A function to get whether or not the player is a vortigaunt.
function PLUGIN:PlayerIsVortigaunt(player)
	local faction = player:GetFaction();

	if (string.find(player:GetModel(), "vortigaunt") or faction == FACTION_VORTSLAVE or faction == FACTION_VORT) then
		return true;
	end;

	return false;
end;
