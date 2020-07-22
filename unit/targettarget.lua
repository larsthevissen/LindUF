-- targettarget.lua START --
local targettarget = LindUF:UnitFrame("targettarget")
targettarget:SetWidth(100)
targettarget:SetHeight(20)
targettarget:ClearAllPoints()
targettarget:SetPoint("TOPLEFT", LindUF.Target, "BOTTOMLEFT", 0, -25)

targettarget.HealthBar = LindUF:HealthBar(targettarget)
local f = targettarget.HealthBar
f.Texture:SetColorTexture(1,0,0,.7)
f:ClearAllPoints()
f:SetAllPoints(targettarget)
f:SetReverseFill(true)

LindUF:Name(targettarget)
targettarget.Name:ClearAllPoints()
targettarget.Name:SetPoint("LEFT", f, "LEFT", 2, 0)
-- targettarget.lua END --
