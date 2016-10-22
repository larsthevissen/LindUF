-- PlayerFrame:SetScript("OnEvent", nil);
-- PlayerFrame:Hide();



LindUF.Player = LindUF:UnitFrame("player")
LindUF.Player:SetWidth(300)
LindUF.Player:SetHeight(20)
LindUF.Player:ClearAllPoints()
LindUF.Player:SetPoint("RIGHT", UIParent, "CENTER", -200, -200)

PlayerFrame:ClearAllPoints()
PlayerFrame:SetPoint("CENTER", LindUF.Player, "CENTER", 0, 0)

LindUF:HealthBar(LindUF.Player)
LindUF:PowerBar(LindUF.Player)

LindUF.Player.PowerBar:SetHeight(10)
LindUF.Player.PowerBar:ClearAllPoints()
LindUF.Player.PowerBar:SetPoint("TOP", LindUF.Player.HealthBar, "BOTTOM", 0, -3)
LindUF.Player.PowerBar.Power:SetHeight(6)

LindUF:CastBar(LindUF.Player)
LindUF.Player.CastBar:ClearAllPoints()
LindUF.Player.CastBar:SetHeight(8)
LindUF.Player.CastBar:SetPoint("TOP", LindUF.Player.PowerBar, "BOTTOM", 0, -3)

LindUF:Name(LindUF.Player)
LindUF.Player.Name:ClearAllPoints()
LindUF.Player.Name:SetPoint("LEFT", LindUF.Player.HealthBar, "Left", 2, 0)
