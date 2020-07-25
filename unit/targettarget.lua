-- targettarget.lua START --
local f = LindUF:UnitFrame("targettarget")
f:SetWidth(100)
f:SetHeight(32)
f:ClearAllPoints()
f:SetPoint("TOPLEFT", LindUF.Target, "TOPRIGHT", 20, 0)

f.HealthBar = LindUF:HealthBar(f)

f.HealthBar.Texture:SetColorTexture(1,0,0,.7)
f.HealthBar:ClearAllPoints()
f.HealthBar:SetWidth(100)
f.HealthBar:SetHeight(20)
f.HealthBar:SetPoint("TOPLEFT", f, "TOPLEFT", 0, 0)
f.HealthBar:SetReverseFill(true)

f.HealthBar.Texture:SetVertexOffset(3, 10, 0)
f.HealthBar.BackgroundTexture:SetVertexOffset(3, 10, 0)
f.HealthBar.Texture:SetVertexOffset(1, 10, 0)
f.HealthBar.BackgroundTexture:SetVertexOffset(1, 10, 0)

LindUF:power(f)
f.PowerBar:ClearAllPoints()
f.PowerBar:SetWidth(100)
f.PowerBar:SetHeight(10)
f.PowerBar:SetPoint("TOPLEFT", f.HealthBar, "BOTTOMLEFT", 0, -2)
f.PowerBar.Texture:SetVertexOffset(4, 5, 0)
f.PowerBar.BackgroundTexture:SetVertexOffset(4, 5, 0)
f.PowerBar.Texture:SetVertexOffset(2, 5, 0)
f.PowerBar.BackgroundTexture:SetVertexOffset(2, 5, 0)

LindUF:Name(f)
f.Name:ClearAllPoints()
f.Name:SetPoint("BOTTOMLEFT", f, "TOPLEFT", 5, 8)
-- targettarget.lua END --
