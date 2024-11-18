local E, L, C = select(2, ...):unpack()

E.changelog = [=[
v11.0.2.0037
	Merged passive-AMS by Horseman's Aid (DK, RotA hero talent) to AMS
	Added Lesser AMS by Vestigial Shell (DK, talent) to ext def.
	Added Chill streak (Frost DK, talent) to Snare
	Added Ice Prison (DK, talent) to Root
	Added Thrill of the Fight (DH, Aldrachi Reaver hero talent) to minor off.
	Added Dream Burst (Balance Druid, KotG hero talent) to minor off.
	Added Drink for TWW
	Added option to hide Blizzard's Cc frame on Arena frames

v11.0.2.0036
	Bump TOC
	Party frame auras (non-portrait mode) will correctly be removed when raid-style party frame is enabled
	Fixed an issue preventing glow when it replaces another aura with the same texture
	Binding Shot moved to Stun
	A few hero talent auras added (disabled by default, except disarm/root)

v10.2.7.0035
	11.0 TWW compatibility updates
	minor bug fixes
]=]

E.changelog = E.changelog .. "\n\n|cff808080Full list of changes can be found in the CHANGELOG file"
