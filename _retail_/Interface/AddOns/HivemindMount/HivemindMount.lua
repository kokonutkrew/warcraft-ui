hooksecurefunc("VehicleSeatIndicator_SetUpVehicle", function (vehicleIndicatorID)
	if (vehicleIndicatorID == 0) then
		vehicleIndicatorID = ({224, 226, 222, 223})[(IsMounted() or GetShapeshiftForm() ~= 0) and UnitVehicleSeatCount("player") or UnitIsPlayer("vehicle") and UnitVehicleSeatCount("vehicle")]
		if (vehicleIndicatorID) then
			VehicleSeatIndicator_SetUpVehicle(vehicleIndicatorID)
		end
	end
end)
