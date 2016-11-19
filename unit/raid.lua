-- raid.lua START --
local raid = {}
for i = 1, MAX_RAID_MEMBERS do
  raid[i] = LindUF:UnitFrame("raid"..i)
  -- raid[i] = LindUF:UnitFrame("player")
  raid[i]:SetWidth(100)
  raid[i]:SetHeight(20)
  raid[i]:ClearAllPoints()
  if (i < 21) then
    raid[i]:SetPoint("LEFT", UIParent, "LEFT", 10, 200-i*23)
  else
    raid[i]:SetPoint("LEFT", UIParent, "LEFT", 120, 200-(i-20)*23)
  end

  LindUF:HealthBar(raid[i])

  LindUF:Name(raid[i])
  raid[i].Name:ClearAllPoints()
  raid[i].Name:SetPoint("LEFT", raid[i].HealthBar, "Left", 2, 0)

  raid[i].raidIcon:SetWidth(16)
  raid[i].raidIcon:SetHeight(16)
  raid[i].raidIcon:SetPoint("CENTER", 0, 0)

end

-- raid.lua END --

-- boss.lua START --
local boss = {}
for i = 1, 5 do
  boss[i] = LindUF:UnitFrame("boss"..i)
  boss[i]:SetWidth(100)
  boss[i]:SetHeight(20)
  boss[i]:ClearAllPoints()
  boss[i]:SetPoint("RIGHT", UIParent, "RIGHT", -30, 100-i*30)

  LindUF:HealthBar(boss[i])

  LindUF:Name(boss[i])
  boss[i].Name:ClearAllPoints()
  boss[i].Name:SetPoint("LEFT", boss[i].HealthBar, "Left", 2, 0)
end
-- boss.lua END --
