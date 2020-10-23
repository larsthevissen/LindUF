function LindUF:HealthText(p)
  if not p then return end
  if p.HealthText then return end

  local f = CreateFrame("Frame", "lind."..p.unit..".HealthText", p)
  f:SetWidth(1)
  f:SetHeight(1)

  f.Text = f:CreateFontString(nil, "OVERLAY")
  f.Text:SetPoint("RIGHT", 0, 0)
  f.Text:SetFont(LindUF.font, 14, "OUTLINE")
  f.Text:SetTextColor(1, 1, 1)
  f:SetFrameStrata("BACKGROUND")
  f:SetFrameLevel(3)
  f.name = ""
  f.unit = p.unit
  f.update = 0
  f:SetScript("OnUpdate", function(self, elapsed)
    local health = UnitHealth(self.unit)
    local healthMax = UnitHealthMax(self.unit)
    if healthMax == 0 then healthMax = 1 end
    local percent = 100*health/healthMax
    local output = string.format("%.1f", percent)

    self.Text:SetText(output)
  end)
  return f
end

function LindUF:HealthAbs(p)
  if not p then return end
  if p.HealthAbs then return end

  local f = CreateFrame("Frame", "lind."..p.unit..".HealthAbs", p)
  f:SetWidth(1)
  f:SetHeight(1)

  f.Text = f:CreateFontString(nil, "OVERLAY")
  f.Text:SetPoint("RIGHT", 0, 0)
  f.Text:SetFont(LindUF.font, 14, "OUTLINE")
  f.Text:SetTextColor(1, 1, 1)
  f:SetFrameStrata("BACKGROUND")
  f:SetFrameLevel(3)
  f.name = ""
  f.unit = p.unit
  f.update = 0
  f:SetScript("OnUpdate", function(self, elapsed)
    local health = UnitHealth(self.unit)
    local output = ""
    if health > 1000000 then
      output = string.format("%.1fM", health/1000000)
    elseif health > 10000 then
      output = string.format("%.1fK", health/1000)
    else
      output = string.format("%d", health)
    end

    self.Text:SetText(output)
  end)
  return f
end
