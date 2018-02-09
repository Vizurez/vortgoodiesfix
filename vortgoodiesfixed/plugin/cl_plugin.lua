local PLUGIN = PLUGIN;

-- Hide Vortigaunt head/neck bones from first person view if cwAnimatedLegs is installed.
if (cwAnimatedLegs and cwAnimatedLegs.BoneHoldTypes) then
	for k, v in pairs(cwAnimatedLegs.BoneHoldTypes) do
		local vortBones = {
			"ValveBiped.head",
			"ValveBiped.neck1",
			"ValveBiped.neck2"
		};

		table.Add(v, vortBones);
	end;
end;

-- A function to apply bone manipulations when a character is loaded if cwAnimatedLegs is installed.
function PLUGIN:PlayerCharacterInitialized()
	if (cwAnimatedLegs) then
		cwAnimatedLegs:WeaponChanged();
	end;
end;

-- A function to set a Vortigaunt player's typing display position.
function PLUGIN:GetPlayerTypingDisplayPosition(player)
	if (self:PlayerIsVortigaunt(player)) then
		local position = nil;
		local neckBone = player:LookupBone("ValveBiped.neck1");

		if (neckBone) then
			position = player:GetBonePosition(neckBone) + Vector(0, 0, 8);
		end;

		return position;
	end;
end;
