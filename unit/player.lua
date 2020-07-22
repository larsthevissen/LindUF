

local f = LindUF:UnitFrame("player")
f:ClearAllPoints()
f:SetWidth(280)
f:SetHeight(15)
f:SetPoint("RIGHT", UIParent, "CENTER", -100, -150)


f.HealthBar = LindUF:HealthBar(f)
f.HealthBar.Texture:SetColorTexture(1, 0, 0, .7)
f.HealthBar:SetReverseFill(true)
f.HealthBar:ClearAllPoints()
f.HealthBar:SetWidth(90)
f.HealthBar:SetHeight(15)
f.HealthBar:SetPoint("TOPRIGHT", f, "TOPRIGHT", 0, 0)
f.HealthBar:SetMinMaxValues(0, .33)
f.HealthBar.Texture:SetVertexOffset(3, -10, 0)
f.HealthBar.BackgroundTexture:SetVertexOffset(3, -10, 0)
f.HealthBar.Texture:SetVertexOffset(1, -10, 0)
f.HealthBar.BackgroundTexture:SetVertexOffset(1, -10, 0)

f.HealthBar2 = LindUF:HealthBar(f)
f.HealthBar2.Texture:SetColorTexture(1, 0, 0, .7)
f.HealthBar2:SetReverseFill(true)
f.HealthBar2:ClearAllPoints()
f.HealthBar2:SetWidth(90)
f.HealthBar2:SetHeight(15)
f.HealthBar2:SetPoint("RIGHT", f.HealthBar, "LEFT", -5, 0)
f.HealthBar2:SetMinMaxValues(.33, .66)
f.HealthBar2.Texture:SetVertexOffset(3, -10, 0)
f.HealthBar2.BackgroundTexture:SetVertexOffset(3, -10, 0)
f.HealthBar2.Texture:SetVertexOffset(1, -10, 0)
f.HealthBar2.BackgroundTexture:SetVertexOffset(1, -10, 0)

f.HealthBar3 = LindUF:HealthBar(f)
f.HealthBar3.Texture:SetColorTexture(1, 0, 0, .7)
f.HealthBar3:SetReverseFill(true)
f.HealthBar3:ClearAllPoints()
f.HealthBar3:SetWidth(90)
f.HealthBar3:SetHeight(15)
f.HealthBar3:SetPoint("RIGHT", f.HealthBar2, "LEFT", -5, 0)
f.HealthBar3:SetMinMaxValues(.66, 1)
f.HealthBar3.Texture:SetVertexOffset(3, -10, 0)
f.HealthBar3.BackgroundTexture:SetVertexOffset(3, -10, 0)
f.HealthBar3.Texture:SetVertexOffset(1, -10, 0)
f.HealthBar3.BackgroundTexture:SetVertexOffset(1, -10, 0)

LindUF:power(f)
f.PowerBar.Texture:SetColorTexture(1, 0, 0, .5)
f.PowerBar:ClearAllPoints()
f.PowerBar:SetWidth(280)
f.PowerBar:SetHeight(10)
f.PowerBar:SetPoint("TOPRIGHT", f.HealthBar, "BOTTOMRIGHT", 0, -2)


f.PowerBar.Texture:SetVertexOffset(4, -5, 0)
f.PowerBar.BackgroundTexture:SetVertexOffset(4, -5, 0)
f.PowerBar.Texture:SetVertexOffset(2, -5, 0)
f.PowerBar.BackgroundTexture:SetVertexOffset(2, -5, 0)




LindUF.Player = f


-- LindUF.Player = LindUF:UnitFrame("player")
-- LindUF.Player:SetWidth(300)
-- LindUF.Player:SetHeight(20)
-- LindUF.Player:ClearAllPoints()
-- LindUF.Player:SetPoint("RIGHT", UIParent, "CENTER", -150, -50)

-- LindUF:HealthBar(LindUF.Player)
-- LindUF:PowerBar(LindUF.Player)

-- --LindUF.Player.HealthBar:SetVertexOffset(2,0,3)

-- LindUF.Player.PowerBar:SetHeight(10)
-- LindUF.Player.PowerBar:ClearAllPoints()
-- LindUF.Player.PowerBar:SetPoint("TOP", LindUF.Player.HealthBar, "BOTTOM", 0, -3)
-- LindUF.Player.PowerBar.Power:SetHeight(6)

LindUF:CastBar(LindUF.Player)
LindUF.Player.CastBar:ClearAllPoints()
LindUF.Player.CastBar:SetHeight(8)
LindUF.Player.CastBar:SetWidth(280)
LindUF.Player.CastBar:SetReverseFill(true)
LindUF.Player.CastBar:SetPoint("BOTTOM", LindUF.Player, "TOP", 0, 20)

-- LindUF:HealthText(LindUF.Player)
-- LindUF.Player.HealthText:ClearAllPoints()
-- LindUF.Player.HealthText:SetPoint("RIGHT", LindUF.Player.HealthBar, "RIGHT", 2, 0)




-- PlayerFrame:SetScript("OnEvent", nil);
-- PlayerFrame:Hide();
