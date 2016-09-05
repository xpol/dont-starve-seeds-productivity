-- luacheck: globals GetModConfigData AddPrefabPostInit Prefabs

local PRODUCTIVITY = GetModConfigData('PRODUCTIVITY')

AddPrefabPostInit('birdcage', function(inst)
		local onaccept = inst.components.trader.onaccept
		inst.components.trader.onaccept = function(instance, giver, item)
				local seed_name = string.lower(item.prefab .. '_seeds')
				local hasSeeds = Prefabs[seed_name]
				local times = hasSeeds and PRODUCTIVITY or 1
				print(('Birdcage: eating %s with %d times output'):format(item.prefab, times))
				for _=1,times do
						onaccept(instance, giver, item)
				end
		end
end)
