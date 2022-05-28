--
-- Copyright (c) 2022 by Ludicrous Speed, LLC
-- All rights reserved.
--
local provider={name=...,data=3,region="tw",faction=2,date="2022-05-27T07:00:44Z",numCharacters=19397,lookup2={},recordSizeInBytes=2,encodingOrder={0,1,3}}
local F

-- chunk size: 0
F = function() provider.lookup2[1] = "" end F()

F = nil
RaiderIO.AddProvider(provider)
