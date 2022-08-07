Citizen.CreateThread(function()
   local last = nil
   while true do
      Citizen.Wait(0)
      local state, new = GetPedLastWeaponImpactCoord(PlayerPedId())
      if new ~= last then
         if state then
            last = new
            print(new)
            SendNUIMessage({coords = ""..string.format("%.2f", new.x)..", "..string.format("%.2f", new.y)..", "..string.format("%.2f", new.z)..""})
         end
      end
   end
end)