
-- Add a aPalletAutoLoader to a vehicle.
-- this script is in testing and will be added to the base mod when possible
-- No copy without direct permissin by Achimobil allowed
TypeManager.validateTypes = Utils.appendedFunction(TypeManager.validateTypes, function(self)
	local specName = "FS22_aPalletAutoLoader.aPalletAutoLoader";
	
	if self.typeName == "vehicle" and g_specializationManager:getSpecializationByName(specName) ~= nil then
		for typeName, vehicleType in pairs(g_vehicleTypeManager.types) do
			if typeName == "FS22_MB_Sprinter_3x_autoload.PalletAutoLoaderCar" then
				local typeEntry = g_vehicleTypeManager.types[typeName]
				if typeEntry ~= nil then
					if typeEntry.specializationsByName[specName] == nil then
						g_vehicleTypeManager:addSpecialization(typeName, specName);
					end
				end
			end
		end
	end
end)