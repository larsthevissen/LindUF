function LindUF:HealthBar(p)
  local f = LindUF:LindBar(p, "health")
  f.Texture:SetColorTexture(1, 0, 0, 1)
  -- f:RegisterEvent("UNIT_HEALTH_FREQUENT")
  -- f:RegisterEvent("VARIABLES_LOADED")
  -- f:RegisterEvent("PLAYER_ENTERING_WORLD")
  f:SetScript("OnUpdate", function(self, event)
    local health = UnitHealth(p.unit)
    local healthMax = UnitHealthMax(p.unit)
    if healthMax == 0 then healthMax = 1 end
    self:SetValue(1-health/healthMax)
  end)
  return f
end
