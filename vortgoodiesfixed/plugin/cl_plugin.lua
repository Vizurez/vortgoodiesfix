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
