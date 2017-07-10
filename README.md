## Vortigaunt Goodies Fix - HL2RP

Adds a broom SWEP that Enslaved Vortigaunts spawn with. Primary fire makes the character sweep. The jumping animation is kinda messed up, however this can be fixed by using EP2 Vortigaunt animations and changing the stored animations to the EP2 ones.

This is a fixed version of NightAngel's 'Vortigaunt Goodies' plugin, which can be found in their plugin collection here: http://forums.cloudsixteen.com/threads/nightangels-plugins.5926/

The changes:

Broom animations are now set properly depending on what the player is doing (idle, moving, sweeping).
Animation overrides in previous plugin version removed as Vortigaunt animations are provided by the Clockwork framework now.
Clockwork stored Vortigaunt animations overwritten, as non-enum sequences cannot be overriden by SetForcedAnimation. (?)
SWep viewmodel caused constant error spam of 'mod_studio: MOVETYPE_FOLLOW with no model.' This has been fixed by making the viewmodel not draw instead of making it nothing.
This was fixed for Clockwork BETA version 0.96.3. If you are running an older version of Clockwork, this plugin has the potential to break some Vortigaunt animations (idle, moving, jumping). If this happens, feel free to contact me and I will try to fix the issue for you.
