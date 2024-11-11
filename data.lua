if mods["Krastorio2"] then
    require('prototypes/tur_mainK2')
else 
    require('prototypes/tur_main')
end
--SE
if mods["space-exploration"] then
    require('scripts/SE/data')
end

if mods["CompressedFluids"] then
	compressedFluids.remote.forceCompressingFluid("steam")
	compressedFluids.remote.addTemperatureToFluid("steam", 15)
	compressedFluids.remote.addTemperatureToFluid("steam", 165)
	compressedFluids.remote.addTemperatureToFluid("steam", 500)
	compressedFluids.remote.addTemperatureToFluid("steam", 750)
	compressedFluids.remote.addTemperatureToFluid("steam", 900)
	compressedFluids.remote.addTemperatureToFluid("steam", 1000)
end
