-- target.lua START --


local f = LindUF:UnitFrame("target")
f:ClearAllPoints()
f:SetWidth(280)
f:SetHeight(15)
f:SetPoint("LEFT", UIParent, "CENTER", 100, -150)

f.HealthBar = LindUF:HealthBar(f)
f.HealthBar.Texture:SetColorTexture(1, 0, 0, .7)
f.HealthBar:ClearAllPoints()
f.HealthBar:SetWidth(90)
f.HealthBar:SetHeight(20)
f.HealthBar:SetPoint("TOPLEFT", f, "TOPLEFT", 0, 0)
f.HealthBar:SetMinMaxValues(0, .33)
f.HealthBar.Texture:SetVertexOffset(3, 10, 0)
f.HealthBar.BackgroundTexture:SetVertexOffset(3, 10, 0)
f.HealthBar.Texture:SetVertexOffset(1, 10, 0)
f.HealthBar.BackgroundTexture:SetVertexOffset(1, 10, 0)

f.HealthBar2 = LindUF:HealthBar(f)
f.HealthBar2.Texture:SetColorTexture(1, 0, 0, .7)
f.HealthBar2:ClearAllPoints()
f.HealthBar2:SetWidth(90)
f.HealthBar2:SetHeight(20)
f.HealthBar2:SetPoint("LEFT", f.HealthBar, "RIGHT", 5, 0)
f.HealthBar2:SetMinMaxValues(.33, .66)
f.HealthBar2.Texture:SetVertexOffset(3, 10, 0)
f.HealthBar2.BackgroundTexture:SetVertexOffset(3, 10, 0)
f.HealthBar2.Texture:SetVertexOffset(1, 10, 0)
f.HealthBar2.BackgroundTexture:SetVertexOffset(1, 10, 0)

f.HealthBar3 = LindUF:HealthBar(f)
f.HealthBar3.Texture:SetColorTexture(1, 0, 0, .7)
f.HealthBar3:ClearAllPoints()
f.HealthBar3:SetWidth(90)
f.HealthBar3:SetHeight(20)
f.HealthBar3:SetPoint("LEFT", f.HealthBar2, "RIGHT", 5, 0)
f.HealthBar3:SetMinMaxValues(.66, 1)
f.HealthBar3.Texture:SetVertexOffset(3, 10, 0)
f.HealthBar3.BackgroundTexture:SetVertexOffset(3, 10, 0)
f.HealthBar3.Texture:SetVertexOffset(1, 10, 0)
f.HealthBar3.BackgroundTexture:SetVertexOffset(1, 10, 0)


f.HealthBar:RegisterEvent("UNIT_TARGET")


LindUF:power(f)
f.PowerBar.Texture:SetColorTexture(1,0,0,.5)

f.PowerBar:RegisterEvent("UNIT_TARGET")
f.PowerBar:ClearAllPoints()
f.PowerBar:SetWidth(280)
f.PowerBar:SetHeight(10)
f.PowerBar:SetPoint("TOPLEFT", f.HealthBar, "BOTTOMLEFT", 0, -2)
f.PowerBar.Texture:SetVertexOffset(4, 5, 0)
f.PowerBar.BackgroundTexture:SetVertexOffset(4, 5, 0)
f.PowerBar.Texture:SetVertexOffset(2, 5, 0)
f.PowerBar.BackgroundTexture:SetVertexOffset(2, 5, 0)


LindUF:CastBar(f)
f.CastBar:ClearAllPoints()
f.CastBar:SetHeight(8)
f.CastBar:SetWidth(280)
f.CastBar:SetPoint("BOTTOM", f, "TOP", 0, 20)

LindUF:Name(f)
f.Name:ClearAllPoints()
f.Name:SetPoint("BOTTOMLEFT", f, "TOPLEFT", 0, 10)
f.Name.Text:ClearAllPoints()
f.Name.Text:SetPoint("LEFT", 0, 0)

f.HealthText = LindUF:HealthText(f)
f.HealthText:ClearAllPoints()
f.HealthText:SetPoint("RIGHT", f.HealthBar, "LEFT", 0, 0)
f.HealthText.Text:ClearAllPoints()
f.HealthText.Text:SetPoint("RIGHT", 0, 0)

f.HealthAbs = LindUF:HealthAbs(f)
f.HealthAbs:ClearAllPoints()
f.HealthAbs:SetPoint("LEFT", f.HealthBar3, "RIGHT", 10, 0)
f.HealthAbs.Text:ClearAllPoints()
f.HealthAbs.Text:SetPoint("LEFT", 0, 0)



LindUF.Target = f

-- TargetFrame:SetScript("OnEvent", nil);
-- TargetFrame:Hide();
-- target.lua END --
